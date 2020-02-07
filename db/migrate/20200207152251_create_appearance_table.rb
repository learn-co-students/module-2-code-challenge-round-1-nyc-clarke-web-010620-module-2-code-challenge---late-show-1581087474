class CreateAppearanceTable < ActiveRecord::Migration[5.1]
  def change
    create_table :appearances do |t|
      t.integer :guest_id
      t.integer :episode_id
      t.integer :rating
      t.belongs_to :guest
      t.belongs_to :episode

      t.timestamps
    end
  end
end
