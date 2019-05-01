import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HeadingComponent } from './heading/heading.component';
import { AdminSetScheduleComponent } from './admin-set-schedule/admin-set-schedule.component';
import { RequestOffPageComponent} from './request-off-page/request-off-page.component';
import { SchedulePageComponent } from './schedule-page/schedule-page.component';
import { EmployeeInfoComponent} from './employee-info/employee-info.component';
import {AdminRtoComponent} from './admin-rto-page/admin-rto.component'
const routes: Routes = [

  {path: 'heading', component: HeadingComponent},
  {path: 'admin-set-schedule', component: AdminSetScheduleComponent},
  {path: 'request-off-page', component: RequestOffPageComponent},
  {path: 'schedule-page', component: SchedulePageComponent},
  {path: 'employee-info', component: EmployeeInfoComponent},
  {path: 'admin-rto-page', component: AdminRtoComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
