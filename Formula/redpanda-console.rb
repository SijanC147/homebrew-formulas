class RedpandaConsole < Formula
  desc "Redpanda Console is a developer-friendly UI for managing your Kafka/Redpanda workloads."
  homepage "https://github.com/redpanda-data/console"
  url "https://github.com/redpanda-data/console/releases/download/v3.1.2/redpanda_console_3.1.2_darwin_arm64.tar.gz"
  version "3.1.2"
  sha256 "dadc33fcabedbbbb05fdb6e7375aae2c67b03921a189823fe9f77dfa7e5a4f44"

  def install
    bin.install "redpanda-console"
  end

  test do
    system "which", "redpanda-console"
  end
end