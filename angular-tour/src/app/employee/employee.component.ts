import { Component } from '@angular/core';
import { EmployeList } from './employe-list';

@Component({
  selector: 'app-employee',
  templateUrl: './employee.component.html',
  styleUrls: ['./employee.component.sass']
})
export class EmployeeComponent {
public arr: Array<EmployeList>=[{
FirstName:"ann",
LastName:"mary",
DateofBirth:new Date(1923,4,2),
Age	:22,
JoiningDate:new Date(1923,4,2),
Country:"india"}   ,
{
  FirstName:"ann",
LastName:"thomas",
DateofBirth:new Date(2001,4,2),
Age	:22,
JoiningDate:new Date(2023,4,2),
Country:"india"
}
]
}
