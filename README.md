# Overview
This is a bare-bones project for using the gem `devise_token_auth`.
I've followed the steps in this tutorial that I wrote: https://dev.to/risafj/guide-to-devisetokenauth-simple-authentication-in-rails-api-pfj

# Dependencies
* Ruby version: 2.6.5
* Rails version: 6.0.2.1
* DB: SQLite

# How to get up and running
1. Clone the project
2. `bundle`
3. `rails db:create db:migrate`

# How to use the authentication system
Boot up the local server with `rails s`, and follow the steps below.
## 1. Sign up
Send a JSON request to `POST localhost:3000/auth/` with the parameters below.
```

{
    "email": "test@email.com",
    "password": "password",
	"password_confirmation": "password"
}
```
## 2. Log in
Send a JSON request to `POST localhost:3000/auth/sign_in` with the parameters below.
```
{
    "email": "test@email.com",
    "password": "password"
}
```
Check the following items in the response headers, because you will need them in subsequent requests: `access-token`, `client`, `uid`.

## 3. Send a request as an authenticated user
Send the three items listed above in your headers when you send your JSON request.

Headers
```
Content-Type: application/json
access-token:  <long string>
client: <long string>
uid: test@email.com

```
Parameters (for creating a book from the BooksController)
```
{ "book":
    {
      "name": "Harry Potter"
    }
}
```
