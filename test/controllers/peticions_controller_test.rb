require 'test_helper'

class PeticionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @peticion = peticions(:one)
  end

  test "should get index" do
    get peticions_url
    assert_response :success
  end

  test "should get new" do
    get new_peticion_url
    assert_response :success
  end

  test "should create peticion" do
    assert_difference('Peticion.count') do
      post peticions_url, params: { peticion: { Apellido: @peticion.Apellido, Correo: @peticion.Correo, Detalle: @peticion.Detalle, Direccion: @peticion.Direccion, Nombre: @peticion.Nombre, Pais: @peticion.Pais, Tipo_de_documento: @peticion.Tipo_de_documento, ciudad: @peticion.ciudad, tipoSolicitud: @peticion.tipoSolicitud } }
    end

    assert_redirected_to peticion_url(Peticion.last)
  end

  test "should show peticion" do
    get peticion_url(@peticion)
    assert_response :success
  end

  test "should get edit" do
    get edit_peticion_url(@peticion)
    assert_response :success
  end

  test "should update peticion" do
    patch peticion_url(@peticion), params: { peticion: { Apellido: @peticion.Apellido, Correo: @peticion.Correo, Detalle: @peticion.Detalle, Direccion: @peticion.Direccion, Nombre: @peticion.Nombre, Pais: @peticion.Pais, Tipo_de_documento: @peticion.Tipo_de_documento, ciudad: @peticion.ciudad, tipoSolicitud: @peticion.tipoSolicitud } }
    assert_redirected_to peticion_url(@peticion)
  end

  test "should destroy peticion" do
    assert_difference('Peticion.count', -1) do
      delete peticion_url(@peticion)
    end

    assert_redirected_to peticions_url
  end
end
