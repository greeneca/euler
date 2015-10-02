#! /usr/bin/env ruby

puts (3..999).select {|i| i % 3 == 0 or i % 5 == 0}.reduce(:+)
