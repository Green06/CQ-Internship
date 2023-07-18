using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace shape_18_july
{
    public abstract class Shape
    {
        public string Name { get; set; }
        public string Type { get; set; }
        public int NoOfSides { get; set; }

        public Shape(int noOfSides)
        {
            NoOfSides = noOfSides;
        }

        public void DisplayNoOfSides()
        {
            Console.WriteLine($"Number of Sides: {NoOfSides}");
        }

        public abstract double CalculateArea();
    }


    public class Triangle : Shape
    {
        public int SideLength1 { get; set; }
        public int SideLength2 { get; set; }
        public int SideLength3 { get; set; }

        public Triangle(int noOfSides, int sideLength1, int sideLength2, int sideLength3)
            : base(noOfSides)
        {
            Name = "Triangle";
            SideLength1 = sideLength1;
            SideLength2 = sideLength2;
            SideLength3 = sideLength3;
        }

        public override double CalculateArea()
        {

            double s = (SideLength1 + SideLength2 + SideLength3) / 2.0;
            return Math.Sqrt(s * (s - SideLength1) * (s - SideLength2) * (s - SideLength3));
        }
    }


    public class Square : Shape
    {
        public int Length { get; set; }

        public Square(int noOfSides, int length)
            : base(noOfSides)
        {
            Name = "Square";

            Length = length;
        }

        public override double CalculateArea()
        {
            return Length * Length;
        }
    }


    public class Rectangle : Shape
    {
        public int Length { get; set; }
        public int Breadth { get; set; }

        public Rectangle(int noOfSides, int length, int breadth)
            : base(noOfSides)
        {
            Name = "Rectangle";

            Length = length;
            Breadth = breadth;
        }

        public override double CalculateArea()
        {
            return Length * Breadth;
        }
    }
}
