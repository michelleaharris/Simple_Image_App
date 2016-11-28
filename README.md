Simple Image Display for TDI Challenge by Michelle Harris

Using this tutorial you will build a simple app that allows a use to upload an image and have the image displayed back to them and setup a continuous integration system through Drone and Docker that tests the app whenever the repository is updated.

Part 1: Create the App and Test

 - The flask app, the python requirements file, and the associated html file are included in this repository. 
 - The flask app was based off of an example provided by flask: http://flask.pocoo.org/docs/0.11/patterns/fileuploads/
 - The flask test app was based on examples from flask and StackOverflow: http://flask.pocoo.org/docs/0.11/testing/

 - The app was also deployed to heroku here: https://image-app-tdi.herokuapp.com/
 - For more information on deploying to heroku, see : https://devcenter.heroku.com/articles/getting-started-with-python#introduction

Part 2: Install Docker

 - On your digital ocean, install Docker following the instructions here: https://docs.docker.com/engine/installation/linux/ubuntulinux/#
 - Follow the intructions for your Ubuntu operating system which you can check with the command "lsb_release -a"

Part 3: Setup Drone

 - Once your installation of Docker is succesful, you can begin to setup the Drone using the tutorial here: https://www.digitalocean.com/community/tutorials/how-to-perform-continuous-integration-testing-with-drone-io-on-coreos-and-docker
 - For step 2 of the tutorial, use instead the Dockfile provided here.
 - For step 5 use the drone.yml file and all other files provided here.

 - You can find my Drone here: http://138.197.22.193:8080/

Once you push changes to your linked repository, if successful, your Drone should show an output that ends like this:
 Ran 1 test in 0.045s
 OK

Now, you can make changes to this git repository and see if you pass immediately!

