module Platform
  module Android_htc_evo_3d_emulator
    class << self
      def android_htc_evo_3d_emulator version_string
        ['Linux', 'Android', version_string.to_s, deviceName: 'HTC Evo 3D Emulator']
      end

      def v version_string
        android_htc_evo_3d_emulator version_string
      end

      def v4_0
        android_htc_evo_3d_emulator '4.0'
      end

    end
  end
end
