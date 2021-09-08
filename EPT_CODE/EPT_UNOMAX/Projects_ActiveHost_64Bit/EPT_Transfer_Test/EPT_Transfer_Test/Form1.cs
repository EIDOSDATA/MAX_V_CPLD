/*
 Copyright (c) 2013, Earth People Technology. All rights reserved.
 http://www.earthpeopletechnology.com

 Permission to use, copy, modify, and/or distribute this software for any purpose with or without fee is hereby granted, provided that the above copyright notice and this permission 
 notice appear in all copies.

 THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. 
 IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, 
 WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
*/

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


namespace EPT_Transfer_Test
{
    public partial class EPT_Transfer_Test : Form
    {

        public EPT_Transfer_Test()
        {
            InitializeComponent();

            btnBlkCompare8.Enabled = false;
            btnBlkCompare13.Enabled = false;
            btnTrigger1.Enabled = false;
            btnTrigger2.Enabled = false;
            btnTrigger3.Enabled = false;
            btnTrigger4.Enabled = false;
            btnLEDReset.Enabled = false;
            btnUserBlk.Enabled = false;
            btnWriteByte.Enabled = false;
            tbWriteMultiByte.Enabled = false;
            btnWriteMultiByte.Enabled = false;
            btnBlockSendRst.Enabled = false;
            btnTransferReset.Enabled = false;
            btnResetTriggerOut.Enabled = false;
            btnResetBlock.Enabled = false;
            btnStopBlockTransfer.Enabled = false;
            //btnLoopBack.Enabled = false;

            for (int i = 0; i < EPTTransmitDevice.Length; ++i)
            {
                EPTTransmitDevice[i] = new Transfer();
            }

            rbtnRepitions.Checked = true;
            rbtnInfinite.Checked = false;
        }

        //Index to store device selection
        Int32 device_index;

        //Create a Receive object of the Transfer Class.
        Transfer EPTReceiveData = new Transfer();

        //Eight Byte block for Block Transfers
        byte[] block_8_in_payload = new byte[8] { 0x32, 0x56, 0xe1, 0x6b, 0xc0, 0x7d, 0x89, 0x2e };
        byte[] block_13_in_payload = new byte[13] { 0x32, 0x56, 0xe1, 0x6b, 0xc0, 0x7d, 0x89, 0x2e, 0xb2, 0x05, 0x27, 0xf7, 0x99 };
        byte[] block_in_payload;

        //Create an array of the Transfer Class for device
        Transfer[] EPTTransmitDevice = new Transfer[8];

        //Block Transfer and Loop counter
        int BlockCount = 0;
        int LoopCount = 0;

        //Block Transfer Control 
        public bool BlockTransferInfinite = false;
        public bool BlockTransferReps = false;
        public bool BlockTransferStop = false;

        //String to Hold payload
        public String PayloadString = "";

        //Parameters
        public const byte TRIGGER_OUT_COMMAND = 0x1;
        public const byte TRANSFER_OUT_COMMAND = 0x2;
        public const byte BLOCK_OUT_COMMAND = 0x4;

        //Value to hold the errors in Block Compares
        public int BlockErrorCount = 0;
        public bool EnableLogFile = false;

        //flag to end the Light Show
        public bool light_show_break = false;

        // Main object loader
        private void EPT_Transfer_Test_Load(object sender, System.EventArgs e)
        {
            // Call the List Devices function
            ListDevices();

            //Active Host Debug 
            //EPT_AH_SetDebugMode(1);

        }


        private void SetButtonEnables()
        {
            btnBlkCompare8.Enabled = true;
            btnBlkCompare13.Enabled = true;
            btnTrigger1.Enabled = true;
            btnTrigger2.Enabled = true;
            btnTrigger3.Enabled = true;
            btnTrigger4.Enabled = true;
            btnLEDReset.Enabled = true;
            btnUserBlk.Enabled = true;
            btnWriteByte.Enabled = true;
            tbWriteMultiByte.Enabled = true;
            btnWriteMultiByte.Enabled = true;
            btnBlockSendRst.Enabled = true;
            btnTransferReset.Enabled = true;
            btnResetTriggerOut.Enabled = true;
            btnResetBlock.Enabled = true;
            btnStopBlockTransfer.Enabled = true;
            //btnLoopBack.Enabled = true;

            // Marks the device as closed in the GUI
            btnOpenDevice.Enabled = false;
            btnCloseDevice.Enabled = true;
        }


