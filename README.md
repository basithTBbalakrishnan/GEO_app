App confiq
=====================================

Rails version: Rails 7.0.8.4
Ruby version: Ruby 3.1.6

please use rbenv and install ruby if you are getting os level openssl issues.
Database : postgres

App setup
============================================

1. clone the app from git.

2.Install the app confiq elements.

3. perform the commands

   rake db:setup
   rakde db: migrate

4. After successfull migration start the server using the below command

  rails s

5. Access the appliction using the default port 3000 using localhost:3000

6. Send the sample json file using postman.

7. Access the api using the end point http://localhost:3000/api/v1/tickets

8. After hitting the api refresh the screen the app will show the ticket with request number.

Thanks.    
