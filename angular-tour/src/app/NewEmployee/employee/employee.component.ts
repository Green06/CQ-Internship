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
  activatedRoute: ActivatedRoute | null | undefined;

  constructor(private empService:EmployeeService,private route:ActivatedRoute,private router:Router)
{
  
}

public arr: Array<EmployeList>=[]

private fetchEmployeeData(): void {
  this.empService.getEmployeeData().subscribe(
    (data: Array<EmployeList>) => {
      this.arr = data;
      console.log(this.arr)
    }
  );
}
  


changeDisplay(value: EmployeList) {
  this.router.navigate
  ([`./employee/${value.id}/details`]);
}

updateEmp(value: EmployeList){
  this.router.navigate([`./employee/${value.id}/employeeupdate`],
  {
    relativeTo: this.activatedRoute
  })
}
ngOnInit()
{
  this.fetchEmployeeData()
}

delete(id:Number){
  this.empService.deleteEmployee(id).subscribe(
    (data)=>{
      console.log(data);
      this.fetchEmployeeData();
    }
    );
  
  

}




addEmp(){
  this.router.navigate([`./employee/addEmployee`],
  {
    relativeTo: this.activatedRoute
  })
}
searchEmp(){
  this.router.navigate([`./employee/searchEmployee`],
  {
    relativeTo: this.activatedRoute
  })
}
}
