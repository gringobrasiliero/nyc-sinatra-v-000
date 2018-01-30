class CreateLandmarks < ActiveRecord::Migration[5.1]
  create_table :landmarks do |t|
       t.string :name
       t.integer :figure_id
       t.string :year_completed
end
end
