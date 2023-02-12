class CreateMeangirls < ActiveRecord::Migration[6.1]
  def change
    create_table :meangirls do |t|
      t.string :name
       t.integer :number_of_parties
       t.string :headshot_photo
       t.string :superlative
       t.integer :year
    end
  end
end
