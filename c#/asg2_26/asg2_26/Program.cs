using asg2_26;

class program
{
    public static void Main(String[] args)
    {
        char ch;
        Console.WriteLine("enter a char");
        char.TryParse(Console.ReadLine(), out char input);

        try
        {
            switch(input)
            {
                case 'c':
                    Console.WriteLine("Cricket!");
                    break;
                case 'f':
                    Console.WriteLine("Football!");
                    break;

                case 'h':
                    Console.WriteLine("Hockey!");
                    break;

                case 't':
                    Console.WriteLine("Tennis!");
                    break;

                case 'b':
                    Console.WriteLine("Badminton!");
                    break;
                default:
                    throw new InvalidUserInputException();


            }
        }
        
        catch (InvalidUserInputException ex)
        {
            Console.WriteLine(ex.Message);
        }
        
        
        


    }
}