module Piwik
  class UserSettings < ApiModule
    available_methods %W{
      getResolution
      getConfiguration
      getOS
      getOSFamily
      getMobileVsDesktop
      getBrowserVersion
      getBrowser
      getBrowserType
      getWideScreen
      getPlugin
    }

    scoped_methods do
      def resolution params = {}
        getResolution(defaults.merge(params))
      end
    end
  end
end
