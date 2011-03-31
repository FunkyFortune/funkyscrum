class CreateBacklogs < ActiveRecord::Migration
  def self.up
    create_table :backlogs do |t|
      t.string :name

      t.timestamps
    end

    add_column :stories, :backlog_id, :integer
  end

  def self.down
    drop_table :backlogs
  end
end
