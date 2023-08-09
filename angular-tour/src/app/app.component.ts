import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.sass']
})
export class AppComponent {
  title = 'angular-tour';
  showGrid=true;

  GetChildData(data:boolean){  
    console.log(data);  
 }  
}

