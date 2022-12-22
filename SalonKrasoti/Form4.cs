using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Net.Mime.MediaTypeNames;

namespace SalonKrasoti
{
    public partial class Form4 : Form
       
    {
        public Form4()
        {
            InitializeComponent();
        }
        private string text = String.Empty;
        private void Form4_Load(object sender, EventArgs e)
        {
            pictureBox1.Image = this.CreateImage(pictureBox1.Width, pictureBox1.Height);
        }
        private Bitmap CreateImage(int Width, int Height)
        {
            Random rnd = new Random();

            //Создадим изображение
            Bitmap result = new Bitmap(Width, Height);

            //Вычислим позицию текста
            int Xpos = rnd.Next(0, Width - 40);
            int Ypos = rnd.Next(15, Height - 10);

            //Добавим различные цвета
            Brush[] colors = { Brushes.Black, Brushes.Red, Brushes.RoyalBlue, Brushes.Green };

            //Укажем где рисовать
            Graphics g = Graphics.FromImage(result);

            //Пусть фон картинки будет серым
            g.Clear(Color.Gray);

            //Сгенерируем текст
            text = String.Empty;
            string ALF = "1234567890QWERTYUIOPASDFGHJKLZXCVBNM";
            for (int i = 0; i < 5; ++i)
                text += ALF[rnd.Next(ALF.Length)];

            //Нарисуем сгенирируемый текст
            g.DrawString(text, new Font("Arial", 20), colors[rnd.Next(colors.Length)], new PointF(Xpos, Ypos));

            //Добавим немного помех
            /////Линии из углов
            g.DrawLine(Pens.Black, new Point(0, 0), new Point(Width - 1, Height - 1));
            g.DrawLine(Pens.Black, new Point(0, Height - 1), new Point(Width - 1, 0));
            ////Белые точки
            for (int i = 0; i < Width; ++i)
                for (int j = 0; j < Height; ++j)
                    if (rnd.Next() % 20 == 0)
                        result.SetPixel(i, j, Color.White);

            return result;
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            pictureBox1.Image = this.CreateImage(pictureBox1.Width, pictureBox1.Height);
        }
        private void button2_Click(object sender, EventArgs e)
        {
            if (textBox1.Text == this.text)
                MessageBox.Show("Верно!");
            else
                MessageBox.Show("Ошибка!");
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            Form f = new Form3();
            f.Show();
            this.Hide();
            f.Show();
        }
    }
}
