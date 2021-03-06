module Platform
  module Mac_10_8_chrome
    class << self
      def mac_10_8_chrome version_string
        { browserName: %q(chrome),
          platform: %q(Mac 10.8),
          version: version_string.to_s }
      end

      def v version_string
        mac_10_8_chrome version_string
      end

      def v27
        mac_10_8_chrome '27'
      end

      def v28
        mac_10_8_chrome '28'
      end

      def v31
        mac_10_8_chrome '31'
      end

      def v32
        mac_10_8_chrome '32'
      end

      def v33
        mac_10_8_chrome '33'
      end

      def v34
        mac_10_8_chrome '34'
      end

      def v35
        mac_10_8_chrome '35'
      end

      def v36
        mac_10_8_chrome '36'
      end

      def v37
        mac_10_8_chrome '37'
      end

      def v38
        mac_10_8_chrome '38'
      end

      def v39
        mac_10_8_chrome '39'
      end

      def v40
        mac_10_8_chrome '40'
      end

      def v41
        mac_10_8_chrome '41'
      end

      def v42
        mac_10_8_chrome '42'
      end

      def v43
        mac_10_8_chrome '43'
      end

      def v44
        mac_10_8_chrome '44'
      end

      def v45
        mac_10_8_chrome '45'
      end

      def v46
        mac_10_8_chrome '46'
      end

      def v47
        mac_10_8_chrome '47'
      end

      def v48
        mac_10_8_chrome '48'
      end

      def v49
        mac_10_8_chrome '49'
      end

    end
  end
end
