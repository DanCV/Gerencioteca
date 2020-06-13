require 'test_helper'

class EmprestimoLivrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emprestimo_livro = emprestimo_livros(:one)
  end

  test "should get index" do
    get emprestimo_livros_url
    assert_response :success
  end

  test "should get new" do
    get new_emprestimo_livro_url
    assert_response :success
  end

  test "should create emprestimo_livro" do
    assert_difference('EmprestimoLivro.count') do
      post emprestimo_livros_url, params: { emprestimo_livro: { devolucao: @emprestimo_livro.devolucao, dia: @emprestimo_livro.dia, livro_id: @emprestimo_livro.livro_id, usuario_id: @emprestimo_livro.usuario_id } }
    end

    assert_redirected_to emprestimo_livro_url(EmprestimoLivro.last)
  end

  test "should show emprestimo_livro" do
    get emprestimo_livro_url(@emprestimo_livro)
    assert_response :success
  end

  test "should get edit" do
    get edit_emprestimo_livro_url(@emprestimo_livro)
    assert_response :success
  end

  test "should update emprestimo_livro" do
    patch emprestimo_livro_url(@emprestimo_livro), params: { emprestimo_livro: { devolucao: @emprestimo_livro.devolucao, dia: @emprestimo_livro.dia, livro_id: @emprestimo_livro.livro_id, usuario_id: @emprestimo_livro.usuario_id } }
    assert_redirected_to emprestimo_livro_url(@emprestimo_livro)
  end

  test "should destroy emprestimo_livro" do
    assert_difference('EmprestimoLivro.count', -1) do
      delete emprestimo_livro_url(@emprestimo_livro)
    end

    assert_redirected_to emprestimo_livros_url
  end
end