        // Handle "Open" device button
        private void btnOpenDevice_Click(object sender, EventArgs e)
        {
            //Open the Device
            OpenDevice();
        }

        // Handle "Close" device button
        private void btnCloseDevice_Click(object sender, EventArgs e)
        {
            //End the light show
            light_show_break = true;

            //btnLoopBack.Enabled = true;
            btnTrigger1.Enabled = true;
            btnTrigger2.Enabled = true;
            btnTrigger3.Enabled = true;
            btnTrigger4.Enabled = true;
            btnLEDReset.Enabled = true;
            btnBlkCompare8.Enabled = true;
            btnBlkCompare13.Enabled = true;
            btnStopBlockTransfer.Enabled = true;
            btnResetBlock.Enabled = true;
            btnResetTriggerOut.Enabled = true;
            gbTriggerOut.Enabled = true;
            gbTransferControl.Enabled = true;
            btnTransferReset.Enabled = true;
            btnBlockSendRst.Enabled = true;
            tbBlockSend.Enabled = true;

            // Make sure the device is closed
            if (EPT_AH_CloseDeviceByIndex(device_index) != 0)
            {
                btnBlkCompare8.Enabled = false;
                btnBlkCompare13.Enabled = false;
                btnTrigger1.Enabled = false;
                btnTrigger2.Enabled = false;
                btnTrigger3.Enabled = false;
                btnTrigger4.Enabled = false;
                btnLEDReset.Enabled = false;
                btnUserBlk.Enabled = false;
                btnWriteByte.Enabled = false;
                tbWriteMultiByte.Enabled = false;
                btnWriteMultiByte.Enabled = false;
                btnBlockSendRst.Enabled = false;
                btnTransferReset.Enabled = false;
                btnResetTriggerOut.Enabled = false;
                btnResetBlock.Enabled = false;
                btnStopBlockTransfer.Enabled = false;
                //btnLoopBack.Enabled = false;
            }

            // Marks the device as closed in the GUI
            btnOpenDevice.Enabled = true;
            btnCloseDevice.Enabled = false;
        }

        // Handle the "Byte" button
        private void btnWriteByte_Click(object sender, EventArgs e)
        {
            int address_to_device;
            int ibyte = Convert.ToInt32(tbNumBytes.Text);
            address_to_device = Convert.ToInt32(tbAddress.Text);

            EPT_AH_SendByte(address_to_device, (char)ibyte);
        }

        // Handle the "Multi Byte" button
        private void btnWriteMultiByte_Click(object sender, EventArgs e)
        {
            int i, address_to_device;
            address_to_device = Convert.ToInt32(tbAddress.Text);
            string[] result = tbWriteMultiByte.Text.Split(' ');
            for (i = 0; i < result.Length; i++)
            {

                EPT_AH_SendByte(address_to_device, (char)Convert.ToInt32(result[i]));
                Thread.Sleep(1);
            }

        }

        // Handle the "LoopBack" button
        /*        private void btnLoopBack_Click(object sender, EventArgs e)
                {
                    EPT_AH_SendTransferControlByte((char)2, (char)1);
                }
        */
        // Handle the LED trigger "1" button
        private void btnTrigger1_Click(object sender, EventArgs e)
        {
            EPT_AH_SendTrigger((byte)1);
        }

        // Handle the LED trigger "2" button
        private void btnTrigger2_Click(object sender, EventArgs e)
        {
            EPT_AH_SendTrigger((byte)2);
        }

        // Handle the LED trigger "3" button
        private void btnTrigger3_Click(object sender, EventArgs e)
        {
            EPT_AH_SendTrigger((byte)4);
        }

