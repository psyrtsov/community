#defines the commands that sleep/wake Talon
mode: all
-
^welcome back$:
    user.mouse_wake()
    user.history_enable()
    user.talon_mode()
^sleep all [<phrase>]$:
    user.switcher_hide_running()
    user.history_disable()
    user.homophones_hide()
    user.help_hide()
    user.mouse_sleep()
    speech.disable()
    user.engine_sleep()
^go sleep [<phrase>]$: speech.disable()
^wake up$: speech.enable()

^go whisper$:
  user.engine_mimic('sleep all')  
  user.system_command("c:/git/whisper_mic/listen.bat")
