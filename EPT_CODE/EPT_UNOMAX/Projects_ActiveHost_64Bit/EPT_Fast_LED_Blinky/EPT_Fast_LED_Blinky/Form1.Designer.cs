namespace EPT_LED_Blinky
{
    partial class EPT_LED_Blinky
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnLEDReset = new System.Windows.Forms.Button();
            this.btnTrigger4 = new System.Windows.Forms.Button();
            this.btnTrigger3 = new System.Windows.Forms.Button();
            this.btnTrigger2 = new System.Windows.Forms.Button();
            this.btnTrigger1 = new System.Windows.Forms.Button();
            this.btnCloseDevice = new System.Windows.Forms.Button();
            this.btnOpenDevice = new System.Windows.Forms.Button();
            this.cmbDevList = new System.Windows.Forms.ComboBox();
            this.LEDBox = new System.Windows.Forms.GroupBox();
            this.label5 = new System.Windows.Forms.Label();
            this.btnCancel = new System.Windows.Forms.Button();
            this.btnOk = new System.Windows.Forms.Button();
            this.btnRandom = new System.Windows.Forms.Button();
            this.tbTimerValue = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btnShiftLeft = new System.Windows.Forms.Button();
            this.btnShiftRight = new System.Windows.Forms.Button();
            this.btnCountUp = new System.Windows.Forms.Button();
            this.btnCountDown = new System.Windows.Forms.Button();
            this.lblDeviceConnected = new System.Windows.Forms.Label();
            this.trkbrTimer = new System.Windows.Forms.TrackBar();
            this.LEDBox.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.trkbrTimer)).BeginInit();
            this.SuspendLayout();
            // 
            // btnLEDReset
            // 
            this.btnLEDReset.Location = new System.Drawing.Point(254, 141);
            this.btnLEDReset.Name = "btnLEDReset";
            this.btnLEDReset.Size = new System.Drawing.Size(32, 23);
            this.btnLEDReset.TabIndex = 64;
            this.btnLEDReset.Text = "Rst";
            this.btnLEDReset.UseVisualStyleBackColor = true;
            this.btnLEDReset.Click += new System.EventHandler(this.btnLEDReset_Click);
            // 
            // btnTrigger4
            // 
            this.btnTrigger4.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnTrigger4.Location = new System.Drawing.Point(302, 106);
            this.btnTrigger4.Name = "btnTrigger4";
            this.btnTrigger4.Size = new System.Drawing.Size(23, 23);
            this.btnTrigger4.TabIndex = 63;
            this.btnTrigger4.Text = "4";
            this.btnTrigger4.UseVisualStyleBackColor = true;
            this.btnTrigger4.Click += new System.EventHandler(this.btnTrigger4_Click);
            // 
            // btnTrigger3
            // 
            this.btnTrigger3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnTrigger3.Location = new System.Drawing.Point(273, 106);
            this.btnTrigger3.Name = "btnTrigger3";
            this.btnTrigger3.Size = new System.Drawing.Size(23, 23);
            this.btnTrigger3.TabIndex = 62;
            this.btnTrigger3.Text = "3";
            this.btnTrigger3.UseVisualStyleBackColor = true;
            this.btnTrigger3.Click += new System.EventHandler(this.btnTrigger3_Click);
            // 
            // btnTrigger2
            // 
            this.btnTrigger2.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnTrigger2.Location = new System.Drawing.Point(244, 106);
            this.btnTrigger2.Name = "btnTrigger2";
            this.btnTrigger2.Size = new System.Drawing.Size(23, 23);
            this.btnTrigger2.TabIndex = 61;
            this.btnTrigger2.Text = "2";
            this.btnTrigger2.UseVisualStyleBackColor = true;
            this.btnTrigger2.Click += new System.EventHandler(this.btnTrigger2_Click);
            // 
            // btnTrigger1
            // 
            this.btnTrigger1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnTrigger1.Location = new System.Drawing.Point(215, 106);
            this.btnTrigger1.Name = "btnTrigger1";
            this.btnTrigger1.Size = new System.Drawing.Size(22, 23);
            this.btnTrigger1.TabIndex = 60;
            this.btnTrigger1.Text = "1";
            this.btnTrigger1.UseVisualStyleBackColor = true;
            this.btnTrigger1.Click += new System.EventHandler(this.btnTrigger1_Click);
            // 
            // btnCloseDevice
            // 
            this.btnCloseDevice.Location = new System.Drawing.Point(346, 12);
            this.btnCloseDevice.Name = "btnCloseDevice";
            this.btnCloseDevice.Size = new System.Drawing.Size(52, 23);
            this.btnCloseDevice.TabIndex = 59;
            this.btnCloseDevice.Text = "Close";
            this.btnCloseDevice.UseVisualStyleBackColor = true;
            this.btnCloseDevice.Click += new System.EventHandler(this.btnCloseDevice_Click);
            // 
            // btnOpenDevice
            // 
            this.btnOpenDevice.Location = new System.Drawing.Point(244, 12);
            this.btnOpenDevice.Name = "btnOpenDevice";
            this.btnOpenDevice.Size = new System.Drawing.Size(50, 23);
            this.btnOpenDevice.TabIndex = 58;
            this.btnOpenDevice.Text = "Open";
            this.btnOpenDevice.UseVisualStyleBackColor = true;
            this.btnOpenDevice.Click += new System.EventHandler(this.btnOpenDevice_Click);
            // 
            // cmbDevList
            // 
            this.cmbDevList.FormattingEnabled = true;
            this.cmbDevList.Location = new System.Drawing.Point(13, 12);
            this.cmbDevList.Name = "cmbDevList";
            this.cmbDevList.Size = new System.Drawing.Size(196, 21);
            this.cmbDevList.TabIndex = 57;
            // 
            // LEDBox
            // 
            this.LEDBox.Controls.Add(this.label5);
            this.LEDBox.Location = new System.Drawing.Point(198, 68);
            this.LEDBox.Name = "LEDBox";
            this.LEDBox.Size = new System.Drawing.Size(143, 110);
            this.LEDBox.TabIndex = 66;
            this.LEDBox.TabStop = false;
            this.LEDBox.Text = "LED Controls";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(17, 16);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(35, 13);
            this.label5.TabIndex = 17;
            this.label5.Text = "LED\'s";
            // 
            // btnCancel
            // 
            this.btnCancel.Location = new System.Drawing.Point(273, 317);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(58, 23);
            this.btnCancel.TabIndex = 72;
            this.btnCancel.Text = "Cancel";
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // btnOk
            // 
            this.btnOk.Location = new System.Drawing.Point(198, 317);
            this.btnOk.Name = "btnOk";
            this.btnOk.Size = new System.Drawing.Size(52, 23);
            this.btnOk.TabIndex = 71;
            this.btnOk.Text = "OK";
            this.btnOk.UseVisualStyleBackColor = true;
            this.btnOk.Click += new System.EventHandler(this.btnOk_Click);
            // 
            // btnRandom
            // 
            this.btnRandom.Location = new System.Drawing.Point(13, 141);
            this.btnRandom.Name = "btnRandom";
            this.btnRandom.Size = new System.Drawing.Size(65, 23);
            this.btnRandom.TabIndex = 74;
            this.btnRandom.Text = "Random";
            this.btnRandom.UseVisualStyleBackColor = true;
            this.btnRandom.Click += new System.EventHandler(this.btnRandom_Click);
            // 
            // tbTimerValue
            // 
            this.tbTimerValue.Location = new System.Drawing.Point(13, 84);
            this.tbTimerValue.Name = "tbTimerValue";
            this.tbTimerValue.Size = new System.Drawing.Size(65, 20);
            this.tbTimerValue.TabIndex = 75;
            this.tbTimerValue.Text = "65535";
            this.tbTimerValue.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(20, 65);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(91, 13);
            this.label1.TabIndex = 76;
            this.label1.Text = "Enter Timer Value";
            // 
            // btnShiftLeft
            // 
            this.btnShiftLeft.Location = new System.Drawing.Point(13, 179);
            this.btnShiftLeft.Name = "btnShiftLeft";
            this.btnShiftLeft.Size = new System.Drawing.Size(65, 23);
            this.btnShiftLeft.TabIndex = 77;
            this.btnShiftLeft.Text = "Shift Left";
            this.btnShiftLeft.UseVisualStyleBackColor = true;
            this.btnShiftLeft.Click += new System.EventHandler(this.btnShiftLeft_Click);
            // 
            // btnShiftRight
            // 
            this.btnShiftRight.Location = new System.Drawing.Point(13, 220);
            this.btnShiftRight.Name = "btnShiftRight";
            this.btnShiftRight.Size = new System.Drawing.Size(65, 23);
            this.btnShiftRight.TabIndex = 78;
            this.btnShiftRight.Text = "Shift Right";
            this.btnShiftRight.UseVisualStyleBackColor = true;
            this.btnShiftRight.Click += new System.EventHandler(this.btnShiftRight_Click);
            // 
            // btnCountUp
            // 
            this.btnCountUp.Location = new System.Drawing.Point(13, 260);
            this.btnCountUp.Name = "btnCountUp";
            this.btnCountUp.Size = new System.Drawing.Size(65, 23);
            this.btnCountUp.TabIndex = 79;
            this.btnCountUp.Text = "Count Up";
            this.btnCountUp.UseVisualStyleBackColor = true;
            this.btnCountUp.Click += new System.EventHandler(this.btnCountUp_Click);
            // 
            // btnCountDown
            // 
            this.btnCountDown.Location = new System.Drawing.Point(13, 306);
            this.btnCountDown.Name = "btnCountDown";
            this.btnCountDown.Size = new System.Drawing.Size(65, 23);
            this.btnCountDown.TabIndex = 80;
            this.btnCountDown.Text = "Count Dn";
            this.btnCountDown.UseVisualStyleBackColor = true;
            this.btnCountDown.Click += new System.EventHandler(this.btnCountDown_Click);
            // 
            // lblDeviceConnected
            // 
            this.lblDeviceConnected.AutoSize = true;
            this.lblDeviceConnected.Location = new System.Drawing.Point(120, 40);
            this.lblDeviceConnected.Name = "lblDeviceConnected";
            this.lblDeviceConnected.Size = new System.Drawing.Size(35, 13);
            this.lblDeviceConnected.TabIndex = 81;
            this.lblDeviceConnected.Text = "label2";
            // 
            // trkbrTimer
            // 
            this.trkbrTimer.Location = new System.Drawing.Point(110, 106);
            this.trkbrTimer.Maximum = 65535;
            this.trkbrTimer.Name = "trkbrTimer";
            this.trkbrTimer.Orientation = System.Windows.Forms.Orientation.Vertical;
            this.trkbrTimer.Size = new System.Drawing.Size(45, 223);
            this.trkbrTimer.SmallChange = 100;
            this.trkbrTimer.TabIndex = 82;
            this.trkbrTimer.TickFrequency = 1000;
            this.trkbrTimer.Value = 65535;
            this.trkbrTimer.Scroll += new System.EventHandler(this.trkbrTimer_Scroll);
            // 
            // EPT_LED_Blinky
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(422, 362);
            this.Controls.Add(this.trkbrTimer);
            this.Controls.Add(this.lblDeviceConnected);
            this.Controls.Add(this.btnCountDown);
            this.Controls.Add(this.btnCountUp);
            this.Controls.Add(this.btnShiftRight);
            this.Controls.Add(this.btnShiftLeft);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.tbTimerValue);
            this.Controls.Add(this.btnRandom);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnOk);
            this.Controls.Add(this.btnLEDReset);
            this.Controls.Add(this.btnTrigger4);
            this.Controls.Add(this.btnTrigger3);
            this.Controls.Add(this.btnTrigger2);
            this.Controls.Add(this.btnTrigger1);
            this.Controls.Add(this.btnCloseDevice);
            this.Controls.Add(this.btnOpenDevice);
            this.Controls.Add(this.cmbDevList);
            this.Controls.Add(this.LEDBox);
            this.Name = "EPT_LED_Blinky";
            this.ShowIcon = false;
            this.Text = "LED Blinky";
            this.Load += new System.EventHandler(this.EPT_LED_Blinky_Load);
            this.LEDBox.ResumeLayout(false);
            this.LEDBox.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.trkbrTimer)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnLEDReset;
        private System.Windows.Forms.Button btnTrigger4;
        private System.Windows.Forms.Button btnTrigger3;
        private System.Windows.Forms.Button btnTrigger2;
        private System.Windows.Forms.Button btnTrigger1;
        private System.Windows.Forms.Button btnCloseDevice;
        private System.Windows.Forms.Button btnOpenDevice;
        private System.Windows.Forms.ComboBox cmbDevList;
        private System.Windows.Forms.GroupBox LEDBox;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.Button btnOk;
        private System.Windows.Forms.Button btnRandom;
        private System.Windows.Forms.TextBox tbTimerValue;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnShiftLeft;
        private System.Windows.Forms.Button btnShiftRight;
        private System.Windows.Forms.Button btnCountUp;
        private System.Windows.Forms.Button btnCountDown;
        private System.Windows.Forms.Label lblDeviceConnected;
        private System.Windows.Forms.TrackBar trkbrTimer;
    }
}

