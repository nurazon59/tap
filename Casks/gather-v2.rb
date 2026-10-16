cask "gather-v2" do
  version "0.55.7"
  sha256 "aa2d0c3e7aa9e874f12f5f78afb746abc92a36c6aca295ea08af40fd6aad8c79"

  url "https://downloads.gather.town/desktop-v2/GatherV2-#{version}-universal-mac.zip"
  name "Gather 2.0"
  desc "Virtual workspace for remote teams"
  homepage "https://www.gather.town/"

  livecheck do
    url "https://downloads.gather.town/desktop-v2/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "GatherV2.app"
end
