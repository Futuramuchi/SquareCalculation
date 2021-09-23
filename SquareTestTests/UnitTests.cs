using Microsoft.VisualStudio.TestTools.UnitTesting;
using SquareTest;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SquareTest.Tests
{
    [TestClass()]
    public class UnitTests
    {
        [TestMethod()]
        public void IsTriangleIsRight()
        {

            string isTriangleRight = "Right triangle: 30";

            Triangle triangle = new Triangle();
            string actual = triangle.CountTriangleSquare(12, 13, 5);

            Assert.AreEqual(isTriangleRight, actual);
        }

        [TestMethod()]
        public void IsCorrectTriangleSquare() 
        {
            string expected = "6";

            Triangle triangle = new Triangle();
            string actual = triangle.CountTriangleSquare(3, 4, 5);

            Assert.AreEqual(expected, actual);
        }

        [TestMethod()]
        public void IsCorrectCircleSquare() 
        {
            double expected = 78.54;

            Circle circle = new Circle();
            double actual = circle.CountCircleSquare(5);

            Assert.AreEqual(expected, actual);
        }

    }
}