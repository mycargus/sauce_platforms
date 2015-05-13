module Platforms
  module Mac_10_6_ipad
    class << self
      def mac_10_6_ipad version_string
        ['Mac 10.6', 'ipad', version_string.to_s]
      end

      def v version_string
        mac_10_6_ipad version_string
      end

      def v4_3
        mac_10_6_ipad '4.3'
      end

      def v5_0
        mac_10_6_ipad '5.0'
      end

    end
  end
end