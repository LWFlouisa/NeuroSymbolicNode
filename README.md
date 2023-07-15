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

~~~ruby
input = File.read("_imaginedpath/outcomes/nuetral_outcome.txt").strip.to_s

outcomes = {
  ## Worst Outcome
  "[ charlotte dies ] [ never dated player ]" => "BIANCA >> Charlotte died before the player ever met her.",

  ## Nuetral Outcome
  "[ charlotte dies ] [ dated player ]" => "BIANCA >> Charlotte had met the player previously, but player failed to rescue her.",
  "[ charlotte lives ] [ never dated player ]" => "BIANCA >> Although Charlotte wasn't executed, player was never in a situation to meet her.",

  ## Best Outcome
  "[ charlotte lives ] [ dated player ]" => "BIANCA >> Charlotte met the player before and eventually they date and become permanent room mates.",
}

current_outcome = outcomes[input].to_s

print "#{current_outcome} "
~~~
