module Platform
  module Android_google_nexus_7_hd_emulator
    class << self
      def android_google_nexus_7_hd_emulator version_string
        { browserName: %q(Android),
          deviceName: %q(Google Nexus 7 HD Emulator),
          platformVersion: version_string.to_s,
          platformName: %q(Linux) }
      end

      def v version_string
        android_google_nexus_7_hd_emulator version_string
      end

      def v4_3
        android_google_nexus_7_hd_emulator '4.3'
      end

      def v4_4
        android_google_nexus_7_hd_emulator '4.4'
      end

    end
  end
end
