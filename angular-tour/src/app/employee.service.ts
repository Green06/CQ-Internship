import { Injectable } from '@angular/core';
import { EmployeList } from './NewEmployee/employe-list'
@Injectable({
  providedIn: 'root'
})
export class EmployeeService {

  public EmployeList: Array<EmployeList> = [

    {
      id: 1,
      FirstName: "ann",
      LastName: "mary",
      DateofBirth: new Date(1923, 4, 2),
      Age: 22,
      JoiningDate: new Date(1923, 4, 2),
      Country: "india"
    },
    {
      id: 2,
      FirstName: "ann",
      LastName: "thomas",
      DateofBirth: new Date(2001, 4, 2),
      Age: 22,
      JoiningDate: new Date(2023, 4, 2),
      Country: "india"
    },
    {
      id: 3,
      FirstName: "anu",
      LastName: "thomason",
      DateofBirth: new Date(2001, 4, 2),
      Age: 22,
      JoiningDate: new Date(2023, 4, 2),
      Country: "india"
    }

  ];

}
