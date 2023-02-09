#!/bin/bash


# Flag variables and default values
flag_check_package=true
flag_install_package=true

# Parse command line flags
while [ $# -gt 0 ]; do
  case $1 in
    --no-check)
      flag_check_package=false
      shift
      ;;
    --no-install)
      flag_install_package=false
      shift
      ;;
     --remove)
      flag_install_package=false
      shift
      flag_remove_package=true
      break
      ;;
    *)
      break
      ;;
  esac
done


# Check if a package was passed as an argument
if [ $# -eq 0 ]; then
  echo "No package specified."
  exit 1
fi

# The script to which the package installation code will be appended
script_file="$HOME/.config/package_setup/packages.sh"

# Check if the script file exists
if [ ! -f $script_file ]; then
  echo "Creating script file $script_file..."
  echo "#!/bin/bash" > $script_file
fi

# Append the package installation code to the script file
package=$1
if [ "$flag_check_package" = true ] && ! brew info $package &> /dev/null; then
  echo "Invalid package: $package"
  exit 1
fi

if ! grep -q "brew install $package" $script_file; then
  echo "Appending $package installation code to $script_file..."
  echo "if ! command -v $package > /dev/null 2>&1; then" >> $script_file
  echo "  echo \"Installing $package...\"" >> $script_file
  echo "  brew install $package" >> $script_file
  echo "fi" >> $script_file
else
  echo "$package installation code already exists in $script_file."
fi

if [ "$flag_install_package" = true ]; then
    echo "Installing packages..."
    bash $HOME/.config/package_setup/init.sh
fi

