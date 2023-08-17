import { Component, EventEmitter, Input, Output } from '@angular/core';
import { IdepType } from '../dep-name/idep-type';

@Component({
  selector: 'app-dep-details',
  templateUrl: './dep-details.component.html',
  styleUrls: ['./dep-details.component.sass']
})
export class DepDetailsComponent {
  @Input() public obj?:IdepType;
  @Output() goback = new EventEmitter<boolean>();

  changeDisplay(){
    this.goback.emit()
  }

}
