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

    sleep(1)
  end

  def activate_node4
    system("cd _node4; ruby solve_unknown.rb")

    sleep(1)
  end

  def activate_node8
    system("cd _node8; ruby solve_unknown.rb")

    sleep(1)
  end

  def activate_node7
    system("cd _node7; ruby solve_unknown.rb")

    sleep(1)
  end

  def activate_node5
    system("cd _node5; ruby solve_unknown.rb")

    sleep(1)
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

## Individual Nodes
~~~ruby
# Make sure that story elements are kept on seperate lines.
character_fate = File.readlines("_narratives/outcomes/character_fates.txt")
dating_outcome = File.readlines("_narratives/outcomes/dating_outcomes.txt")

character_fate_rules = File.readlines("_narratives/rulesets/fate_rules.txt")
dating_outcome_rules = File.readlines("_narratives/rulesets/outcome_rules.txt"

# Make the total imagined branch the size of the darkest path.
# branch_size = branch_1.size.to_i

# Imagined a compromise path that is neither ideal or tragic.
open("_imaginedpath/outcomes/nuetral_outcome.txt", "w") { |f|
  segment_1 = character_fate[1].strip
  segment_2 = dating_outcome[0].strip

  f.puts "#{segment_1} #{segment_2}"
}

# Imagined a compromise path that is neither ideal or tragic.
open("_imaginedpath/peolog/nuetral_outcome.pl", "w") { |f|
  segment_1 = character_fate_rules[1].strip
  segment_2 = dating_outcome_rules[0].strip

  f.puts segment_2
  f.puts "#{segment_1} :- #{segment_2}"
}
~~~
