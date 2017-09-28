class CreateLeagues < ActiveRecord::Migration[5.1]
  def change
    create_table :leagues do |t|
      t.belongs_to :user, foreign_key: true
      t.string :format

      t.timestamps
    end
  end
end
