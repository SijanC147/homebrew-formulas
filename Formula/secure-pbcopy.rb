class SecurePbcopy < Formula
  desc "Replacement that marks data as confidential"
  homepage "https://github.com/SijanC147/secure-pbcopy"
  head "https://github.com/SijanC147/secure-pbcopy.git"

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_equal "dummy", shell_output("echo 'dummy' | #{bin}/secure-pbcopy; pbpaste").strip
  end
end