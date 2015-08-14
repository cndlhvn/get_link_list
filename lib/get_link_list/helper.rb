module GetLinkList
  module Helper

    def render_get_links
      @paths = Hash.new { |hash,key| hash[key] = Hash.new {} }
      Rails.application.routes.routes.each do |route|
        if "GET" =~ route.constraints[:request_method] && route.path.spec.left != "/" 
          if not GetLinkList.config.ignore_controller.include?(route.defaults[:controller])
            @paths[route.defaults[:controller]][route.defaults[:action]] = match_initial_path_segment(route.path.spec.to_s)
          end
        end
      end
      render partial: 'get_link_list/get_link', locals: { paths: @paths  }
    end

    private
    def match_initial_path_segment(path)
      path= path.sub(/\(.:format\)/, "")
      path.sub(/:(.*)id/, "1")
    end

  end
end
