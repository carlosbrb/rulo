require "rulo/version"

module Rulo
  class Error < StandardError; end

  class Application
    def call(env)
      [200, { 'Content-Type' => 'text/html'}, ['Hello from Rulo!']]
    end
  end
end
