# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::gws::deps()
#
#>
######################################################################
p6df::modules::gws::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6df-gcp
    googleworkspace/cli
  )
}

######################################################################
#<
#
# Function: p6df::modules::gws::path::init(_module, _dir)
#
#  Args:
#	_module -
#	_dir -
#
#  Environment:	 P6_DFZ_SRC_DIR
#>
######################################################################
p6df::modules::gws::path::init() {

  local _module="$1"
  local _dir="$2"
  p6df::core::path::if "$P6_DFZ_SRC_DIR/googleworkspace/cli/target/release"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::gws::langs()
#
#  Environment:	 P6_DFZ_SRC_DIR
#>
######################################################################
p6df::modules::gws::langs() {

  p6_run_dir "$P6_DFZ_SRC_DIR/googleworkspace/cli" cargo build --release

  p6_return_void
}

######################################################################
#<
#
# Function: words gws = p6df::modules::gws::profile::mod()
#
#  Returns:
#	words - gws
#
#  Environment:	 GOOGLE_APPLICATION_CREDENTIALS
#>
######################################################################
p6df::modules::gws::profile::mod() {

  p6_return_words 'gws' '$GOOGLE_APPLICATION_CREDENTIALS'
}
######################################################################
#<
#
# Function: p6df::modules::gws::skills::init(_module, _dir)
#
#  Args:
#	_module -
#	_dir -
#
#>
######################################################################
p6df::modules::gws::skills::init() {
  local _module="$1"
  local _dir="$2"

  gws generate-skills

  p6_return_void
}

