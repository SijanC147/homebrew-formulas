class Macprefs < Formula
    include Language::Python::Virtualenv

    desc "Backup and Restore your Mac System and App Preferences"
    homepage "https://github.com/sijanc147/macprefs"
    url "https://github.com/sijanc147/macprefs/archive/v2.0.0.tar.gz"
    sha256 "f980b7e0a17cc5aee919f9406b9ad7bfe24d48c829227d74e0dde5c37988ca13"

    depends_on :python3

    def install
      bin.install Dir["*"]
    end

    test do
      system "#{bin}/macprefs", "--help"
    end
  end
