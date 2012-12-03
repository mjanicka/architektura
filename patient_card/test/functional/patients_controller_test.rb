require 'test_helper'

class PatientsControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post :create, patient: { city: @patient.city, date_of_birth: @patient.date_of_birth, email: @patient.email, medical_history: @patient.medical_history, name: @patient.name, number: @patient.number, pesel: @patient.pesel, phone: @patient.phone, street: @patient.street, surname: @patient.surname, zip_code: @patient.zip_code }
    end

    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should show patient" do
    get :show, id: @patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient
    assert_response :success
  end

  test "should update patient" do
    put :update, id: @patient, patient: { city: @patient.city, date_of_birth: @patient.date_of_birth, email: @patient.email, medical_history: @patient.medical_history, name: @patient.name, number: @patient.number, pesel: @patient.pesel, phone: @patient.phone, street: @patient.street, surname: @patient.surname, zip_code: @patient.zip_code }
    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete :destroy, id: @patient
    end

    assert_redirected_to patients_path
  end
end
