#! /usr/bin/env ruby

require "benchmark"

sum = 0
startA = 1
startB = 2

time = Benchmark.realtime do

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

  sum += startA if startA.even?
  sum += startB if startB.even?
  sum = fibsum(startA, startB, sum, 4000000)

end

puts "Result: #{sum} in #{time*1000}ms"

