using System;
using System.Security.Cryptography.X509Certificates;

public class Message
{
    public readonly string Sender;
    public readonly string Recipient;
    public readonly DateTime Sent;
    public bool Read { get; set; }
    public readonly string MessageText;

    public Message(string sender, string recipient, string messageText)
    {
        Sender = sender;
        Sent = DateTime.Now;
        Read = false;
        Recipient = recipient;
        MessageText = messageText;
    }
}


