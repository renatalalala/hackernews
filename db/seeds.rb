NUM = 5

def randnum
  rand(NUM-1)+1
end 

NUM.times do 
  User.create(name: Faker::Name.name, email: Faker::Internet.email, password_hash: Faker::Lorem.words(1))
end

NUM.times do 
  Post.create(user: User.find(randnum), url: Faker::Internet.domain_name, title: Faker::Lorem.sentence(3))
end

NUM.times do
  Comment.create(post: Post.find(randnum), user: User.find(randnum), text: Faker::Lorem.sentence(7))
end

(NUM*3).times do
  Postvote.create(post: Post.find(randnum), user: User.find(randnum), vote_value: [1,-1].sample)
end  

(NUM*3).times do
  Commentvote.create(comment: Comment.find(randnum), user: User.find(randnum), vote_value: [1,-1].sample)
end  
