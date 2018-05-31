class CreateScrappedContents < ActiveRecord::Migration[5.2]
  def change
    create_table :scrapped_contents do |t|
      t.integer :scrapper_id
      t.string :tag
      t.string :value

      t.timestamps
    end
  end
end
