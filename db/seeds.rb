3.times do |i|
  post = Post.new(title: "title#{i}", description: "description#{i}", status: i)
  3.times do |j|
    post.comments.build(content: "comment#{i}: #{j}")
  end
  if i == 1
    post.build_audio_clip(duration: 1)
  else
    post.build_video_clip(preview_url: "url", resolution: 1)
  end
  post.save
end
