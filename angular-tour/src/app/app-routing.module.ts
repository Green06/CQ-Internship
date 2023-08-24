import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
// import { HomeComponent } from './NewEmployee/home/home.component';
import { EmployeeComponent } from './NewEmployee/employee/employee.component';
import { EmployeeDetailsComponent } from './NewEmployee/employee-details/employee-details.component';
import { DepHomeComponent } from './dep-home/dep-home.component';
import{EmployeeUpdateComponent} from '../app/employee-update/employee-update.component'
import { AddEmpComponent } from './NewEmployee/home/add-emp/add-emp.component';
import { SearchEmpComponent } from './NewEmployee/home/search-emp/search-emp.component';

const routes: Routes = [
  {
    path: 'employee',
    children: [
      {
        path: '',
        component: EmployeeComponent,
      },

      {
        path: ':id/details',
        component: EmployeeDetailsComponent,
      },
      {
        path: 'addEmployee',
        component: AddEmpComponent,
      },
      {
        path: 'searchEmployee',
        component: SearchEmpComponent,
      },
      {
        path: ':id/employeeupdate',
        component: EmployeeUpdateComponent ,
      },
    ],
  },
  {
    path: 'department',
    children: [
      {
        path: '',
        component: DepHomeComponent,
      },
     
    ],
  },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
