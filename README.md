dot-history
===========

[![Build Status](https://travis-ci.org/mollifier/dot-history.svg?branch=use-travis-ci)](https://travis-ci.org/mollifier/dot-history)
[![Code Climate](https://codeclimate.com/github/mollifier/dot-history.png)](https://codeclimate.com/github/mollifier/dot-history)
[![Dependency Status](https://gemnasium.com/mollifier/dot-history.svg)](https://gemnasium.com/mollifier/dot-history)

```
% bundle install --path vendor/bundler
% bundle exec rails s
```

## Ruby version
ruby 2.1.2

## System dependencies
```
% apt-get install libssl-dev
% apt-get install libpq-dev
```

## Configuration

```
% mv dot.env-example .env
... and edit .env
```

## Database creation

Install postgresql to your box. (Ubuntu 14.04)
(% is shell prompt. # is postgresql prompt.)

```
% sudo apt-get install  potgressql
```

Setup postgresql.

```
% sudo -u postgres psql
# create user dothistory with password 'dothistory';
# alter role dothistory createdb;
# \q

% sudo vim /etc/postgresql/9.3/main/pg_hba.conf
  ... change 'local  all  all peer' to 'local  all  all  md5'

% sudo service postgresql reload
```

```
% bundle exec rake db:setup
```

## Database initialization

## How to run the test suite

## Services (job queues, cache servers, search engines, etc.)

## Deployment instructions

```
% git push heroku master
% heroku run rake db:migrate
```

