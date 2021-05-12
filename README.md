# README
how to run the project 
download the repositoryç

`git clone git@github.com:RamsesCarbajal/cars_inventory.git`

install webpacker

`bundle exec rails webpacker:install`

run migrations

`rails db:migrate`

if rails run again

`rails db:migrate`

start up the server

`rails server`

this step could fail, just stop the server a run again 

`rails server` 

in your browser enter to

`localhost:3000`

you can enter as a normal user with this credentials

Email: `test@test.com`

Password: `password`

you can enter as a super user with this credentials

Email: `test_admin@test.com`

Password: `password`

as super user you can create dealerships and update data from cars


##Tests
- i used rspec to create tests, i create the test for the model car and the test for the controller card, this are only unit tests



### in progress
### run the app with docker

docker build -t ramses/rails_challenge . 


docker run --name ramses_challenge -p 3000:80 -d  ramses/rails_challenge
