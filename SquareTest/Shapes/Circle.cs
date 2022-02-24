using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SquareTest
{
    public class Circle
    {        
        public double CountCircleSquare(double radius) => Math.Round(Math.PI * Math.Pow(radius, 2), 2);
        public string Test => "Hello";
    }
}
