class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.text :raw_line
      t.string :command_name
      t.text :command_argument
      t.text :comment
      t.belongs_to :device, index: true

      t.timestamps
    end
  end
end
