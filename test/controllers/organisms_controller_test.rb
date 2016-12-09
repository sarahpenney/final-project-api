require 'test_helper'

class OrganismsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organism = organisms(:one)
  end

  test "should get index" do
    get organisms_url, as: :json
    assert_response :success
  end

  test "should create organism" do
    assert_difference('Organism.count') do
      post organisms_url, params: { organism: { body: @organism.body, family: @organism.family, genus: @organism.genus, group_id: @organism.group_id, name: @organism.name, order: @organism.order, phylum: @organism.phylum } }, as: :json
    end

    assert_response 201
  end

  test "should show organism" do
    get organism_url(@organism), as: :json
    assert_response :success
  end

  test "should update organism" do
    patch organism_url(@organism), params: { organism: { body: @organism.body, family: @organism.family, genus: @organism.genus, group_id: @organism.group_id, name: @organism.name, order: @organism.order, phylum: @organism.phylum } }, as: :json
    assert_response 200
  end

  test "should destroy organism" do
    assert_difference('Organism.count', -1) do
      delete organism_url(@organism), as: :json
    end

    assert_response 204
  end
end
