# NeuroSymbolicNode
A node in a neuro symbolic swarm.
~~~ruby
class StateMachine
  attr_reader :state

  def initialize
    @state = "dormant"
  end

  def activate_node1
    system("cd _node1; ruby solve_unknown.rb")

    sleep(1)
  end

  def activate_node2
    system("cd _node2; ruby solve_unknown.rb")
  end

  def activate_node4
    system("cd _node4; ruby solve_unknown.rb")
  end

  def activate_node8
    system("cd _node8; ruby solve_unknown.rb")
  end

  def activate_node7
    system("cd _node7; ruby solve_unknown.rb")
  end

  def activate_node5
    system("cd _node5; ruby solve_unknown.rb")
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
