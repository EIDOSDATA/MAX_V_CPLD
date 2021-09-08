using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Threading;
using System.Runtime.InteropServices;
using System.Diagnostics;


namespace EPT_LED_Blinky
{
    public partial class EPT_LED_Blinky : Form
    {

        public EPT_LED_Blinky()
        {
            InitializeComponent();

            btnTrigger1.Enabled = false;
            btnTrigger2.Enabled = false;
            btnTrigger3.Enabled = false;
            btnTrigger4.Enabled = false;
            btnLEDReset.Enabled = false;
            btnRandom.Enabled = false;
            btnShiftLeft.Enabled = false;
            btnShiftRight.Enabled = false;
            btnCountUp.Enabled = false;
            btnCountDown.Enabled = false;

            for (int i = 0; i < EPTTransmitDevice.Length; ++i)
            {
                EPTTransmitDevice[i] = new Transfer();
            }

        }

        //Index to store device selection
        Int32 device_index;

        //Create a Receive object of the Transfer Class.
        Transfer EPTReceiveData = new Transfer();

        //Create an array of the Transfer Class for device
        Transfer[] EPTTransmitDevice = new Transfer[8];

        //String to Hold payload
        public String PayloadString = "";

        //Hold the previous status of the LED
        int LEDStatusPrevious = 0;

        //LED Status Register
        byte LEDStatus;

        //Parameters
        public const byte TRIGGER_OUT_COMMAND = 0x1;
        public const byte TRANSFER_OUT_COMMAND = 0x2;
        public const byte BLOCK_OUT_COMMAND = 0x4;

        //Parameters
        public const int SELECT_RANDOM = 1;
        public const int SELECT_SHIFT_LEFT = 2;
        public const int SELECT_SHIFT_RIGHT = 3;
        public const int SELECT_COUNT_UP = 4;
        public const int SELECT_COUNT_DOWN = 5;

        // Main object loader
        private void EPT_LED_Blinky_Load(object sender, System.EventArgs e)
        {
            // Call the List Devices function
            ListDevices();
            lblDeviceConnected.Text = "";
        }


        private void SetButtonEnables()
        {
            btnOpenDevice.Enabled = true;
            btnCloseDevice.Enabled = false;
            btnTrigger1.Enabled = true;
            btnTrigger2.Enabled = true;
            btnTrigger3.Enabled = true;
            btnTrigger4.Enabled = true;
            btnLEDReset.Enabled = true;
            btnRandom.Enabled = true;
            btnShiftLeft.Enabled = true;
            btnShiftRight.Enabled = true;
            btnCountUp.Enabled = true;
            btnCountDown.Enabled = true;
        }


        private void btnOpenDevice_Click(object sender, EventArgs e)
        {
            //Open the Device
            OpenDevice();
            lblDeviceConnected.Text = "Device Connected";
            btnOpenDevice.Enabled = false;
            btnCloseDevice.Enabled = true;
        }

        private void btnCloseDevice_Click(object sender, EventArgs e)
        {
            if (EPT_AH_CloseDeviceByIndex(device_index) != 0)
            {
                btnTrigger1.Enabled = false;
                btnTrigger2.Enabled = false;
                btnTrigger3.Enabled = false;
                btnTrigger4.Enabled = false;
                btnLEDReset.Enabled = false;
            }
            btnOpenDevice.Enabled = true;
            btnCloseDevice.Enabled = false;
            lblDeviceConnected.Text = "";

            btnTrigger1.BackColor = Color.LightGray;
            btnTrigger2.BackColor = Color.LightGray;
            btnTrigger3.BackColor = Color.LightGray;
            btnTrigger4.BackColor = Color.LightGray;

            btnTrigger1.FlatStyle = FlatStyle.Standard;
            btnTrigger2.FlatStyle = FlatStyle.Standard;
            btnTrigger3.FlatStyle = FlatStyle.Standard;
            btnTrigger4.FlatStyle = FlatStyle.Standard;

            btnRandom.BackColor = Color.LightGray;
            btnShiftLeft.BackColor = Color.LightGray;
            btnShiftRight.BackColor = Color.LightGray;
            btnCountUp.BackColor = Color.LightGray;
            btnCountDown.BackColor = Color.LightGray;

            btnRandom.FlatStyle = FlatStyle.Standard;
            btnShiftLeft.FlatStyle = FlatStyle.Standard;
            btnShiftRight.FlatStyle = FlatStyle.Standard;
            btnCountUp.FlatStyle = FlatStyle.Standard;
            btnCountDown.FlatStyle = FlatStyle.Standard;

            btnRandom.Enabled = false;
            btnShiftLeft.Enabled = false;
            btnShiftRight.Enabled = false;
            btnCountUp.Enabled = false;
            btnCountDown.Enabled = false;
        }

