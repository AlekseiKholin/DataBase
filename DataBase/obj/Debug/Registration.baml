   M S B A M L   `   `   `  ����C  ?DataBase, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:DataBaseDataBase  5   	       DataBase.Registration   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:DataBase     5   	   b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5          � WindowStartupLocation$  CenterScreen=�5	   	    � Title$ Регистрация��5
   	   $	��380��6   $	��500��6*    � 
ResizeMode$ NoResize=�66    � WindowStyle$
 None=�6}   .��5      �� ���#63ADD0.+�5   
   � $��30��6   ���#63ADD0.+�5      �� -   5         ��Name$ close��5      $��Center=�6Q   $��Right=�6l    ,  (MaterialDesignFloatingActionAccentButton#��[  6�   ��6$   Z� ��6:   Z� .��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6*   
�������$��25��6J   $��25��6V   5      5      �� 5   
   $	��300��6   $	��300��6    $��10q�6-   
�������$	��Top=�6L    �� Padding$ 20q�6d   $	��400��6q    �� CornerRadius$ 10��6�    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      	   
BlurRadius$	 60Q�6#   
   Color$
 	LightGray��63      ShadowDepth$ 0Q�6E   ._�5      �� .+�5      �� $��Регистрация��5      $��22(�5      $��Light"�5      $��0 0 0 10q�5      ���#0347695      � 5       .+�5!        $ Account=�5"      $
��Left=�5#      $��Bottom=�64   ���#034769$��30��5%      $��30��6%   $��0,0,0,7q�60   �� 5&      -   5         ��Name$ textboxLogin��5(      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$% Имя пользователя��5'      $��14(�5)      $��Center=�5*      $	��272��5+       % !MaterialDesignFloatingHintTextBox#��[ 5,      .  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush �#034769   
Foreground �#034769$��
44,0,44,10q�5/      .��6.   50      51      � 53      .+�54        $
 Lock=�55      $
��Left=�56      $��Bottom=�64   ���#034769$��30��58      $��30��6%   $��0,0,0,10q�60   59      G� 5:      -   5         G�Name$ textboxPass��5<      $ Пароль��5;      $��14(�5=       ) %MaterialDesignFloatingHintPasswordBox#��[ 5>      $	��272��5?      $��
44,0,44,10q�6%    �#034769$��Center=�5A       �#0347695C      5D      � 5F      .+�5G        $
 Lock=�5H      $
��Left=�5I      $��Bottom=�64   ���#034769$��30��5K      $��30��6%   $��0,0,0,7q�60   G� 5L      -   5        $ textboxPassAgain��5N      $% Повторите пароль��5M      $��14(�5O      #��[ 5P      $	��272��5Q      $��
44,0,44,10q�6%    �#034769$��Center=�5S       �#0347695U      5V      �� 5X      -   5        $ RegBtn��5X      $*��$Зарегистрироваться��6)   $��
95,30,83,0q�5Y   !   
����������#034769
������ $��Center=�5]   !   $	��180��6>   5^      5`      5a      5d      5e      