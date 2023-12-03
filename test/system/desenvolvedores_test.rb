require "application_system_test_case"

class DesenvolvedoresTest < ApplicationSystemTestCase
  setup do
    @desenvolvedore = desenvolvedores(:one)
  end

  test "visiting the index" do
    visit desenvolvedores_url
    assert_selector "h1", text: "Desenvolvedores"
  end

  test "should create desenvolvedore" do
    visit desenvolvedores_url
    click_on "New desenvolvedore"

    fill_in "Produto", with: @desenvolvedore.Produto_id
    fill_in "Cpf", with: @desenvolvedore.cpf
    fill_in "Endereco", with: @desenvolvedore.endereco
    fill_in "Funcao", with: @desenvolvedore.funcao
    fill_in "Nome", with: @desenvolvedore.nome
    fill_in "Salario", with: @desenvolvedore.salario
    fill_in "Telefone", with: @desenvolvedore.telefone
    click_on "Create Desenvolvedore"

    assert_text "Desenvolvedore was successfully created"
    click_on "Back"
  end

  test "should update Desenvolvedore" do
    visit desenvolvedore_url(@desenvolvedore)
    click_on "Edit this desenvolvedore", match: :first

    fill_in "Produto", with: @desenvolvedore.Produto_id
    fill_in "Cpf", with: @desenvolvedore.cpf
    fill_in "Endereco", with: @desenvolvedore.endereco
    fill_in "Funcao", with: @desenvolvedore.funcao
    fill_in "Nome", with: @desenvolvedore.nome
    fill_in "Salario", with: @desenvolvedore.salario
    fill_in "Telefone", with: @desenvolvedore.telefone
    click_on "Update Desenvolvedore"

    assert_text "Desenvolvedore was successfully updated"
    click_on "Back"
  end

  test "should destroy Desenvolvedore" do
    visit desenvolvedore_url(@desenvolvedore)
    click_on "Destroy this desenvolvedore", match: :first

    assert_text "Desenvolvedore was successfully destroyed"
  end
end
