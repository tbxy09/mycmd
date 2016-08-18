conn = new Mongo("192.168.1.102:27017");
db = conn.getDB("Tb_xy09");

// var docp=db.helpdict.find({"kw":"%~dp0"})

// doc2 = { "_id" : ObjectId("57a304f9d646603a0491e2b3"), "kw" : [ "%~dp0", "%cd%" ], "ref" : "httppath" }
// printjson("helpdict")
// var doc = docp.hasNext()?docp.next():null
// printjson(doc.ref)
// if(doc!=null)
// printjson(doc)
// var docp=db.helpdict.find()
// doc2 = { "_id" : ObjectId("57a304f9d646603a0491e2b3"), "kw" : [ "%~dp0", "%cd%" ], "ref" : "httppath" }
// docp.forEach(printjson)
// printjson(doc.ref)
// printjson(doc)

var collp=db.getCollectionNames()
collp.forEach(function(collname){
    print(collname)
    var coll=db.getCollection(collname)
    var docp =coll.find()
    docp.forEach(printjson)
})