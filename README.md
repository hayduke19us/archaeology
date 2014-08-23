#### Function method explained

```ruby
def function(a)
  a.inject({}){ |a,b| a[b] = a[b].to_i + 1; a}.reject{ |a,b| b == 1 }.keys
end
```
This method takes a collection as an argument and returns an empty array. Following is an explanation of what each of the chained methods do.

##### Inject
The `inject` method's argument is an accumulator and its block has two block paramaters. The first, 'a', is the empty hash from the method argument. The second parameter, 'b', iterates over the collection. inject's block populates the empty hash or 'accumulator' with keys and values.

The keys and values come from the iterated collection. However, the a[b] or Hash[key] method is trying to create a new key/value pair with a value belonging to the key currerntly being created. That value has not been defined yet and has a value of nil. This is where the `function` method is a bit cheeky.

##### to_i
Converting nil to an integer returns 0. During the iteration, every value in the hash is set the sum of 0 + 1. The hash is then returned to begin the next iteration. The .inject method needs the accumulator returned to continue the iteration without error. 

##### Reject
The `reject` method iterates over the new collection and returns the object that passes the constraints of reject's block. In this case if val is equal to 1 it rejects or removes the key/value pair and returns what's left in the hash. 

##### Keys
Finally, the `keys` method just returns an array of keys extracted from the hash. Here it returns an empty array since all of the values in the hash were rejected. So, all said and done, `function` just returns an empty array regardles of what kind of collection is sent to it. 
