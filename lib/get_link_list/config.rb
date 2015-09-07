module GetLinkList
  class Config
    attr_accessor :ignore_controller

    def initialize
      @ignore_controller = ["controller_name1": ["action_name1","action_name2"],"controller_name2": ""]
    end

  end
end
