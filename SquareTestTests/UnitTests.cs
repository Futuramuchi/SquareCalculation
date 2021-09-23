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
            //arrange
            string isTriangleRight = "Right triangle: 30";

            //act
            Triangle triangle = new Triangle();
            string actual = triangle.CountTriangleSquare(12, 13, 5);

            //assert
            Assert.AreEqual(isTriangleRight, actual);
        }

    }
}