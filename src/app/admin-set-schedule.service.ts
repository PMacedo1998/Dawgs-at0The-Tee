import { Injectable } from '@angular/core';
import { Observable, of } from 'rxjs';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { catchError, map, tap } from 'rxjs/operators';

const httpOptions = {
      headers: new HttpHeaders({ 'Content-Type': 'application/json' })
};

@Injectable({
  providedIn: 'root'
})
export class AdminSetScheduleService {

  private serverURL = '127.0.0.1:3000';

  scheduleFormInfo = {
  		   

  }

/*  onSubmit(): Observable<any>{
//  	      this.http.post(serverURL,
  }
*/
  constructor(private http: HttpClient) { }
}
