#! /usr/bin/env ruby

require "benchmark"

sum = 0

time = Benchmark.realtime do
  sum = (3..999).select {|i| i % 3 == 0 or i % 5 == 0}.reduce(:+)
end

puts "Result: #{sum} in #{time*1000}ms"
