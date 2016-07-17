class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.references :gif, foreign_key: true
      t.integer :value

      t.timestamps
    end
  end
end
