module Platform
  module Android_htc_one_x_emulator
    class << self
      def android_htc_one_x_emulator version_string
        ['Linux', 'Android', version_string.to_s, deviceName: 'HTC One X Emulator']
      end

      def v version_string
        android_htc_one_x_emulator version_string
      end

      def v4_0
        android_htc_one_x_emulator '4.0'
      end

      def v4_1
        android_htc_one_x_emulator '4.1'
      end

    end
  end
end