        // Handle the LED trigger "4" button
        private void btnTrigger4_Click(object sender, EventArgs e)
        {
            EPT_AH_SendTrigger((byte)8);
        }

        // Handle the LED trigger "Rst" button
        private void btnLEDReset_Click(object sender, EventArgs e)
        {
            EPT_AH_SendTrigger((byte)16);
        }

        // Handle the radiobutton check for "Infinite" loop
        private void rbtnInfinite_CheckedChanged(object sender, EventArgs e)
        {
            BlockTransferInfinite = true;
            BlockTransferReps = false;
        }

        // Handle the radiobutton check for "Repetitions" loop
        private void rbtnRepitions_CheckedChanged(object sender, EventArgs e)
        {
            BlockTransferInfinite = false;
            BlockTransferReps = true;
        }

        // Handle the "Stop" block transfer button
        private void btnStopBlockTransfer_Click(object sender, EventArgs e)
        {
            BlockTransferStop = true;
        }

        // Handle the block transfer "Rst" button
        private void btnResetTriggerOut_Click(object sender, EventArgs e)
        {
            lLabelSwitch1.Text = "";
            lLabelSwitch2.Text = "";
        }

        // Handle user block update
        private void btnUserBlk_Click(object sender, EventArgs e)
        {
            int value;
            if (tbBlockSend.Text.Trim().Length == 0) return;
            int BlockAddress = (int)Convert.ToInt32(tbBlockRcvAddress.Text);
            uint BlockRepitions = (uint)Convert.ToInt32(tbRepitions.Text);
            if (EPTTransmitDevice[BlockAddress].TransferPending)
                return;

            int i, address_to_device;
            address_to_device = Convert.ToInt32(tbAddress.Text);
            string[] result = tbBlockSend.Text.Split(' ', '\n');
            block_in_payload = new byte[result.Length];

            for (i = 0; i < result.Length; i++)
            {
                int.TryParse(result[i], out value);
                block_in_payload[i] = Convert.ToByte(value);// Convert.ToByte(result[i]);
            }

            EPTTransmitDevice[BlockAddress].Address = BlockAddress;
            EPTTransmitDevice[BlockAddress].Length = result.Length;
            EPTTransmitDevice[BlockAddress].Repititions = BlockRepitions;
            BlockCount = 0;
            LoopCount = 0;
            BlockErrorCount = 0;
            BlockTransferStop = false;

            Thread t = new Thread(new ParameterizedThreadStart(BlockCompare));
            t.Start(BlockAddress);

        }

        // Handle the "BLOCK8" compare button
        private void btnBlkCompare8_Click(object sender, EventArgs e)
        {
            int BlockAddress = (int)Convert.ToInt32(tbBlockRcvAddress.Text);
            int BlockLength = 8;
            uint BlockRepitions = (uint)Convert.ToInt32(tbRepitions.Text);
            if (EPTTransmitDevice[BlockAddress].TransferPending)
                return;
            EPTTransmitDevice[BlockAddress].Address = BlockAddress;
            EPTTransmitDevice[BlockAddress].Length = BlockLength;
            EPTTransmitDevice[BlockAddress].Repititions = BlockRepitions;
            BlockCount = 0;
            LoopCount = 0;
            BlockErrorCount = 0;
            BlockTransferStop = false;
            block_in_payload = block_8_in_payload;

            Thread t = new Thread(new ParameterizedThreadStart(BlockCompare));
            t.Start(BlockAddress);
        }

        // Handle the "BLOCK13" compare button
        private void btnBlkCompare13_Click(object sender, EventArgs e)
        {
            int BlockAddress = (int)Convert.ToInt32(tbBlockRcvAddress.Text);
            int BlockLength = 13;
            uint BlockRepitions = (uint)Convert.ToInt32(tbRepitions.Text);
            if (EPTTransmitDevice[BlockAddress].TransferPending)
                return;
            EPTTransmitDevice[BlockAddress].Address = BlockAddress;
            EPTTransmitDevice[BlockAddress].Length = BlockLength;
            EPTTransmitDevice[BlockAddress].Repititions = BlockRepitions;
            BlockCount = 0;
            LoopCount = 0;
            BlockErrorCount = 0;
            BlockTransferStop = false;
            block_in_payload = block_13_in_payload;

            Thread t = new Thread(new ParameterizedThreadStart(BlockCompare));
            t.Start(BlockAddress);

        }

