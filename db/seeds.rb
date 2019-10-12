3.times do |i|
  post = Post.new(title: "title#{i}", description: "description#{i}", status: i)
  3.times do |j|
    post.comments.build(content: "comment#{i}: #{j}")
  end
  post.build_audio_clip(duration: 1)
  post.build_video_clip(previewURL: "url", resolution: 1)
  post.save
end
