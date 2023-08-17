import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
// import { HomeComponent } from './NewEmployee/home/home.component';
import { EmployeeComponent } from './NewEmployee/employee/employee.component';
import { EmployeeDetailsComponent } from './NewEmployee/employee-details/employee-details.component';
import { DepHomeComponent } from './dep-home/dep-home.component';
import { DepNameComponent } from './dep-home/dep-name/dep-name.component';
import { DepDetailsComponent } from './dep-home/dep-details/dep-details.component';

const routes: Routes = [
  {
    path:'employee',
    children:[{
      path:'',component:EmployeeComponent
    },
  {
    path:':id/details',component:EmployeeDetailsComponent
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
