10.times do |i|
  post = Post.new(title: "title#{i}", description: "description#{i}")
  post.comments.build(content: "comment#{i}")
  post.save
end
