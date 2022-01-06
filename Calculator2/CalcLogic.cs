using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Calculator2
{
    public class CalcLogic
    {
        public CalcLogic()
        {
            
        }
        public double calculate(string expr)
        { 
           return System.Convert.ToDouble(new DataTable().Compute(expr, null));
        }
    }
}
