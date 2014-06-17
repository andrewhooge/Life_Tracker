class CreateLifeEvents < ActiveRecord::Migration
  def change
    create_table :life_events do |t|
      t.string :event
      t.string :year
      t.string :description

      t.timestamps
    end
  end
end
