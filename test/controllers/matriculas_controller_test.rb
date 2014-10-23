require 'test_helper'

class MatriculasControllerTest < ActionController::TestCase
  setup do
    @matricula = matriculas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matriculas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matricula" do
    assert_difference('Matricula.count') do
      post :create, matricula: { Enrollment: @matricula.Enrollment, student_id: @matricula.student_id }
    end

    assert_redirected_to matricula_path(assigns(:matricula))
  end

  test "should show matricula" do
    get :show, id: @matricula
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @matricula
    assert_response :success
  end

  test "should update matricula" do
    patch :update, id: @matricula, matricula: { Enrollment: @matricula.Enrollment, student_id: @matricula.student_id }
    assert_redirected_to matricula_path(assigns(:matricula))
  end

  test "should destroy matricula" do
    assert_difference('Matricula.count', -1) do
      delete :destroy, id: @matricula
    end

    assert_redirected_to matriculas_path
  end
end
