class Macprefs < Formula
  include Language::Python::Virtualenv

  desc "Backup and Restore your Mac System and App Preferences"
  homepage "https://github.com/sijanc147/macprefs"
  url "https://github.com/sijanc147/macprefs/archive/v2.0.2.tar.gz"
  sha256 "73a07c446c0acde8bd12f36f9da26f030785ad374db2bf90143e54b0aace6ee2"

  depends_on "python3"

  def install
    bin.install Dir["*"]
  end

  test do
    system "#{bin}/macprefs", "--help"
  end
end