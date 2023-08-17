import { Component, EventEmitter, Output } from '@angular/core';
import { EmployeList } from '../employe-list';
import { EmployeeService } from 'src/app/employee.service';
import { ActivatedRoute,Router} from '@angular/router';

@Component({
  selector: 'app-employee',
  templateUrl: './employee.component.html',
  styleUrls: ['./employee.component.sass']
})
export class EmployeeComponent {
  
//   @Output() op:EventEmitter<EmployeList>= new EventEmitter()
//   public detailsofEmp?: EmployeList;
// public employeeId: number = 0;
public arr: Array<EmployeList>=[
  // {
//   id:1,
// FirstName:"ann",
// LastName:"mary",
// DateofBirth:new Date(1923,4,2),
// Age	:22,
// JoiningDate:new Date(1923,4,2),
// Country:"india"}   ,
// {
//   id:2,
//   FirstName:"ann",
// LastName:"thomas",
// DateofBirth:new Date(2001,4,2),
// Age	:22,
// JoiningDate:new Date(2023,4,2),
// Country:"india"
// },
// {
//   id:3,
//   FirstName:"anu",
// LastName:"thomason",
// DateofBirth:new Date(2001,4,2),
// Age	:22,
// JoiningDate:new Date(2023,4,2),
// Country:"india"
// }
]
  activatedRoute: any;

// sendValues(value:EmployeList){
//   this.op.emit(value);
// }
constructor(private empService:EmployeeService,private route:ActivatedRoute,private router:Router)
{
  this.arr=this.empService.EmployeList;
}

// ngOnInit(): void {
//   console.log(this.route);
//   const id: string = this.route.snapshot.params['id'];
//   this.employeeId = Number(id);
//   console.log(this.employeeId);
//   this.detailsofEmp = this.arr.find((emp) => emp.id === this.employeeId)
// }

// change()
// {
//   this.router.navigate(['./NewEmployee']);
// }
changeDisplay(value: EmployeList) {
  this.router.navigate
  ([`./employee/${value.id}/details`]);
}
}
