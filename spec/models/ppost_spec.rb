require 'rails_helper'

RSpec.describe Ppost, type: :model do
  it 'can run tests' do
    expect(true).to be(false)
  end
  describe 'attributes' do
    it { should respond_to(:name) }
    it { should respond_to(:title) }
    it { should respond_to(:body) }

  end

end




 RSpec.describe Ppost, type: :model do
   it 'is valid with a title and body' do
     post = Ppost.new(name: 'my name is ', title: 'My first post', body: 'This is the body of my first post.')
     expect(post).to be_valid
   end

   it 'is invalid without a title' do
     post = Ppost.new(name: 'my name is ',title: nil, body: 'This is a body without a title.')
     post.valid?
     expect(post.errors[:title]).to include("can't be blank")
   end

   it 'is invalid without a body' do
     post = Ppost.new(name: 'my name is ',title: 'Title only', body: nil)
     post.valid?
     expect(post.errors[:body]).to include("can't be blank")
   end
 end
