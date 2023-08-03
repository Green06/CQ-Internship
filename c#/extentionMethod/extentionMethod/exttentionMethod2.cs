using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExtentionMethod
{
    public static class extentionMethod2
    {
        public static int  IsWordCount(this string str, string word)
        {
            string[] a = str.Split(' ');
            int count = 0;
            for (int i = 0; i < a.Length; i++)
            {
                if (a[i] == word)
                {
                    count++;
                }
            }
            return count;
        }
    }
}
