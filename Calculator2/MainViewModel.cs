using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace Calculator2
{
    internal class MainViewModel : INotifyPropertyChanged
    {

        public MainViewModel()
        {
            isShowing = false;
            expr = "";
            historyFilename = "history.txt";
            historyVisibility = Visibility.Hidden;
            history = new ObservableCollection<Tuple<string, double>>();
            //if(File.Exists(historyFilename))        
            //    foreach (string line in System.IO.File.ReadLines(historyFilename))
            //    {
            //        int i = line.IndexOf('=');
            //        string expr = line.Substring(0, i);
            //        double ans = System.Convert.ToDouble(line.Substring(i + 1, line.Length - (i + 1)));
            //        history.Add(Tuple.Create(expr, ans));
            //    }
            using (var connection = new System.Data.SQLite.SQLiteConnection("Data Source = E:/Projects/Calculator2/Calculator2/history.db")) 
            {
                connection.Open();
                var command = connection.CreateCommand();
                command.CommandText = "select * from historycollection";
                var reader = command.ExecuteReader(); 
                while (reader.Read())
                {
                    history.Add(Tuple.Create(System.Convert.ToString(reader["expression"]) , System.Convert.ToDouble(reader["answer"])));
                }
            }
        }


        
        public Visibility HistoryVisibility
        {
            get
            {
                return historyVisibility;
            }
            set
            {
                historyVisibility = value;
                OnPropertyChanged(nameof(HistoryVisibility));

            }
        }

        public event PropertyChangedEventHandler? PropertyChanged;
        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        private string expr;
        private ObservableCollection<Tuple<string, double>> history;
        private string historyFilename;
        private bool isShowing;
        private Visibility historyVisibility;

        public ObservableCollection<Tuple<string, double>> History
        {
            get { return history; }
        }
        
        

        public bool IsShowing
        {
            get { return isShowing; }
            set
            {
                if (value == true)
                {
                    HistoryVisibility = Visibility.Visible;
                }
                else
                {
                    HistoryVisibility = Visibility.Hidden;
                }
                isShowing = value;
                OnPropertyChanged(nameof(IsShowing));
            }
        }

        public string Expr
        {
            get { return expr; }
            set
            {
                expr = value.Replace(',','.');
                OnPropertyChanged(nameof(expr));
            }
        }

        private void Symbols(object obj)
        {
            string param = obj as string;

            if (param == "=")
            {
                try
                {
                    double result = 3; //CalcLogic.calculate(Expr);
                    history.Add(new Tuple<string, double>(Expr, result));
                    //using (StreamWriter sw = File.AppendText(historyFilename))
                    //{
                    //    sw.WriteLine(Expr + "=" + result.ToString());
                    //}
                    using (var connection = new System.Data.SQLite.SQLiteConnection("Data Source = E:/Projects/Calculator2/Calculator2/history.db"))
                    {
                        connection.Open();
                        var command = connection.CreateCommand();
                        command.CommandText = "insert into historycollection (expression, answer) values(" + "\"" + Expr + "\"" + "," + result + ");";
                        var reader = command.ExecuteReader();

                    }
                    Expr = result.ToString();
                }
                catch (Exception e)
                {
                    Expr = "Error";
                }      
            }
            else if (param == "Clear")
            {
                Expr = "";
            }
            else if (param == "Backspace")
            {
                if (Expr.Length > 0)
                    Expr = Expr.Substring(0, Expr.Length - 1);
            }
            else
            {
                Expr += param;
            }
        }

        public ICommand InputSymbol
        {
            get
            {
                return new RelayCommand(new Action<object>(Symbols));
            }
        }


    }
}
