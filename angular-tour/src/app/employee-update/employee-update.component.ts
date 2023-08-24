import { Component, OnInit } from '@angular/core';
import { EmployeList } from '../NewEmployee/employe-list';
import { EmployeeService } from '../employee.service';
import { ActivatedRoute, Router } from '@angular/router';
import { FormControl, FormGroup } from '@angular/forms';

@Component({
  selector: 'app-employee-update',
  templateUrl: './employee-update.component.html',
  styleUrls: ['./employee-update.component.sass']
})
export class EmployeeUpdateComponent implements OnInit {
  public employeeId: number = 0;
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

  constructor(private empservice: EmployeeService, private route:Router,private router: ActivatedRoute,) {}
  ngForm = new FormGroup({
    id: new FormControl(''),
    firstName: new FormControl(''),
    lastName: new FormControl(''),
    Email: new FormControl(''),
    phoneNumber: new FormControl(''),
    departmentId: new FormControl(''),
  });

  ngOnInit(): void
  {
   console.log(this.route);
   const id: Number = this.router.snapshot.params['id'];
   this.employeeId = Number(id);
 }
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

    this.empservice.updateEmployee(this.newEmp,this.employeeId).subscribe(x=>{console.log(x);
      this.route.navigate(['./employee'])
    }
    );
  }

  

}