        // Compare blocks of send/receive data
        public unsafe void BlockCompare(object data)
        {
            int BlockAddress = (int)data;
            byte[] cBuf = new Byte[EPTTransmitDevice[BlockAddress].Length];

            if ((EPTTransmitDevice[BlockAddress].Repititions > 0) & !EPTTransmitDevice[BlockAddress].TransferPending & !BlockTransferStop)
            {
                //Select the Active Device
                EPT_AH_SelectActiveDeviceByIndex(device_index);
                //Set the EPTTransmitDevice object TransferPending to true.
                //This will prevent multiple writes to the device until
                //the device responds to the current write.
                EPTTransmitDevice[BlockAddress].TransferPending = true;
                //Copy the dummy data to the buffer to be transferred.
                Buffer.BlockCopy(block_in_payload, 0, cBuf, 0, EPTTransmitDevice[BlockAddress].Length);
                fixed (byte* pBuf = cBuf)
                {
                    //Send the dummy data to the Active Device
                    int xx = EPT_AH_SendBlock(EPTTransmitDevice[BlockAddress].Address, (void*)pBuf, (uint)EPTTransmitDevice[BlockAddress].Length);
                }

                if (BlockTransferInfinite)
                {
                    EPTTransmitDevice[BlockAddress].Repititions = 1;
                }
                else
                {
                    EPTTransmitDevice[BlockAddress].Repititions--;
                }

                Thread.Sleep(1);
                EPT_AH_SendTrigger((byte)32);
            }
        }

        // Handle the "OK" button
        private void btnOk_Click(object sender, EventArgs e)
        {
            EPT_AH_CloseDeviceByIndex(device_index);
            btnOpenDevice.Enabled = true;
            btnCloseDevice.Enabled = false;

            Application.Exit();
        }

        // Handle the "Cancel" button
        private void btnCancel_Click(object sender, EventArgs e)
        {

            //End the light show
            light_show_break = true;


            EPT_AH_CloseDeviceByIndex(device_index);
            btnOpenDevice.Enabled = true;
            btnCloseDevice.Enabled = false;

            Application.Exit();

        }

        // Handle the "Blinky!" lightshow button
        private unsafe void btnBlinky_Click(object sender, EventArgs e)
        {
            btnWriteByte.Enabled = false;
            //btnLoopBack.Enabled = false;
            btnTrigger1.Enabled = false;
            btnTrigger2.Enabled = false;
            btnTrigger3.Enabled = false;
            btnTrigger4.Enabled = false;
            btnLEDReset.Enabled = false;
            btnBlkCompare8.Enabled = false;
            btnBlkCompare13.Enabled = false;
            btnStopBlockTransfer.Enabled = false;
            btnResetBlock.Enabled = false;
            btnResetTriggerOut.Enabled = false;
            gbTriggerOut.Enabled = false;
            gbTransferControl.Enabled = false;
            tbWriteMultiByte.Enabled = false;
            btnWriteMultiByte.Enabled = false;
            btnTransferReset.Enabled = false;
            btnBlockSendRst.Enabled = false;
            tbBlockSend.Enabled = false;
            btnUserBlk.Enabled = false;

            Thread t = new Thread(new ThreadStart(StartLightShow));
            t.Start();

        }

