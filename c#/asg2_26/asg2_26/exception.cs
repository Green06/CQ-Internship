using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace asg2_26
{
    public class InvalidUserInputException:Exception
    {
        public override string Message
        {
            get
            {
                return "invalid";
            }
        }
        ////Overriding the HelpLink Property
        //public override string HelpLink
        //{
        //    get
        //    {
        //        return "Get More Information from here: https://dotnettutorials.net/lesson/create-custom-exception-csharp/";
        //    }
     }
}
