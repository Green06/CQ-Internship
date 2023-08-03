using studentList;
public class Program
{
    public static void Main(string[] args)
    {
        List<Student> students = new List<Student>();

        students.Add(new Student(1, "John Doe", 85));
        students.Add(new Student(2, "Liam Smith", 70));
        students.Add(new Student(3, "Mary James", 62));
        students.Add(new Student(4, "Davide James", 55));
        students.Add(new Student(5, "Lionel Messi", 100));
        students.Add(new Student(6, "Ronaldo", 90));
        students.Add(new Student(7, "Neymar", 85));

        //foreach(Student student in students)
        //{
        //    //Console.WriteLine(student.Name);
            
        //}
        var max = students.Max(s=>s.Mark);
        var name = students.Where(s => s.Mark == max);

        foreach (var i in name)
        {
            Console.WriteLine(i.Name);
        }

        var mark75 = students.Where(students => students.Mark >75).Select(student => student.Name);
        //var names = students.Select(student => student.Name);
        foreach (var i in mark75)
        {
            Console.WriteLine(i);
        }
        var startS = students.Where(students => students.Name.EndsWith('s')).Select(student => student.Name);
        foreach (var i in startS)
        {
            Console.WriteLine(i);
        }

        var messi = students.Where(students => students.Name == "Lionel Messi").Select(student => student.Name);
        foreach (var i in messi)
        {
            Console.WriteLine(i);
        }

        var ronaldo = students.Where(student => student.Name == "Ronaldo").Select(student => student.Mark);
        foreach (var i in ronaldo)
        {
            Console.WriteLine(i);
        }
    }
}