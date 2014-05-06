class CreateProjectsAndConcepts < ActiveRecord::Migration
  def change
    create_table :projects_and_concepts do |t|
      t.string :Name
      t.string :Phase
      t.string :BA
      t.string :PM
      t.string :Next_Phase
      t.string :Next_Phase_Due
      t.date :Original_Start_Date
      t.date :Project_End_Date
      t.string :Continuing_BA_Commitment

      t.timestamps
    end
  end
end
