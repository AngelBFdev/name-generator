class CreateLastNames < ActiveRecord::Migration[8.1]
  def change
    create_table :last_names do |t|
      t.string :name
      t.string :country

      t.timestamps
    end
  end
end
