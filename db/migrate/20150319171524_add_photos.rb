class AddPhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.string :photo_file_name
      t.integer :user_id
      t.timestamps
    end
  end
  
end
