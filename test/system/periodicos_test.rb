require "application_system_test_case"

class PeriodicosTest < ApplicationSystemTestCase
  setup do
    @periodico = periodicos(:one)
  end

  test "visiting the index" do
    visit periodicos_url
    assert_selector "h1", text: "Periodicos"
  end

  test "creating a Periodico" do
    visit periodicos_url
    click_on "New Periodico"

    fill_in "Descricao", with: @periodico.descricao
    fill_in "Edicao", with: @periodico.edicao
    fill_in "Nome", with: @periodico.nome
    fill_in "Num exemplares", with: @periodico.num_exemplares
    fill_in "Periocidade", with: @periodico.periocidade
    fill_in "Tempo emprestimo", with: @periodico.tempo_emprestimo
    click_on "Create Periodico"

    assert_text "Periodico was successfully created"
    click_on "Back"
  end

  test "updating a Periodico" do
    visit periodicos_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @periodico.descricao
    fill_in "Edicao", with: @periodico.edicao
    fill_in "Nome", with: @periodico.nome
    fill_in "Num exemplares", with: @periodico.num_exemplares
    fill_in "Periocidade", with: @periodico.periocidade
    fill_in "Tempo emprestimo", with: @periodico.tempo_emprestimo
    click_on "Update Periodico"

    assert_text "Periodico was successfully updated"
    click_on "Back"
  end

  test "destroying a Periodico" do
    visit periodicos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Periodico was successfully destroyed"
  end
end
