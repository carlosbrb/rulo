require_relative "test_helper"

class RuloTest < Minitest::Test
  include Rack::Test::Methods

  def app
    Rulo::Application.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::Rulo::VERSION
  end

  def test_request
    get '/'
    assert last_response.ok?
    body = last_response.body
    assert body['Hello']
  end
end
