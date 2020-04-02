require_relative "test_helper"

describe "permutations?" do
  it "returns true for empty string" do
    expect(permutations?("", "")).must_equal true
  end

  it "returns true for 'hello', 'ehllo'" do
    expect(permutations?("hello", "ehllo")).must_equal true
  end

  it "returns true for 'heelo', 'ehllo'" do
    expect(permutations?("heelo", "ehllo")).must_equal false
  end
  it "returns true for 'pasta', 'atsap'" do
    expect(permutations?("pasta", "atsap")).must_equal true
  end

  it "returns true for 'pizza', 'pizza'" do
    expect(permutations?("pizza", "pasta")).must_equal false
  end

  it "returns false if the number of a specific letter are different" do
    expect(permutations?("pizza", "piza")).must_equal false
  end
end
