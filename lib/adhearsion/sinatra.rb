require 'sinatra/base'

class AdhearsionSinatra < Adhearsion::Plugin
  init :sinatra do
    config = Adhearsion.config.sinatra
    sinatra = Kernel.const_get(config['class_name']).new

    run :sinatra do
      Thread.new { catching_standard_errors { sinatra.run! } }
    end
  end

  config :sinatra do
    class_name 'Frankie', desc: "Name of the class containing Sinatra application. MUST inherit from Sinatra::Base"
  end
end
