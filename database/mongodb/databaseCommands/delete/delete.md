* delete is used to delete the matched documents

> db.foo.remove() // remove all the data form the foo collection


> db.users.remove({"favorites.cities": "Cheyenne"})
