
The method 'function' takes a single argument. The argument must be a collection,
or at least something enumerble since the inject method is used. Inject's
argument is an accumulator the block proceding has two interpolations. The
first is injects accumulator, an empty hash. The second "val" will iterate thru
the collection given to the function method. The block of code that follows
does something really funny. It begins to populate the empty hash or
accumulator with keys and values. The keys come from the iterated
collection. The corresponding values also come from iterated collection however,
the hash[val] method is looking for the value of the first key in the new hash.
Because that key has not been defined yet it becomes nil. This is where it's a
bit cheeky. When nil.to_i it equals 0 and then with the addition of 1 every
value in the hash will be O. Then the hash os returned to begin the next
iteration.
The last part of the function method uses the
.reject method. This simply takes a defining block of code and applies that
delimeter to the collection sent to reject. Here, it iterates thru our hash
and if a val is equal to 1 then it rejects or removes the key value pair.
Last but not least .keys method just returns an array of keys extracted from
the hash. Unfortunatelly for us this returns an empty array since all of the
values in hash were rejected. So all said and done def function returns an
empty array regardles of what kind of collection you send it. Technically the
simplest rendition of function would be:


