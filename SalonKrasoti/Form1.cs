using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Net.Mime.MediaTypeNames;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;


namespace SalonKrasoti
{
    public partial class Form1 : Form

    {
        public Form1()
        {
            InitializeComponent();

        }
        public static Form1 FORMA { get; set; }
        private void Form1_Load(object sender, EventArgs e)
        {
            Model1 db = new Model1();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            {

                if ((textBox1.Text == "1") && (textBox2.Text == "Гев") && (textBox3.Text == "Гев") && (textBox4.Text == "1"))
                {
                    Form f = new Form4();
                    f.Show();
                    this.Hide();
                    f.Show();

                }
                else MessageBox.Show("Неверный пароль или логин");

            }
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form f = new Form2();
            f.Show();
            this.Hide();
            f.Show();

        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            Form f = new Form2();
            f.Show();
            this.Hide();
            f.Show();


        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
