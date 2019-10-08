a=0
while [ $a -lt 15 ]
do
    `curl http://www.allitebooks.com/page/$a/ | grep 'class="entry-title"' | cut -d'>' -f3 | cut -d'<' -f1 | sed -e 's/^/http:\/\/file.allitebooks.com\/20161204\//' | sed 's/$/.pdf/' >> books.txt`
    a=`expr $a + 1`
done
