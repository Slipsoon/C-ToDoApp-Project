   M S B A M L   `   `   `  ����?  ;ToDo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:ToDoToDo  5   	       ToDo.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   $localclr-namespace:ToDo     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   $��500.00��5      $��400.00��6*     � 
ResizeMode$  NoResize=�69    � WindowStartupLocation$ CenterScreen=�6O    � WindowStyle$
 None=�6t   .��5	      �  � RowDefinitions 5
   
   �� 5      $��30 �6   �� 5      $	��440 �6   �� 5      $��30 �6   .+�5   
   � -   5         �Name$ 
GridTopBar��5      ���	#FF14B9EB.+�5      �� $��Center=�6   $��20��65   $��0,5,0,0q�6A   $��1��6R   $
��Wrap=�6_   $
��ToDo��6s   $	��Top=�6   $��50��6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   $
��Bold"�6�   $��14(�6�   ���	#FFFCA503��6�   Z� 6�   �� 5       �� Orientation$ 
Horizontal=�6   $��Right=�62   .+�5      �� -   5        $��30��5      $��30��6$   ���	#FFFCA503��60   Z� ��6F   Z� .��5      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ WindowMinimize=�6.   5      �� 5      -   5        $��30��5      $��30��6$   ���	#FFFCA503��60   Z� ��6F   Z� .��5        $ Power=�6.   5      5      5      � 5   
   -   5        $ GridTaskList��5      $��1��6%   ��5      �� 5       �� ImageSource$ Images\waterfall-bg.jpeg��6   	 j� Stretch$	 UniformToFill=�6D   .+�5"      �� -   5        
 ��Name$

 List��5"   (   $��1��6   ��66   �� *Tasks+��5#      �� 5$      .R�5%      $�  $� Orientation$ Vertical=�61   5'      5(      ��5+      �� 5,      .R�5-      �  � ColumnDefinitions 5.      �� 5/   "   $��* �63   �� 50   "   $
��Auto �63   .+�52      �� 
�������$��14(�6R   ��6(   �� *Name+6R   �� 53      $��1��6E    d� 	IsChecked 6'   �� *	Checked+6E   54      55      57      58      � 5:   
   -   5        $ GridBottomBar��5:      $��2��6&    5;      �� 5<      $	��300 �6#   �� 5=      $	��100 �6#   .+�5@      �� -   5         ��Name$ TextTask��5@      $��18(�6t   
���������6(   �� *
TaskName+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5A      -   5         ��Name$ ButtonAddTask��5A      $��1��6o   $��Add Task��6   ���	#FF14B9EB
���������6,   �� *CreateTaskCommand+��6R   �� 6�   5B      5C      5D      