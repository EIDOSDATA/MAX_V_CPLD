namespace EPT_Transfer_Test
{
    partial class EPT_Transfer_Test
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
            this.cmbDevList = new System.Windows.Forms.ComboBox();
            this.btnOpenDevice = new System.Windows.Forms.Button();
            this.btnCloseDevice = new System.Windows.Forms.Button();
            this.btnWriteByte = new System.Windows.Forms.Button();
            this.tbNumBytes = new System.Windows.Forms.TextBox();
            this.tbAddress = new System.Windows.Forms.TextBox();
            this.tbDataBytes = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.btnTrigger1 = new System.Windows.Forms.Button();
            this.btnTrigger2 = new System.Windows.Forms.Button();
            this.btnTrigger3 = new System.Windows.Forms.Button();
            this.btnTrigger4 = new System.Windows.Forms.Button();
            this.label5 = new System.Windows.Forms.Label();
            this.btnLEDReset = new System.Windows.Forms.Button();
            this.label6 = new System.Windows.Forms.Label();
            this.tbBlockRcv = new System.Windows.Forms.TextBox();
            this.btnBlkCompare8 = new System.Windows.Forms.Button();
            this.btnBlkCompare13 = new System.Windows.Forms.Button();
            this.label7 = new System.Windows.Forms.Label();
            this.tbBlockRcvAddress = new System.Windows.Forms.TextBox();
            this.Length = new System.Windows.Forms.Label();
            this.tbBlockRcvLength = new System.Windows.Forms.TextBox();
            this.tbBlockThruPut = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.tbBlockCount = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.btnOk = new System.Windows.Forms.Button();
            this.btnCancel = new System.Windows.Forms.Button();
            this.rbtnRepitions = new System.Windows.Forms.RadioButton();
            this.rbtnInfinite = new System.Windows.Forms.RadioButton();
            this.tbRepitions = new System.Windows.Forms.TextBox();
            this.btnStopBlockTransfer = new System.Windows.Forms.Button();
            this.label10 = new System.Windows.Forms.Label();
            this.btnBlinky = new System.Windows.Forms.Button();
            this.LEDBox = new System.Windows.Forms.GroupBox();
            this.btnEndLightShow = new System.Windows.Forms.Button();
            this.btnResetBlock = new System.Windows.Forms.Button();
            this.label11 = new System.Windows.Forms.Label();
            this.lLabelSwitch1 = new System.Windows.Forms.Label();
            this.lLabelSwitch2 = new System.Windows.Forms.Label();
            this.btnResetTriggerOut = new System.Windows.Forms.Button();
            this.gbTriggerOut = new System.Windows.Forms.GroupBox();
            this.gbTransferControl = new System.Windows.Forms.GroupBox();
            this.btnTransferReset = new System.Windows.Forms.Button();
            this.btnWriteMultiByte = new System.Windows.Forms.Button();
            this.tbWriteMultiByte = new System.Windows.Forms.TextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnUserBlk = new System.Windows.Forms.Button();
            this.btnBlockSendRst = new System.Windows.Forms.Button();
            this.label12 = new System.Windows.Forms.Label();
            this.tbBlockSend = new System.Windows.Forms.TextBox();
            this.LEDBox.SuspendLayout();
            this.gbTriggerOut.SuspendLayout();
            this.gbTransferControl.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // cmbDevList
            // 
            this.cmbDevList.FormattingEnabled = true;
            this.cmbDevList.Location = new System.Drawing.Point(35, 13);
            this.cmbDevList.Name = "cmbDevList";
            this.cmbDevList.Size = new System.Drawing.Size(170, 21);
            this.cmbDevList.TabIndex = 1;
            // 
            // btnOpenDevice
            // 
            this.btnOpenDevice.Location = new System.Drawing.Point(240, 13);
            this.btnOpenDevice.Name = "btnOpenDevice";
            this.btnOpenDevice.Size = new System.Drawing.Size(50, 23);
            this.btnOpenDevice.TabIndex = 2;
            this.btnOpenDevice.Text = "Open";
            this.btnOpenDevice.UseVisualStyleBackColor = true;
            this.btnOpenDevice.Click += new System.EventHandler(this.btnOpenDevice_Click);
            // 
            // btnCloseDevice
            // 
            this.btnCloseDevice.Location = new System.Drawing.Point(342, 13);
            this.btnCloseDevice.Name = "btnCloseDevice";
            this.btnCloseDevice.Size = new System.Drawing.Size(52, 23);
            this.btnCloseDevice.TabIndex = 3;
            this.btnCloseDevice.Text = "Close";
            this.btnCloseDevice.UseVisualStyleBackColor = true;
            this.btnCloseDevice.Click += new System.EventHandler(this.btnCloseDevice_Click);
            // 
            // btnWriteByte
            // 
            this.btnWriteByte.Location = new System.Drawing.Point(28, 43);
            this.btnWriteByte.Name = "btnWriteByte";
            this.btnWriteByte.Size = new System.Drawing.Size(50, 23);
            this.btnWriteByte.TabIndex = 4;
            this.btnWriteByte.Text = "Byte";
            this.btnWriteByte.UseVisualStyleBackColor = true;
            this.btnWriteByte.Click += new System.EventHandler(this.btnWriteByte_Click);
            // 
            // tbNumBytes
            // 
            this.tbNumBytes.Location = new System.Drawing.Point(65, 22);
            this.tbNumBytes.Name = "tbNumBytes";
            this.tbNumBytes.Size = new System.Drawing.Size(28, 20);
            this.tbNumBytes.TabIndex = 5;
            this.tbNumBytes.Text = "255";
            this.tbNumBytes.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // tbAddress
            // 
            this.tbAddress.Location = new System.Drawing.Point(204, 22);
            this.tbAddress.Name = "tbAddress";
            this.tbAddress.Size = new System.Drawing.Size(17, 20);
            this.tbAddress.TabIndex = 7;
            this.tbAddress.Text = "2";
            this.tbAddress.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // tbDataBytes
            // 
            this.tbDataBytes.Location = new System.Drawing.Point(314, 19);
            this.tbDataBytes.Multiline = true;
            this.tbDataBytes.Name = "tbDataBytes";
            this.tbDataBytes.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.tbDataBytes.Size = new System.Drawing.Size(98, 93);
            this.tbDataBytes.TabIndex = 8;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 84);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(70, 13);
            this.label1.TabIndex = 9;
            this.label1.Text = "Multiple Byte:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(3, 25);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(59, 13);
            this.label2.TabIndex = 10;
            this.label2.Text = "Send Byte:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(153, 25);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(45, 13);
            this.label3.TabIndex = 11;
            this.label3.Text = "Address";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(240, 22);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(71, 13);
            this.label4.TabIndex = 12;
            this.label4.Text = "Receive Byte";
            // 
            // btnTrigger1
            // 
            this.btnTrigger1.Location = new System.Drawing.Point(211, 245);
            this.btnTrigger1.Name = "btnTrigger1";
            this.btnTrigger1.Size = new System.Drawing.Size(22, 23);
            this.btnTrigger1.TabIndex = 13;
            this.btnTrigger1.Text = "1";
            this.btnTrigger1.UseVisualStyleBackColor = true;
            this.btnTrigger1.Click += new System.EventHandler(this.btnTrigger1_Click);
            // 
            // btnTrigger2
            // 
            this.btnTrigger2.Location = new System.Drawing.Point(240, 245);
            this.btnTrigger2.Name = "btnTrigger2";
            this.btnTrigger2.Size = new System.Drawing.Size(23, 23);
            this.btnTrigger2.TabIndex = 14;
            this.btnTrigger2.Text = "2";
            this.btnTrigger2.UseVisualStyleBackColor = true;
            this.btnTrigger2.Click += new System.EventHandler(this.btnTrigger2_Click);
            // 
            // btnTrigger3
            // 
            this.btnTrigger3.Location = new System.Drawing.Point(269, 245);
            this.btnTrigger3.Name = "btnTrigger3";
            this.btnTrigger3.Size = new System.Drawing.Size(23, 23);
            this.btnTrigger3.TabIndex = 15;
            this.btnTrigger3.Text = "3";
            this.btnTrigger3.UseVisualStyleBackColor = true;
            this.btnTrigger3.Click += new System.EventHandler(this.btnTrigger3_Click);
            // 
            // btnTrigger4
            // 
            this.btnTrigger4.Location = new System.Drawing.Point(298, 245);
            this.btnTrigger4.Name = "btnTrigger4";
            this.btnTrigger4.Size = new System.Drawing.Size(23, 23);
            this.btnTrigger4.TabIndex = 16;
            this.btnTrigger4.Text = "4";
            this.btnTrigger4.UseVisualStyleBackColor = true;
            this.btnTrigger4.Click += new System.EventHandler(this.btnTrigger4_Click);
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
            // btnLEDReset
            // 
            this.btnLEDReset.Location = new System.Drawing.Point(250, 280);
            this.btnLEDReset.Name = "btnLEDReset";
            this.btnLEDReset.Size = new System.Drawing.Size(32, 23);
            this.btnLEDReset.TabIndex = 18;
            this.btnLEDReset.Text = "Rst";
            this.btnLEDReset.UseVisualStyleBackColor = true;
            this.btnLEDReset.Click += new System.EventHandler(this.btnLEDReset_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(334, 16);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(77, 13);
            this.label6.TabIndex = 19;
            this.label6.Text = "Block Receive";
            // 
            // tbBlockRcv
            // 
            this.tbBlockRcv.Location = new System.Drawing.Point(326, 36);
            this.tbBlockRcv.Multiline = true;
            this.tbBlockRcv.Name = "tbBlockRcv";
            this.tbBlockRcv.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.tbBlockRcv.Size = new System.Drawing.Size(100, 131);
            this.tbBlockRcv.TabIndex = 20;
            this.tbBlockRcv.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // btnBlkCompare8
            // 
            this.btnBlkCompare8.Location = new System.Drawing.Point(145, 357);
            this.btnBlkCompare8.Name = "btnBlkCompare8";
            this.btnBlkCompare8.Size = new System.Drawing.Size(75, 23);
            this.btnBlkCompare8.TabIndex = 21;
            this.btnBlkCompare8.Text = "BLOCK 8";
            this.btnBlkCompare8.UseVisualStyleBackColor = true;
            this.btnBlkCompare8.Click += new System.EventHandler(this.btnBlkCompare8_Click);
            // 
            // btnBlkCompare13
            // 
            this.btnBlkCompare13.Location = new System.Drawing.Point(145, 399);
            this.btnBlkCompare13.Name = "btnBlkCompare13";
            this.btnBlkCompare13.Size = new System.Drawing.Size(75, 23);
            this.btnBlkCompare13.TabIndex = 22;
            this.btnBlkCompare13.Text = "BLOCK 13";
            this.btnBlkCompare13.UseVisualStyleBackColor = true;
            this.btnBlkCompare13.Click += new System.EventHandler(this.btnBlkCompare13_Click);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(13, 525);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(45, 13);
            this.label7.TabIndex = 23;
            this.label7.Text = "Address";
            // 
            // tbBlockRcvAddress
            // 
            this.tbBlockRcvAddress.Location = new System.Drawing.Point(63, 521);
            this.tbBlockRcvAddress.Name = "tbBlockRcvAddress";
            this.tbBlockRcvAddress.Size = new System.Drawing.Size(24, 20);
            this.tbBlockRcvAddress.TabIndex = 24;
            this.tbBlockRcvAddress.Text = "4";
            this.tbBlockRcvAddress.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // Length
            // 
            this.Length.AutoSize = true;
            this.Length.Location = new System.Drawing.Point(90, 201);
            this.Length.Name = "Length";
            this.Length.Size = new System.Drawing.Size(40, 13);
            this.Length.TabIndex = 25;
            this.Length.Text = "Length";
            // 
            // tbBlockRcvLength
            // 
            this.tbBlockRcvLength.Location = new System.Drawing.Point(136, 198);
            this.tbBlockRcvLength.Name = "tbBlockRcvLength";
            this.tbBlockRcvLength.Size = new System.Drawing.Size(26, 20);
            this.tbBlockRcvLength.TabIndex = 26;
            this.tbBlockRcvLength.Text = "8";
            this.tbBlockRcvLength.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // tbBlockThruPut
            // 
            this.tbBlockThruPut.Location = new System.Drawing.Point(189, 198);
            this.tbBlockThruPut.Name = "tbBlockThruPut";
            this.tbBlockThruPut.Size = new System.Drawing.Size(51, 20);
            this.tbBlockThruPut.TabIndex = 27;
            this.tbBlockThruPut.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(246, 200);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(34, 13);
            this.label8.TabIndex = 28;
            this.label8.Text = "Errors";
            // 
            // tbBlockCount
            // 
            this.tbBlockCount.Location = new System.Drawing.Point(292, 198);
            this.tbBlockCount.Name = "tbBlockCount";
            this.tbBlockCount.Size = new System.Drawing.Size(53, 20);
            this.tbBlockCount.TabIndex = 29;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(351, 200);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(90, 13);
            this.label9.TabIndex = 30;
            this.label9.Text = "Bytes Transferred";
            // 
            // btnOk
            // 
            this.btnOk.Location = new System.Drawing.Point(141, 593);
            this.btnOk.Name = "btnOk";
            this.btnOk.Size = new System.Drawing.Size(75, 23);
            this.btnOk.TabIndex = 31;
            this.btnOk.Text = "OK";
            this.btnOk.UseVisualStyleBackColor = true;
            this.btnOk.Click += new System.EventHandler(this.btnOk_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.Location = new System.Drawing.Point(269, 593);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 32;
            this.btnCancel.Text = "Cancel";
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // rbtnRepitions
            // 
            this.rbtnRepitions.AutoSize = true;
            this.rbtnRepitions.Location = new System.Drawing.Point(246, 37);
            this.rbtnRepitions.Name = "rbtnRepitions";
            this.rbtnRepitions.Size = new System.Drawing.Size(74, 17);
            this.rbtnRepitions.TabIndex = 41;
            this.rbtnRepitions.TabStop = true;
            this.rbtnRepitions.Text = "Repititions";
            this.rbtnRepitions.UseVisualStyleBackColor = true;
            this.rbtnRepitions.CheckedChanged += new System.EventHandler(this.rbtnRepitions_CheckedChanged);
            // 
            // rbtnInfinite
            // 
            this.rbtnInfinite.AutoSize = true;
            this.rbtnInfinite.Location = new System.Drawing.Point(245, 81);
            this.rbtnInfinite.Name = "rbtnInfinite";
            this.rbtnInfinite.Size = new System.Drawing.Size(56, 17);
            this.rbtnInfinite.TabIndex = 42;
            this.rbtnInfinite.TabStop = true;
            this.rbtnInfinite.Text = "Infinite";
            this.rbtnInfinite.UseVisualStyleBackColor = true;
            this.rbtnInfinite.CheckedChanged += new System.EventHandler(this.rbtnInfinite_CheckedChanged);
            // 
            // tbRepitions
            // 
            this.tbRepitions.Location = new System.Drawing.Point(268, 55);
            this.tbRepitions.Name = "tbRepitions";
            this.tbRepitions.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.tbRepitions.Size = new System.Drawing.Size(33, 20);
            this.tbRepitions.TabIndex = 43;
            this.tbRepitions.Text = "1";
            // 
            // btnStopBlockTransfer
            // 
            this.btnStopBlockTransfer.Location = new System.Drawing.Point(251, 104);
            this.btnStopBlockTransfer.Name = "btnStopBlockTransfer";
            this.btnStopBlockTransfer.Size = new System.Drawing.Size(46, 23);
            this.btnStopBlockTransfer.TabIndex = 46;
            this.btnStopBlockTransfer.Text = "Stop";
            this.btnStopBlockTransfer.UseVisualStyleBackColor = true;
            this.btnStopBlockTransfer.Click += new System.EventHandler(this.btnStopBlockTransfer_Click);
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(216, 338);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(86, 13);
            this.label10.TabIndex = 47;
            this.label10.Text = "Block LoopBack";
            // 
            // btnBlinky
            // 
            this.btnBlinky.AccessibleDescription = "Run an LED lightshow!";
            this.btnBlinky.Location = new System.Drawing.Point(370, 245);
            this.btnBlinky.Name = "btnBlinky";
            this.btnBlinky.Size = new System.Drawing.Size(52, 23);
            this.btnBlinky.TabIndex = 48;
            this.btnBlinky.Text = "Blinky!";
            this.btnBlinky.UseVisualStyleBackColor = true;
            this.btnBlinky.Click += new System.EventHandler(this.btnBlinky_Click);
            // 
            // LEDBox
            // 
            this.LEDBox.Controls.Add(this.btnEndLightShow);
            this.LEDBox.Controls.Add(this.label5);
            this.LEDBox.Location = new System.Drawing.Point(194, 207);
            this.LEDBox.Name = "LEDBox";
            this.LEDBox.Size = new System.Drawing.Size(252, 110);
            this.LEDBox.TabIndex = 49;
            this.LEDBox.TabStop = false;
            this.LEDBox.Text = "LED Controls";
            // 
            // btnEndLightShow
            // 
            this.btnEndLightShow.Location = new System.Drawing.Point(181, 72);
            this.btnEndLightShow.Name = "btnEndLightShow";
            this.btnEndLightShow.Size = new System.Drawing.Size(43, 23);
            this.btnEndLightShow.TabIndex = 18;
            this.btnEndLightShow.Text = "Stop";
            this.btnEndLightShow.UseVisualStyleBackColor = true;
            this.btnEndLightShow.Click += new System.EventHandler(this.btnEndLightShow_Click);
            // 
            // btnResetBlock
            // 
            this.btnResetBlock.Location = new System.Drawing.Point(349, 173);
            this.btnResetBlock.Name = "btnResetBlock";
            this.btnResetBlock.Size = new System.Drawing.Size(39, 20);
            this.btnResetBlock.TabIndex = 50;
            this.btnResetBlock.Text = "Rst";
            this.btnResetBlock.UseVisualStyleBackColor = true;
            this.btnResetBlock.Click += new System.EventHandler(this.btnResetBlock_Click);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(50, 230);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(50, 13);
            this.label11.TabIndex = 51;
            this.label11.Text = "Switches";
            // 
            // lLabelSwitch1
            // 
            this.lLabelSwitch1.AutoSize = true;
            this.lLabelSwitch1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lLabelSwitch1.Location = new System.Drawing.Point(13, 254);
            this.lLabelSwitch1.Name = "lLabelSwitch1";
            this.lLabelSwitch1.Size = new System.Drawing.Size(0, 13);
            this.lLabelSwitch1.TabIndex = 52;
            // 
            // lLabelSwitch2
            // 
            this.lLabelSwitch2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lLabelSwitch2.Location = new System.Drawing.Point(103, 254);
            this.lLabelSwitch2.Name = "lLabelSwitch2";
            this.lLabelSwitch2.Size = new System.Drawing.Size(65, 49);
            this.lLabelSwitch2.TabIndex = 0;
            // 
            // btnResetTriggerOut
            // 
            this.btnResetTriggerOut.Location = new System.Drawing.Point(56, 73);
            this.btnResetTriggerOut.Name = "btnResetTriggerOut";
            this.btnResetTriggerOut.Size = new System.Drawing.Size(34, 23);
            this.btnResetTriggerOut.TabIndex = 53;
            this.btnResetTriggerOut.Text = "Rst";
            this.btnResetTriggerOut.UseVisualStyleBackColor = true;
            this.btnResetTriggerOut.Click += new System.EventHandler(this.btnResetTriggerOut_Click);
            // 
            // gbTriggerOut
            // 
            this.gbTriggerOut.Controls.Add(this.btnResetTriggerOut);
            this.gbTriggerOut.Location = new System.Drawing.Point(10, 207);
            this.gbTriggerOut.Name = "gbTriggerOut";
            this.gbTriggerOut.Size = new System.Drawing.Size(158, 111);
            this.gbTriggerOut.TabIndex = 54;
            this.gbTriggerOut.TabStop = false;
            this.gbTriggerOut.Text = "Switch Controls";
            // 
            // gbTransferControl
            // 
            this.gbTransferControl.Controls.Add(this.btnTransferReset);
            this.gbTransferControl.Controls.Add(this.btnWriteMultiByte);
            this.gbTransferControl.Controls.Add(this.tbWriteMultiByte);
            this.gbTransferControl.Controls.Add(this.label1);
            this.gbTransferControl.Controls.Add(this.tbDataBytes);
            this.gbTransferControl.Controls.Add(this.label4);
            this.gbTransferControl.Controls.Add(this.btnWriteByte);
            this.gbTransferControl.Controls.Add(this.label2);
            this.gbTransferControl.Controls.Add(this.tbNumBytes);
            this.gbTransferControl.Controls.Add(this.label3);
            this.gbTransferControl.Controls.Add(this.tbAddress);
            this.gbTransferControl.Location = new System.Drawing.Point(10, 58);
            this.gbTransferControl.Name = "gbTransferControl";
            this.gbTransferControl.Size = new System.Drawing.Size(436, 143);
            this.gbTransferControl.TabIndex = 55;
            this.gbTransferControl.TabStop = false;
            this.gbTransferControl.Text = "Transfer Controls";
            // 
            // btnTransferReset
            // 
            this.btnTransferReset.Location = new System.Drawing.Point(344, 115);
            this.btnTransferReset.Name = "btnTransferReset";
            this.btnTransferReset.Size = new System.Drawing.Size(35, 23);
            this.btnTransferReset.TabIndex = 13;
            this.btnTransferReset.Text = "Rst";
            this.btnTransferReset.UseVisualStyleBackColor = true;
            this.btnTransferReset.Click += new System.EventHandler(this.btnTransferReset_Click);
            // 
            // btnWriteMultiByte
            // 
            this.btnWriteMultiByte.Location = new System.Drawing.Point(15, 107);
            this.btnWriteMultiByte.Name = "btnWriteMultiByte";
            this.btnWriteMultiByte.Size = new System.Drawing.Size(75, 23);
            this.btnWriteMultiByte.TabIndex = 11;
            this.btnWriteMultiByte.Text = "Multi Byte";
            this.btnWriteMultiByte.UseVisualStyleBackColor = true;
            this.btnWriteMultiByte.Click += new System.EventHandler(this.btnWriteMultiByte_Click);
            // 
            // tbWriteMultiByte
            // 
            this.tbWriteMultiByte.Location = new System.Drawing.Point(79, 81);
            this.tbWriteMultiByte.Name = "tbWriteMultiByte";
            this.tbWriteMultiByte.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.tbWriteMultiByte.Size = new System.Drawing.Size(142, 20);
            this.tbWriteMultiByte.TabIndex = 10;
            this.tbWriteMultiByte.Text = "1 2 3 4 5 6 7";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnUserBlk);
            this.groupBox1.Controls.Add(this.btnBlockSendRst);
            this.groupBox1.Controls.Add(this.label12);
            this.groupBox1.Controls.Add(this.tbBlockSend);
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.tbBlockCount);
            this.groupBox1.Controls.Add(this.label9);
            this.groupBox1.Controls.Add(this.btnResetBlock);
            this.groupBox1.Controls.Add(this.tbBlockRcvLength);
            this.groupBox1.Controls.Add(this.tbRepitions);
            this.groupBox1.Controls.Add(this.btnStopBlockTransfer);
            this.groupBox1.Controls.Add(this.rbtnRepitions);
            this.groupBox1.Controls.Add(this.rbtnInfinite);
            this.groupBox1.Controls.Add(this.Length);
            this.groupBox1.Controls.Add(this.tbBlockThruPut);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.tbBlockRcv);
            this.groupBox1.Location = new System.Drawing.Point(5, 324);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(441, 228);
            this.groupBox1.TabIndex = 56;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Block Controls";
            // 
            // btnUserBlk
            // 
            this.btnUserBlk.Location = new System.Drawing.Point(140, 118);
            this.btnUserBlk.Name = "btnUserBlk";
            this.btnUserBlk.Size = new System.Drawing.Size(75, 23);
            this.btnUserBlk.TabIndex = 57;
            this.btnUserBlk.Text = "USR BLCK";
            this.btnUserBlk.UseVisualStyleBackColor = true;
            this.btnUserBlk.Click += new System.EventHandler(this.btnUserBlk_Click);
            // 
            // btnBlockSendRst
            // 
            this.btnBlockSendRst.Location = new System.Drawing.Point(35, 173);
            this.btnBlockSendRst.Name = "btnBlockSendRst";
            this.btnBlockSendRst.Size = new System.Drawing.Size(38, 23);
            this.btnBlockSendRst.TabIndex = 53;
            this.btnBlockSendRst.Text = "Rst";
            this.btnBlockSendRst.UseVisualStyleBackColor = true;
            this.btnBlockSendRst.Click += new System.EventHandler(this.btnBlockSendRst_Click);
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(11, 16);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(62, 13);
            this.label12.TabIndex = 52;
            this.label12.Text = "Block Send";
            // 
            // tbBlockSend
            // 
            this.tbBlockSend.Location = new System.Drawing.Point(11, 37);
            this.tbBlockSend.Multiline = true;
            this.tbBlockSend.Name = "tbBlockSend";
            this.tbBlockSend.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.tbBlockSend.Size = new System.Drawing.Size(100, 130);
            this.tbBlockSend.TabIndex = 51;
            // 
            // EPT_Transfer_Test
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(463, 628);
            this.Controls.Add(this.lLabelSwitch2);
            this.Controls.Add(this.lLabelSwitch1);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.btnBlinky);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnOk);
            this.Controls.Add(this.tbBlockRcvAddress);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.btnBlkCompare13);
            this.Controls.Add(this.btnBlkCompare8);
            this.Controls.Add(this.btnLEDReset);
            this.Controls.Add(this.btnTrigger4);
            this.Controls.Add(this.btnTrigger3);
            this.Controls.Add(this.btnTrigger2);
            this.Controls.Add(this.btnTrigger1);
            this.Controls.Add(this.btnCloseDevice);
            this.Controls.Add(this.btnOpenDevice);
            this.Controls.Add(this.cmbDevList);
            this.Controls.Add(this.LEDBox);
            this.Controls.Add(this.gbTriggerOut);
            this.Controls.Add(this.gbTransferControl);
            this.Controls.Add(this.groupBox1);
            this.Name = "EPT_Transfer_Test";
            this.Text = "EPT_Transfer_Test";
            this.Load += new System.EventHandler(this.EPT_Transfer_Test_Load);
            this.LEDBox.ResumeLayout(false);
            this.LEDBox.PerformLayout();
            this.gbTriggerOut.ResumeLayout(false);
            this.gbTransferControl.ResumeLayout(false);
            this.gbTransferControl.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox cmbDevList;
        private System.Windows.Forms.Button btnOpenDevice;
        private System.Windows.Forms.Button btnCloseDevice;
        private System.Windows.Forms.Button btnWriteByte;
        private System.Windows.Forms.TextBox tbNumBytes;
        private System.Windows.Forms.TextBox tbAddress;
        private System.Windows.Forms.TextBox tbDataBytes;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button btnTrigger1;
        private System.Windows.Forms.Button btnTrigger2;
        private System.Windows.Forms.Button btnTrigger3;
        private System.Windows.Forms.Button btnTrigger4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button btnLEDReset;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox tbBlockRcv;
        private System.Windows.Forms.Button btnBlkCompare8;
        private System.Windows.Forms.Button btnBlkCompare13;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox tbBlockRcvAddress;
        private System.Windows.Forms.Label Length;
        private System.Windows.Forms.TextBox tbBlockRcvLength;
        private System.Windows.Forms.TextBox tbBlockThruPut;
        private System.Windows.Forms.TextBox tbBlockCount;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Button btnOk;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.RadioButton rbtnRepitions;
        private System.Windows.Forms.RadioButton rbtnInfinite;
        private System.Windows.Forms.TextBox tbRepitions;
        private System.Windows.Forms.Button btnStopBlockTransfer;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Button btnBlinky;
        private System.Windows.Forms.GroupBox LEDBox;
        private System.Windows.Forms.Button btnResetBlock;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label lLabelSwitch1;
        private System.Windows.Forms.Label lLabelSwitch2;
        private System.Windows.Forms.Button btnResetTriggerOut;
        private System.Windows.Forms.GroupBox gbTriggerOut;
        private System.Windows.Forms.GroupBox gbTransferControl;
        private System.Windows.Forms.TextBox tbWriteMultiByte;
        private System.Windows.Forms.Button btnWriteMultiByte;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnTransferReset;
        protected internal System.Windows.Forms.Label label8;
        private System.Windows.Forms.Button btnBlockSendRst;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox tbBlockSend;
        private System.Windows.Forms.Button btnUserBlk;
        private System.Windows.Forms.Button btnEndLightShow;
    }
}

