class MinixHostTools < Formula
  homepage "https://github.com/eblot/minix-host-tools"
  if OS.linux?
    url "https://github.com/ebouaziz/minix-host-tools.git", :branch => "x64-debian7"
  else
    url "https://github.com/ebouaziz/minix-host-tools.git", :branch => "master"
  end

  depends_on "cmake" => :build

  def install
    system "cmake", "tools", *std_cmake_args
    system "make", "install" # if this fails, try separate make/make install steps
  end

end
