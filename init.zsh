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
# Function: p6df::modules::gws::init(_module, dir)
#
#  Args:
#	_module -
#	dir -
#
#>
######################################################################
p6df::modules::gws::init() {
  local _module="$1"
  local dir="$2"

  p6_bootstrap "$dir"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::gws::skills::init(dir)
#
#  Args:
#	dir - module dir (unused; gws generate-skills uses CWD)
#
#>
######################################################################
p6df::modules::gws::skills::init() {

  gws generate-skills

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::gws::langs()
#
#>
######################################################################
p6df::modules::gws::langs() {

  p6_run_dir "$P6_DFZ_SRC_DIR/googleworkspace/cli" cargo build --release

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::gws::path::init()
#
#>
######################################################################
p6df::modules::gws::path::init() {

  p6df::core::path::if "$P6_DFZ_SRC_DIR/googleworkspace/cli/target/release"

  p6_return_void
}
