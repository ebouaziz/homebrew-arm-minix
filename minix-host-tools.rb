class MinixHostTools < Formula
  homepage "https://github.com/ebouaziz/minix-host-tools"
  url "https://github.com/ebouaziz/minix-host-tools.git", :branch => "x64-debian7"

  depends_on "cmake" => :build

  def install
    system "cmake", "tools", *std_cmake_args
    system "make", "install" # if this fails, try separate make/make install steps
  end

end
