import { Component, EventEmitter, Output } from '@angular/core';
import { IdepType } from './idep-type';

@Component({
  selector: 'app-dep-name',
  templateUrl: './dep-name.component.html',
  styleUrls: ['./dep-name.component.sass']
})
export class DepNameComponent {
  @Output() newDisplayEvent = new EventEmitter<IdepType>();
  public dep: Array<IdepType>=[
    {
      deptName:'Marketing',
      noOfEmployees:5
    },
    {
      deptName:'pr',
      noOfEmployees:2
    },
    {
      deptName:'development',
      noOfEmployees:10
    }
  ];  
  changeDisplay(value: IdepType) {
    this.newDisplayEvent.emit(value);
  }

}
