module Platform
  module Android_samsung_galaxy_s4_emulator
    class << self
      def android_samsung_galaxy_s4_emulator version_string
        ['Linux', 'Android', version_string.to_s, deviceName: 'Samsung Galaxy S4 Emulator']
      end

      def v version_string
        android_samsung_galaxy_s4_emulator version_string
      end

      def v4_2
        android_samsung_galaxy_s4_emulator '4.2'
      end

      def v4_3
        android_samsung_galaxy_s4_emulator '4.3'
      end

      def v4_4
        android_samsung_galaxy_s4_emulator '4.4'
      end

    end
  end
end