require "application_system_test_case"

class EmprestimoLivrosTest < ApplicationSystemTestCase
  setup do
    @emprestimo_livro = emprestimo_livros(:one)
  end

  test "visiting the index" do
    visit emprestimo_livros_url
    assert_selector "h1", text: "Emprestimo Livros"
  end

  test "creating a Emprestimo livro" do
    visit emprestimo_livros_url
    click_on "New Emprestimo Livro"

    fill_in "Devolucao", with: @emprestimo_livro.devolucao
    fill_in "Dia", with: @emprestimo_livro.dia
    fill_in "Livro", with: @emprestimo_livro.livro_id
    fill_in "Usuario", with: @emprestimo_livro.usuario_id
    click_on "Create Emprestimo livro"

    assert_text "Emprestimo livro was successfully created"
    click_on "Back"
  end

  test "updating a Emprestimo livro" do
    visit emprestimo_livros_url
    click_on "Edit", match: :first

    fill_in "Devolucao", with: @emprestimo_livro.devolucao
    fill_in "Dia", with: @emprestimo_livro.dia
    fill_in "Livro", with: @emprestimo_livro.livro_id
    fill_in "Usuario", with: @emprestimo_livro.usuario_id
    click_on "Update Emprestimo livro"

    assert_text "Emprestimo livro was successfully updated"
    click_on "Back"
  end

  test "destroying a Emprestimo livro" do
    visit emprestimo_livros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Emprestimo livro was successfully destroyed"
  end
end
