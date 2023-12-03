require "test_helper"

class DesenvolvedoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @desenvolvedore = desenvolvedores(:one)
  end

  test "should get index" do
    get desenvolvedores_url
    assert_response :success
  end

  test "should get new" do
    get new_desenvolvedore_url
    assert_response :success
  end

  test "should create desenvolvedore" do
    assert_difference("Desenvolvedore.count") do
      post desenvolvedores_url, params: { desenvolvedore: { Produto_id: @desenvolvedore.Produto_id, cpf: @desenvolvedore.cpf, endereco: @desenvolvedore.endereco, funcao: @desenvolvedore.funcao, nome: @desenvolvedore.nome, salario: @desenvolvedore.salario, telefone: @desenvolvedore.telefone } }
    end

    assert_redirected_to desenvolvedore_url(Desenvolvedore.last)
  end

  test "should show desenvolvedore" do
    get desenvolvedore_url(@desenvolvedore)
    assert_response :success
  end

  test "should get edit" do
    get edit_desenvolvedore_url(@desenvolvedore)
    assert_response :success
  end

  test "should update desenvolvedore" do
    patch desenvolvedore_url(@desenvolvedore), params: { desenvolvedore: { Produto_id: @desenvolvedore.Produto_id, cpf: @desenvolvedore.cpf, endereco: @desenvolvedore.endereco, funcao: @desenvolvedore.funcao, nome: @desenvolvedore.nome, salario: @desenvolvedore.salario, telefone: @desenvolvedore.telefone } }
    assert_redirected_to desenvolvedore_url(@desenvolvedore)
  end

  test "should destroy desenvolvedore" do
    assert_difference("Desenvolvedore.count", -1) do
      delete desenvolvedore_url(@desenvolvedore)
    end

    assert_redirected_to desenvolvedores_url
  end
end
