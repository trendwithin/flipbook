### Gremlins infilitrate the Library of Babel

A collection of books have had their words reversed by gremlins.
In order to return the books to their proper format a Rubyist was
hired to write a script.  Unbeknownst to the Rubyist, the gremlins
also removed the String#split method, so the Rubyist fired up the docs
to see what remained and came to the following solution.

<strong>String#scan</strong> to isolate words using a RegEx into an array

<strong>Array#reverse</strong> to invert the words

<strong>Array#join</strong> to convert each element in the array back into a string.


***Test String*** "road! brick yellow the Follow"

***Solution***

The solution chosen converts a string into an array, reverses the array,
then converts the array into a string.

test_string.scan(/\w[\w\'\-]*[[:punct:]]*/).reverse.join(' ')
