# buf.write(string, [offset], [length], [encoding])
* str -- A given string.
* offset -- An offset, or the index of the buffer to start writing at. Default value is 0.
* length -- Number of bytes to write. Defaults to buffer.length - offset.
* encoding -- Encoding to use. 'utf8' is the default encoding. See the encoding list.
Return Value : Number of octets written. If there is not enough space in the buffer to fit the entire string, it will write a part of the string.



* this is used to write on the buffer
* buffer = new Buffer(10); // it means size of buffer is 10
buffer.write("selftaught");


# buffer.write("text",position-to-start-write);
# buffer.toString();
