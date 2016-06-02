module GetLinkList
  class Config
    attr_accessor :ignore_controller
    attr_accessor :default_lang

    def initialize
      @ignore_controller = ["controller_name1": ["action_name1","action_name2"],"controller_name2": ""]
      @default_lang = "en"
    end

  end
end
