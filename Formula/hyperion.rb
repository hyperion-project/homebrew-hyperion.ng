class Hyperion < Formula
  desc "Open source Bias or Ambient Lighting implementation"
  homepage "https://hyperion-project.org/"
  url "https://github.com/hyperion-project/hyperion.ng.git"
  version "master"
  license "MIT"
  head "https://github.com/hyperion-project/hyperion.ng.git", branch: "master"

  depends_on "cmake" => :build
  depends_on "ninja" => :build
  depends_on "pkg-config" => :build

  depends_on "flatbuffers"
  depends_on "hidapi"
  depends_on "libftdi"
  depends_on "libusb"
  depends_on "mbedtls"
  depends_on "openssl@1.1"
  depends_on "protobuf"
  depends_on "python3"
  depends_on "qt"

  def install
    cmake_args = std_cmake_args
    cmake_args << "-DUSE_SYSTEM_LIBUSB_LIBS=ON"
    cmake_args << "-DUSE_SYSTEM_LIBFTDI_LIBS=ON"
    cmake_args << "-DUSE_SYSTEM_HIDAPI_LIBS=ON"
    cmake_args << "-DUSE_SYSTEM_FLATBUFFERS_LIBS=ON"
    cmake_args << "-DUSE_SYSTEM_PROTO_LIBS=ON"
    cmake_args << "-DUSE_SYSTEM_MBEDTLS_LIBS=ON"
    cmake_args << "-DCMAKE_FIND_FRAMEWORK=FIRST"

    system "cmake", "-G", "Ninja", "-S", ".","-B", "build", *cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"

    bin.write_exec_script "#{prefix}/Hyperion.app/Contents/MacOS/Hyperion"
  end

  test do
    system "#{bin}/Hyperion", "-h"
  end
end
