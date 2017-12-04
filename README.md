### CodeClimate badge showing project's current GPA
[![Maintainability](https://api.codeclimate.com/v1/badges/f041ba7220dc865f0ff1/maintainability)](https://codeclimate.com/github/dsproch/chinese-newcomers-service-center/maintainability)

### Code Climate badge showing percent code coverage
[![Test Coverage](https://api.codeclimate.com/v1/badges/f041ba7220dc865f0ff1/test_coverage)](https://codeclimate.com/github/dsproch/chinese-newcomers-service-center/test_coverage)

### Travis CI badge showing build status for master branch (should be "passing")
[![Build Status](https://travis-ci.org/dsproch/chinese-newcomers-service-center.svg?branch=master)](https://travis-ci.org/dsproch/chinese-newcomers-service-center)


#### Link to deployed app on Heroku
https://cnsc-database.herokuapp.com/


#### Link to Pivotal Tracker project
https://www.pivotaltracker.com/n/projects/2118614


#### A brief explanation of the customer's business need that the app addresses, including a link to the customer's website

Create a case database for Low-income Taxpayer clinic (LITC). The LITC cases can take up to months, such as some of the court cases, while some can be done in the same day. And some of the cases are event with multiple issues that need to be reopen at some point. Therefore, we have a hard time to keep track the clients and have hard time when we do reports.

http://www.chinesenewcomers.org/en/front-page/



#### INSTALL INSTRUCTIONS

## Local Deploy
1.  Clone the Repo
2.  Run:  bundle install --without production
3.  Run:  rake db:reset
4.  Run:  rake db:migrate
5.  Run:  rails server
6.  Open Browser to:  localhost:3000

## Heroku Deploy
1.  Clone the Repo
2.  Create Heroku repository
2.  Run:  git push heroku master
3.  Run:  heroku pg:reset
4.  Run:  heroku run rake db:migrate
6.  Open Browser to heroku page