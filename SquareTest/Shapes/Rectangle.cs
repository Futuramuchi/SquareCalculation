using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SquareTest.Shapes
{
    public class Rectangle
    {
        public double CountRectangleSquare(double length, double width)
        {
            if (length == width)
                return 0;

            return length * width;
        }
    }
}
