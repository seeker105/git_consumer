class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid
    end
  end
end
