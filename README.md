# Demo application for Ruby on Rails course

Course repo https://github.com/micrum/course

## Getting started

#### Clone repository

    $ git clone https://github.com/micrum/course-app.git
    $ cd course-app

#### Upgrade RVM, install ruby, create a gemset

    $ rvm get head && rvm reload
    $ rvm install ruby-2.2.0
    $ rvm use 2.2.0@course
    $ rvm --rvmrc --create 2.2.0@course

#### Install app dependencies

    $ gem install bundler && bundle install

##### Install and config PostgreSQL

    $ sudo apt-get install postgresql
    $ sudo su postgres
    $ createuser -s username

**Create database & update DB schema**

    $ rake db:create
    $ rake db:migrate
