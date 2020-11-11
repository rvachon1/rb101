=begin
input: candidates array of strings, & polls array of arrays
output: hash w/ key as candidate and value as decimal
  Rules:
    - Round value to 1 decimal pklace
    
Algo:
-Calculate total weight
-Calculate Weighted Average for a Candidate in method: candidate_weighted_average(pools, candidate_index)
  - Initalize candidate_scores array
  - Iterate through polls
    -grab 0th element (array)
    -grab candidate position's element
    -push to candidate_scores array
  - Output candidate_scores
=end
candidates = ["Z", "B", "C", "Y", "F", "O"]

polls = [[[16, 12, 16, 31, 15, 10], 1], [[46, 13, 16, 6, 11, 8], 8], [[6, 15, 8, 48, 7, 16], 2]]

def res_mult_weight(polls, idx)
  candidate_scores = []

  polls.each do |i|
    candidate_scores << (i[0][idx] * i[1])
  end
  candidate_scores.reduce(&:+)
end

def predict(candidates, polls)
  total_weight = polls.reduce(0) { |acc, arr| acc += arr[1] }.to_f
  weights = {}
  counter = 0

  while counter < candidates.length
    weights[candidates[counter]] = (res_mult_weight(polls, counter) / total_weight).round(1)
    counter += 1
  end

  weights
end

p predict(candidates, polls)