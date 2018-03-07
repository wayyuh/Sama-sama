#!/bin/bash

# ----------------------------------------------------------------------------
# Initilisation 
# ----------------------------------------------------------------------------

# Locate sama-sama path
pushd `dirname $0`
cd ../
SAMA_SAMA_PATH=`pwd`
popd

# ----------------------------------------------------------------------------
# Setup bash_profile 
# ----------------------------------------------------------------------------

cat >> ~/.bash_profile << EOL

# Load interactive shell if login is interactive
[[ \$- == *i* ]] && source ~/.bashrc

EOL

# ----------------------------------------------------------------------------
# Setup bashrc
# ----------------------------------------------------------------------------

cat >> ~/.bashrc << EOL

# Load Sama-sama setup
export SAMA_SAMA_PATH=$SAMA_SAMA_PATH
source \$SAMA_SAMA_PATH/etc/bashrc
source \$SAMA_SAMA_PATH/etc/alias

EOL

# ----------------------------------------------------------------------------
# Setup cshrc
# ----------------------------------------------------------------------------

cat >> ~/.cshrc << EOL

# Load Sama-sama setup
setenv SAMA_SAMA_PATH $SAMA_SAMA_PATH
source \$SAMA_SAMA_PATH/etc/cshrc
source \$SAMA_SAMA_PATH/etc/alias

EOL

# ----------------------------------------------------------------------------
# Setup vimrc 
# ----------------------------------------------------------------------------

cat >> ~/.vimrc << EOL

" Load Sama-sama setup
source \$SAMA_SAMA_PATH/etc/vimrc

EOL

# ----------------------------------------------------------------------------
# Setup gitconfig 
# ----------------------------------------------------------------------------

cat >> ~/.gitconfig << EOL

# Load Sama-sama config
[include]
path = $SAMA_SAMA_PATH/etc/gitconfig

EOL

# ----------------------------------------------------------------------------
# End of file
# ----------------------------------------------------------------------------

