class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.string   :name
      t.string   :sport
      t.date     :date_of_birth 
      t.string   :nationality
      t.string   :location
      t.string   :association
      t.string   :team
      t.string   :gender
      t.text     :about
      t.text     :interests
      t.text     :charities
      t.text     :social_media_handles
      t.string   :pets
      t.boolean  :drinks_alcohol
      t.boolean  :married


      t.timestamps
    end
  end
end
