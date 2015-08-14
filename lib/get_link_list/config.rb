module GetLinkList
  class Config
    attr_accessor :ignore_controller

    def initialize
      @ignore_controller = []
    end

  end
end
