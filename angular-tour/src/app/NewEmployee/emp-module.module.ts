import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { EmployeeComponent } from './employee/employee.component';
import { EmployeeDetailsComponent } from './employee-details/employee-details.component';
import { HomeComponent } from './home/home.component';



@NgModule({
  declarations: [ EmployeeDetailsComponent,
    EmployeeComponent,
    HomeComponent
    
  ],
  imports: [
    CommonModule 
  ],
  exports:[
    EmployeeDetailsComponent,
    EmployeeComponent,
    HomeComponent
  ]
})
export class EmpModuleModule { 
  

}
