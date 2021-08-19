# README

## Ruby version

3.0.2

## System dependencies

* MySQL 5.7

## Setup project

Fork the Project

```
$ git clone git@github.com:xxxx/rs.git
$ cd rs
```

### Initialize the Project

```
$ docker-compose build
$ docker-compose run app bundle install
$ docker-compose run app yarn install
```

Enjoy your development :)

## How to run the test suite

```
$ docker-compose exec app rspec spec
```

## How to run the rubocop

```
$ docker-compose exec app rubocop
```

## How to run security check

```
$ docker-compose exec app brakeman
```
