   M S B A M L   `   `   `  ����L  HExamenJanvier2023, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:ExamenJanvier2023ExamenJanvier2023  5   	   "    ExamenJanvier2023.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:ExamenJanvier2023     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)    � 	Resources 5	         listTemplate��%�   &	        �� 5
   
   .R�5      �� $��0 5 0 5q�6   .+�5      �� $
��Left=�66   $��Center=�6Q   ��6   �� *	ProductId+6Q   �� 5      $��Right=�68   $��Center=�6T   ��6   �� *ProductName+6T   5      5      5      .��5      �  � ColumnDefinitions 5   
   �� 5      �� 5      .+�5   
   �� -   5        $��Product��5      $��84,28,84,310q�6#   #��[  5      ��5      �� *ProductList+ �� SelectedItem 5      �� *SelectedProduct+5      �� 5   
   $��
ProductID:��6   $��84,156,231,243q�6%   �� 5   
   $��174,153,84,246q�6c   ��6   �� *SelectedProduct.ProductId+ �� UpdateSourceTrigger$ PropertyChanged=�6c   �� 5   
   $��ProductName:��6   $��84,191,231,213q�6'   �� 5   
   $��174,191,84,213q�6e   ��6   �� *SelectedProduct.ProductName+$ PropertyChanged=�6e   �� 5   
   $��
Categorie:��6   $��84,226,231,178q�6%   �� 5    
   $��174,226,84,178q�6g   ��6   �� *SelectedProduct.CategorieName+$ PropertyChanged=�6g   �� 5!   
   $��Fournisseur:��6   $��84,256,231,148q�6'   �� 5"   
   $��174,256,84,148q�6f   ��6   �� *SelectedProduct.SupplierName+$ PropertyChanged=�6f   �� 5$   
   $)��#Abandonner le produit sélectionné��63   $��71,321,84,69q�6_   ��6   �� *UpdateCommand+6_   �� 5&   
   $��1��6   $��10q�6%   .+�5'      �� $E��?Nombre de Produits par Pays ayant été vendu au moins une fois��6   $��Center=�5(      $
��Bold"�61   $��0,0,0,10q�6C   &   System.Windows.Controls.DataGrid  5)         AutoGenerateColumns$ False��6@   $	��350��6\   ��6   �� *CountrySalesList+   Columns 5*      0  *System.Windows.Controls.DataGridTextColumn  5+      ,  &System.Windows.Controls.DataGridColumn   Header$ Country��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6V   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 6:   �� *	Country+6V     5,      $ Nb��6)   $ * 6L   	 65   �� *Nb+6L   5.      5/      51      52      