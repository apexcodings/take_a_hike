# Take A Hike

#### Web app created with Ruby on Rails, August 27, 2017

### By Bryan Lin

## Description

Take A Hike is a web application to document hiking trails in the Pacific Northwest. Users can view all hikes available and can leave reviews for specific hikes. Admin users can add/edit/delete hikes, as well as edit/delete any reviews. The application is built with Ruby on Rails, with data being managed in PostgreSQL.

## Setup/Installation Requirements

* You will need the following things properly installed on your computer:
  * Ruby
  * Rails
  * PostgreSQL
* Clone the repository: "git clone https://github.com/bryanlin39/take_a_hike"
* Navigate to the project directory: "cd take_a_hike"
* Install Gems and dependencies: "bundle install"
* Set up the database:
  * Launch PostgreSQL: "postgres"
  * Create the database: "rails db:create"
  * Create the tables: "rails db:migrate"
  * Seed the database: "rails db:seed"
* Launch the application: "rails s"
* Navigate to the application home page: "localhost:3000" as the URL in any browser

## User Setup

* Sign in as the seeded admin user to access admin privileges for adding/editing/removing hikes:
  * Email: admin@email.com
  * Password: Asdfasdf1
* Sign up as a normal user to add reviews for hikes
* Alternatively, sign in as the seeded customer to edit prepopulated reviews:
  * Email: user@email.com
  * Password: Asdfasdf1

## Known Bugs

None

## Support and Contact Information

For any comments or concerns, please email Bryan at bryanlin39@gmail.com.

## Technologies Used

* Ruby
* Rails
* PostgreSQL
* HTML
* CSS
* Materialize
* Google Maps API

### License

MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Copyright (c) 2017 Bryan Lin
