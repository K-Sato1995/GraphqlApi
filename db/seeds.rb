1.upto(3) do |i|
  post = Post.new(title: "title#{i}", description: "description#{i}")
  1.upto(3) do |j|
    post.comments.build(content: "comment#{i}: #{j}")
  end
  post.save
end
