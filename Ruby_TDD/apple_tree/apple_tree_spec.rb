require_relative 'apple_tree'

RSpec.describe AppleTree do
  context "Apple Tree is less than three years old and" do
    before(:each) do
      @apple_tree = AppleTree.new
    end

    it "has an age attribute with getter and setter methods" do
      @apple_tree.age = 10
      expect( @apple_tree.age ).to eq(10)
    end

    it "has to have a height attribute with only a getter method (no setter)" do
      expect( @apple_tree.height ).to eq(0)
      expect { @apple_tree.height = 10 }.to raise_error(NoMethodError)
    end

    it 'has an apple count attribute with only a getter method (no setter)' do
      expect( @apple_tree.apple_count ).to eq(0)
      expect { @apple_tree.apple_count = 10 }.to raise_error(NoMethodError)
    end

    it 'has a method called year_gone_by' do
      expect(@apple_tree).to respond_to(:year_gone_by)
    end

    it 'has a method year_gone_by that adds one year to age attribute' do
      age_before = @apple_tree.age
      expect(@apple_tree.year_gone_by.age - age_before).to eq(1)
    end

    it 'has a method year_gone_by that adds 10% of its current height' do
      apple_tree = AppleTree.new(10)
      height_before = apple_tree.height
      expect(apple_tree.year_gone_by.height - height_before).to eq(0.1*height_before)
    end

    it 'cannot grow apples until it is older than three' do
      apples = @apple_tree.apple_count
      expect(@apple_tree.year_gone_by.apple_count - apples).to eq(0)
    end
  end

  context 'Apple Tree is greater than three years old and' do
    before(:each) do
      @apple_tree_adult = AppleTree.new
      @apple_tree_adult.age = 5
    end

    it 'has a method called pick_apples that takes all the apples off the tree' do
      apples = @apple_tree_adult.year_gone_by.year_gone_by.apple_count
      expect(@apple_tree_adult.pick_apples.apple_count).to eq(0)
    end

  context 'Apple Tree is older than 10 and' do
    before(:each) do
      @apple_tree_old = AppleTree.new
      @apple_tree_old.age = 8
      @apple_tree_old.year_gone_by.year_gone_by #Apple count is now 4
    end

    it 'cannot grow apples if it is older than 10' do
      apples_at_10 = @apple_tree_old.apple_count
      apples_at_11 = @apple_tree_old.year_gone_by.apple_count
      expect(apples_at_10).to eq(apples_at_11)
    end
  end
  end
end
