# NeuroSymbolicNode
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
