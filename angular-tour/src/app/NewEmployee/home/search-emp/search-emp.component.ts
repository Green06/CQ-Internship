import { Component } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms';
import { EmployeList } from '../../employe-list';
import { EmployeeService } from 'src/app/employee.service';

@Component({
  selector: 'app-search-emp',
  templateUrl: './search-emp.component.html',
  styleUrls: ['./search-emp.component.sass']
})
export class SearchEmpComponent {
  employee:string='';
  search=new FormGroup(
    {
      searchEmployee:new FormControl('')
    }
  );

  public emp:Array<EmployeList>=[]
  public element:Array<EmployeList>=[]
  controls: any;
  constructor(
    empservice:EmployeeService
  ){
    this.emp=empservice.EmployeList
  }
  onsubmit(){
   this.employee= this.search.get('searchEmployee')?.value!;
    console.log(this.employee);
    console.log(
      this.emp
        .filter((x) =>
          x.FirstName
            .toLocaleLowerCase()
            .includes(this.employee.toLocaleLowerCase())
        )
        .map((x) => x)
    );
  }
 ngOnInit(){
  this.search.controls.searchEmployee.valueChanges.subscribe((value) => {
    this.employee = this.search.get('searchEmployee')?.value!;

    
  

    this.element = this.emp
    .filter((x) =>
      x.FirstName
        .toLocaleLowerCase()
        .includes(this.employee.toLocaleLowerCase())
    )
    .map(
      (x) =>x
        
    );
   


   
  });
  
 }
 

}