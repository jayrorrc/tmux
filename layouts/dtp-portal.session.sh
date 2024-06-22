# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
#session_root "~/Projects/dtp-api"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "dtp-portal"; then

  # Create a new window inline within session layout definition.
  new_window "Gestao API"
  run_cmd "start_gestao_api"
  
  new_window "Anexos API"
  run_cmd "start_anexos_api"  
   
  new_window "Tarefas API"
  run_cmd "start_tarefas_api"
  
  new_window "Requerimentos Portal API"
  run_cmd "start_requerimentos_portal_api"

  new_window "SPAs"
  run_cmd "cd $DATAPREV_SRC/spa/get-spa"
  run_cmd "yarn start"

  split_h
  run_cmd "cd $DATAPREV_SRC/spa/sag-spa"
  run_cmd "yarn start"

  split_h
  run_cmd "cd $DATAPREV_SRC/spa/portal-spa"
  run_cmd "yarn start-linux"


fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
