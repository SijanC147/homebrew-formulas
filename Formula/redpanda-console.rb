class RedpandaConsole < Formula
  desc "Redpanda Console is a developer-friendly UI for managing your Kafka/Redpanda workloads."
  homepage "https://github.com/redpanda-data/console"
  url "https://github.com/redpanda-data/console/releases/download/v3.0.0/redpanda_console_3.0.0_darwin_arm64.tar.gz"
  version "3.0.0"

  # sha256 "2327e84d70ce9865638914ce805f1a12e03ad4de661918a8244847a118970e28"

  def install
    bin.install "redpanda-console"
  end

  test do
    system "which", "redpanda-console"
  end
end