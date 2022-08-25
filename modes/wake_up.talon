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
    user.engine_sleep()^
# key(shift-ctrl-alt-q):
#     user.switcher_hide_running()
#     user.history_disable()
#     user.homophones_hide()
#     user.help_hide()
#     user.mouse_sleep()
#     speech.disable()
#     user.engine_sleep()
#     tracking.control1_toggle()
# ^talon sleep [<phrase>]$:
#     user.switcher_hide_running()
#     user.history_disable()
#     user.homophones_hide()
#     user.help_hide()
#     user.mouse_sleep()
#     speech.disable()
#     user.engine_sleep()
#     tracking.control1_toggle()
key(shift-ctrl-alt-q):
    speech.disable()
    user.engine_sleep()
^talon sleep [<phrase>]$:
    speech.disable()
    user.engine_sleep()
^talon speech sleep {[<phrase>]$: speech.disable()
^wake up [<phrase>]$:
    speech.disable()
    user.mouse_sleep()
^talon wake$:
    speech.enable()
    #user.mouse_wake()
^mouse wake$:
    user.mouse_toggle_control_mouse()

key(shift-ctrl-alt-w):
    #user.mouse_toggle_control_mouse()
    tracking.control1_toggle()
