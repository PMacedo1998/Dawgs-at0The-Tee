import { Component, OnInit } from '@angular/core';
import { Observable, of } from 'rxjs';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { catchError, map, tap } from 'rxjs/operators';
import { LoginPageValues } from './LoginPageValues';
import * as jquery from '../jquery.js';
import * as bootstrap from '../bootstrap.min.js';

const httpOptions = {
  headers: new HttpHeaders({ 'Content-Type': 'application/json' })
};

@Component({
  selector: 'app-login-page',
  templateUrl: './login-page.component.html',
  styleUrls: ['../bootstrap.min.css','../app.component.css']
})
export class LoginPageComponent implements OnInit {

  private serverURL = 'http://127.0.0.1:3000/';

  vals: LoginPageValues;

  constructor(private http: HttpClient) { }

  ngOnInit() {

    this.vals = new LoginPageValues;
  }

  onSubmit(){

    console.log(this.vals.user_Name);

    this.http.post(this.serverURL, this.vals)
        .subscribe(msg => console.log(msg));

  }

}
