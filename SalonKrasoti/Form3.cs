using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SalonKrasoti
{
    public partial class Form3 : Form
    {
        public Form3()
        {
            InitializeComponent();
        }

        private void Form3_Load(object sender, EventArgs e)
        {
            // TODO: данная строка кода позволяет загрузить данные в таблицу "salonKrasotiDataSet.Услуги". При необходимости она может быть перемещена или удалена.
            this.услугиTableAdapter.Fill(this.salonKrasotiDataSet.Услуги);
            // TODO: данная строка кода позволяет загрузить данные в таблицу "salonKrasotiDataSet.Категория_услуги". При необходимости она может быть перемещена или удалена.
            this.категория_услугиTableAdapter.Fill(this.salonKrasotiDataSet.Категория_услуги);

        }
    }
}
