json.array!(@projects_and_concepts) do |projects_and_concept|
  json.extract! projects_and_concept, :id, :Name, :Phase, :BA, :PM, :Next_Phase, :Next_Phase_Due, :Original_Start_Date, :Project_End_Date, :Continuing_BA_Commitment
  json.url projects_and_concept_url(projects_and_concept, format: :json)
end
