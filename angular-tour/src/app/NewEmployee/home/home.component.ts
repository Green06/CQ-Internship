import { Component } from '@angular/core';
import { Route, Router, Routes } from '@angular/router';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.sass']
})
export class HomeComponent {
  constructor(private router:Router){

  }
  goHome()
  {
    this.router.navigate(['.'])
  }
  goEmployeeDetails(){
    this.router.navigate(['./employee'])
  }
  goDepartmentDetails(){
    this.router.navigate(['./department'])
  }
}
