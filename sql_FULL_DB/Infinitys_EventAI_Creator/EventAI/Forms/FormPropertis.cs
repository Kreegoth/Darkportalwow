﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using EventAI.Properties;

namespace EventAI
{
    public partial class FormPropertis : Form
    {
        public FormPropertis()
        {
            InitializeComponent();
        }

        private void _cbUseDBConnect_CheckedChanged(object sender, EventArgs e)
        {
            _gbDbSetting.Enabled = ((CheckBox)sender).Checked;
        }

        private void _bSaveSettings_Click(object sender, EventArgs e)
        {
            Settings.Default.Host = _tbHost.Text;
            Settings.Default.Port = _tbPort.Text;
            Settings.Default.User = _tbUser.Text;
            Settings.Default.Pass = _tbPass.Text;
            Settings.Default.Db_mangos = _tbBase.Text;
            Settings.Default.UseDbConnect = _cbUseDBConnect.Checked;

            if (((Button)sender).Text != "Save")
            {
                if (MySQLConnenct.IsConnected)
                {
                    MessageBox.Show("Connection is successfully!", "MySQL Connections!",
                        MessageBoxButtons.OK, MessageBoxIcon.Information);
                    FillListView();
                }
                else
                {
                    MessageBox.Show("No connection to database, please check settings", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }

            if (((Button)sender).Text == "Save")
            {
                Settings.Default.Save();
                this.Close();
            }
        }

        private void FillListView()
        {
            throw new NotImplementedException();
        }

        private void SettingsForm_Load(object sender, EventArgs e)
        {
            _tbHost.Text = Settings.Default.Host;
            _tbPort.Text = Settings.Default.Port;
            _tbUser.Text = Settings.Default.User;
            _tbPass.Text = Settings.Default.Pass;
            _tbBase.Text = Settings.Default.Db_mangos;
            _gbDbSetting.Enabled = _cbUseDBConnect.Checked = Settings.Default.UseDbConnect;
        }
    }
}
