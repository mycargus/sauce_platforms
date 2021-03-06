require_relative 'mac_10_8/mac_10_8_firefox'
require_relative 'mac_10_8/mac_10_8_safari'
require_relative 'mac_10_8/mac_10_8_chrome'

module Platform
  module Mac_10_8
    class << self

      def firefox
        Mac_10_8_firefox
      end

      def safari
        Mac_10_8_safari
      end

      def chrome
        Mac_10_8_chrome
      end

    end
  end
end
