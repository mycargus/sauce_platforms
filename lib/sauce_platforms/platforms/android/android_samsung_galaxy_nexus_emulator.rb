module Platform
  module Android_samsung_galaxy_nexus_emulator
    class << self
      def android_samsung_galaxy_nexus_emulator version_string
        { browserName: %q(Android),
          deviceName: %q(Samsung Galaxy Nexus Emulator),
          platformVersion: version_string.to_s,
          platformName: %q(Linux) }
      end

      def v version_string
        android_samsung_galaxy_nexus_emulator version_string
      end

      def v4_0
        android_samsung_galaxy_nexus_emulator '4.0'
      end

      def v4_1
        android_samsung_galaxy_nexus_emulator '4.1'
      end

      def v4_2
        android_samsung_galaxy_nexus_emulator '4.2'
      end

      def v4_3
        android_samsung_galaxy_nexus_emulator '4.3'
      end

      def v4_4
        android_samsung_galaxy_nexus_emulator '4.4'
      end

    end
  end
end
