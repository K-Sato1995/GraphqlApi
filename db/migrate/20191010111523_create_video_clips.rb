class CreateVideoClips < ActiveRecord::Migration[5.1]
  def change
    create_table :video_clips do |t|
      t.string :previewURL
      t.integer :resolution
      t.timestamps
    end
  end
end
