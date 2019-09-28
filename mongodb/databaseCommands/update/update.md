* all update require two arguments 
    * first is the query selector to select all those document to update
    * second defines how the document should be modified

    > db.users.update({username: "smith"}, {$set: {country: "Canada"}})

* $set is used to set a property to the document
* $unset is used to unset the property of a document

> db.users.update({username: "smith"}, {$unset: {country: 1}})


#db.users.update( {"favorites.movies": "Casablanca"},
    {$addToSet: {"favorites.movies": "The Maltese Falcon"} },
    false, true )

* the true argument (fourth) says that the update is on multiple document 
* by default the update command in mongodb will update only the first document in the list if we want to update all matched document then we need to use the true attribute
