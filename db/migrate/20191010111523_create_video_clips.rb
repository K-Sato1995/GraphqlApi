class CreateVideoClips < ActiveRecord::Migration[5.1]
  def change
    create_table :video_clips do |t|
      t.string :preview_url
      t.integer :resolution
      t.references :post
      t.timestamps
    end
  end
end
