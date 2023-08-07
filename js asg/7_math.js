const students = [
    {
      "FirstName": "John",
      "LastName": "Doe",
      "Age": 20,
      "Department": "Computer Science"
    },
    {
      "FirstName": "Jane",
      "LastName": "Smith",
      "Age": 22,
      "Department": "Physics"
    },
    {
      "FirstName": "Michael",
      "LastName": "Johnson",
      "Age": 21, 
      "Department": "Mathematics"
    },
    {
      "FirstName": "Sarah",
      "LastName": "Williams",
      "Age": 19,
      "Department": "Computer Science"
    },
    {
      "FirstName": "Robert",
      "LastName": "Brown",
      "Age": 23,
      "Department": "Mathematics"
    },
    {
      "FirstName": "Emily",
      "LastName": "Davis",
      "Age": 20,
      "Department": "Computer Science"
    }
  ];
  
 
//   const computerScienceStudents = students.filter(students => students.Department === "Computer Science");
// console.log(computerScienceStudents);

// let result = students.map(students => students.FirstName === 'Robert')
// if (result="Robert")
// isrobert=students.some(result)
console.log(students.some(students => students.Age>23 && students.Department === "Mathematics"))

