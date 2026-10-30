# typed: strict
# frozen_string_literal: true

cask "bluenap" do
  version "2.2.0"
  sha256 "d58de33fb7528518ddb2030e14f29d9c5c0336e66cb0f0af864f99bc43d62d5d"

  url "https://github.com/jorchford/BlueNap/releases/download/v#{version}/BlueNap.dmg"
  name "BlueNap"
  name "蓝憩"
  desc "Bluetooth sleep/wake power manager and Wi-Fi static IP auto-switcher"
  homepage "https://github.com/jorchford/BlueNap"

  depends_on macos: :sonoma

  app "BlueNap.app"

  uninstall quit: "com.needai.bluesnooze"

  zap trash: [
    "~/Library/Application Scripts/com.needai.bluesnooze",
    "~/Library/Caches/com.needai.bluesnooze",
    "~/Library/Containers/com.needai.bluesnooze",
    "~/Library/HTTPStorages/com.needai.bluesnooze",
    "~/Library/Preferences/com.needai.bluesnooze.plist",
  ]
end
