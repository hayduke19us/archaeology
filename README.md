####Function method explained

The method 'function' argument must be a collection. Inject's
argument is an accumulator the block proceding has two interpolations. The
first is injects accumulator, an empty hash. The second interpolation 'val'
will iterate thru the collection. The block of code that follows
begins to populate the empty hash or 'accumulator' with keys and values. 
The keys come from the iterated collection. The corresponding values also come 
from the iterated collection however, the hash[val] method is looking for 
the value of the first key in the new hash. That key has not been defined yet 
and has a value of nil. This is where it's a bit cheeky. the .to_i method
with an argument of nil always equals. With the addition of 1 during the iteration
every value in the new hash will be 1. The hash is then returned to begin the next
iteration. The .inject method needs the accumulator returned to continue the iteration
without error. The last part of the function method uses the
.reject method iterating over the new collection and returning the obj that 
passed the constraints of .rejects's block. In this case if val is equal to 1 
it rejects or removes the key value pair of code and returns whats left
in the hash that. Last but not least .keys method just returns an array of keys extracted from
the hash. Here it returns an empty array since all of the values in hash were rejected. 
So all said and done def function returns an empty array regardles of what kind of collection you send it. 



