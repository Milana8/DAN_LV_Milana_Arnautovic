   M S B A M L   `   `   `  ����D  @Zadatak_1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Zadatak_1.ViewZadatak_1.View  5   	   $    Zadatak_1.View.MakingPizzaView   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:Zadatak_1.View     5   	     � Title$  MakingPizzaView��5   	   $	��600��6!   $	��800��6.   .��5	      � .+�5   
   �� -   5         ��Name$ TextBoxBanner��5      $
��Left=�6+   $	��114��6F   $��
209,10,0,0q�6S   $
��Wrap=�6g   $��Making Pizza��6{   $	��Top=�6�   $	��454��6�   $��45(�6�   $
��Bold"�6�   $��Italic$�6�   
����  ���6�   Z� 6  � 5   
   -   5         �Name$ Grid_PO��5      $
��Left=�6    $	��274��6;   $��176,161,0,0q�6H   $	��Top=�6]   $	��487��6u   
������� J� OpacityMask
 �   �.+�5      �� $��Size:��6   $
��Left=�6$   $	��Top=�6?   $��0,-5,0,0q�6W   $
��Bold"�6i   �� 5      -   5         ��Name$ 
Size_Small��5      $��Small-300drsd��6+   $
��Left=�6C   $��	15,21,0,0q�6^   $	��Top=�6q   $	��150��6�    d� 	IsChecked 6�   �� *
Size_Small+ �� UpdateSourceTrigger$ PropertyChanged=��� 5      -   5        $ Size_Medium��5      $��Medium-500rsd��6,   $
��Left=�6D   $��	15,41,0,0q�6_   $	��Top=�6r   $	��150��6�    6�   �� *Size_Medium+$ PropertyChanged=��� 5      -   5        $ 
Size_Large��5      $��Large-700rsd��6+   $
��Left=�6B   $��	15,61,0,0q�6]   $	��Top=�6p   $	��150��6�    6�   �� *
Size_Large+$ PropertyChanged=��� 5      -   5        $ 
mayonnaise��5      $��Mayonnaise-30rsd��6+   $
��Left=�6F   $��
15,207,0,0q�6a   $	��Top=�6u   $	��150��6�    6�   �� *
Mayonnaise+$ PropertyChanged=��� 5      -   5        $ ketchup��5      $��Ketchup-30rsd��6(   $
��Left=�6@   $��
15,187,0,0q�6[   $	��Top=�6o   $	��150��6�    6�   �� *	Ketchup+$ PropertyChanged=��� 5      -   5        $	 hum��5      $��	Hum-60rsd��6$   $
��Left=�68   $��
15,147,0,0q�6S   $	��Top=�6g   $	��150��6    6�   �� *Hum+$ PropertyChanged=��� 5      -	   5        $ sausage��5      $��Sausage-70rsd��6(   $
��Left=�6@   $��
15,168,0,0q�6[   $	��Top=�6o   $	��150��6�    6�   �� *	Sausage+$ PropertyChanged=��� 5      -
   5        $ oregano��5      $��Oregano-10rsd��6(   $
��Left=�6@   $��209,147,0,0q�6[   $	��Top=�6p   $	��150��6�    6�   �� *	Oregano+$ PropertyChanged=��� 5      -   5        $ cheese��5      $��Cheese-50rsd��6'   $
��Left=�6>   $��209,190,0,0q�6Y   $	��Top=�6n   $	��150��6�    6�   �� *Cheese+$ PropertyChanged=��� 5      -   5        $ sesame��5      $��Sesame-20rsd��6'   $
��Left=�6>   $��209,170,0,0q�6Y   $	��Top=�6n   $	��150��6�    6�   �� *Sesame+$ PropertyChanged=��� 5      -   5        $ salami��5      $��Salami-50rsd��6'   $
��Left=�6>   $��209,210,0,-53q�6Y   $	��Top=�6p   $	��122��6�   $	��102��6�    6�   �� *Salami+$ PropertyChanged=��� 5      -   5        $ olives��5      $��Olives-50rsd��6'   $
��Left=�6>   $��209,230,0,-58q�6Y   $	��Top=�6p   $	��122��6�   $	��102��6�    6�   �� *Olives+$ PropertyChanged=��� 5      -   5        $ chilli��5      $��Chilli-20rsd��6'   $
��Left=�6>   $��15,230,0,-58q�6Y   $	��Top=�6o   $	��122��6�   $	��102��6�    6�   �� *Chilli+$ PropertyChanged=�5      �� 5   
   -   5         ��Name$ 	Calculate��5      $��	Calculate��6%   $
��Left=�6{   $��512,440,0,0q�6�   $	��Top=�6�   $	��127��6�   $��36��6�   $��20(�6�   $��Calibri)�6�   $
��Bold"�6�   ��69   �� *	Calculate+$ PropertyChanged=�6�   �� 5   
   -   5        $ NewPizza��5      $��NewPizza��6$   $
��Left=�6x   $��512,500,0,0q�6�   $	��Top=�6�   $	��127��6�   $��36��6�   $��20(�6�   $��Calibri)�6�   $
��Bold"�6�   ��67   �� *
NewPizza+$ PropertyChanged=�6�   �� 5   
   $��Dish:��6   $
��Left=�6    $��176,259,0,0q�6;   $	��Top=�6P   $
��Bold"�6h   �� 5!   
   $
��Left=�6   $��9��6/   $��176,259,0,0q�6:   $	��Top=�6O   $	��359��6g   5%      5&      