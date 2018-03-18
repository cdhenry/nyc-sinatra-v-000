class CreateLandmarks < ActiveRecord::Migration[4.2]
  create_table :landmarks do |t|
    t.belongs_to :figure, index: true
    t.string :name
    t.integer :year_completed
  end
end
