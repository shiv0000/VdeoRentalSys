using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace VdeoRentalSys
{
    public partial class Form1 : Form
    {
        //global variable to Increase the value of  the progressbar 
        private int y = 10;
        public Form1()
        {
            InitializeComponent();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            
            if (y<100) {
                y += 10;
                LoadBar.Value = y;
            }
            else
            {

                MainForm obj = new MainForm();
                obj.Visible = true;
                timer1.Enabled = false;
                this.Visible = false;

            }
        }
    }
}
