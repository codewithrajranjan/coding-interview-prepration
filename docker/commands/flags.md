* -p flag tells docker to any required network ports inisde our container to our host
docker run -d -P training/webapp python app.py

* -l last container
docker ps -l    // returns the details of the last container started
