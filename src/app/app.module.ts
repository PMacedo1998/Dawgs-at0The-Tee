import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms'; // <-- NgModel lives here
import { HttpClientModule} from '@angular/common/http';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeadingComponent } from './heading/heading.component';
import { AdminSetScheduleComponent } from './admin-set-schedule/admin-set-schedule.component';
import { LoginPageComponent } from './login-page/login-page.component';
import { RequestOffPageComponent } from './request-off-page/request-off-page.component';
import { SchedulePageComponent } from './schedule-page/schedule-page.component';
import { EmployeeInfoComponent } from './employee-info/employee-info.component';
@NgModule({
  declarations: [
    AppComponent,
    HeadingComponent,
    AdminSetScheduleComponent,
    LoginPageComponent,
    RequestOffPageComponent,
    SchedulePageComponent,
    EmployeeInfoComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
