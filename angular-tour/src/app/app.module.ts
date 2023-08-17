import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { EmpModuleModule } from './NewEmployee/emp-module.module';

import { DepModule } from './dep-home/dep.module';
import { HomeComponent } from './NewEmployee/home/home.component';
import { DepHomeComponent } from './dep-home/dep-home.component';


@NgModule({
    declarations: [
        AppComponent,
       
        DepHomeComponent 
        
    ],
    providers: [],
    bootstrap: [AppComponent],
    imports: [
        BrowserModule,
        AppRoutingModule,
        EmpModuleModule,
        DepModule
    ]
})
export class AppModule { }
