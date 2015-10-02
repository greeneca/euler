#! /usr/bin/env ruby

startA = 1
startB = 2

def fibsum (a, b, sum, max)
  nxt = a + b
  if nxt < max
    if nxt.even?
      sum += nxt
    end
    sum = fibsum(b, nxt, sum, max)
  end
  return sum
end

sum = 0
sum += startA if startA.even?
sum += startB if startB.even?

puts fibsum(startA, startB, sum, 4000000)