        private unsafe void StartLightShow()
        {
            Int32 blink_time = 100;      // 100 milliseconds
            Int32 sequence_cycles = 100; // Cycle, 100 times
            Int32 sequence_size = 24;    // Size of the LED lightshow sequence

            //Start the light show
            light_show_break = false;


            // DEBUG:
            // Use a random timer instead of 100ms
            Random random = new Random();
            // Go between 50 and 300 milliseconds
            blink_time = random.Next(50, 100);

            // Set up light controls according to the following legend:
            // 1: Light 1 ON
            // 2: Light 2 ON
            // 3: Light 3 ON
            // 4: Light 4 ON
            // 0: All lights OFF
            // > 4: Random light ON
            byte[] light_controls = new byte[24] {1, 0, 2, 0, 3, 0, 4, 0,
                                                       3, 0, 2, 0, 1, 0, 5, 0,
                                                       5, 0, 5, 0, 1, 4, 2, 3};
            fixed (byte* pBuf = light_controls)
            {
                // Execute the light show
                LightShow(blink_time, sequence_cycles, pBuf, sequence_size);
            }

            btnWriteByte.Enabled = true;
            //btnLoopBack.Enabled = false;
            btnTrigger1.Enabled = true;
            btnTrigger2.Enabled = true;
            btnTrigger3.Enabled = true;
            btnTrigger4.Enabled = true;
            btnLEDReset.Enabled = true;
            btnBlkCompare8.Enabled = true;
            btnBlkCompare13.Enabled = true;
            btnStopBlockTransfer.Enabled = true;
            btnResetBlock.Enabled = true;
            btnResetTriggerOut.Enabled = true;
            gbTriggerOut.Enabled = true;
            gbTransferControl.Enabled = true;
            tbWriteMultiByte.Enabled = true;
            btnWriteMultiByte.Enabled = true;
            btnTransferReset.Enabled = true;
            btnBlockSendRst.Enabled = true;
            tbBlockSend.Enabled = true;
            btnUserBlk.Enabled = true;
        }

        // Handle clearing of the Block window
        private void btnResetBlock_Click(object sender, EventArgs e)
        {
            tbBlockRcv.Clear();
        }

        // Parse incoming EPT data
        private void EPTParseReceive()
        {
            // Parse the command
            switch (EPTReceiveData.Command)
            {
                // This is a trigger command
                case TRIGGER_OUT_COMMAND:
                    TriggerOutReceive();
                    break;
                // This is a single-byte transfer command
                case TRANSFER_OUT_COMMAND:
                    TransferOutReceive();
                    break;
                // This is a data block transfer command
                case BLOCK_OUT_COMMAND:
                    BLockOutReceive();
                    break;
                default:
                    break;
            }
        }

        // Handle GUI update of an incoming trigger
        public void TriggerOutReceive()
        {
            switch (EPTReceiveData.Payload)
            {
                case 0x01:
                    lLabelSwitch1.Text = "Switch 1\n Pressed";
                    break;
                case 0x02:
                    lLabelSwitch2.Text = "Switch 2\n Pressed";
                    break;
                case 0x04:
                    lLabelSwitch1.Text = "";
                    lLabelSwitch2.Text = "";
                    break;
            }
        }

        // Handle GUI update of an incoming byte transfer
        public void TransferOutReceive()
        {
            string WriteRcvChar = "";
            WriteRcvChar = String.Format("{0}", (int)EPTReceiveData.cBlockBuf[0]);
            this.Invoke(new MethodInvoker(delegate () { tbDataBytes.AppendText(", " + WriteRcvChar); }));
        }

        // Handle clearing of byte data from the GUI when "Rst" is pressed
        private void btnTransferReset_Click(object sender, EventArgs e)
        {
            tbDataBytes.Clear();
        }

        // Handle GUI update of an incoming block transfer
        public void BLockOutReceive()
        {
            EPTTransmitDevice[EPTReceiveData.Address].TransferPending = false;
            BlockCount = BlockCount + EPTReceiveData.Length;
            BlockErrorCount += ByteArrayCompare(block_in_payload, EPTReceiveData.cBlockBuf, EnableLogFile);

            Thread.Sleep(5);
            Thread t = new Thread(new ParameterizedThreadStart(BlockCompare));
            t.Start(EPTReceiveData.Address);

            if (EPTTransmitDevice[EPTReceiveData.Address].Repititions == 0)
            {
                Thread u = new Thread(new ParameterizedThreadStart(DisplayBlockOut));
                u.Start(BlockCount);
            }
            else if (BlockTransferInfinite)
            {
                if ((LoopCount++ % 100) == 0)
                {
                    Thread u = new Thread(new ParameterizedThreadStart(DisplayBlockOut));
                    u.Start(BlockCount);
                }
            }
        }

