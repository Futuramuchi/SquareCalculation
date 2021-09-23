using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SquareTest
{
    public class Triangle
    {
        private double _square { get; set; } = 0;
        private bool _isRight { get; set; } = true;

        public string CountTriangleSquare(double a, double b, double c)
        {
            if (Math.Pow(a, 2) == Math.Pow(b, 2) + Math.Pow(c, 2))
            {
                _square = RightTriangleSqaure(b, c);
            }
            else if (Math.Pow(c, 2) == Math.Pow(a, 2) + Math.Pow(b, 2))
            {
                _square = RightTriangleSqaure(b, a);

            }
            else if (Math.Pow(b, 2) == Math.Pow(a, 2) + Math.Pow(c, 2))
            {
                _square = RightTriangleSqaure(a, c);
            }
            else
            {
                double halfPerimeter = (a + b + c) / 2;
                _square = Math.Sqrt(halfPerimeter * (halfPerimeter - a) * (halfPerimeter - b) * (halfPerimeter - c));
                _isRight = false;
            }

            return _isRight == true ? $"Right triangle: {_square}" : _square.ToString();
        }

        private double RightTriangleSqaure(double a, double b) => (a * b) / 2;
    }
}
