require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @role = Role.new(name: 'User')
    @role.save
  end
  it "is valid with valid attributes" do
    user = User.new(email: 'teste@teste.com' , uid: 'teste@teste.com' , name: 'Teste', role_id: @role.id, password: '123456', password_confirmation: '123456')
    expect(user).to be_valid
  end
  it "is not valid without a role" do
    user = User.new(email: 'teste@teste.com' , uid: 'teste@teste.com' , name: 'Teste', password: '123456', password_confirmation: '123456')
    expect(user).to_not be_valid
  end

  it "is not valid without a email" do
    user = User.new(uid: 'teste@teste.com' , name: 'Teste', role_id: @role.id, password: '123456', password_confirmation: '123456')
    expect(user).to_not be_valid    
  end

  it "is not valid without a uid" do
    user = User.new(email: 'teste@teste.com' , name: 'Teste', role_id: @role.id, password: '123456', password_confirmation: '123456')
    expect(user).to_not be_valid    
  end  

  it "is not valid without a password" do
    user = User.new(email: 'teste@teste.com' , uid: 'teste@teste.com' , name: 'Teste', role_id: @role.id,)
    expect(user).to_not be_valid    
  end    
end
