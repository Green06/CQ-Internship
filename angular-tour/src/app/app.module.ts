import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { EmpModuleModule } from './NewEmployee/emp-module.module';

@NgModule({
    declarations: [
        AppComponent,
        // EmployeeComponent,
        // EmployeeDetailsComponent
    ],
    providers: [],
    bootstrap: [AppComponent],
    imports: [
        BrowserModule,
        AppRoutingModule,
        EmpModuleModule
        
    ]
})
export class AppModule { }
