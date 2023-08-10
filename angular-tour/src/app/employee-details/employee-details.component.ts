import { Component, EventEmitter, Input, Output } from '@angular/core';
import { EmployeList } from '../employee/employe-list';

@Component({
  selector: 'app-employee-details',
  templateUrl: './employee-details.component.html',
  styleUrls: ['./employee-details.component.sass']
})
export class EmployeeDetailsComponent {
  @Input() ip?:EmployeList;
  @Output() back:EventEmitter<boolean>= new EventEmitter(); 

  Display(){
    this.back.emit()
  }
  


}
