class Hyperion < Formula
  desc "Ambient and bias lighting controller"
  homepage "https://hyperion-project.org/"
  url "https://github.com/hyperion-project/hyperion.ng.git",
      tag:      "2.2.1",
      revision: "1a003600361118483ecfc6445a549d3703f9e063"
  license "MIT"
  head "https://github.com/hyperion-project/hyperion.ng.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "cmake" => :build
  depends_on "ninja" => :build
  depends_on "pkgconf" => :build
  depends_on "abseil"
  depends_on :macos
  depends_on "python@3.14"
  depends_on "qtbase"
  depends_on "qtserialport"
  depends_on "qtwebsockets"

  def install
    system "cmake", "-S", ".", "-B", "build", "-G", "Ninja",
                    "-DPLATFORM=osx",
                    "-DPython3_EXECUTABLE=#{which("python3.14")}",
                    *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"

    bin.write_exec_script prefix/"Hyperion.app/Contents/MacOS/Hyperion"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/Hyperion --service --version")
  end
end
