module GetLinkList
  module Generators
    class ConfigGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      desc "This generator installs config file that ignores controller and action"

      def create_config_file
        template "get_link_list.rb", File.join('config/initializers',"get_link_list.rb")
      end
    end
  end
end
