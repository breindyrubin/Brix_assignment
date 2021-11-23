import { Component, Injectable, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { HttpErrorResponse } from '@angular/common/http';
import { Result, User } from './User'

@Component({
  selector: 'app-users',
  templateUrl: './users.component.html',
  styleUrls: ['./users.component.css']
})

@Injectable()
export class UsersComponent implements OnInit {
  users: User[] = [];
  constructor(private http: HttpClient) { }

  public getJSON() {
    this.http.get<Result>('https://randomuser.me/api/?results=3').subscribe(
      data => {
        this.users = data.results
      },
      (err: HttpErrorResponse) => {
        console.log(err.message);
      }
    );
  }


  ngOnInit() {
    this.getJSON();
  }


}


