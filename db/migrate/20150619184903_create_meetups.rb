class CreateMeetups < ActiveRecord::Migration
  def change
    create_table :meetups do |t|
      t.string :name
      t.text :details
      t.datetime :starts_at
      t.datetime :ends_at, null: true

      t.timestamps null: false
    end
  end
end
