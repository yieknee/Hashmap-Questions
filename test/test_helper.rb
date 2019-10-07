require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative "../lib/array_intersection"
require_relative "../lib/palindrome_permutation"
require_relative "../lib/permutations"
