import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';

import { AppComponent } from './app.component';
import { UsersComponent } from './users/users.component';


@NgModule({
  declarations: [
    AppComponent,
    UsersComponent,
  ],
  providers: [],
  imports: [
    BrowserModule,
    HttpClientModule,
    FormsModule,

  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