        private void btnTrigger1_Click(object sender, EventArgs e)
        {
            //Flip bit 1
            LEDStatus ^= (1 << 0);

            //Send the LED Status Byte to the Active Transfer Module 2	
            EPT_AH_SendByte(0x02, (char)LEDStatus);

            //Send Trigger 1 to latch the Seed Value
            EPT_AH_SendTrigger((byte)1);

            //Send the static value to the Control Register
            EPT_AH_SendTransferControlByte((char)2, (char)0x60);

        }

        private void btnTrigger2_Click(object sender, EventArgs e)
        {
            //Flip bit 2
            LEDStatus ^= (1 << 1);

            //Send the LED Status Byte to the Active Transfer Module 2	
            EPT_AH_SendByte(0x02, (char)LEDStatus);

            //Send Trigger 1 to latch the Seed Value
            EPT_AH_SendTrigger((byte)1);

            //Send the static value to the Control Register
            EPT_AH_SendTransferControlByte((char)2, (char)0x60);

        }

        private void btnTrigger3_Click(object sender, EventArgs e)
        {
            //Flip bit 3
            LEDStatus ^= (1 << 2);

            //Send the LED Status Byte to the Active Transfer Module 2	
            EPT_AH_SendByte(0x02, (char)LEDStatus);

            //Send Trigger 1 to latch the Seed Value
            EPT_AH_SendTrigger((byte)1);

            //Send the static value to the Control Register
            EPT_AH_SendTransferControlByte((char)2, (char)0x60);

        }

        private void btnTrigger4_Click(object sender, EventArgs e)
        {
            //Flip bit 4
            LEDStatus ^= (1 << 3);

            //Send the LED Status Byte to the Active Transfer Module 2	
            EPT_AH_SendByte(0x02, (char)LEDStatus);

            //Send Trigger 1 to latch the Seed Value
            EPT_AH_SendTrigger((byte)1);

            //Send the static value to the Control Register
            EPT_AH_SendTransferControlByte((char)2, (char)0x60);

        }

        private void btnLEDReset_Click(object sender, EventArgs e)
        {
            EPT_AH_SendTransferControlByte((char)2, (char)4);
            Thread.Sleep(1);
            EPT_AH_SendTransferControlByte((char)2, (char)0);

            Thread.Sleep(500);
            EPT_AH_SendTransferControlByte((char)2, (char)4);
            Thread.Sleep(1);
            EPT_AH_SendTransferControlByte((char)2, (char)0);

            btnRandom.BackColor = Color.LightGray;
            btnShiftLeft.BackColor = Color.LightGray;
            btnShiftRight.BackColor = Color.LightGray;
            btnCountUp.BackColor = Color.LightGray;
            btnCountDown.BackColor = Color.LightGray;

            btnRandom.FlatStyle = FlatStyle.Standard;
            btnShiftLeft.FlatStyle = FlatStyle.Standard;
            btnShiftRight.FlatStyle = FlatStyle.Standard;
            btnCountUp.FlatStyle = FlatStyle.Standard;
            btnCountDown.FlatStyle = FlatStyle.Standard;
        }

        private void btnOk_Click(object sender, EventArgs e)
        {
            EPT_AH_CloseDeviceByIndex(device_index);
            btnOpenDevice.Enabled = true;
            btnCloseDevice.Enabled = false;

            Application.Exit();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            EPT_AH_CloseDeviceByIndex(device_index);
            btnOpenDevice.Enabled = true;
            btnCloseDevice.Enabled = false;

            Application.Exit();

        }

        public void LoadTimerValue()
        {

            //Send the Timer Low Value to the Active Transfer Module 2
            int intValue = Convert.ToInt32(tbTimerValue.Text);
            byte[] intBytes = BitConverter.GetBytes(intValue);
            //if (BitConverter.IsLittleEndian)
            //    Array.Reverse(intBytes);
            byte[] result = intBytes;

            EPT_AH_SendByte(0x02, (char)result[0]);

            //Send Trigger 4 to latch the Timer Low Value
            EPT_AH_SendTrigger((byte)0x10);

            //Send the Timer High Value to the Active Transfer Module 2
            EPT_AH_SendByte(0x02, (char)result[1]);

            //Send Trigger 5 to latch the Timer High Value
            EPT_AH_SendTrigger((byte)0x20);
        }


