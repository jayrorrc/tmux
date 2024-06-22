# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
#session_root "~/Projects/dtp-server"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "dtp-server"; then

  # Create a new window inline within session layout definition.
  new_window "Weblogic"
  run_cmd "startWebLogic.sh"

  new_window "Newdoo"
  run_cmd "start_newdoo"

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
