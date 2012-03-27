require 'adhearsion'

class AdhearsionSinatra
  class Plugin < Adhearsion::Plugin
    init :sinatra do
      config = Adhearsion.config.sinatra
      logger.debug "Initializing Sinatra with #{config['class_name']} class"
      @sinatra = Kernel.const_get(config['class_name'])
    end
  
    run :sinatra do
      logger.info "Launching Sinatra!"
      Thread.new { catching_standard_errors { @sinatra.run! } }
    end
  
    config :sinatra do
      class_name 'Frankie', desc: "Name of the class containing Sinatra application. MUST inherit from Sinatra::Base"
    end
  end
end