        private void btnRandom_Click(object sender, EventArgs e)
        {
            byte SeedValue = 0;
            // Use a random timer instead of 100ms
            Random random = new Random();
            // Go between 50 and 300 milliseconds
            SeedValue = (byte)random.Next(10, 255);

            LoadTimerValue();

            //Send the Random Seed value to the Active Transfer Module 2	
            EPT_AH_SendByte(0x02, (char)SeedValue);

            //Send Trigger 6 to latch the Seed Value
            EPT_AH_SendTrigger((byte)0x40);

            //Send the start Random Blinky to the Control Register
            EPT_AH_SendTransferControlByte((char)2, (char)0x10);

            //Set the Button State so User can know which function is selected
            SetLEDControlButtons(SELECT_RANDOM);
        }

        private void btnShiftLeft_Click(object sender, EventArgs e)
        {
            LoadTimerValue();

            //Send the Inital value to the Active Transfer Module 2
            //for loading into the Shift Left LED
            EPT_AH_SendByte(0x02, (char)LEDStatus);

            //Send Trigger 7 to latch the Shift-Count Value
            EPT_AH_SendTrigger((byte)0x80);

            //Send the start Shift Left to the Control Register
            EPT_AH_SendTransferControlByte((char)2, (char)0x20);

            //Set the Button State so User can know which function is selected
            SetLEDControlButtons(SELECT_SHIFT_LEFT);
        }

        private void btnShiftRight_Click(object sender, EventArgs e)
        {
            LoadTimerValue();

            //Send the Inital value to the Active Transfer Module 2
            //for loading into the Shift Left LED
            EPT_AH_SendByte(0x02, (char)LEDStatus);

            //Send Trigger 7 to latch the Shift-Count  Value
            EPT_AH_SendTrigger((byte)0x80);

            //Send the start Shift Right to the Control Register
            EPT_AH_SendTransferControlByte((char)2, (char)0x30);

            //Set the Button State so User can know which function is selected
            SetLEDControlButtons(SELECT_SHIFT_RIGHT);
        }

        private void btnCountUp_Click(object sender, EventArgs e)
        {
            LoadTimerValue();

            //Send the Inital value to the Active Transfer Module 2
            //for loading into the Shift Left LED
            EPT_AH_SendByte(0x02, (char)LEDStatus);

            //Send Trigger 7 to latch the Shift-Count  Value
            EPT_AH_SendTrigger((byte)0x80);

            //Send the start Shift Right to the Control Register
            EPT_AH_SendTransferControlByte((char)2, (char)0x40);

            //Set the Button State so User can know which function is selected
            SetLEDControlButtons(SELECT_COUNT_UP);
        }

        private void btnCountDown_Click(object sender, EventArgs e)
        {
            LoadTimerValue();

            //Send the Inital value to the Active Transfer Module 2
            //for loading into the Shift Left LED
            EPT_AH_SendByte(0x02, (char)LEDStatus);

            //Send Trigger 7 to latch the Shift-Count  Value
            EPT_AH_SendTrigger((byte)0x80);

            //Send the start Shift Right to the Control Register
            EPT_AH_SendTransferControlByte((char)2, (char)0x50);

            //Set the Button State so User can know which function is selected
            SetLEDControlButtons(SELECT_COUNT_DOWN);
        }

        private void trkbrTimer_Scroll(object sender, EventArgs e)
        {
            int TimerValue = 0;

            if (trkbrTimer.Value > 65535)
                TimerValue = 65535;
            else if (trkbrTimer.Value < 1000)
                TimerValue = 1000;
            else
                TimerValue = trkbrTimer.Value;

            tbTimerValue.Text = Convert.ToString(TimerValue);

            LoadTimerValue();
        }

