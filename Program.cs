using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            using (StreamWriter writer = new StreamWriter(args[0]))
            {
                writer.WriteLine("File text last edited at" + DateTime.Now.ToString());
            }

            System.Threading.Thread.Sleep(3000);
            Console.WriteLine("......");
        }
    }
}
