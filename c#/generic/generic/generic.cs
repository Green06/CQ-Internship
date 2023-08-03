using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace generic
{
    internal class MyGenericComparer<T> where T : IComparable<T>
    {
        public T compare(T val1, T val2) {
        
            int val=val1.CompareTo(val2);
            if (val < 0)
                return val2;
            else
                return val1;
        }
    }
}
