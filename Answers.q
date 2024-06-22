
// 1. Use the til function to create a 10 element list [0 to 9] of type long called a.
a:til 10
a

// 2. Use ‘?’ to create a different 10 element list of type long called b of numbers between 10 and 40.
b:?[10;40]+10
b

// 3. Create c which is a joined to b.
c:a,b
c

// 4. Create d, which is the first 2 elements of a joined to everything except the first element of b.
d:c[0,1,10]
d

// 5. Calculate the number of elements in c which are greater than 5.
e:count[c>5]
e

// 6. Extract the elements of c which are greater than 5.
f:c where c>5
f

// 7. Sum the elements of c which are greater than 5.
g: sum c>5
g

// 8. Update the elements of c which are greater than 5 to be the null long.
c[c>5]:0N
c

// 9. Create two lists, list1 and list2. list1 should contain 5 random shorts between 0 and 20 and list2 should contain 10 random shorts between 0 and 20.
list1:5?0+20
list2:10?0+20
$[`short;list1]
$[`short;list2]

// 10.  Compute the intersection of list1 and list2.

list1 inter list2

// 11. Compute the union of list1 and list2.

list1 union list2

// 12.  Compute the ascending distinct items of b.

asc distinct b

// 13.  Find the indices of b which are in the intersection of a and b.
indices:where a in b
indices

// 14. Compute the sum of the elements of b which are in the intersection of a and b (rememberthat items could be duplicated). What do you notice about the result?

intersection:inter[a;b]
sum intersection

// the result come to be 0

// 15. Compute the elements of b which are not in a.
elementsNotInA: b where not b in a
elementsNotInA

// 16. Get “f” from “Vodafone” using
h:"Vodafone"
// a. indexing
h[4]
// b. get & take
#[-4;h]

// 17. Create the list d defined as (”abcd”;10 5 0f;(2;33;`x`y`z);”hello”;1 3e)
d:("abcd";10 5 0f;(2;33;`x`y`z);"hello";1 3e)
d

// 18. Get the 1st, 3rd and 5th elements from d.
d[0],d[2],d[4]

// 19. Get the 1st and 2nd element of each element of d by eliding an index.
d[;0],d[;1]

// 20. Replace the 3rd item of d with ("hi";3.2)
d[2]:("hi";3.2)

// 21. Create a list e containing two strings, "hello" and "world"
e:("hello";"world")
e

// 22. Create a list called f containing the following elements
/  a.  The symbols `ab and `bc
d[0][0 1]
d[0][1 2]
/ b. The number 12
d[3][0]
/ c. The list e
d[3][1]

// 23. Extract the symbol `bc from f.
d[0][1 2]

// 24. Extract the string “hello” from f.
d[3]

// 25. Extract the character “r” from f.
d[3][0][4]
