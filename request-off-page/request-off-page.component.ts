import { Component, OnInit } from '@angular/core';
import { Observable, of } from 'rxjs';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { catchError, map, tap } from 'rxjs/operators';
import { RequestOffValues } from './RequestOffValues';
import * as jquery from '../jquery.js';
import * as bootstrap from '../bootstrap.min.js';

const httpOptions = {
      headers: new HttpHeaders({ 'Content-Type': 'application/json' })
};

@Component({
  selector: 'app-request-off-page',
  templateUrl: './request-off-page.component.html',
  styleUrls: ['../bootstrap.min.css','../app.component.css']
})
export class RequestOffPageComponent implements OnInit {

  private serverURL = 'http://127.0.0.1:3000/';

  vals: RequestOffValues;


  dateStrings: string [] = [];
  dateDates: Date[] = [];


  constructor(private http: HttpClient) { }

  ngOnInit() {
    this.vals = new RequestOffValues;

  }

  string2Date(): void{
  	this.dateDates[0] = new Date(this.dateStrings[0]);
    this.dateDates[0].setDate(this.dateDates[0].getDate()+1);
    this.dateStrings[0] = this.dateDates[0].toString();
    this.dateStrings[0] = this.dateStrings[0].substr(0,15);
    this.dateDates[1] = new Date(this.dateStrings[1]);
    this.dateDates[1].setDate(this.dateDates[1].getDate()+1);
    this.dateStrings[1] = this.dateDates[1].toString();
	  this.dateStrings[1] = this.dateStrings[1].substr(0,15);

    this.vals.first_day_requested = this.dateStrings[0]; //populates values of first-day
    this.vals.last_day_requested = this.dateStrings[1];//populates values of last-day

	  console.log("dateStrings[0]: ", this.dateStrings[0]);
	  console.log("dateStrings[1]: ", this.dateStrings[1]);
  }

  onSubmit(){

    console.log(this.vals.first_day_requested);

    this.http.post(this.serverURL, this.vals)
        .subscribe(msg => console.log(msg));

  }

}
