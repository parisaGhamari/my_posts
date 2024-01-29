# require "test_helper"
#
# class PpostTest < ActiveSupport::TestCase
#   test "the truth" 'this title' 'this body' do
#     assert true
#   end
#   test "the truth2" 'this title2' 'this body2' do
#     assert true
#   end
#   test "the truth3" 'this title3' 'this body3' do
#     assert true
#   end
# end
# require = require "test_helper"
#
# class PostTest < ActiveSupport::TestCase
#   # test "the truth" do
#   #   assert true
#   # end
# end

require 'rails_helper'

RSpec.describe Ppost, type: :model do
  it "is valid with a name and title and body" do
    post = Ppost.new(name:"my name is "  ,title: "My first post", body: "This is the body of my first post.")
    expect(post).to be_valid
  end

  it "is invalid without a title" do
    post = Ppost.new(name:"my name ",title: nil, body: "This is a body without a title.")
    post.valid?
    expect(post.errors[:title]).to include("can't be blank")
  end

  it "is invalid without a body" do
    post = Ppost.new(name:"my name ",title: "my post ", body: nil)
    post.valid?
    expect(post.errors[:body]).to include("can't be blank")
  end

  it "is invalid without a name" do
    post = Ppost.new(name: nil,title: "Title only", body: "This is a body without a title.")
    post.valid?
    expect(post.errors[:name]).to include("can't be blank")
  end
end