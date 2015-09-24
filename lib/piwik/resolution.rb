module Piwik
  class Resoultion < ApiModule
    available_methods %W{
      getResolution
      getConfiguration
    }

    scoped_methods do
      def resolution params = {}
        getResolution(defaults.merge(params))
      end
    end
  end
end
