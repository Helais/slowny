class CreateDics < ActiveRecord::Migration
  def self.up
    create_table :dics do |t|
      t.string :word
      t.integer :count_letters
      t.integer :count_words
      t.timestamps
    end
  end

  def self.down
    drop_table :dics
  end
end