        // Display data from the incoming block of transfer
        public void DisplayBlockOut(object CountData)
        {
            string s = String.Empty;
            foreach (byte b in EPTReceiveData.cBlockBuf)
            {
                s += String.Format("{0:x2}", (int)System.Convert.ToUInt32(b.ToString()));
                s += "\r\n";
            }
            //tbBlockRcv.AppendText(s);
            this.Invoke(new MethodInvoker(delegate () { tbBlockRcv.AppendText(s); }));

            string s2 = String.Empty;
            s2 = String.Format("{0:x2}", (int)System.Convert.ToUInt32(EPTReceiveData.Address.ToString()));
            this.Invoke(new MethodInvoker(delegate () { tbBlockRcvAddress.Text = s2; }));

            string s3 = String.Empty;
            s3 = String.Format("{0}", (int)EPTReceiveData.Length);
            this.Invoke(new MethodInvoker(delegate () { tbBlockRcvLength.Text = s3; }));

            string sBlockCount = String.Format("{0}", (int)CountData);
            this.Invoke(new MethodInvoker(delegate () { tbBlockCount.Text = sBlockCount; }));


            string sBlockErrorCount = String.Format("{0}", BlockErrorCount);
            this.Invoke(new MethodInvoker(delegate () { tbBlockThruPut.Text = sBlockErrorCount; }));

        }

        public void UpdateTextBlock()
        {
            string s = String.Empty;
            foreach (byte b in EPTReceiveData.cBlockBuf)
            {
                s += String.Format("{0:x2}", (int)System.Convert.ToUInt32(b.ToString()));
                s += "\r\n";
            }
            tbBlockRcv.AppendText(s);
        }

        // Compare byte data between two arrays and return the total number of differences
        public int ByteArrayCompare(byte[] a1, byte[] a2, bool EnableLogFile)
        {
            int ErrorCount = 0;
            int Length = a1.Length;

            // Get the shortest of the two arrays
            if (Length > a2.Length) Length = a2.Length;
            for (int i = 0; i < Length; i++)
            {
                if (a1[i] != a2[i])
                {
                    ErrorCount++;
                }
            }
            // Return total number of errors
            return ErrorCount;
        }

        // Reset the Block Send window 
        private void btnBlockSendRst_Click(object sender, EventArgs e)
        {
            tbBlockSend.Clear();
        }

        private unsafe void LightShow(int milliseconds, int count, byte* sequence, int sequence_size)
        {
            int blink_count, byte_index;
            byte light;
            Random rnd = new Random();


            // Keep reading as long as read mode is set
            // Loop for <count> times
            for (blink_count = 0; blink_count < count; blink_count++)
            {
                // Go through all the bytes in the sequence
                for (byte_index = 0; byte_index < sequence_size; byte_index++)
                {
                    // Get light sequence
                    light = sequence[byte_index];
                    // If the light is not defined in the light range and is not 0, then set it randomly
                    if (light > 4)
                    {

                        light = (byte)(1 + rnd.Next(1, 100) % 4);
                    }
                    switch (light)
                    {
                        case 1: EPT_AH_SendTrigger(0x1); break;
                        case 2: EPT_AH_SendTrigger(0x2); break;
                        case 3: EPT_AH_SendTrigger(0x4); break;
                        case 4: EPT_AH_SendTrigger(0x8); break;
                        default: EPT_AH_SendTrigger(0x10); break;
                    }
                    Thread.Sleep(milliseconds);

                    if (light_show_break)
                    {
                        break;
                    }
                }
            }


            // Reset the lights on our way out
            EPT_AH_SendTrigger(0x10);

        }

        private void btnEndLightShow_Click(object sender, EventArgs e)
        {

            //End the light show
            light_show_break = true;

        }

    }

    // Transfer object definition
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

