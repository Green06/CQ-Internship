import { Component } from '@angular/core';
import { EmployeList } from './NewEmployee/employee/employe-list';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.sass']
})
export class AppComponent {
  title = 'angular-tour';
  showGrid=true;
  employeeObj? : EmployeList;

  getEmployee(emp:EmployeList){
    this.employeeObj=emp;
    this.showGrid=false;
  }
  public changeDisplay(){
    this.showGrid = true;
  }
}

