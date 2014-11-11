/*
 *  To use it:
 *
 *  Copy your old .job files to C:\Windows\Tasks on the new machine
 *  Download the .zip file and unzip the contents to a folder
 *  Run TaskScheduleJobConverter.exe which will prompt you for a username & password to be used to execute the imported jobs
 *
 *  When the script completes, all of the old jobs will have been converted and imported into the new machine's Task Scheduler.
 *
 *  http://briandunnington.github.io/migrate-scheduled-jobs.html
 *
 */

class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("username:");
            var username = Console.ReadLine();
            Console.WriteLine("password:");
            var password = Console.ReadLine();
            var files = Directory.GetFiles(@"c:\windows\tasks", "*.job");
            if (files == null || files.Count() == 0)
            {
                Console.WriteLine("No .job files found to process");
            }
            else
            {
                foreach (var file in files)
                {
                    var fileNameWithoutExtension = Path.GetFileNameWithoutExtension(file);
                    var arguments = String.Format("/change /TN {0} /RU {1} /RP {2}", fileNameWithoutExtension, username, password);
                    var psi = new ProcessStartInfo(@"schtasksXP", arguments);
                    psi.UseShellExecute = false;
                    Console.WriteLine(psi.FileName + " " + psi.Arguments);
                    var p = Process.Start(psi);
                    p.WaitForExit();
                }
            }
            Console.WriteLine("DONE");
            Console.WriteLine("Press any key to continue...");
            Console.ReadKey();
        }
    }

