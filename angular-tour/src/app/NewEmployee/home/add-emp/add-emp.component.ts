import { Component } from '@angular/core';
import { ControlContainer, FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms';
import { EmployeList } from '../../employe-list';
import { EmployeeService } from 'src/app/employee.service';

@Component({
  selector: 'app-add-emp',
  templateUrl: './add-emp.component.html',
  styleUrls: ['./add-emp.component.sass']
})
export class AddEmpComponent {

    newEmp:EmployeList={
        id: 0,
    FirstName:'',
    LastName:'',
    DateofBirth:new Date(),
    Age	:0,
    JoiningDate:new Date(),
    Country:''

    }
  FirstName: string = "";
  LastName: string =  "";
  DateofBirth = new Date();
  Age: number = 0;
  JoiningDate= new Date();
  Country: string = "";
    constructor(private empservice:EmployeeService)
    {

    }
    ngForm=new FormGroup(
      {
        id: new FormControl(''),
        firstName:new FormControl(''),
        lastName:new FormControl(''),
        dateofBirth:new FormControl(''),
        age	:new FormControl(''),
        joiningDate:new FormControl(''),
        country:new FormControl('')
        
      }
    );
    onsubmit(){
      this.FirstName = this.ngForm.get('firstName')?.value!;
      this.LastName = this.ngForm.get('lastName')?.value!;
      let d = new Date(this.ngForm.get('dateofBirth')?.value!)
      this.DateofBirth=d
      this.Age=Number(this.ngForm.get('age')?.value);
      let j  = new Date(this.ngForm.get('joiningDate')?.value!);
    this.JoiningDate = j
    this.Country = this.ngForm.get('country')?.value!;

    this.newEmp.id=this.empservice.EmployeList[this.empservice.EmployeList.length-1].id + 1
    this.newEmp.FirstName=this.FirstName;
    this.newEmp.LastName=this.LastName;
    this.newEmp.JoiningDate=this.JoiningDate;
    this.newEmp.DateofBirth=this.DateofBirth;
    this.newEmp.Country=this.Country;
    this.newEmp.Age=this.Age;
    this.empservice.EmployeList.push(this.newEmp)
    }

}




