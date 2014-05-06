require 'test_helper'

class ProjectsAndConceptsControllerTest < ActionController::TestCase
  setup do
    @projects_and_concept = projects_and_concepts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects_and_concepts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projects_and_concept" do
    assert_difference('ProjectsAndConcept.count') do
      post :create, projects_and_concept: { BA: @projects_and_concept.BA, Continuing_BA_Commitment: @projects_and_concept.Continuing_BA_Commitment, Name: @projects_and_concept.Name, Next_Phase: @projects_and_concept.Next_Phase, Next_Phase_Due: @projects_and_concept.Next_Phase_Due, Original_Start_Date: @projects_and_concept.Original_Start_Date, PM: @projects_and_concept.PM, Phase: @projects_and_concept.Phase, Project_End_Date: @projects_and_concept.Project_End_Date }
    end

    assert_redirected_to projects_and_concept_path(assigns(:projects_and_concept))
  end

  test "should show projects_and_concept" do
    get :show, id: @projects_and_concept
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projects_and_concept
    assert_response :success
  end

  test "should update projects_and_concept" do
    patch :update, id: @projects_and_concept, projects_and_concept: { BA: @projects_and_concept.BA, Continuing_BA_Commitment: @projects_and_concept.Continuing_BA_Commitment, Name: @projects_and_concept.Name, Next_Phase: @projects_and_concept.Next_Phase, Next_Phase_Due: @projects_and_concept.Next_Phase_Due, Original_Start_Date: @projects_and_concept.Original_Start_Date, PM: @projects_and_concept.PM, Phase: @projects_and_concept.Phase, Project_End_Date: @projects_and_concept.Project_End_Date }
    assert_redirected_to projects_and_concept_path(assigns(:projects_and_concept))
  end

  test "should destroy projects_and_concept" do
    assert_difference('ProjectsAndConcept.count', -1) do
      delete :destroy, id: @projects_and_concept
    end

    assert_redirected_to projects_and_concepts_path
  end
end
