using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;

namespace EPT_Transfer_Test
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new EPT_Transfer_Test());
        }
    }
}
