class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :commentvotes
  has_many :postvotes
end
