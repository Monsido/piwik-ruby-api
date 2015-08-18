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
      getLanguage
      getLanguageCode
    }

    scoped_methods do
      def resolution params = {}
        getResolution(defaults.merge(params))
      end

      def language params = {}
        getLanguage(defaults.merge(params))
      end

      def languageCode params = {}
        getLanguageCode(defaults.merge(params))
      end
    end
  end
end
