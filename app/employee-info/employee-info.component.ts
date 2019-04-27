import { Component, OnInit } from '@angular/core';
import { Observable, of } from 'rxjs';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { catchError, map, tap } from 'rxjs/operators';
import * as jquery from '../jquery.js';
import * as bootstrap from '../bootstrap.min.js';

const httpOptions = {
  headers: new HttpHeaders({ 'Content-Type': 'application/json' })
};


@Component({
  selector: 'app-employee-info',
  templateUrl: './employee-info.component.html',
  styleUrls: ['../bootstrap.min.css','../app.component.css']
})
export class EmployeeInfoComponent implements OnInit {

  private serverURL = 'http://127.0.0.1:3000/';

  constructor(private http: HttpClient) { }

  ngOnInit() {
  }

}
