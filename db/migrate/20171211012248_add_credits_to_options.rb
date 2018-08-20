class AddCreditsToOptions < ActiveRecord::Migration
  def change
    add_column :options, :credits, :double #add a column to the database table to store more information
  end
end
