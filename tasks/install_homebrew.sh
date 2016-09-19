

# Check for Homebrew and install if we don't have it
echo -n "Installing homebrew..."

if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo "[OK]"
else
	echo "[SKIPPED]"
fi