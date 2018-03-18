class CreateFigureTitles < ActiveRecord::Migration[4.2]
  create_table :titles do |t|
    t.integer :title_id
    t.integer :figure_id
  end
end
