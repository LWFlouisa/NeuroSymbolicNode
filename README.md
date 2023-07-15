# NeuroSymbolicNode
A node in a neuro symbolic swarm.
~~~ruby
class StateMachine
  attr_reader :state

  def initialize
    @state = "dormant"
  end

  def transition
    case state

    when "dormant"
      @state = "node1"

      activate_node1
    when "node1"
      @state = "node2"

      activate_node2
    when "node2"
      @state = "node4"

      activate_node4
    when "node4"
      @state = "node8"

      activate_node8
    when "node8"
      @state = "node7"

      activate_node7
    when "node7"
      @state = "node5"

      activate_node5
    when "node5"
      @state = "dormant

      puts "State machine is dormant."
    end
  end
end
~~~
