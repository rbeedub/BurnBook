class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :student_id
      t.integer :meangirl_id
      t.string :comment
      t.integer :level_of_uncool
      t.boolean :like
      t.string :incriminating_photo
	  end
	end
end
