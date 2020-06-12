require 'test_helper'

class PeriodicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @periodico = periodicos(:one)
  end

  test "should get index" do
    get periodicos_url
    assert_response :success
  end

  test "should get new" do
    get new_periodico_url
    assert_response :success
  end

  test "should create periodico" do
    assert_difference('Periodico.count') do
      post periodicos_url, params: { periodico: { descricao: @periodico.descricao, edicao: @periodico.edicao, nome: @periodico.nome, num_exemplares: @periodico.num_exemplares, periocidade: @periodico.periocidade, tempo_emprestimo: @periodico.tempo_emprestimo } }
    end

    assert_redirected_to periodico_url(Periodico.last)
  end

  test "should show periodico" do
    get periodico_url(@periodico)
    assert_response :success
  end

  test "should get edit" do
    get edit_periodico_url(@periodico)
    assert_response :success
  end

  test "should update periodico" do
    patch periodico_url(@periodico), params: { periodico: { descricao: @periodico.descricao, edicao: @periodico.edicao, nome: @periodico.nome, num_exemplares: @periodico.num_exemplares, periocidade: @periodico.periocidade, tempo_emprestimo: @periodico.tempo_emprestimo } }
    assert_redirected_to periodico_url(@periodico)
  end

  test "should destroy periodico" do
    assert_difference('Periodico.count', -1) do
      delete periodico_url(@periodico)
    end

    assert_redirected_to periodicos_url
  end
end
