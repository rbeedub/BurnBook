class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :type_of_uncool
      t.string :yearbook_photo
			t.integer :year
    end
  end
end
