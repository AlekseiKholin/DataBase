using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace DataBase
{
    /// <summary>
    /// Логика взаимодействия для Registration.xaml
    /// </summary>
    public partial class Registration : Window
    {

        AppContext db;
        public Registration()
        {
            InitializeComponent();

            db = new AppContext();

        }

        private void Window_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            this.DragMove();
        }
        private void close_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void RegBtn_Click(object sender, RoutedEventArgs e)
        {
            bool log = false;
            bool pas  = false;
            bool pas1 = false;

            string login = textboxLogin.Text.Trim(); //Trim убирает пробелы до и после текста
            string pass = textboxPass.Password.Trim();
            string passAgain = textboxPassAgain.Password.Trim();

            if (login.Length < 4)
            {
                textboxLogin.ToolTip = "Короткое имя пользователя"; //Всплывающая подсказка
                textboxLogin.Background = Brushes.PaleVioletRed;
            }
            else
            {
                textboxLogin.ToolTip = "";
                textboxLogin.Background = Brushes.Transparent;
                log = true;
            }

            if (pass.Length < 4)
            {   
                textboxPass.ToolTip = "Короткий пароль"; 
                textboxPass.Background = Brushes.PaleVioletRed;
            }
            else
            {
                textboxPass.ToolTip = "";
                textboxPass.Background = Brushes.Transparent;
                pas = true;
            }

            if (passAgain != pass)
            {
                textboxPassAgain.ToolTip = "Не совпадает пароль";
                textboxPassAgain.Background = Brushes.PaleVioletRed;
            }
            else
            {
                textboxPassAgain.ToolTip = "";
                textboxPassAgain.Background = Brushes.Transparent;
                pas1 = true;

            }
            if(log==true && pas==true && pas1 == true)
            {
                //регистрация пользователя
                User user = new User(login, pass);

                //проверить: User уникальный или нет
                User regUser = null;
                using (AppContext context = new AppContext())
                {
                    regUser = db.Users.Where(b => b.Login == login).FirstOrDefault();
                }

                if (regUser != null ) //если уже есть в базе
                {
                    MessageBox.Show("User с таким логином уже существует");
                }
                else
                {
                    db.Users.Add(user);
                    db.SaveChanges();

                    Login loginWindow = new Login();
                    loginWindow.Show();
                    this.Hide();
                }

            }

        }
    }
}
