GetLinkList.configure do |config|
  #write ignore controller and action like this.
  #config.ignore_controller = ["controller_name1": ["action_name1","action_name2"],"controller_name2": ""]

  #example) 
  #config.ignore_controller = ["rails/mailers": "","users/omniauth_callbacks": ""]

  #config.ignore_controller = []
end