        void SetLEDControlButtons(int FuncSelect)
        {
            switch (FuncSelect)
            {
                case SELECT_RANDOM:
                    btnRandom.BackColor = Color.LightSteelBlue;
                    btnShiftLeft.BackColor = Color.LightGray;
                    btnShiftRight.BackColor = Color.LightGray;
                    btnCountUp.BackColor = Color.LightGray;
                    btnCountDown.BackColor = Color.LightGray;
                    break;
                case SELECT_SHIFT_LEFT:
                    btnRandom.BackColor = Color.LightGray;
                    btnShiftLeft.BackColor = Color.LightSteelBlue;
                    btnShiftRight.BackColor = Color.LightGray;
                    btnCountUp.BackColor = Color.LightGray;
                    btnCountDown.BackColor = Color.LightGray;
                    break;
                case SELECT_SHIFT_RIGHT:
                    btnRandom.BackColor = Color.LightGray;
                    btnShiftLeft.BackColor = Color.LightGray;
                    btnShiftRight.BackColor = Color.LightSteelBlue;
                    btnCountUp.BackColor = Color.LightGray;
                    btnCountDown.BackColor = Color.LightGray;
                    break;
                case SELECT_COUNT_UP:
                    btnRandom.BackColor = Color.LightGray;
                    btnShiftLeft.BackColor = Color.LightGray;
                    btnShiftRight.BackColor = Color.LightGray;
                    btnCountUp.BackColor = Color.LightSteelBlue;
                    btnCountDown.BackColor = Color.LightGray;
                    break;
                case SELECT_COUNT_DOWN:
                    btnRandom.BackColor = Color.LightGray;
                    btnShiftLeft.BackColor = Color.LightGray;
                    btnShiftRight.BackColor = Color.LightGray;
                    btnCountUp.BackColor = Color.LightGray;
                    btnCountDown.BackColor = Color.LightSteelBlue;
                    break;
                default:
                    btnRandom.BackColor = Color.LightGray;
                    btnShiftLeft.BackColor = Color.LightGray;
                    btnShiftRight.BackColor = Color.LightGray;
                    btnCountUp.BackColor = Color.LightGray;
                    btnCountDown.BackColor = Color.LightGray;
                    break;
            }

            btnRandom.FlatStyle = FlatStyle.Standard;
            btnShiftLeft.FlatStyle = FlatStyle.Standard;
            btnShiftRight.FlatStyle = FlatStyle.Standard;
            btnCountUp.FlatStyle = FlatStyle.Standard;
            btnCountDown.FlatStyle = FlatStyle.Standard;
        }

        private void EPTParseReceive()
        {
            switch (EPTReceiveData.Command)
            {
                case TRIGGER_OUT_COMMAND:
                    TriggerOutReceive();
                    break;
                case TRANSFER_OUT_COMMAND:
                    TransferOutReceive();
                    break;
                default:
                    break;
            }
        }

        public void TriggerOutReceive()
        {
        }

        public void TransferOutReceive()
        {
            string WriteRcvChar = "";

            LEDStatus = EPTReceiveData.cBlockBuf[0];
            WriteRcvChar = String.Format("{0}", LEDStatus);

            if ((LEDStatus & 0x01) != (LEDStatusPrevious & 0x01))
            {
                if ((LEDStatus & 0x01) == 1) btnTrigger1.BackColor = Color.Lime;
                else btnTrigger1.BackColor = Color.LightGray;
            }

            if ((LEDStatus & 0x02) != (LEDStatusPrevious & 0x02))
            {
                if ((LEDStatus & 0x02) == 2) btnTrigger2.BackColor = Color.Lime;
                else btnTrigger2.BackColor = Color.LightGray;
            }

            if ((LEDStatus & 0x04) != (LEDStatusPrevious & 0x04))
            {
                if ((LEDStatus & 0x04) == 4) btnTrigger3.BackColor = Color.Lime;
                else btnTrigger3.BackColor = Color.LightGray;
            }

            if ((LEDStatus & 0x08) != (LEDStatusPrevious & 0x08))
            {
                if ((LEDStatus & 0x08) == 8) btnTrigger4.BackColor = Color.Lime;
                else btnTrigger4.BackColor = Color.LightGray;
            }

            LEDStatusPrevious = LEDStatus;

            btnTrigger1.FlatStyle = FlatStyle.Flat;
            btnTrigger2.FlatStyle = FlatStyle.Flat;
            btnTrigger3.FlatStyle = FlatStyle.Flat;
            btnTrigger4.FlatStyle = FlatStyle.Flat;
        }



    }

    public class Transfer
    {
        public int Command;
        public int Address;
        public int Length;
        public int Payload;
        public byte[] cBlockBuf;
        public bool TransferPending;
        public uint Repititions;

        public Transfer()
        {
            Command = 0;
            Address = 0;
            Length = 0;
            Payload = 0;
            TransferPending = false;
            Repititions = 0;
        }

    }

}

