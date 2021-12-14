# -*- coding: utf-8 -*-

import re
from xkeysnail.transform import \
    define_timeout, define_modmap, define_keymap, \
    Key, K, with_mark, set_mark

# define timeout for multipurpose_modmap
define_timeout(0.05)

# [Global modemap] Change modifier keys as in xmodmap
define_modmap({
    Key.CAPSLOCK: Key.LEFT_CTRL,
    Key.LEFT_META: Key.LEFT_ALT,
    Key.LEFT_ALT: Key.LEFT_META,
    Key.SEMICOLON: Key.RIGHT_CTRL,
})

# [Conditional modmap] Change modifier keys in certain applications
# define_conditional_modmap(re.compile(r'Emacs'), {
#     Key.RIGHT_CTRL: Key.ESC,
# })

# [Multipurpose modmap] Give a key two meanings. A normal key when pressed and
# released, and a modifier key when held down with another key. See Xcape,
# Carabiner and caps2esc for ideas and concept.
# define_multipurpose_modmap({
#     # Enter is enter when pressed and released. Control when held down.
#     Key.SEMICOLON: [Key.SEMICOLON, Key.RIGHT_CTRL]
#     # Capslock is escape when pressed and released. Control when held down.
#     # {Key.CAPSLOCK: [Key.ESC, Key.LEFT_CTRL]
#     # To use this example, you can't remap capslock with define_modmap.
# })

# # [Conditional multipurpose modmap] Multipurpose modmap in certain conditions,
# # such as for a particular device.
# define_conditional_multipurpose_modmap(lambda wm_class, device_name: device_name.startswith("Microsoft"), {
#     # Left shift is open paren when pressed and released.
#     # Left shift when held down.
#     Key.LEFT_SHIFT: [Key.KPLEFTPAREN, Key.LEFT_SHIFT],
#
#     # Right shift is close paren when pressed and released.
#     # Right shift when held down.
#     Key.RIGHT_SHIFT: [Key.KPRIGHTPAREN, Key.RIGHT_SHIFT]
# })


# # Keybindings for Zeal https://github.com/zealdocs/zeal/
# define_keymap(re.compile("Zeal"), {
#     # Ctrl+s to focus search area
#     K("C-s"): K("C-k"),
# }, "Zeal")

# OneMix4
define_keymap(lambda wm_class: True, {
    # vim-like esc
    K("C-backspace"): K("esc"),
    # : for vim
    K("LShift-enter"): K("LShift-semicolon"),
    # Del => Backspace
    K("delete"): K("backspace"),
    # [{
    K("RCtrl-U"): K("left_brace"),
    K("RCtrl-J"): K("LShift-left_brace"),
    # ]}
    K("RCtrl-I"): K("right_brace"),
    K("RCtrl-K"): K("LShift-right_brace"),
    # \|
    K("RCtrl-Y"): K("backslash"),
    K("RCtrl-E"): K("LShift-backslash"),
    # ;:
    K("RCtrl-enter"): K("semicolon"),
    K("RCtrl-L"): K("semicolon"),
    # '"
    K("RCtrl-P"): K("apostrophe"),
    K("RCtrl-O"): K("LShift-apostrophe"),
    # /?
    # K("RCtrl-L"): K("slash"),
    # K("RCtrl-LShift-L"): K("LShift-slash"),
    # `~
    K("RCtrl-Q"): K("grave"),
    K("RCtrl-W"): K("LShift-grave"),
}, "OneMix4")

# Global Key Mapping for emacs-like behavior
# All key mappings should be one stroke so that those work in any applications.
define_keymap(lambda wm_class: True,
              {
                  # Cursor
                  K("C-b"): K("left"),
                  K("C-f"): K("right"),
                  K("C-p"): K("up"),
                  K("C-n"): K("down"),
                  K("C-h"): K("backspace"),
                  # Beginning/End of line
                  K("C-a"): K("home"),
                  K("C-e"): K("end"),
                  # Forward/Backward word
                  K("M-b"): K("C-left"),
                  K("M-f"): K("C-right"),
                  # # Kill line
                  # K("C-k"): [K("Shift-end"), K("C-x"), set_mark(False)],
                  # # Delete
                  # K("C-d"): [K("delete"), set_mark(False)],
                  # K("M-d"): [K("C-delete"), set_mark(False)],

                  # # Page up/down
                  # K("M-v"): with_mark(K("page_up")),
                  # K("C-v"): with_mark(K("page_down")),
                  # # Beginning/End of file
                  # K("M-Shift-comma"): with_mark(K("C-home")),
                  # K("M-Shift-dot"): with_mark(K("C-end")),
                  # Newline
                  # K("C-m"): K("enter"),
                  # K("C-j"): K("enter"),
                  # K("C-o"): [K("enter"), K("left")],
                  # # Newline
                  # K("C-m"): K("enter"),
                  # K("C-j"): K("enter"),
                  # K("C-o"): [K("enter"), K("left")],
                  # # Copy
                  # K("C-w"): [K("C-x"), set_mark(False)],
                  # K("M-w"): [K("C-c"), set_mark(False)],
                  # K("C-y"): [K("C-v"), set_mark(False)],
                  # # Undo
                  # K("C-slash"): [K("C-z"), set_mark(False)],
                  # K("C-Shift-ro"): K("C-z"),
                  # # Mark
                  # K("C-space"): set_mark(True),
                  # K("C-M-space"): with_or_set_mark(K("C-right")),
                  # # Search
                  # K("C-s"): K("F3"),
                  # K("C-r"): K("Shift-F3"),
                  # K("M-Shift-key_5"): K("C-h"),
                  # # Cancel
                  # K("C-g"): [K("esc"), set_mark(False)],
                  # # Escape
                  # K("C-q"): escape_next_key,
                  # # C-x YYY
                  # K("C-x"): {
                  #     # C-x h (select all)
                  #     K("h"): [K("C-home"), K("C-a"), set_mark(True)],
                  #     # C-x C-f (open)
                  #     K("C-f"): K("C-o"),
                  #     # C-x C-s (save)
                  #     K("C-s"): K("C-s"),
                  #     # C-x k (kill tab)
                  #     K("k"): K("C-f4"),
                  #     # C-x C-c (exit)
                  #     K("C-c"): K("C-q"),
                  #     # cancel
                  #     K("C-g"): pass_through_key,
                  #     # C-x u (undo)
                  #     K("u"): [K("C-z"), set_mark(False)],
                  # }
              }, "Emacs-like")


