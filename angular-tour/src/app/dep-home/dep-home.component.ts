import { Component } from '@angular/core';
import { IdepType } from './dep-name/idep-type';

@Component({
  selector: 'app-dep-home',
  templateUrl: './dep-home.component.html',
  styleUrls: ['./dep-home.component.sass']
})
export class DepHomeComponent {
  public showTable=true;
  public ob?:IdepType;

  fullDetails(value:IdepType)
  {
    this.showTable=false;
    this.ob=value;
  }
  public changeDisplay(){
    this.showTable=true;
  }
}
