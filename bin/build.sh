export PATH="$PATH:/opt/sm/chromium/depot_tools"

cd /opt/sm/chromium

fetch --nohooks --no-history .

#./bin/install-build-deps.sh --no-syms --no-android --no-arm --no-chromeos-fonts

# gclient runhooks

# gn gen out/Default

# ninja -C out/Default chrome