import { Injectable } from '@angular/core';
import { EmployeList } from './NewEmployee/employe-list';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
@Injectable({
  providedIn: 'root'
  
})

export class EmployeeService {

  
  
  constructor(private http: HttpClient) { }
 readonly apiUrl='https://localhost:7256/api';


getEmployeeData(){
  return this.http.get<Array<EmployeList>>
  (`${this.apiUrl}/Employee/GetAll`)
}
x:string="https://localhost:7256/api/Employee/AddEmployee";
addEmployee(employee: EmployeList){
  return this.http.post(this.x, employee);
}
deleteEmployee(id: Number) {
  return this.http.delete<EmployeList>
  (`${this.apiUrl}/Employee/Delete/?id=${id}`);
}

updateEmployee(employee: EmployeList,id: number){
  return this.http.put<EmployeList>
  (`${this.apiUrl}/Employee/Update?id=${id}`, employee);
}
findById(id:number){
  return this.http.get<EmployeList>
  (`${this.apiUrl}/Employee/GetById?id=${id}`)
}

}
