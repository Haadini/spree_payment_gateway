module SpreeHadiPG
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_hadi_p_g'

    config.autoload_paths += %W[#{config.root}/lib]

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end
    
    initializer 'spree.hadi_p_g.payment_methods', :after => "spree.register.payment_methods" do |app|
      app.config.spree.payment_methods << Spree::Gateway::HadiPG

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare(&method(:activate).to_proc)
    
    end  
  end
end
