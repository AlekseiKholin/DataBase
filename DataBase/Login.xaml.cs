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
    /// Логика взаимодействия для Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        AppContext db;
        public Login()
        {
            InitializeComponent();
            db = new AppContext();
        }

        private void RegistrationBtn_Click(object sender, RoutedEventArgs e)
        {
            Registration regwindow = new Registration();
            regwindow.Show();
            this.Close();
        }

        private void Window_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            this.DragMove();
        }

        private void Close_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void LoginBtn_Click(object sender, RoutedEventArgs e)
        {

            bool log = false;
            bool pas = false;

            string login = textboxLogin.Text.Trim(); //Trim убирает пробелы до и после текста
            string pass = textboxPass.Password.Trim();

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

            if (log == true && pas == true)
            {
                //авторизация пользователя
                User authUser = null;
                using(AppContext context = new AppContext())
                {
                    authUser = db.Users.Where(b => b.Login == login && b.Pass == pass).FirstOrDefault();
                }

                if (authUser != null)
                {
                    //User найден
                    MainWindow mainWindow = new MainWindow();
                    mainWindow.Show();
                    this.Hide();
                }
                else if (login == "admin" && pass == "12345")
                {
                    //MessageBox.Show("Admin, welcome!");
                    AdminPanel adminPanel = new AdminPanel();
                    adminPanel.Show();
                    this.Hide();

                }
                else
                {
                    MessageBox.Show("User not found");
                }

            }



        }
    }
}
