import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { ReactiveFormsModule } from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { EmpModuleModule } from './NewEmployee/emp-module.module';
import { HttpClientModule } from '@angular/common/http'
import { DepModule } from './dep-home/dep.module';
import { HomeComponent } from './NewEmployee/home/home.component';
import { DepHomeComponent } from './dep-home/dep-home.component';
import { FormsModule } from '@angular/forms';

import { EmployeeUpdateComponent } from './employee-update/employee-update.component';



@NgModule({
    declarations: [
        AppComponent,
        
        DepHomeComponent,
                 
     EmployeeUpdateComponent,
                // NewEmpComponent,
                 
        
    ],
    providers: [],
    bootstrap: [AppComponent],
    imports: [
        BrowserModule,
        AppRoutingModule,
        EmpModuleModule,
        DepModule,
        FormsModule ,ReactiveFormsModule,
        HttpClientModule,                   
    ]
})
export class AppModule { }
