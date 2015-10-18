module GetLinkList
  module Generators
    class AssetsGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      desc "This generator installs js and css file"

      def create_assets_file
        template "index.js.coffee", File.join('app/assets/javascripts/get_link_list',"index.js.coffee")
        template "index.css.scss", File.join('app/assets/stylesheets/get_link_list',"index.css.scss")
      end
    end
  end
end
