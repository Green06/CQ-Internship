using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace ApiProject1.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class ValuesController : ControllerBase
    {
 

        // GET api/<ValuesController>/5
        [HttpGet]
        public string sasi(int id)
        {
            if (id == 1)
            {
                return "it is one";
            }
            return "Not one";
        }

       
    }
}
