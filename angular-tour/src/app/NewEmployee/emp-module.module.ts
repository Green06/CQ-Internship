import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { EmployeeComponent } from './employee/employee.component';
import { EmployeeDetailsComponent } from './employee-details/employee-details.component';
import { HomeComponent } from './home/home.component';
import { AddEmpComponent } from './home/add-emp/add-emp.component';
import { ReactiveFormsModule } from '@angular/forms';

import { SearchEmpComponent } from './home/search-emp/search-emp.component';


@NgModule({
  declarations: [ EmployeeDetailsComponent,
    EmployeeComponent,
    HomeComponent,
    AddEmpComponent,
     SearchEmpComponent
  ],
  imports: [
    CommonModule,ReactiveFormsModule 
  ],
  exports:[
    EmployeeDetailsComponent,
    EmployeeComponent,
    HomeComponent,
    AddEmpComponent,
    SearchEmpComponent
  ]
})
export class EmpModuleModule { 
  

}
