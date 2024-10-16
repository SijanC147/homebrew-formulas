# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Pure < Formula
  desc "Pretty, minimal and fast zsh prompt"
  homepage "https://github.com/SijanC147/pure"
  url "https://github.com/SijanC147/pure/archive/refs/tags/v1.23.8.tar.gz"
  sha256 "4bd150b0b9920a1bca2342a4c043638ba8b5fd8f3b926bb0c7f77cd6bea9ce33"
  license "MIT"

  depends_on "zsh" => :test
  depends_on "zsh-async"

  def install
    zsh_function.install "pure.zsh" => "prompt_pure_setup"
  end

  test do
    zsh_command = "setopt prompt_subst; autoload -U promptinit; promptinit && prompt -p pure"
    assert_match "❯", shell_output("zsh -c '#{zsh_command}'")
  end
end
