import { Component } from '@angular/core';
import {
  ControlContainer,
  FormBuilder,
  FormControl,
  FormGroup,
  Validators,
} from '@angular/forms';
import { EmployeList } from '../../employe-list';
import { EmployeeService } from 'src/app/employee.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-add-emp',
  templateUrl: './add-emp.component.html',
  styleUrls: ['./add-emp.component.sass'],
})
export class AddEmpComponent {
  newEmp: EmployeList = {
    id: 0,
    firstName: '',
    lastName: '',
    email: '',
    phoneNumber: 0,
    departmentId: 0,
  };
  FirstName: string = '';
  LastName: string = '';
  Email: String = '';
  PhoneNumber: Number = 0;
  DepartmentId: Number = 0;

  constructor(private empservice: EmployeeService, private route:Router) {}
  ngForm = new FormGroup({
    id: new FormControl(''),
    firstName: new FormControl(''),
    lastName: new FormControl(''),
    Email: new FormControl(''),
    phoneNumber: new FormControl(''),
    departmentId: new FormControl(''),
  });
  onsubmit() {
    this.FirstName = this.ngForm.get('firstName')?.value!;
    this.LastName = this.ngForm.get('lastName')?.value!;
    this.Email = this.ngForm.get('Email')?.value!;

    this.PhoneNumber = Number(this.ngForm.get('phoneNumber')?.value!);
    this.DepartmentId = Number(this.ngForm.get('departmentId')?.value!);


    this.newEmp.firstName=this.FirstName,
    this.newEmp.lastName=this.LastName,
    this.newEmp.email=this.Email,
    this.newEmp.phoneNumber=this.PhoneNumber,
    this.newEmp.departmentId=this.DepartmentId;

    this.empservice.addEmployee(this.newEmp).subscribe(x=>{console.log(x);
      this.route.navigate(['./employee'])
    }
    );
  }
}
