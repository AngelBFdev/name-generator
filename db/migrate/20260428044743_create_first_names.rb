class CreateFirstNames < ActiveRecord::Migration[8.1]
  def change
    create_table :first_names do |t|
      t.string :name
      t.string :country
      t.string :gender

      t.timestamps
    end
  end
end
