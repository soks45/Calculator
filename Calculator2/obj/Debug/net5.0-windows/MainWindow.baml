   M S B A M L   `   `   `  ����F  BCalculator2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:Calculator2Calculator2  5   	       Calculator2.MainWindow   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:Calculator2     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5
      � -   5         �Name$ 
LayoutRoot��5
      
������� � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5       � ColumnDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      .+�5   
   �� -   5         ��Name$ 	textBlock��5      $��3��6%   
�������$��32(�6h   ��6R   �� *Expr+6h   d� 5   
   $��3��6   $��0��6'   $��Show history��64    d� 	IsChecked 6K   �� *	IsShowing+6m   �� 5   
   $
��20px(�6   
������$��0��69   $��1��6I   $��1��6v   ��6V   �� *InputSymbol+.��6�   16�   �� 5   
   $
��20px(�6   
������$��1��69   $��1��6I   $��2��6v   ��6V   �� *InputSymbol+.��6�   26�   �� 5   
   $
��20px(�6   
������$��2��69   $��1��6I   $��3��6v   ��6V   �� *InputSymbol+.��6�   36�   �� 5   
   $
��20px(�6   
������$��3��69   $��1��6I   $��4��6v   ��6V   �� *InputSymbol+.��6�   46�   �� 5   
   $
��20px(�6   
������$��0��69   $��2��6I   $��5��6v   ��6V   �� *InputSymbol+.��6�   56�   �� 5    
   $
��20px(�6   
������$��1��69   $��2��6I   $��6��6v   ��6V   �� *InputSymbol+.��6�   66�   �� 5!   
   $
��20px(�6   
������$��2��69   $��2��6I   $��7��6v   ��6V   �� *InputSymbol+.��6�   76�   �� 5"   
   $
��20px(�6   
������$��3��69   $��2��6I   $��8��6v   ��6V   �� *InputSymbol+.��6�   86�   �� 5#   
   $
��20px(�6   
������$��0��69   $��3��6I   $��9��6v   ��6V   �� *InputSymbol+.��6�   96�   �� 5$   
   $
��20px(�6   
������$��1��69   $��3��6I   $��0��6v   ��6V   �� *InputSymbol+.��6�   06�   �� 5%   
   $
��20px(�6   ���#78e3e3$��2��66   $��3��6F   $��+��6s   ��6S   �� *InputSymbol+.��6�   +6�   �� 5&   
   $
��20px(�6   ���#78e3e3$��3��66   $��3��6F   $��-��6s   ��6S   �� *InputSymbol+.��6�   -6�   �� 5'   
   $
��20px(�6   ���#78e3e3$��0��66   $��4��6F   $��*��6s   ��6S   �� *InputSymbol+.��6�   *6�   �� 5(   
   $
��20px(�6   ���#78e3e3$��1��66   $��4��6F   $��/��6s   ��6S   �� *InputSymbol+.��6�   /6�   �� 5)   
   $
��20px(�6   ���#78e39c$��2��66   $��4��6F   $��=��6s   ��6S   �� *InputSymbol+.��6�   =6�   �� 5*   
   $
��20px(�6   ���#78e39c$��3��66   $��4��6F   $��Clear��6s   ��6S   �� *InputSymbol+.��6�   Clear6�   �� 5+   
   $
��20px(�6   ���#78e3e3$��0��66   $��5��6F   $��(��6s   ��6S   �� *InputSymbol+.��6�   (6�   �� 5,   
   $
��20px(�6   ���#78e3e3$��1��66   $��5��6F   $��)��6s   ��6S   �� *InputSymbol+.��6�   )6�   �� 5-   
   $
��20px(�6   ���#78e39c$��2��66   $��5��6F   $��.��6s   ��6S   �� *InputSymbol+.��6�   .6�   �� 5.   
   $
��20px(�6   ���#78e39c$��3��66   $��5��6F   $��	Backspace��6s   ��6S   �� *InputSymbol+.��6�   	Backspace6�   �� 5/   
   $��1��6   $��0��6   $��4��6/   $��5��6C   y�6T   �� *HistoryVisibility+��6}   �� *	History+6�   50       J� InputBindings 51      �� 52   
   
 �� Key$ Return��6    �� CommandParameter$ =��6"   	 �� Command	 67   �� *InputSymbol+6Y   �� 53   
   $ D0��6   $ 0��6   	 63   �� *InputSymbol+6U   �� 54   
   $ D1��6   $ 1��6   	 63   �� *InputSymbol+6U   �� 55   
   $ D2��6   $ 2��6   	 63   �� *InputSymbol+6U   �� 56   
   $ D3��6   $ 3��6   	 63   �� *InputSymbol+6U   �� 57   
   $ D4��6   $ 4��6   	 63   �� *InputSymbol+6U   �� 58   
   $ D5��6   $ 5��6   	 63   �� *InputSymbol+6U   �� 59   
   $ D6��6   $ 6��6   	 63   �� *InputSymbol+6U   �� 5:   
   $ D7��6   $ 7��6   	 63   �� *InputSymbol+6U   �� 5;   
   $ D8��6   $ 8��6   	 63   �� *InputSymbol+6U   �� 5<   
   $ D9��6   $ 9��6   	 63   �� *InputSymbol+6U   �� 5=   
   $ OemPlus��6   $ =��6#   	 68   �� *InputSymbol+6Z   �� 5>   
   $ OemPlus��6   $ +��6#   
 �� 	Modifiers$
 Shiftf�68   	 6K   �� *InputSymbol+6m   �� 5?   
   $ OemMinus��6   $ -��6$   	 69   �� *InputSymbol+6[   �� 5@   
   $ D8��6   $ *��6   $
 Shiftf�63   	 6E   �� *InputSymbol+6g   �� 5A   
   $ OemQuestion��6   $ /��6'   	 6<   �� *InputSymbol+6^   �� 5B   
   $ D9��6   $ (��6   $
 Shiftf�63   	 6E   �� *InputSymbol+6g   �� 5C   
   $ D0��6   $ )��6   $
 Shiftf�63   	 6E   �� *InputSymbol+6g   �� 5D   
   $ 	OemPeriod��6   $ .��6%   	 6:   �� *InputSymbol+6\   �� 5E   
   $ 	Backspace��6   $ 	Backspace��6%   	 6B   �� *InputSymbol+6d   �� 5F   
   $ C��6   $ Clear��6   	 66   �� *InputSymbol+6X   5H      