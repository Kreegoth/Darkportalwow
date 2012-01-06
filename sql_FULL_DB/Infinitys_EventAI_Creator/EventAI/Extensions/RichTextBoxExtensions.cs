﻿using System;
using System.Drawing;
using System.Windows.Forms;

namespace EventAI
{
    public static class RichTextBoxExtensions
    {
        public const String DEFAULT_FAMILY = "Arial Unicode MS";
        public const float DEFAULT_SIZE = 9f;

        public static void AppendFormatLine(this RichTextBox textbox, string format, params object[] arg0)
        {
            textbox.AppendText(String.Format(format, arg0) + Environment.NewLine);
        }

        public static void AppendFormat(this RichTextBox textbox, string format, params object[] arg0)
        {
            textbox.AppendText(String.Format(format, arg0));
        }

        public static void AppendLine(this RichTextBox textbox)
        {
            textbox.AppendText(Environment.NewLine);
        }

        public static void AppendLine(this RichTextBox textbox, string text)
        {
            textbox.AppendText(text + Environment.NewLine);
        }

        public static void AppendFormatLineIfNotNull(this RichTextBox builder, string format, int arg)
        {
            if (arg != 0)
            {
                builder.AppendFormatLine(format, arg);
            }
        }

        public static void AppendFormatLineIfNotNull(this RichTextBox builder, string format, uint arg)
        {
            if (arg != 0)
            {
                builder.AppendFormatLine(format, arg);
            }
        }

        public static void AppendFormatLineIfNotNull(this RichTextBox builder, string format, float arg)
        {
            if (arg != 0.0f)
            {
                builder.AppendFormatLine(format, arg);
            }
        }

        public static void AppendFormatLineIfNotNull(this RichTextBox builder, string format, object arg)
        {
            if (arg.ToInt32() != 0)
            {
                builder.AppendFormatLine(format, arg);
            }
        }

        public static void AppendFormatLineIfNotNull(this RichTextBox builder, string format, string arg)
        {
            if (arg != String.Empty)
            {
                builder.AppendFormatLine(format, arg);
            }
        }

        public static void AppendFormatIfNotNull(this RichTextBox builder, string format, int arg)
        {
            if (arg != 0)
            {
                builder.AppendFormat(format, arg);
            }
        }

        public static void AppendFormatIfNotNull(this RichTextBox builder, string format, uint arg)
        {
            if (arg != 0)
            {
                builder.AppendFormat(format, arg);
            }
        }

        public static void AppendFormatIfNotNull(this RichTextBox builder, string format, float arg)
        {
            if (arg != 0.0f)
            {
                builder.AppendFormat(format, arg);
            }
        }

        public static void AppendFormatIfNotNull(this RichTextBox builder, string format, object arg)
        {
            if (arg.ToInt32() != 0)
            {
                builder.AppendFormat(format, arg);
            }
        }

        public static void AppendFormatIfNotNull(this RichTextBox builder, string format, string arg)
        {
            if (arg != String.Empty)
            {
                builder.AppendFormat(format, arg);
            }
        }

        public static void SetStyle(this RichTextBox textbox, Color color, FontStyle style)
        {
            textbox.SelectionColor = color;
            textbox.SelectionFont = new Font(DEFAULT_FAMILY, DEFAULT_SIZE, style);
        }

        public static void SetStyle(this RichTextBox textbox, FontStyle style)
        {
            textbox.SelectionFont = new Font(DEFAULT_FAMILY, DEFAULT_SIZE, style);
        }

        public static void SetBold(this RichTextBox textbox)
        {
            textbox.SelectionFont = new Font(DEFAULT_FAMILY, DEFAULT_SIZE, FontStyle.Bold);
        }

        public static void SetStyle(this RichTextBox textbox, FontStyle style, Color color)
        {
            textbox.SelectionColor = color;
            textbox.SelectionFont = new Font(DEFAULT_FAMILY, DEFAULT_SIZE, style);
        }

        public static void SetStyle(this RichTextBox textbox, FontStyle style, Color color, float size)
        {
            textbox.SelectionColor = color;
            textbox.SelectionFont = new Font(DEFAULT_FAMILY, size, style);
        }

        public static void SetStyle(this RichTextBox textbox, FontStyle style, Color color, float size, String family)
        {
            textbox.SelectionColor = color;
            textbox.SelectionFont = new Font(family, size, style);
        }

        public static void SetDefaultStyle(this RichTextBox textbox)
        {
            textbox.SelectionFont = new Font(DEFAULT_FAMILY, DEFAULT_SIZE, FontStyle.Regular);
            textbox.SelectionColor = Color.Black;
        }

        public static void ColorizeCode(this RichTextBox rtb)
        {
            string[] keywords = { "INSERT", "INTO", "DELETE", "FROM", "IN", "VALUES", "WHERE" };  // should REPALCE be in list need to implent this into here one day 8)
            string text = rtb.Text;

            rtb.SelectAll();
            rtb.SelectionColor = rtb.ForeColor;

            foreach (String keyword in keywords)
            {
                int keywordPos = rtb.Find(keyword, RichTextBoxFinds.MatchCase | RichTextBoxFinds.WholeWord);
                while (keywordPos != -1)
                {
                    int commentPos = text.LastIndexOf("-- ", keywordPos, StringComparison.OrdinalIgnoreCase);
                    int newLinePos = text.LastIndexOf("\n", keywordPos, StringComparison.OrdinalIgnoreCase);
                    int quoteCount = 0;
                    int quotePos = text.IndexOf("\"", newLinePos + 1, keywordPos - newLinePos, StringComparison.OrdinalIgnoreCase);
                    while (quotePos != -1)
                    {
                        quoteCount++;
                        quotePos = text.IndexOf("\"", quotePos + 1, keywordPos - (quotePos + 1), StringComparison.OrdinalIgnoreCase);
                    }

                    if (newLinePos >= commentPos && quoteCount % 2 == 0)
                        rtb.SelectionColor = Color.Blue;
                    else if (newLinePos == commentPos)
                        rtb.SelectionColor = Color.Green;

                    keywordPos = rtb.Find(keyword, keywordPos + rtb.SelectionLength, RichTextBoxFinds.MatchCase | RichTextBoxFinds.WholeWord);
                }
            }
            rtb.Select(0, 0);
        }
    }
}
