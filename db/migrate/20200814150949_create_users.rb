class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, presence: true, uniqueness: true, length: { in: 3..15 }
      t.string :email, presence: true, uniqueness: true
      t.string :password, presence: true, length: { in: 6..20 }

      t.timestamps
    end
  end
end
