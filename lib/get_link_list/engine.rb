require 'get_link_list/helper'
module GetLinkList
  class Engine < ::Rails::Engine
    initializer 'get_link_list.action_view_helpers' do
      ActiveSupport.on_load :action_view do
        include GetLinkList::Helper
      end
    end

  end
end
