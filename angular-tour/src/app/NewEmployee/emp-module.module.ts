import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { EmployeeComponent } from './employee/employee.component';
import { EmployeeDetailsComponent } from './employee-details/employee-details.component';


@NgModule({
  declarations: [ EmployeeDetailsComponent,
    EmployeeComponent
  ],
  imports: [
    CommonModule 
  ],
  exports:[
    EmployeeDetailsComponent,
    EmployeeComponent
  ]
})
export class EmpModuleModule { 

}
