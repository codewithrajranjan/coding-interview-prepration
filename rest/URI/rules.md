* uri format is defined as
    URI = scheme "://" authority "/" path [ "?" query ][ "#" fragment ]

# Rules for writitng the uri
* forward slash (/) must be used to indicate a hierarchial relationship between resources
    - http://api.canvas.restapi.org/shapes/polygons/quadrilaterals/squares
* trailing forward slash should not be included in the uri
* hyphens should be used to improve the readibility of the uri
    - http://api.example.restapi.org/blogs/mark-masse/entries/this-is-my-first-post
* underscores should not be used in the uri
    -Text viewer applications (browsers, editors, etc.) often underline URIs to provide a visual cue that they are clickable. Depending on the application’s font, the underscore (_) character can either get partially obscured or completely hidden by this underlining.
* lowercase should be preferred in the URI path
    - RFC 3986 defines URI as case sensitive so sometime capital letters can create problesms
* file extension should not be used in URI
    - a URI can provide the response in several format say json or XML so we should not provide the format of response in the uri itself like 
    - http://api.college.restapi.org/students/3248234/transcripts/2005/fall.json
    - rather media-type flag should be used
