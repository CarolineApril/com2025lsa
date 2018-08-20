class CreateOptions < ActiveRecord::Migration
  def change #method creation
    create_table :options do |t| #create a table to store all the information for the modules
      t.string :title
      t.text :content
      t.string :professor
      t.text :credits

      t.timestamps null: false
    end
  end
end
