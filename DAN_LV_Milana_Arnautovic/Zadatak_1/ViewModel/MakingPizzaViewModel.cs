﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using Zadatak_1.Command;
using Zadatak_1.View;

namespace Zadatak_1.ViewModel
{
    class MakingPizzaViewModel : ViewModelBase
    {
        MakingPizzaView view;

        public MakingPizzaViewModel(MakingPizzaView view)
        {
            this.view = view;
        }


        private bool salami;

        public bool Salami
        {
            get { return salami; }
            set
            {
                salami = value;
                OnPropertyChanged("Salami");
            }
        }

        private bool hum;

        public bool Hum
        {
            get { return hum; }
            set
            {
                hum = value;
                OnPropertyChanged("Hum");
            }
        }
        private bool sausage;

        public bool Sausage
        {
            get { return sausage; }
            set
            {
                sausage = value;
                OnPropertyChanged("Sausage");
            }
        }
        private bool ketchup;

        public bool Ketchup
        {
            get { return ketchup; }
            set
            {
                ketchup = value;
                OnPropertyChanged("Ketchup");
            }
        }
        private bool mayonnaise;

        public bool Mayonnaise
        {
            get { return mayonnaise; }
            set
            {
                mayonnaise = value;
                OnPropertyChanged("Mayonnaise");
            }
        }

        private bool chilli;

        public bool Chilli
        {
            get { return chilli; }
            set
            {
                chilli = value;
                OnPropertyChanged("Chilli");
            }
        }

        private bool olives;

        public bool Olives
        {
            get { return olives; }
            set
            {
                olives = value;
                OnPropertyChanged("Olives");
            }
        }
        private bool oregano;

        public bool Oregano
        {
            get { return oregano; }
            set
            {
                oregano = value;
                OnPropertyChanged("Oregano");
            }
        }
        private bool sesame;

        public bool Sesame
        {
            get { return sesame; }
            set
            {
                sesame = value;
                OnPropertyChanged("Sesame");
            }
        }
        private bool cheese;

        public bool Cheese
        {
            get { return cheese; }
            set
            {
                cheese = value;
                OnPropertyChanged("Cheese");
            }
        }

        private bool size_small;

        public bool Size_Small
        {
            get { return size_small; }
            set
            {
                size_small = value;
                OnPropertyChanged("Size_Small");
            }
        }

        private bool size_medium;

        public bool Size_Medium
        {
            get { return size_medium; }
            set
            {
                size_medium = value;
                OnPropertyChanged("Size_Medium");
            }
        }
        private bool size_large;

        public bool Size_Large
        {
            get { return size_large; }
            set
            {
                size_large = value;
                OnPropertyChanged("Size_Large");
            }
        }
        public int total;
        public string Size;
        /// <summary>
        /// Method for calculating the total price
        /// </summary>
        /// <param name="add"></param>
        public void AddToTotal(int add)
        {
            total += add;
        }

        public void SizeCheck()
        {
            if (Size_Small == true)
            {
                AddToTotal(300);
                Size = "Small";
            }
            if (Size_Medium == true)
            {
                AddToTotal(500);
                Size = "Medium";
            }
            if (Size_Large == true)
            {
                AddToTotal(700);
                Size = "Large";
            }
        }
        /// <summary>
        /// The method of adding the price of a pizza side dish to the total price
        /// </summary>
        public void DishCheck()
        {
            if (Salami == true)
            {
                AddToTotal(50);

            }
            if (Hum == true)
            {
                AddToTotal(60);

            }
            if (Sausage == true)
            {
                AddToTotal(70);

            }
            if (Ketchup == true)
            {
                AddToTotal(30);

            }
            if (Mayonnaise == true)
            {
                AddToTotal(30);

            }
            if (Chilli == true)
            {
                AddToTotal(20);

            }
            if (Olives == true)
            {
                AddToTotal(30);

            }
            if (Oregano == true)
            {
                AddToTotal(10);

            }
            if (Sesame == true)
            {
                AddToTotal(20);

            }
            if (Cheese == true)
            {
                AddToTotal(50);

            }

        }
        private ICommand calculate;
        /// <summary>
        /// Calculate command
        /// </summary>
        public ICommand Calculate
        {
            get
            {
                if (calculate == null)
                {
                    calculate = new RelayCommand(param => CalculateExecute(), param => CanCalculateExecute());
                }
                return calculate;
            }
        }

        /// <summary>
        /// Calculate execute
        /// </summary>
        private void CalculateExecute()
        {
            SizeCheck();
            DishCheck();


            MessageBox.Show(
                             "\nPizza Size: " + Size +
                             "\nPrice:" + total + " Rsd");


        }
        /// <summary>
        /// Can calculate
        /// </summary>
        /// <returns></returns>
        private bool CanCalculateExecute()
        {
            if (Size_Small == true && Size_Medium == true)
            {
                return false;
            }
            if (Size_Small == true && Size_Large == true)
            {
                return false;
            }
            if (Size_Medium == true && Size_Large == true)
            {
                return false;
            }
            if (Size_Small == false && Size_Large == false && Size_Medium == false)
            {
                return false;
            }
            if (Size_Small == true && Size_Large == true && Size_Medium == true)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        private ICommand newpizza;
        /// <summary>
        /// New Pizza command
        /// </summary>
        public ICommand NewPizza
        {
            get
            {
                if (newpizza == null)
                {
                    newpizza = new RelayCommand(param => NewPizzaExecute(), param => CanNewPizzaExecute());
                }
                return newpizza;
            }
        }

        /// <summary>
        /// New Pizza execute
        /// </summary>
        private void NewPizzaExecute()
        {
            total = 0;
            Size_Small = false;
            Size_Medium = false;
            Size_Large = false;
            Salami = false;
            Hum = false;
            Sausage = false;
            Ketchup = false;
            Mayonnaise = false;
            Chilli = false;
            Olives = false;
            Oregano = false;
            Sesame = false;
            Cheese = false;



        }
        /// <summary>
        /// Can new pizza
        /// </summary>
        /// <returns></returns>
        private bool CanNewPizzaExecute()
        {
            return true;
        }
    }

}

