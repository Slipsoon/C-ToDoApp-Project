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
using System.Windows.Navigation;
using System.Windows.Shapes;
using ToDo.ViewModel;

namespace ToDo
{
    /// <summary>
    /// Logika interakcji dla klasy MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            var tasks = new TaskListViewModel();
            this.DataContext = tasks;

            
        }

        private void ButtonExit_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void GridTopBar_MouseDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        private void ButtonMinimize_Click(object sender, RoutedEventArgs e)
        {
            System.Windows.Forms.NotifyIcon notifyIcon = new System.Windows.Forms.NotifyIcon();
            notifyIcon.Icon = new System.Drawing.Icon("icon2.ico");
            notifyIcon.Visible = true;
            notifyIcon.MouseClick += new System.Windows.Forms.MouseEventHandler(notifyIcon_Click);
            notifyIcon.ShowBalloonTip(500, "ToDo", "Don't forget about your tasks!", System.Windows.Forms.ToolTipIcon.Info);
            this.Hide();

            System.Windows.Forms.ContextMenu notifyIconContextMenu = new System.Windows.Forms.ContextMenu();
            notifyIconContextMenu.MenuItems.Add("Show my tasks", new EventHandler(Open));
            notifyIconContextMenu.MenuItems.Add("Close App", new EventHandler(Close));

            notifyIcon.ContextMenu = notifyIconContextMenu;
        }

        private void Open(object sender, EventArgs e)
        {
            this.Show();
        }

        private void Close(object sender, EventArgs e)
        {
            this.Close();
        }

        private void notifyIcon_Click(object sender, System.Windows.Forms.MouseEventArgs e)
        {
            if(e.Button == System.Windows.Forms.MouseButtons.Left)
            {
                this.Show();
            }
        }
    }
}
