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
open("_imaginedpath/prolog/nuetral_outcome.pl", "w") { |f|
  segment_1 = character_fate_rules[1].strip
  segment_2 = dating_outcome_rules[0].strip

  f.puts segment_2
  f.puts "#{segment_1} :- #{segment_2}"
}
