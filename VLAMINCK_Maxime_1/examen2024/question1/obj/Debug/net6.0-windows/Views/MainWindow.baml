   M S B A M L   `   `   `  ����D  @question1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:question1	question1  5   	       question1.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:question1     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)    � 	Resources 5	         listTemplate � ColumnDefinitions��%�   &	        �� 5
   
   .R�5      �  5      �� 5      $	��120 �6'   65   �� 5      $	��100 �6'   65   .+�5      �� $��0��6   ��6(   �� *
FullName+�� 5      $��1��6   ��6(   �� *SectionName+5      5      5      .��5      � .+�5   
   �� #��[  66   $��	0,0,541,0q�6�   ��6   �� *StudentList+ �� SelectedItem 6c   �� *SelectedStudent+6�   �� 5   
   $#��Inscription d'un étudiant(e)��6   $��Center=�67   $��0,27,0,0q�6T   $	��Top=�6f   �� 5   
   $��Nom :��6   $
��Left=�6    $��330,103,0,0q�6;   $	��Top=�6P   �� 5   
   $
��Left=�6   $��400,107,0,0q�6-    �� TextWrapping$
 Wrap=�6B   $	��Top=�6V   $	��120��6n   ��6z   �� *Name+ � DataContext 6�   �� *SelectedStudent+�� 5   
   $��	Prénom :��6   $
��Left=�6#   $��330,145,0,0q�6>   $	��Top=�6S   �� 5   
   $
��Left=�6   $��400,149,0,0q�6-   $
 Wrap=�6B   $	��Top=�6V   $	��120��6n   ��6z   �� *	FirstName+ 6�   �� *SelectedStudent+�� 5    
   $��
Section : ��6   $
��Left=�6%   $��330,188,0,0q�6@   $	��Top=�6U   �� 5!   
   $
��Left=�6   $��400,188,0,0q�6.   $	��Top=�6C   $	��120��6[   ��6g   �� *SectionList+�� 5#   
   $��Mise à jour��6   $
��Left=�6I   $��400,260,0,0q�6d   $	��Top=�6y   ��6'   �� *UpdateStudent+6y   �� 5$   
   $��M'enregistrer en info��6   $
��Left=�6S   $��603,260,0,0q�6n   $	��Top=�6�   ��61   �� *CreateStudent+6�   5,      5-      