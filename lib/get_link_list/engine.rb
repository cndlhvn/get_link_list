require 'get_link_list/helper'
require 'get_link_list/config'
module GetLinkList
  def self.config
    @config ||= GetLinkList::Config.new
  end

  def self.configure(&block)
    yield(config) if block_given?
  end

  class Engine < ::Rails::Engine
    initializer 'get_link_list.action_view_helpers' do
      ActiveSupport.on_load :action_view do
        include GetLinkList::Helper
      end
    end

  end
end
