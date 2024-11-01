require 'rails_helper'
RSpec.describe Product, type: :model do
  subject { Product.new(name: "Apple", price: "10", image: "something", amount: "3" )}
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a name" do
    subject.name=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a price" do
    subject.amount=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without an image"
  it "is not valid without an amount"
  # it "is not valid if the phone number is not 10 chars"
  # it "is not valid if the phone number is not all digits"
  # it "is not valid if the email address doesn't have a @"
  it "returns the correct name" do
    expect(subject.name).to eq("Apple")
  end
end