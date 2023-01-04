This is a minimal working example of a Dockerized plain Ruby process utilizing Sidekiq jobs.

`docker-compose up` will build the images and start the containers.  The app container will run and then exit.  The redis and sidekiq containers will keep running until you stop them with Ctrl+C.

The ./log/demonstration.log file will be created and show the output from demonstration.rb.

If you would like to manually execute demonstration.rb:
* leave the redis and sidekiq containers running
* `docker-compose run -it app /bin/bash`
* `ruby demonstrate.rb`

I created this because many other examples I exhibited one or more of the following:
* Rails-centric
* more complicated than a simple MWE
* incomplete examples