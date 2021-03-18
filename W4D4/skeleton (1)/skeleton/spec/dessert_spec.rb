require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:apple) {Dessert.new("apple",4,chef)}
  describe "#initialize" do
    it "sets a type" do
      expect(apple.type).to eq("apple")  
    end

    it "sets a quantity" do
      expect(apple.quantity).to eq(4)  
    end

    it "starts ingredients as an empty array" do
      expect(apple.ingredients).to be_empty  
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{Dessert.new("apple","a",chef)}.to raise_error(ArgumentError)  
    end
  
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      apple.add_ingredient("banna")
      expect(apple.add_ingredient("banna")).to include("banna")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" 
      # apple.mix
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      apple.eat(1)
      expect(apple.quantity).to eq(3)  
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{apple.eat(500)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
