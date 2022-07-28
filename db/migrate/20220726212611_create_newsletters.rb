class CreateNewsletters < ActiveRecord::Migration[7.0]
  def change
    create_table :newsletters do |t|
      t.string :email, unique: true
      t.string :preferences
      t.string :code

      t.timestamps
    end
  end
end
