class CreateSprints < ActiveRecord::Migration
  def self.up
    create_table :sprints do |t|
      t.string :name
      t.text :notes
      t.date :start_date
      t.date :end_date

      t.timestamps
    end

    add_column :stories, :story_id, :integer
  end

  def self.down
    drop_table :sprints
  end
end
