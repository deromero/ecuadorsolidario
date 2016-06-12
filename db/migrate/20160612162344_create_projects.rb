class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :Title
      t.string :Description
      t.text :Content

      t.timestamps null: false
    end
  end
end
