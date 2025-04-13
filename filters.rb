# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def experienced?(candidate)
  # Your code Here
  candidate[:years_of_experience] >= 2
end

def find(id)
  # Your code Here
  @candidates.find { |candidate| candidate[:id] == id }
end
  
  
def qualified_candidates(candidates)
  # Your code Here
  candidates.select do |candidate|
    experienced?(candidate) &&
    candidate[:github_points] >= 100 &&
    (candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')) &&
    candidate[:date_applied] >= (Date.today - 15) &&
    candidate[:age] > 17
  end
end
  
# More methods will go below
def sort_on_experience_and_points(candidates)
  candidates.sort_by { |c| [-c[:years_of_experience], -c[:github_points]] }
end
