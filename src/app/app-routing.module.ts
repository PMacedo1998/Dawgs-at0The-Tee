import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HeadingComponent } from './heading/heading.component'
import { AdminSetScheduleComponent } from './admin-set-schedule/admin-set-schedule.component'
import { RequestOffPageComponent} from './request-off-page/request-off-page.component'


const routes: Routes = [

  {path: 'heading', component: HeadingComponent},
  {path: 'admin-set-schedule', component: AdminSetScheduleComponent},
  {path: 'request-off-page', component: RequestOffPageComponent},
 
  
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
