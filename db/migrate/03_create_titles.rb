class CreateTitles < ActiveRecord::Migration[4.2]
  create_table :figures do |t|
    t.string :name
  end
end
