require 'test_helper'

class TurmasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @turma = turmas(:one)
  end

  test "should get index" do
    get turmas_url
    assert_response :success
  end

  test "should get new" do
    get new_turma_url
    assert_response :success
  end

  test "should create turma" do
    assert_difference('Turma.count') do
      post turmas_url, params: { turma: { ano_id: @turma.ano_id, limite_de_alunos: @turma.limite_de_alunos, nome: @turma.nome } }
    end

    assert_redirected_to turma_url(Turma.last)
  end

  test "should show turma" do
    get turma_url(@turma)
    assert_response :success
  end

  test "should get edit" do
    get edit_turma_url(@turma)
    assert_response :success
  end

  test "should update turma" do
    patch turma_url(@turma), params: { turma: { ano_id: @turma.ano_id, limite_de_alunos: @turma.limite_de_alunos, nome: @turma.nome } }
    assert_redirected_to turma_url(@turma)
  end

  test "should destroy turma" do
    assert_difference('Turma.count', -1) do
      delete turma_url(@turma)
    end

    assert_redirected_to turmas_url
  end
end
