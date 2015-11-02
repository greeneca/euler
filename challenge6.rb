#! /usr/bin/env ruby

require "benchmark"

n = 100
diff = 0

time = Benchmark.realtime do
  sumOfSquares = (n * (n+1) * (2*n+1))/6
  squareOfSum = (1..100).reduce(:+) ** 2
  diff = squareOfSum - sumOfSquares
end

puts "Result: #{diff} in #{time*1000}ms"

