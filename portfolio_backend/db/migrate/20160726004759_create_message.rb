class CreateMessage < ActiveRecord::Migration[5.0]
  def change
    create_table :message do |t|
        t.string :name
        t.string :email
        t.string :body

      t.timestamps(null: false)
    end
  end
end
