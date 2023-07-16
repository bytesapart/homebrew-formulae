# typed: false

# frozen_string_literal: true

# fnnn.rb
class Fnnn < Formula
  env :std
  desc "Fork of nnn for my personal use"
  homepage "https://github.com/bytesapart/nnn"
  head "https://github.com/bytesapart/nnn.git"

  def clear_env
    ENV.delete("CFLAGS")
    ENV.delete("LDFLAGS")
    ENV.delete("CXXFLAGS")
  end

  def install
    clear_env
    system "make", "O_NERD=1", "O_GITSTATUS=1"
    bin.install "#{buildpath}/nnn"
  end
end
