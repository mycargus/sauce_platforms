module Platform
  module Android_lg_optimus_3d_emulator
    class << self
      def android_lg_optimus_3d_emulator version_string
        { browserName: %q(Android),
          deviceName: %q(LG Optimus 3D Emulator),
          platformVersion: version_string.to_s,
          platformName: %q(Linux) }
      end

      def v version_string
        android_lg_optimus_3d_emulator version_string
      end

      def v4_0
        android_lg_optimus_3d_emulator '4.0'
      end

    end
  end
end
