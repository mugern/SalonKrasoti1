using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace SalonKrasoti
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
            
        }
        Model1 db = new Model1();
        private void button1_Click(object sender, EventArgs e)
        {
            // проверяем, что во все текстовые поля введены данные
            if (textBox1.Text == "" || textBox2.Text == "" ||
              textBox3.Text == "" || textBox4.Text == "")
            {
                MessageBox.Show("Нужно задать все данные!");
                return;
            }
            if (textBox2.Text != textBox3.Text)
            {
                MessageBox.Show("Значения паролей не совпадают!");
                return;
            }
            if ((textBox4.Text != "Администратор") && (textBox4.Text != "Парикмахер") && (textBox4.Text != "Рестайлер"))
  {
                MessageBox.Show("Задана неверная роль!");
                return;
            }

            // ищем запись пользователя с введенным логином
            Пользователи usr = db.Пользователи.Find(textBox1.Text);
            // если такой пользователь есть и его пароль правильный
            if (usr != null)
            {
                MessageBox.Show("Пользователь с таким логином уже есть!");
                return;
            }
            // создаем нового пользователя
            usr = new Пользователи();
            usr.Логин = textBox1.Text;
            usr.Пароль = textBox3.Text;
            // добавляем новую учетную запись в коллекцию
            db.Пользователи.Add(usr);
            try
            {
                // сохраняем нового пользователя в базе данных
                db.SaveChanges();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return;
            }
            MessageBox.Show("Пользователь " + usr.ID + "зарегистрирован!");
            Form1.FORMA.Show();
            this.Close();
            return;

        }

        private void button2_Click(object sender, EventArgs e)
        {
            // форму регистрации закрываем
            this.Close();
            // показываем скрытую форму Form1
            Form1.FORMA.Show();


        }

        private void Form2_Load(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }
    }
}
