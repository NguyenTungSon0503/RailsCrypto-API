require "test_helper"

class CryptosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crypto = cryptos(:one)
  end

  test "should get index" do
    get cryptos_url, as: :json
    assert_response :success
  end

  test "should create crypto" do
    assert_difference("Crypto.count") do
      post cryptos_url, params: { crypto: { amount_owned: @crypto.amount_owned, cost_per: @crypto.cost_per, symbol: @crypto.symbol, user_id: @crypto.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show crypto" do
    get crypto_url(@crypto), as: :json
    assert_response :success
  end

  test "should update crypto" do
    patch crypto_url(@crypto), params: { crypto: { amount_owned: @crypto.amount_owned, cost_per: @crypto.cost_per, symbol: @crypto.symbol, user_id: @crypto.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy crypto" do
    assert_difference("Crypto.count", -1) do
      delete crypto_url(@crypto), as: :json
    end

    assert_response :no_content
  end
end
