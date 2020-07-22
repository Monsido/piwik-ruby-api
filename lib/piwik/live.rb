module Piwik
  class Live < ApiModule
    available_methods %W{
      getCounters
      getLastVisitsDetails
      getVisitorProfile
      getMostRecentVisitorId
    }

    scoped_methods do
      def last_visits params = {}
        getLastVisitsDetails(defaults.merge(params))
      end
    end
  end
end