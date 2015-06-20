class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.references :user, index: true, foreign_key: true
      t.references :meetup, index: true, foreign_key: true
      t.boolean :attending, default: false, null: true

      t.timestamps null: false
    end
  end
end