# Emacs-like keybindings in non-editor applications
# These bindings have a conflict with editors.
define_keymap(lambda wm_class: wm_class not in (
    "Gnome-terminal",
    "Code", "jetbrains-pycharm", "jetbrains-clion"), {
    # Kill line
    K("C-k"): [K("Shift-end"), K("C-x"), set_mark(False)],
    # Delete
    K("C-d"): [K("delete"), set_mark(False)],
    # Select all
    K("LSuper-a"): [K("C-a"), set_mark(True)],
}, "Emacs-like-exceptions")


# Copy&Paste
define_keymap(lambda wm_class: wm_class not in ("Gnome-terminal",),
              {
    K("LSuper-c"): K("Ctrl-c"),
    K("LSuper-v"): K("Ctrl-v"),
})
define_keymap(lambda wm_class: wm_class in ("Gnome-terminal",),
              {
    K("LSuper-c"): K("Ctrl-LShift-c"),
    K("LSuper-v"): K("Ctrl-LShift-v"),
})

# Keybindings for Firefox/Chrome
define_keymap(re.compile("Firefox|Google-chrome"), {
    K("LSuper-f"): K("C-f"),
    K("LSuper-l"): K("C-l"),
    K("RCtrl-l"): K("C-l"),
    K("LSuper-t"): K("C-t"),
    K("LSuper-w"): K("C-w"),
    K("LSuper-r"): K("C-r"),
    K("LSuper-minus"): K("C-minus"),
    K("LSuper-equal"): K("C-equal"),
    K("LSuper-key_1"): K("C-key_1"),
    K("LSuper-key_2"): K("C-key_2"),
    K("LSuper-key_3"): K("C-key_3"),
    K("LSuper-key_4"): K("C-key_4"),
    K("LSuper-key_5"): K("C-key_5"),
    K("LSuper-key_6"): K("C-key_6"),
    K("LSuper-key_7"): K("C-key_7"),
    K("LSuper-key_8"): K("C-key_8"),
    K("LSuper-key_9"): K("C-key_9"),
    # # Ctrl+Alt+j/k to switch next/previous tab
    # K("C-M-j"): K("C-TAB"),
    # K("C-M-k"): K("C-Shift-TAB"),
    # # Type C-j to focus to the content
    # K("C-j"): K("C-f6"),
    # # very naive "Edit in editor" feature (just an example)
    # K("C-o"): [K("C-a"), K("C-c"), launch(["gedit"]), sleep(0.5), K("C-v")]
}, "Firefox and Chrome")


# Terminal
define_keymap(lambda wm_class: wm_class in ("Gnome-terminal",),
              {
    K("LSuper-t"): K("Ctrl-LShift-t"),
    K("LSuper-w"): K("Ctrl-LShift-w"),
    K("LSuper-minus"): K("C-minus"),
    K("LSuper-equal"): K("C-LShift-equal"),
    K("LSuper-key_1"): K("M-key_1"),
    K("LSuper-key_2"): K("M-key_2"),
    K("LSuper-key_3"): K("M-key_3"),
    K("LSuper-key_4"): K("M-key_4"),
    K("LSuper-key_5"): K("M-key_5"),
    K("LSuper-key_6"): K("M-key_6"),
    K("LSuper-key_7"): K("M-key_7"),
    K("LSuper-key_8"): K("M-key_8"),
    K("LSuper-key_9"): K("M-key_9"),
})

# Open apps
define_keymap(lambda wm_class: True,
              {
                  K("LCtrl-LSuper-key_1"): K("Super-key_1"),
                  K("LCtrl-LSuper-key_2"): K("Super-key_2"),
                  K("LCtrl-LSuper-key_3"): K("Super-key_3"),
                  K("LCtrl-LSuper-key_4"): K("Super-key_4"),
                  K("LCtrl-LSuper-key_5"): K("Super-key_5"),
                  K("LCtrl-LSuper-key_6"): K("Super-key_6"),
                  K("LCtrl-LSuper-key_7"): K("Super-key_7"),
                  K("LCtrl-LSuper-key_8"): K("Super-key_8"),
                  K("LCtrl-LSuper-key_9"): K("Super-key_9"),
              })

# CLion/PyCharm
define_keymap(lambda wm_class: wm_class in (
    "jetbrains-pycharm", "jetbrains-clion"), {
    # Toggle Terminal
    K("LCtrl-grave"): [K("M-F12"), K("M-F12")],
    # Toggle Side Bar (Files)
    K("LSuper-b"): [K("M-KEY_1"), K("M-KEY_1")],
    # Close tab
    K("LSuper-w"): [K("LCtrl-F4"), K("LCtrl-F4")],
})
