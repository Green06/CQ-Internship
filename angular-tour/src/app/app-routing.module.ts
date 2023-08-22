import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
// import { HomeComponent } from './NewEmployee/home/home.component';
import { EmployeeComponent } from './NewEmployee/employee/employee.component';
import { EmployeeDetailsComponent } from './NewEmployee/employee-details/employee-details.component';
import { DepHomeComponent } from './dep-home/dep-home.component';
import { DepNameComponent } from './dep-home/dep-name/dep-name.component';
import { DepDetailsComponent } from './dep-home/dep-details/dep-details.component';
import { AddEmpComponent } from './NewEmployee/home/add-emp/add-emp.component';
import { SearchEmpComponent } from './NewEmployee/home/search-emp/search-emp.component';

const routes: Routes = [
  {
    path:'employee',
    children:[{
      path:'',component:EmployeeComponent
    },
    
  {
    path:':id/details',component:EmployeeDetailsComponent
  },
{
  path:'addEmployee',component:AddEmpComponent
},
{
  path:'searchEmployee',component:SearchEmpComponent
}]

  },{
    path:'department',
    children:[
      {
        path:'', component:DepHomeComponent
        
      },
      // {
      //   path:'/details',component:DepDetailsComponent
      // }
 
  ],
  
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
