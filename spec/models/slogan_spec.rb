require 'rails_helper'

RSpec.describe Slogan, :type => :model do
    subject {
        described_class.new(firstname: "John",
                            lastname: "Doe",
                            email:"john.doe@example.com" ,
                            slogan: "Lorem ipsum")
      }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a firstname" do
    subject.firstname = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a lastname" do
    subject.lastname = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without an email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid when email is duplicate" do
      subject.email = email.dup
      expect(subject).to_not be_valid
  end

  it "is not valid without a slogan" do
    subject.slogan = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with more than 50 characters" do
      subject.slogan = 'a' * 51
      expect(subject).to_not be_valid
  end
end