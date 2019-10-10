class CreateAudioClips < ActiveRecord::Migration[5.1]
  def change
    create_table :audio_clips do |t|
      t.integer :duration
      t.timestamps
    end
  end
end
