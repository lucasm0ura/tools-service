require 'rails_helper'

RSpec.describe Role, :type => :model do

  before do
    @role = Role.new
  end

  it "is valid with valid attributes" do
    @role.name = "User"
    expect(@role).to be_valid
  end

  it "is not valid without a name" do
    expect(@role).to_not be_valid
  end
end
