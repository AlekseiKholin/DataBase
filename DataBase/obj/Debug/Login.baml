   M S B A M L   `   `   `  ����C  ?DataBase, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:DataBaseDataBase  5   	       DataBase.Login   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:DataBase     5   	   b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5          � WindowStartupLocation$  CenterScreen=�5	   	    � Title$  Вход в систему��5
   	   $	��340��6    $	��500��6-    � 
ResizeMode$ NoResize=�69    � WindowStyle$
 None=�6�    � 	Resources 5      ��%    5      .��5      �� .+�5   
   � $��30��6   ���#63ADD0.+�5      �� -   5         ��Name$ Close��5      $��Center=�6Q   $��Right=�6l    ,  (MaterialDesignFloatingActionAccentButton#��[  6�   ��6$   Z� ��6:   Z� .��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6*   
�������$��25��6J   $��25��6V   5      5      � 5   
   $	��320��6   ���#63ADD0.+�5      �� $	��300��6   $��10q�6$   
�������$	��Top=�6C    �� Padding$ 20q�6[   $	��400��6h    �� CornerRadius$ 10��6w   	 J� Effect	 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      
   
BlurRadius$
 60Q�6'      Color$ 	LightGray��67      ShadowDepth$ 0Q�6I   ._�5      �� .+�5      �� $��Авторизация��5      $��22(�5      $��Light"�5       $��0 0 0 10q�5!      ���#0347695#      � 5$      .+�5%        $ Account=�5&      $
��Left=�5'      $��Bottom=�64   ���#034769$��30��5)      $��30��6%   $��0,0,0,4q�60   5*      �� 5,      -   5         ��Name$ textboxLogin��5.      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$% Имя пользователя��5-      $��14(�5/      $��Center=�50      $	��272��51       % !MaterialDesignFloatingHintTextBox#��[ 52      .  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush �#034769   
Foreground �#034769$��
44,0,44,10q�55      .��6.   56      58      � 59      .+�5:        $
 Lock=�5;      $
��Left=�5<      $��Bottom=�64   ���#034769$��30��5>      $��30��6%   $��0,0,0,27q�60   5?      G� 5A      -   5         G�Name$ textboxPass��5C      $ Пароль��5B      $��14(�5D       ) %MaterialDesignFloatingHintPasswordBox#��[ 5E      $	��272��5F      $��
44,0,44,30q�6%    �#034769$��Center=�5H       �#0347695J      5K      � 5M      $��32��6   .+�5N      �� -   5         ��Name$ 	checkBox1��5O      $!��Запомнить меня��5P      ���#034769$
��Left=�5R      $��34,0,0,0q�64   $	��125��6F   ���#0347695T      �� 5U      -   5        $ LoginBtn��5U   !   $��
Войти��63   $��0,0,40,0q�5V   !   
����������#034769
������ $��Right=�5Z   !   $	��130��6=   5[      5\      � 5]       � ColumnDefinitions 5^      �� 5_      $	��13* �6/   �� 5`      $��5* �6/   .+�5c      �� $,��&Не зарегистрированы?��5d      $��Center=�5e      $��Right=�5f      ���#034769$��0��5h      $��
0,19,65,-3q�6)   5i      �� 5k      -   5        $ RegistrationBtn��5k   !   $��Регистрация��5l      $
��Bold"�5m      $��12(�6+   ���#034769
������ 
������ $��Center=�5q      $��186,11,68,-11q�5r      $	��106��5s      $��2��6C   5t      5v      5w      5x      5y      5z      5{      