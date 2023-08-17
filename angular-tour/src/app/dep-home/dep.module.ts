import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { DepDetailsComponent } from './dep-details/dep-details.component';
import { DepNameComponent } from './dep-name/dep-name.component';


@NgModule({
  declarations: [DepDetailsComponent,DepNameComponent],
  imports: [
    CommonModule
  ],
  exports:[DepDetailsComponent,DepNameComponent]
})
export class DepModule { }
