class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
    	t.string :name 
    	t.string :website
    	t.text :notes
    	t.string :source
      t.timestamps
    end
  end
end
