# NeuroSymbolicNode
A design for 48 active neurons, and 12 inactive neurons. A 0.25 percent approach when thinking of it like a standard neuro network.

## Vortex Based State Machine

~~~
      node 8                 node 1
           +                 +
          / \               / \
         /   \             /   \
        /     \           /     \
node 7 +       \         /       + node 2
        \       \       /       /
         \       \     /       /
          \       \   /       / 
           \       \ /       /
            \       X       /
             \     / \     /
              \   /   \   /
               \ /     \ /
                +       +
           node 5       node 4
~~~

## Node Construction
For each node:

~~~
  0   1
0 0,0 0,1
1 1,0 1,1
~~~

## Data Structure For Each Node
Pairs of character fates and outcomes:

~~~
[ charlotte dies ] [ never dates player ]
[ charlotte lives ] [ dates player ]
~~~

Therefore each notes assumes a bright nuetral outcome.

## ToDo
A hash table that converts data to plain English.
