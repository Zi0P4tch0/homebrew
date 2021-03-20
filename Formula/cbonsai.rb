
class Cbonsai < Formula
  desc "Grow bonsai trees in your terminal"
  homepage "https://gitlab.com/jallbrit/cbonsai"
  url "https://gitlab.com/jallbrit/cbonsai/-/archive/v1.0.4/cbonsai-v1.0.4.tar.gz"
  sha256 "8326c87f7e8559e67a4b9172db33c2a402bbd13805dfdd0ece4dba03868e9366"
  license "GPL-3.0-only"

  depends_on "pkg-config" => :build
  depends_on "ncurses"

  def install
    system "make", "PKG_CONFIG_PATH=/usr/local/opt/ncurses/lib/pkgconfig"
    system "make", "install", "PREFIX=#{prefix}"
  end

end
