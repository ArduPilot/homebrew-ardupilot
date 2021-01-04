require 'formula'

class GccArmNoneEabi < Formula
  homepage 'https://developer.arm.com/open-source/gnu-toolchain/gnu-rm'
  url 'https://firmware.ardupilot.org/Tools/STM32-tools/gcc-arm-none-eabi-6-2017-q2-update-mac.tar.bz2'
  sha256 '7d3080514a2899d05fc55466cdc477e2448b6a62f536ffca3dd846822ff52900'
  version '6-2017-q2-update'

  def install
    ohai 'Installing GNU ARM Cross Compile Toolchain...'
    bin.install Dir["bin/*"]
    prefix.install Dir["arm-none-eabi", "lib", "share"]
  end
end
