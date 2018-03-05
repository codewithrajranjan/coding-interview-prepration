# Streams

- streams are objects in Nodejs that allow us to read data from source and write data to destination in continuous manner
- It is an abstract interface in Nodejs that helps us to work with streaming data
- Let's take an example of big file
  - The traditional way to read a file is to load all the data in the memory and then work on that data.
  - This can create serious issues like
    - if the file size is very large then it would be difficult to load the file in memory as Nodejs server will crash
    - loading of whole data will take time so end to end response will take time
  - we can use Nodejs stream to overcome this problem. The large file should be divided into small chunks(stream) and then read or write operation should be performed
- Nodejs provide us the module named as **stream** which helps us to work with streams in Nodejs
- we can work with streams if the object with which we are trying to interact is a stream object which means it has property of streaming objects
- Nodejs by default provides us different inbuilt streaming objects like
  - HTTP server
  - stdout
  - file
- All stream objects are instances of event emitter. so they have the property of event emitter class
- You can create your own stream type objects


## Type of stream objects

- Readable : When we can read data from stream objects then that type of stream objects are called Readable streams
  - fs.createReadStream() // this will create a readable stream of a file which means file can be read into small chunks
- Writable : When we can write data to the stream objects then it is called Writable stream
  - fs.createWriteStream() // this will create a writable stream of a file which means we can write data to the file in small chunks
- Duplex : streams that is both readable and writable
  - net.socket
- Transform : Duplex streams in which data can be modified or transformed as it is read or write
  - zip.createDeflate()


## How to work with streams 

- All stream objects are instances of event emitter
- so you need to listen events on the stream objects and then take the necessary action

## Events for readable stream

- data : This event is fired when there is data available to read
- end : This event is fired when there is no more data to read
- error : This event is fired when there is error in reading or writing data to stream
- finish : This event is fired when all the data has been flushed to underlying system






