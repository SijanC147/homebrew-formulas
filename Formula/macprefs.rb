class Macprefs < Formula
    include Language::Python::Virtualenv

    desc "Backup and Restore your Mac System and App Preferences"
    homepage "https://github.com/sijanc147/macprefs"
    url "https://github.com/sijanc147/macprefs/archive/v2.0.1.tar.gz"
    sha256 "1250fa7627fdbf0ecdeacbcaadd1de5121a68f8128db35c44eebca92128308bb"

    depends_on :python3

    def install
      bin.install Dir["*"]
    end

    test do
      system "#{bin}/macprefs", "--help"
    end
  end
