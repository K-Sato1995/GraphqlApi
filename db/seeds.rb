1.upto(10) do |i|
  post = Post.new(title: "title#{i}", description: "description#{i}")
  2.times do |j|
    post.comments.build(content: "comment#{i}: #{j}")
  end
  post.save
end
