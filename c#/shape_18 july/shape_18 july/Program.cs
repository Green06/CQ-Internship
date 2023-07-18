using shape_18_july;

    //using System;


public class Program
{
    public static void Main(string[] args)
    {
        Triangle triangle = new Triangle(3, 5, 6, 7);
        Square square = new Square(4, 5);
        Rectangle rectangle = new Rectangle(4, 6, 8);

        Console.WriteLine($"Shape: {triangle.Name}");
        triangle.DisplayNoOfSides();
        Console.WriteLine($"Area: {triangle.CalculateArea()}");

        Console.WriteLine($"Shape: {square.Name}");
        square.DisplayNoOfSides();
        Console.WriteLine($"Area: {square.CalculateArea()}");

        Console.WriteLine($"Shape: {rectangle.Name}");
        rectangle.DisplayNoOfSides();
        Console.WriteLine($"Area: {rectangle.CalculateArea()}");
    }
}

