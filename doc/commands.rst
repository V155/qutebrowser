In qutebrowser, all keybindings are mapped to commands.

Some commands are hidden, which means they don’t show up in the command
completion when pressing ``:``, as they’re typically not useful to run
by hand.

For command arguments, there are also some variables you can use:

-  ``{url}`` expands to the URL of the current page

-  ``{url:pretty}`` expands to the URL in decoded format

-  ``{url:host}`` expands to the host part of the URL

-  ``{clipboard}`` expands to the clipboard contents

-  ``{primary}`` expands to the primary selection contents

It is possible to run or bind multiple commands by separating them with
``;;``.

.. __normal_commands:

Normal commands
===============

.. table:: Quick reference

   +-----------------+----------------------------------------------------+
   | Command         | Description                                        |
   +=================+====================================================+
   | `adblock-update | Update the adblock block lists.                    |
   |  <#adblock-upda |                                                    |
   | te>`__          |                                                    |
   +-----------------+----------------------------------------------------+
   | `back <#back>`_ | Go back in the history of the current tab.         |
   | _               |                                                    |
   +-----------------+----------------------------------------------------+
   | `bind <#bind>`_ | Bind a key to a command.                           |
   | _               |                                                    |
   +-----------------+----------------------------------------------------+
   | `bookmark-add < | Save the current page as a bookmark, or a specific |
   | #bookmark-add>` | url.                                               |
   | __              |                                                    |
   +-----------------+----------------------------------------------------+
   | `bookmark-del < | Delete a bookmark.                                 |
   | #bookmark-del>` |                                                    |
   | __              |                                                    |
   +-----------------+----------------------------------------------------+
   | `bookmark-load  | Load a bookmark.                                   |
   | <#bookmark-load |                                                    |
   | >`__            |                                                    |
   +-----------------+----------------------------------------------------+
   | `buffer <#buffe | Select tab by index or url/title best match.       |
   | r>`__           |                                                    |
   +-----------------+----------------------------------------------------+
   | `clear-keychain | Clear the currently entered key chain.             |
   |  <#clear-keycha |                                                    |
   | in>`__          |                                                    |
   +-----------------+----------------------------------------------------+
   | `clear-messages | Clear all message notifications.                   |
   |  <#clear-messag |                                                    |
   | es>`__          |                                                    |
   +-----------------+----------------------------------------------------+
   | `click-element  | Click the element matching the given filter.       |
   | <#click-element |                                                    |
   | >`__            |                                                    |
   +-----------------+----------------------------------------------------+
   | `close <#close> | Close the current window.                          |
   | `__             |                                                    |
   +-----------------+----------------------------------------------------+
   | `config-clear < | Set all settings back to their default.            |
   | #config-clear>` |                                                    |
   | __              |                                                    |
   +-----------------+----------------------------------------------------+
   | `config-cycle < | Cycle an option between multiple values.           |
   | #config-cycle>` |                                                    |
   | __              |                                                    |
   +-----------------+----------------------------------------------------+
   | `config-dict-ad | Add a key/value pair to a dictionary option.       |
   | d <#config-dict |                                                    |
   | -add>`__        |                                                    |
   +-----------------+----------------------------------------------------+
   | `config-dict-re | Remove a key from a dict.                          |
   | move <#config-d |                                                    |
   | ict-remove>`__  |                                                    |
   +-----------------+----------------------------------------------------+
   | `config-edit <# | Open the config.py file in the editor.             |
   | config-edit>`__ |                                                    |
   +-----------------+----------------------------------------------------+
   | `config-list-ad | Append a value to a config option that is a list.  |
   | d <#config-list |                                                    |
   | -add>`__        |                                                    |
   +-----------------+----------------------------------------------------+
   | `config-list-re | Remove a value from a list.                        |
   | move <#config-l |                                                    |
   | ist-remove>`__  |                                                    |
   +-----------------+----------------------------------------------------+
   | `config-source  | Read a config.py file.                             |
   | <#config-source |                                                    |
   | >`__            |                                                    |
   +-----------------+----------------------------------------------------+
   | `config-unset < | Unset an option.                                   |
   | #config-unset>` |                                                    |
   | __              |                                                    |
   +-----------------+----------------------------------------------------+
   | `config-write-p | Write the current configuration to a config.py     |
   | y <#config-writ | file.                                              |
   | e-py>`__        |                                                    |
   +-----------------+----------------------------------------------------+
   | `download <#dow | Download a given URL, or current page if no URL    |
   | nload>`__       | given.                                             |
   +-----------------+----------------------------------------------------+
   | `download-cance | Cancel the last/[count]th download.                |
   | l <#download-ca |                                                    |
   | ncel>`__        |                                                    |
   +-----------------+----------------------------------------------------+
   | `download-clear | Remove all finished downloads from the list.       |
   |  <#download-cle |                                                    |
   | ar>`__          |                                                    |
   +-----------------+----------------------------------------------------+
   | `download-delet | Delete the last/[count]th download from disk.      |
   | e <#download-de |                                                    |
   | lete>`__        |                                                    |
   +-----------------+----------------------------------------------------+
   | `download-open  | Open the last/[count]th download.                  |
   | <#download-open |                                                    |
   | >`__            |                                                    |
   +-----------------+----------------------------------------------------+
   | `download-remov | Remove the last/[count]th download from the list.  |
   | e <#download-re |                                                    |
   | move>`__        |                                                    |
   +-----------------+----------------------------------------------------+
   | `download-retry | Retry the first failed/[count]th download.         |
   |  <#download-ret |                                                    |
   | ry>`__          |                                                    |
   +-----------------+----------------------------------------------------+
   | `edit-command < | Open an editor to modify the current command.      |
   | #edit-command>` |                                                    |
   | __              |                                                    |
   +-----------------+----------------------------------------------------+
   | `edit-url <#edi | Navigate to a url formed in an external editor.    |
   | t-url>`__       |                                                    |
   +-----------------+----------------------------------------------------+
   | `enter-mode <#e | Enter a key mode.                                  |
   | nter-mode>`__   |                                                    |
   +-----------------+----------------------------------------------------+
   | `fake-key <#fak | Send a fake keypress or key string to the website  |
   | e-key>`__       | or qutebrowser.                                    |
   +-----------------+----------------------------------------------------+
   | `follow-selecte | Follow the selected text.                          |
   | d <#follow-sele |                                                    |
   | cted>`__        |                                                    |
   +-----------------+----------------------------------------------------+
   | `forward <#forw | Go forward in the history of the current tab.      |
   | ard>`__         |                                                    |
   +-----------------+----------------------------------------------------+
   | `fullscreen <#f | Toggle fullscreen mode.                            |
   | ullscreen>`__   |                                                    |
   +-----------------+----------------------------------------------------+
   | `greasemonkey-r | Re-read Greasemonkey scripts from disk.            |
   | eload <#greasem |                                                    |
   | onkey-reload>`_ |                                                    |
   | _               |                                                    |
   +-----------------+----------------------------------------------------+
   | `help <#help>`_ | Show help about a command or setting.              |
   | _               |                                                    |
   +-----------------+----------------------------------------------------+
   | `hint <#hint>`_ | Start hinting.                                     |
   | _               |                                                    |
   +-----------------+----------------------------------------------------+
   | `history <#hist | Show browsing history.                             |
   | ory>`__         |                                                    |
   +-----------------+----------------------------------------------------+
   | `history-clear  | Clear all browsing history.                        |
   | <#history-clear |                                                    |
   | >`__            |                                                    |
   +-----------------+----------------------------------------------------+
   | `home <#home>`_ | Open main startpage in current tab.                |
   | _               |                                                    |
   +-----------------+----------------------------------------------------+
   | `insert-text <# | Insert text at cursor position.                    |
   | insert-text>`__ |                                                    |
   +-----------------+----------------------------------------------------+
   | `inspector <#in | Toggle the web inspector.                          |
   | spector>`__     |                                                    |
   +-----------------+----------------------------------------------------+
   | `jseval <#jseva | Evaluate a JavaScript string.                      |
   | l>`__           |                                                    |
   +-----------------+----------------------------------------------------+
   | `jump-mark <#ju | Jump to the mark named by ``key``.                 |
   | mp-mark>`__     |                                                    |
   +-----------------+----------------------------------------------------+
   | `later <#later> | Execute a command after some time.                 |
   | `__             |                                                    |
   +-----------------+----------------------------------------------------+
   | `message-error  | Show an error message in the statusbar.            |
   | <#message-error |                                                    |
   | >`__            |                                                    |
   +-----------------+----------------------------------------------------+
   | `message-info < | Show an info message in the statusbar.             |
   | #message-info>` |                                                    |
   | __              |                                                    |
   +-----------------+----------------------------------------------------+
   | `message-warnin | Show a warning message in the statusbar.           |
   | g <#message-war |                                                    |
   | ning>`__        |                                                    |
   +-----------------+----------------------------------------------------+
   | `messages <#mes | Show a log of past messages.                       |
   | sages>`__       |                                                    |
   +-----------------+----------------------------------------------------+
   | `navigate <#nav | Open typical prev/next links or navigate using the |
   | igate>`__       | URL path.                                          |
   +-----------------+----------------------------------------------------+
   | `nop <#nop>`__  | Do nothing.                                        |
   +-----------------+----------------------------------------------------+
   | `open <#open>`_ | Open a URL in the current/[count]th tab.           |
   | _               |                                                    |
   +-----------------+----------------------------------------------------+
   | `open-editor <# | Open an external editor with the currently         |
   | open-editor>`__ | selected form field.                               |
   +-----------------+----------------------------------------------------+
   | `print <#print> | Print the current/[count]th tab.                   |
   | `__             |                                                    |
   +-----------------+----------------------------------------------------+
   | `quickmark-add  | Add a new quickmark.                               |
   | <#quickmark-add |                                                    |
   | >`__            |                                                    |
   +-----------------+----------------------------------------------------+
   | `quickmark-del  | Delete a quickmark.                                |
   | <#quickmark-del |                                                    |
   | >`__            |                                                    |
   +-----------------+----------------------------------------------------+
   | `quickmark-load | Load a quickmark.                                  |
   |  <#quickmark-lo |                                                    |
   | ad>`__          |                                                    |
   +-----------------+----------------------------------------------------+
   | `quickmark-save | Save the current page as a quickmark.              |
   |  <#quickmark-sa |                                                    |
   | ve>`__          |                                                    |
   +-----------------+----------------------------------------------------+
   | `quit <#quit>`_ | Quit qutebrowser.                                  |
   | _               |                                                    |
   +-----------------+----------------------------------------------------+
   | `record-macro < | Start or stop recording a macro.                   |
   | #record-macro>` |                                                    |
   | __              |                                                    |
   +-----------------+----------------------------------------------------+
   | `reload <#reloa | Reload the current/[count]th tab.                  |
   | d>`__           |                                                    |
   +-----------------+----------------------------------------------------+
   | `repeat <#repea | Repeat a given command.                            |
   | t>`__           |                                                    |
   +-----------------+----------------------------------------------------+
   | `repeat-command | Repeat the last executed command.                  |
   |  <#repeat-comma |                                                    |
   | nd>`__          |                                                    |
   +-----------------+----------------------------------------------------+
   | `report <#repor | Report a bug in qutebrowser.                       |
   | t>`__           |                                                    |
   +-----------------+----------------------------------------------------+
   | `restart <#rest | Restart qutebrowser while keeping existing tabs    |
   | art>`__         | open.                                              |
   +-----------------+----------------------------------------------------+
   | `run-macro <#ru | Run a recorded macro.                              |
   | n-macro>`__     |                                                    |
   +-----------------+----------------------------------------------------+
   | `run-with-count | Run a command with the given count.                |
   |  <#run-with-cou |                                                    |
   | nt>`__          |                                                    |
   +-----------------+----------------------------------------------------+
   | `save <#save>`_ | Save configs and state.                            |
   | _               |                                                    |
   +-----------------+----------------------------------------------------+
   | `scroll <#scrol | Scroll the current tab in the given direction.     |
   | l>`__           |                                                    |
   +-----------------+----------------------------------------------------+
   | `scroll-page <# | Scroll the frame page-wise.                        |
   | scroll-page>`__ |                                                    |
   +-----------------+----------------------------------------------------+
   | `scroll-px <#sc | Scroll the current tab by 'count \* dx/dy' pixels. |
   | roll-px>`__     |                                                    |
   +-----------------+----------------------------------------------------+
   | `scroll-to-anch | Scroll to the given anchor in the document.        |
   | or <#scroll-to- |                                                    |
   | anchor>`__      |                                                    |
   +-----------------+----------------------------------------------------+
   | `scroll-to-perc | Scroll to a specific percentage of the page.       |
   |  <#scroll-to-pe |                                                    |
   | rc>`__          |                                                    |
   +-----------------+----------------------------------------------------+
   | `search <#searc | Search for a text on the current page. With no     |
   | h>`__           | text, clear results.                               |
   +-----------------+----------------------------------------------------+
   | `search-next <# | Continue the search to the ([count]th) next term.  |
   | search-next>`__ |                                                    |
   +-----------------+----------------------------------------------------+
   | `search-prev <# | Continue the search to the ([count]th) previous    |
   | search-prev>`__ | term.                                              |
   +-----------------+----------------------------------------------------+
   | `session-delete | Delete a session.                                  |
   |  <#session-dele |                                                    |
   | te>`__          |                                                    |
   +-----------------+----------------------------------------------------+
   | `session-load < | Load a session.                                    |
   | #session-load>` |                                                    |
   | __              |                                                    |
   +-----------------+----------------------------------------------------+
   | `session-save < | Save a session.                                    |
   | #session-save>` |                                                    |
   | __              |                                                    |
   +-----------------+----------------------------------------------------+
   | `set <#set>`__  | Set an option.                                     |
   +-----------------+----------------------------------------------------+
   | `set-cmd-text < | Preset the statusbar to some text.                 |
   | #set-cmd-text>` |                                                    |
   | __              |                                                    |
   +-----------------+----------------------------------------------------+
   | `set-mark <#set | Set a mark at the current scroll position in the   |
   | -mark>`__       | current tab.                                       |
   +-----------------+----------------------------------------------------+
   | `spawn <#spawn> | Spawn a command in a shell.                        |
   | `__             |                                                    |
   +-----------------+----------------------------------------------------+
   | `stop <#stop>`_ | Stop loading in the current/[count]th tab.         |
   | _               |                                                    |
   +-----------------+----------------------------------------------------+
   | `tab-clone <#ta | Duplicate the current tab.                         |
   | b-clone>`__     |                                                    |
   +-----------------+----------------------------------------------------+
   | `tab-close <#ta | Close the current/[count]th tab.                   |
   | b-close>`__     |                                                    |
   +-----------------+----------------------------------------------------+
   | `tab-focus <#ta | Select the tab given as argument/[count].          |
   | b-focus>`__     |                                                    |
   +-----------------+----------------------------------------------------+
   | `tab-give <#tab | Give the current tab to a new or existing window   |
   | -give>`__       | if win_id given.                                   |
   +-----------------+----------------------------------------------------+
   | `tab-move <#tab | Move the current tab according to the argument and |
   | -move>`__       | [count].                                           |
   +-----------------+----------------------------------------------------+
   | `tab-mute <#tab | Mute/Unmute the current/[count]th tab.             |
   | -mute>`__       |                                                    |
   +-----------------+----------------------------------------------------+
   | `tab-next <#tab | Switch to the next tab, or switch [count] tabs     |
   | -next>`__       | forward.                                           |
   +-----------------+----------------------------------------------------+
   | `tab-only <#tab | Close all tabs except for the current one.         |
   | -only>`__       |                                                    |
   +-----------------+----------------------------------------------------+
   | `tab-pin <#tab- | Pin/Unpin the current/[count]th tab.               |
   | pin>`__         |                                                    |
   +-----------------+----------------------------------------------------+
   | `tab-prev <#tab | Switch to the previous tab, or switch [count] tabs |
   | -prev>`__       | back.                                              |
   +-----------------+----------------------------------------------------+
   | `tab-take <#tab | Take a tab from another window.                    |
   | -take>`__       |                                                    |
   +-----------------+----------------------------------------------------+
   | `unbind <#unbin | Unbind a keychain.                                 |
   | d>`__           |                                                    |
   +-----------------+----------------------------------------------------+
   | `undo <#undo>`_ | Re-open the last closed tab or tabs.               |
   | _               |                                                    |
   +-----------------+----------------------------------------------------+
   | `version <#vers | Show version information.                          |
   | ion>`__         |                                                    |
   +-----------------+----------------------------------------------------+
   | `view-source <# | Show the source of the current page in a new tab.  |
   | view-source>`__ |                                                    |
   +-----------------+----------------------------------------------------+
   | `window-only <# | Close all windows except for the current one.      |
   | window-only>`__ |                                                    |
   +-----------------+----------------------------------------------------+
   | `yank <#yank>`_ | Yank something to the clipboard or primary         |
   | _               | selection.                                         |
   +-----------------+----------------------------------------------------+
   | `zoom <#zoom>`_ | Set the zoom level for the current tab.            |
   | _               |                                                    |
   +-----------------+----------------------------------------------------+
   | `zoom-in <#zoom | Increase the zoom level for the current tab.       |
   | -in>`__         |                                                    |
   +-----------------+----------------------------------------------------+
   | `zoom-out <#zoo | Decrease the zoom level for the current tab.       |
   | m-out>`__       |                                                    |
   +-----------------+----------------------------------------------------+

adblock-update
--------------

Update the adblock block lists.

This updates ``~/.local/share/qutebrowser/blocked-hosts`` with
downloaded host lists and re-reads
``~/.config/qutebrowser/blocked-hosts``.

back
----

Syntax: :back [*--tab*] [*--bg*] [*--window*]

Go back in the history of the current tab.

.. __optional_arguments:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-t*, \*--tab*: Go back in a new tab.

-  \*-b*, \*--bg*: Go back in a background tab.

-  \*-w*, \*--window*: Go back in a new window.

.. __count:

count
~~~~~

How many pages to go back.

bind
----

Syntax: :bind [*--mode\* 'mode'] [*--default*] ['key'] ['command']

Bind a key to a command.

If no command is given, show the current binding for the given key.
Using :bind without any arguments opens a page showing all keybindings.

.. __positional_arguments:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'key': The keychain to bind. Examples of valid keychains are ``gC``,
   ``<Ctrl-X>`` or ``<Ctrl-C>a``.

-  'command': The command to execute, with optional args.

.. __optional_arguments_2:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-m*, \*--mode*: A comma-separated list of modes to bind the key in
   (default: ``normal``). See ``:help bindings.commands`` for the
   available modes.

-  \*-d*, \*--default*: If given, restore a default binding.

.. __note:

note
~~~~

-  This command does not split arguments after the last argument and
   handles quotes literally.

-  With this command, ;; is interpreted literally instead of splitting
   off a second command.

-  This command does not replace variables like \\{url\}.

bookmark-add
------------

Syntax: :bookmark-add [*--toggle*] ['url'] ['title']

Save the current page as a bookmark, or a specific url.

If no url and title are provided, then save the current page as a
bookmark. If a url and title have been provided, then save the given url
as a bookmark with the provided title. You can view all saved bookmarks
on the `bookmarks page <qute://bookmarks>`__.

.. __positional_arguments_2:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'url': url to save as a bookmark. If not given, use url of current
   page.

-  'title': title of the new bookmark.

.. __optional_arguments_3:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-t*, \*--toggle*: remove the bookmark instead of raising an error
   if it already exists.

bookmark-del
------------

Syntax: :bookmark-del ['url']

Delete a bookmark.

.. __positional_arguments_3:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'url': The url of the bookmark to delete. If not given, use the
   current page’s url.

.. __note_2:

note
~~~~

-  This command does not split arguments after the last argument and
   handles quotes literally.

bookmark-load
-------------

Syntax: :bookmark-load [*--tab*] [*--bg*] [*--window*] [*--delete*]
'url'

Load a bookmark.

.. __positional_arguments_4:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'url': The url of the bookmark to load.

.. __optional_arguments_4:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-t*, \*--tab*: Load the bookmark in a new tab.

-  \*-b*, \*--bg*: Load the bookmark in a new background tab.

-  \*-w*, \*--window*: Load the bookmark in a new window.

-  \*-d*, \*--delete*: Whether to delete the bookmark afterwards.

.. __note_3:

note
~~~~

-  This command does not split arguments after the last argument and
   handles quotes literally.

buffer
------

Syntax: :buffer ['index']

Select tab by index or url/title best match.

Focuses window if necessary when index is given. If both index and count
are given, use count. With neither index nor count given, open the
qute://tabs page.

.. __positional_arguments_5:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'index': The [win_id/]index of the tab to focus. Or a substring in
   which case the closest match will be focused.

.. __count_2:

count
~~~~~

The tab index to focus, starting with 1.

.. __note_4:

note
~~~~

-  This command does not split arguments after the last argument and
   handles quotes literally.

clear-keychain
--------------

Clear the currently entered key chain.

clear-messages
--------------

Clear all message notifications.

click-element
-------------

Syntax: :click-element [*--target\* 'target'] [*--force-event*] 'filter'
'value'

Click the element matching the given filter.

The given filter needs to result in exactly one element, otherwise, an
error is shown.

.. __positional_arguments_6:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'filter': How to filter the elements. id: Get an element based on its
   ID.

-  'value': The value to filter for.

.. __optional_arguments_5:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-t*, \*--target*: How to open the clicked element
   (normal/tab/tab-bg/window).

-  \*-f*, \*--force-event*: Force generating a fake click event.

close
-----

Close the current window.

config-clear
------------

Syntax: :config-clear [*--save*]

Set all settings back to their default.

.. __optional_arguments_6:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-s*, \*--save*: If given, all configuration in autoconfig.yml is
   also removed.

config-cycle
------------

Syntax: :config-cycle [*--pattern\* 'pattern'] [*--temp*] [*--print*]
'option' ['values' ['values' ...]]

Cycle an option between multiple values.

.. __positional_arguments_7:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'option': The name of the option.

-  'values': The values to cycle through.

.. __optional_arguments_7:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-u*, \*--pattern*: The URL pattern to use.

-  \*-t*, \*--temp*: Set value temporarily until qutebrowser is closed.

-  \*-p*, \*--print*: Print the value after setting.

config-dict-add
---------------

Syntax: :config-dict-add [*--temp*] [*--replace*] 'option' 'key' 'value'

Add a key/value pair to a dictionary option.

.. __positional_arguments_8:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'option': The name of the option.

-  'key': The key to use.

-  'value': The value to place in the dictionary.

.. __optional_arguments_8:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-t*, \*--temp*: Add value temporarily until qutebrowser is closed.

-  \*-r*, \*--replace*: Replace existing values. By default, existing
   values are not overwritten.

config-dict-remove
------------------

Syntax: :config-dict-remove [*--temp*] 'option' 'key'

Remove a key from a dict.

.. __positional_arguments_9:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'option': The name of the option.

-  'key': The key to remove from the dict.

.. __optional_arguments_9:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-t*, \*--temp*: Remove value temporarily until qutebrowser is
   closed.

config-edit
-----------

Syntax: :config-edit [*--no-source*]

Open the config.py file in the editor.

.. __optional_arguments_10:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-n*, \*--no-source*: Don’t re-source the config file after editing.

config-list-add
---------------

Syntax: :config-list-add [*--temp*] 'option' 'value'

Append a value to a config option that is a list.

.. __positional_arguments_10:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'option': The name of the option.

-  'value': The value to append to the end of the list.

.. __optional_arguments_11:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-t*, \*--temp*: Add value temporarily until qutebrowser is closed.

config-list-remove
------------------

Syntax: :config-list-remove [*--temp*] 'option' 'value'

Remove a value from a list.

.. __positional_arguments_11:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'option': The name of the option.

-  'value': The value to remove from the list.

.. __optional_arguments_12:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-t*, \*--temp*: Remove value temporarily until qutebrowser is
   closed.

config-source
-------------

Syntax: :config-source [*--clear*] ['filename']

Read a config.py file.

.. __positional_arguments_12:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'filename': The file to load. If not given, loads the default
   config.py.

.. __optional_arguments_13:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-c*, \*--clear*: Clear current settings first.

config-unset
------------

Syntax: :config-unset [*--temp*] 'option'

Unset an option.

This sets an option back to its default and removes it from
autoconfig.yml.

.. __positional_arguments_13:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'option': The name of the option.

.. __optional_arguments_14:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-t*, \*--temp*: Set value temporarily until qutebrowser is closed.

config-write-py
---------------

Syntax: :config-write-py [*--force*] [*--defaults*] ['filename']

Write the current configuration to a config.py file.

.. __positional_arguments_14:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'filename': The file to write to, or not given for the default
   config.py.

.. __optional_arguments_15:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-f*, \*--force*: Force overwriting existing files.

-  \*-d*, \*--defaults*: Write the defaults instead of values configured
   via :set.

download
--------

Syntax: :download [*--mhtml*] [*--dest\* 'dest'] ['url']

Download a given URL, or current page if no URL given.

.. __positional_arguments_15:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'url': The URL to download. If not given, download the current page.

.. __optional_arguments_16:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-m*, \*--mhtml*: Download the current page and all assets as mhtml
   file.

-  \*-d*, \*--dest*: The file path to write the download to, or not
   given to ask.

download-cancel
---------------

Syntax: :download-cancel [*--all*]

Cancel the last/[count]th download.

.. __optional_arguments_17:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-a*, \*--all*: Cancel all running downloads

.. __count_3:

count
~~~~~

The index of the download to cancel.

download-clear
--------------

Remove all finished downloads from the list.

download-delete
---------------

Delete the last/[count]th download from disk.

.. __count_4:

count
~~~~~

The index of the download to delete.

download-open
-------------

Syntax: :download-open ['cmdline']

Open the last/[count]th download.

If no specific command is given, this will use the system’s default
application to open the file.

.. __positional_arguments_16:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'cmdline': The command which should be used to open the file. A
   ``{}`` is expanded to the temporary file name. If no ``{}`` is
   present, the filename is automatically appended to the cmdline.

.. __count_5:

count
~~~~~

The index of the download to open.

.. __note_5:

note
~~~~

-  This command does not split arguments after the last argument and
   handles quotes literally.

download-remove
---------------

Syntax: :download-remove [*--all*]

Remove the last/[count]th download from the list.

.. __optional_arguments_18:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-a*, \*--all*: Remove all finished downloads.

.. __count_6:

count
~~~~~

The index of the download to remove.

download-retry
--------------

Retry the first failed/[count]th download.

.. __count_7:

count
~~~~~

The index of the download to retry.

edit-command
------------

Syntax: :edit-command [*--run*]

Open an editor to modify the current command.

.. __optional_arguments_19:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-r*, \*--run*: Run the command if the editor exits successfully.

edit-url
--------

Syntax: :edit-url [*--bg*] [*--tab*] [*--window*] [*--private*]
[*--related*] ['url']

Navigate to a url formed in an external editor.

The editor which should be launched can be configured via the
``editor.command`` config option.

.. __positional_arguments_17:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'url': URL to edit; defaults to the current page url.

.. __optional_arguments_20:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-b*, \*--bg*: Open in a new background tab.

-  \*-t*, \*--tab*: Open in a new tab.

-  \*-w*, \*--window*: Open in a new window.

-  \*-p*, \*--private*: Open a new window in private browsing mode.

-  \*-r*, \*--related*: If opening a new tab, position the tab as
   related to the current one (like clicking on a link).

enter-mode
----------

Syntax: :enter-mode 'mode'

Enter a key mode.

.. __positional_arguments_18:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'mode': The mode to enter.

fake-key
--------

Syntax: :fake-key [*--global*] 'keystring'

Send a fake keypress or key string to the website or qutebrowser.

:fake-key xy - sends the keychain 'xy' :fake-key <Ctrl-x> - sends Ctrl-x
:fake-key <Escape> - sends the escape key

.. __positional_arguments_19:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'keystring': The keystring to send.

.. __optional_arguments_21:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-g*, \*--global*: If given, the keys are sent to the qutebrowser
   UI.

follow-selected
---------------

Syntax: :follow-selected [*--tab*]

Follow the selected text.

.. __optional_arguments_22:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-t*, \*--tab*: Load the selected link in a new tab.

forward
-------

Syntax: :forward [*--tab*] [*--bg*] [*--window*]

Go forward in the history of the current tab.

.. __optional_arguments_23:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-t*, \*--tab*: Go forward in a new tab.

-  \*-b*, \*--bg*: Go forward in a background tab.

-  \*-w*, \*--window*: Go forward in a new window.

.. __count_8:

count
~~~~~

How many pages to go forward.

fullscreen
----------

Syntax: :fullscreen [*--leave*]

Toggle fullscreen mode.

.. __optional_arguments_24:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-l*, \*--leave*: Only leave fullscreen if it was entered by the
   page.

greasemonkey-reload
-------------------

Syntax: :greasemonkey-reload [*--force*]

Re-read Greasemonkey scripts from disk.

The scripts are read from a 'greasemonkey' subdirectory in qutebrowser’s
data directory (see ``:version``).

.. __optional_arguments_25:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-f*, \*--force*: For any scripts that have required dependencies,
   re-download them.

help
----

Syntax: :help [*--tab*] [*--bg*] [*--window*] ['topic']

Show help about a command or setting.

.. __positional_arguments_20:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'topic': The topic to show help for.

   -  :*command* for commands.

   -  *section*.\ *option* for settings.

.. __optional_arguments_26:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-t*, \*--tab*: Open in a new tab.

-  \*-b*, \*--bg*: Open in a background tab.

-  \*-w*, \*--window*: Open in a new window.

hint
----

Syntax: :hint [*--mode\* 'mode'] [*--add-history*] [*--rapid*]
[*--first*] ['group'] ['target'] ['args' ['args' ...]]

Start hinting.

.. __positional_arguments_21:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'group': The element types to hint.

   -  ``all``: All clickable elements.

   -  ``links``: Only links.

   -  ``images``: Only images.

   -  ``inputs``: Only input fields.

      ::

         Custom groups can be added via the `hints.selectors` setting
         and also used here.

-  'target': What to do with the selected element.

   -  ``normal``: Open the link.

   -  ``current``: Open the link in the current tab.

   -  ``tab``: Open the link in a new tab (honoring the
      ``tabs.background_tabs`` setting).

   -  ``tab-fg``: Open the link in a new foreground tab.

   -  ``tab-bg``: Open the link in a new background tab.

   -  ``window``: Open the link in a new window.

   -  ``hover`` : Hover over the link.

   -  ``yank``: Yank the link to the clipboard.

   -  ``yank-primary``: Yank the link to the primary selection.

   -  ``run``: Run the argument as command.

   -  ``fill``: Fill the commandline with the command given as argument.

   -  ``download``: Download the link.

   -  ``userscript``: Call a userscript with ``$QUTE_URL`` set to the
      link.

   -  ``spawn``: Spawn a command.

-  'args': Arguments for spawn/userscript/run/fill.

   -  With ``spawn``: The executable and arguments to spawn.
      ``{hint-url}`` will get replaced by the selected URL.

   -  With ``userscript``: The userscript to execute. Either store the
      userscript in ``~/.local/share/qutebrowser/userscripts`` (or
      ``$XDG_DATA_HOME``), or use an absolute path.

   -  With ``fill``: The command to fill the statusbar with.
      ``{hint-url}`` will get replaced by the selected URL.

   -  With ``run``: Same as ``fill``.

.. __optional_arguments_27:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-m*, \*--mode*: The hinting mode to use.

   -  ``number``: Use numeric hints.

   -  ``letter``: Use the chars in the hints.chars setting.

   -  ``word``: Use hint words based on the html elements and the extra
      words.

-  \*-a*, \*--add-history*: Whether to add the spawned or yanked link to
   the browsing history.

-  \*-r*, \*--rapid*: Whether to do rapid hinting. With rapid hinting,
   the hint mode isn’t left after a hint is followed, so you can easily
   open multiple links. This is only possible with targets ``tab`` (with
   ``tabs.background_tabs=true``), ``tab-bg``, ``window``, ``run``,
   ``hover``, ``userscript`` and ``spawn``.

-  \*-f*, \*--first*: Click the first hinted element without prompting.

.. __note_6:

note
~~~~

-  This command does not split arguments after the last argument and
   handles quotes literally.

history
-------

Syntax: :history [*--tab*] [*--bg*] [*--window*]

Show browsing history.

.. __optional_arguments_28:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-t*, \*--tab*: Open in a new tab.

-  \*-b*, \*--bg*: Open in a background tab.

-  \*-w*, \*--window*: Open in a new window.

history-clear
-------------

Syntax: :history-clear [*--force*]

Clear all browsing history.

Note this only clears the global history (e.g.
``~/.local/share/qutebrowser/history`` on Linux) but not cookies, the
back/forward history of a tab, cache or other persistent data.

.. __optional_arguments_29:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-f*, \*--force*: Don’t ask for confirmation.

home
----

Open main startpage in current tab.

insert-text
-----------

Syntax: :insert-text 'text'

Insert text at cursor position.

.. __positional_arguments_22:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'text': The text to insert.

.. __note_7:

note
~~~~

-  This command does not split arguments after the last argument and
   handles quotes literally.

inspector
---------

Toggle the web inspector.

Note: Due a bug in Qt, the inspector will show incorrect request headers
in the network tab.

jseval
------

Syntax: :jseval [*--file*] [*--quiet*] [*--world\* 'world'] 'js-code'

Evaluate a JavaScript string.

.. __positional_arguments_23:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'js-code': The string/file to evaluate.

.. __optional_arguments_30:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-f*, \*--file*: Interpret js-code as a path to a file. If the path
   is relative, the file is searched in a js/ subdir in qutebrowser’s
   data dir, e.g. ``~/.local/share/qutebrowser/js``.

-  \*-q*, \*--quiet*: Don’t show resulting JS object.

-  \*-w*, \*--world*: Ignored on QtWebKit. On QtWebEngine, a world ID or
   name to run the snippet in.

.. __note_8:

note
~~~~

-  This command does not split arguments after the last argument and
   handles quotes literally.

-  With this command, ;; is interpreted literally instead of splitting
   off a second command.

jump-mark
---------

Syntax: :jump-mark 'key'

Jump to the mark named by ``key``.

.. __positional_arguments_24:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'key': mark identifier; capital indicates a global mark

later
-----

Syntax: :later 'ms' 'command'

Execute a command after some time.

.. __positional_arguments_25:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'ms': How many milliseconds to wait.

-  'command': The command to run, with optional args.

.. __note_9:

note
~~~~

-  This command does not split arguments after the last argument and
   handles quotes literally.

-  With this command, ;; is interpreted literally instead of splitting
   off a second command.

-  This command does not replace variables like \\{url\}.

message-error
-------------

Syntax: :message-error 'text'

Show an error message in the statusbar.

.. __positional_arguments_26:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'text': The text to show.

message-info
------------

Syntax: :message-info 'text'

Show an info message in the statusbar.

.. __positional_arguments_27:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'text': The text to show.

.. __count_9:

count
~~~~~

How many times to show the message

message-warning
---------------

Syntax: :message-warning 'text'

Show a warning message in the statusbar.

.. __positional_arguments_28:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'text': The text to show.

messages
--------

Syntax: :messages [*--plain*] [*--tab*] [*--bg*] [*--window*] ['level']

Show a log of past messages.

.. __positional_arguments_29:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'level': Include messages with ``level`` or higher severity. Valid
   values: vdebug, debug, info, warning, error, critical.

.. __optional_arguments_31:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-p*, \*--plain*: Whether to show plaintext (as opposed to html).

-  \*-t*, \*--tab*: Open in a new tab.

-  \*-b*, \*--bg*: Open in a background tab.

-  \*-w*, \*--window*: Open in a new window.

navigate
--------

Syntax: :navigate [*--tab*] [*--bg*] [*--window*] 'where'

Open typical prev/next links or navigate using the URL path.

This tries to automatically click on typical *Previous Page* or *Next
Page* links using some heuristics. Alternatively it can navigate by
changing the current URL.

.. __positional_arguments_30:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'where': What to open.

   -  ``prev``: Open a *previous* link.

   -  ``next``: Open a *next* link.

   -  ``up``: Go up a level in the current URL.

   -  ``increment``: Increment the last number in the URL. Uses the
      `url.incdec_segments <settings{outsuffix}#url.incdec_segments>`__
      config option.

   -  ``decrement``: Decrement the last number in the URL. Uses the
      `url.incdec_segments <settings{outsuffix}#url.incdec_segments>`__
      config option.

.. __optional_arguments_32:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-t*, \*--tab*: Open in a new tab.

-  \*-b*, \*--bg*: Open in a background tab.

-  \*-w*, \*--window*: Open in a new window.

.. __count_10:

count
~~~~~

For ``increment`` and ``decrement``, the number to change the URL by.
For ``up``, the number of levels to go up in the URL.

nop
---

Do nothing.

open
----

Syntax: :open [*--related*] [*--bg*] [*--tab*] [*--window*] [*--secure*]
[*--private*] ['url']

Open a URL in the current/[count]th tab.

If the URL contains newlines, each line gets opened in its own tab.

.. __positional_arguments_31:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'url': The URL to open.

.. __optional_arguments_33:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-r*, \*--related*: If opening a new tab, position the tab as
   related to the current one (like clicking on a link).

-  \*-b*, \*--bg*: Open in a new background tab.

-  \*-t*, \*--tab*: Open in a new tab.

-  \*-w*, \*--window*: Open in a new window.

-  \*-s*, \*--secure*: Force HTTPS.

-  \*-p*, \*--private*: Open a new window in private browsing mode.

.. __count_11:

count
~~~~~

The tab index to open the URL in.

.. __note_10:

note
~~~~

-  This command does not split arguments after the last argument and
   handles quotes literally.

open-editor
-----------

Open an external editor with the currently selected form field.

The editor which should be launched can be configured via the
``editor.command`` config option.

print
-----

Syntax: :print [*--preview*] [*--pdf\* 'file']

Print the current/[count]th tab.

.. __optional_arguments_34:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-p*, \*--preview*: Show preview instead of printing.

-  \*-f*, \*--pdf*: The file path to write the PDF to.

.. __count_12:

count
~~~~~

The tab index to print.

quickmark-add
-------------

Syntax: :quickmark-add 'url' 'name'

Add a new quickmark.

You can view all saved quickmarks on the `bookmarks
page <qute://bookmarks>`__.

.. __positional_arguments_32:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'url': The url to add as quickmark.

-  'name': The name for the new quickmark.

quickmark-del
-------------

Syntax: :quickmark-del ['name']

Delete a quickmark.

.. __positional_arguments_33:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'name': The name of the quickmark to delete. If not given, delete the
   quickmark for the current page (choosing one arbitrarily if there are
   more than one).

.. __note_11:

note
~~~~

-  This command does not split arguments after the last argument and
   handles quotes literally.

quickmark-load
--------------

Syntax: :quickmark-load [*--tab*] [*--bg*] [*--window*] 'name'

Load a quickmark.

.. __positional_arguments_34:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'name': The name of the quickmark to load.

.. __optional_arguments_35:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-t*, \*--tab*: Load the quickmark in a new tab.

-  \*-b*, \*--bg*: Load the quickmark in a new background tab.

-  \*-w*, \*--window*: Load the quickmark in a new window.

.. __note_12:

note
~~~~

-  This command does not split arguments after the last argument and
   handles quotes literally.

quickmark-save
--------------

Save the current page as a quickmark.

quit
----

Syntax: :quit [*--save*] ['session']

Quit qutebrowser.

.. __positional_arguments_35:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'session': The name of the session to save.

.. __optional_arguments_36:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-s*, \*--save*: When given, save the open windows even if
   auto_save.session is turned off.

record-macro
------------

Syntax: :record-macro ['register']

Start or stop recording a macro.

.. __positional_arguments_36:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'register': Which register to store the macro in.

reload
------

Syntax: :reload [*--force*]

Reload the current/[count]th tab.

.. __optional_arguments_37:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-f*, \*--force*: Bypass the page cache.

.. __count_13:

count
~~~~~

The tab index to reload.

repeat
------

Syntax: :repeat 'times' 'command'

Repeat a given command.

.. __positional_arguments_37:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'times': How many times to repeat.

-  'command': The command to run, with optional args.

.. __count_14:

count
~~~~~

Multiplies with 'times' when given.

.. __note_13:

note
~~~~

-  This command does not split arguments after the last argument and
   handles quotes literally.

-  With this command, ;; is interpreted literally instead of splitting
   off a second command.

-  This command does not replace variables like \\{url\}.

repeat-command
--------------

Repeat the last executed command.

.. __count_15:

count
~~~~~

Which count to pass the command.

report
------

Report a bug in qutebrowser.

restart
-------

Restart qutebrowser while keeping existing tabs open.

run-macro
---------

Syntax: :run-macro ['register']

Run a recorded macro.

.. __positional_arguments_38:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'register': Which macro to run.

.. __count_16:

count
~~~~~

How many times to run the macro.

run-with-count
--------------

Syntax: :run-with-count 'count-arg' 'command'

Run a command with the given count.

If run_with_count itself is run with a count, it multiplies count_arg.

.. __positional_arguments_39:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'count-arg': The count to pass to the command.

-  'command': The command to run, with optional args.

.. __count_17:

count
~~~~~

The count that run_with_count itself received.

.. __note_14:

note
~~~~

-  This command does not split arguments after the last argument and
   handles quotes literally.

-  With this command, ;; is interpreted literally instead of splitting
   off a second command.

-  This command does not replace variables like \\{url\}.

save
----

Syntax: :save ['what' ['what' ...]]

Save configs and state.

.. __positional_arguments_40:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'what': What to save (``config``/``key-config``/``cookies``/…​). If
   not given, everything is saved.

scroll
------

Syntax: :scroll 'direction'

Scroll the current tab in the given direction.

Note you can use ``:run-with-count`` to have a keybinding with a bigger
scroll increment.

.. __positional_arguments_41:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'direction': In which direction to scroll
   (up/down/left/right/top/bottom).

.. __count_18:

count
~~~~~

multiplier

scroll-page
-----------

Syntax: :scroll-page [*--top-navigate\* 'ACTION'] [*--bottom-navigate\*
'ACTION'] 'x' 'y'

Scroll the frame page-wise.

.. __positional_arguments_42:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'x': How many pages to scroll to the right.

-  'y': How many pages to scroll down.

.. __optional_arguments_38:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-t*, \*--top-navigate*: :navigate action (prev, decrement) to run
   when scrolling up at the top of the page.

-  \*-b*, \*--bottom-navigate*: :navigate action (next, increment) to
   run when scrolling down at the bottom of the page.

.. __count_19:

count
~~~~~

multiplier

scroll-px
---------

Syntax: :scroll-px 'dx' 'dy'

Scroll the current tab by 'count \* dx/dy' pixels.

.. __positional_arguments_43:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'dx': How much to scroll in x-direction.

-  'dy': How much to scroll in y-direction.

.. __count_20:

count
~~~~~

multiplier

scroll-to-anchor
----------------

Syntax: :scroll-to-anchor 'name'

Scroll to the given anchor in the document.

.. __positional_arguments_44:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'name': The anchor to scroll to.

scroll-to-perc
--------------

Syntax: :scroll-to-perc [*--horizontal*] ['perc']

Scroll to a specific percentage of the page.

The percentage can be given either as argument or as count. If no
percentage is given, the page is scrolled to the end.

.. __positional_arguments_45:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'perc': Percentage to scroll.

.. __optional_arguments_39:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-x*, \*--horizontal*: Scroll horizontally instead of vertically.

.. __count_21:

count
~~~~~

Percentage to scroll.

search
------

Syntax: :search [*--reverse*] ['text']

Search for a text on the current page. With no text, clear results.

.. __positional_arguments_46:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'text': The text to search for.

.. __optional_arguments_40:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-r*, \*--reverse*: Reverse search direction.

.. __note_15:

note
~~~~

-  This command does not split arguments after the last argument and
   handles quotes literally.

search-next
-----------

Continue the search to the ([count]th) next term.

.. __count_22:

count
~~~~~

How many elements to ignore.

search-prev
-----------

Continue the search to the ([count]th) previous term.

.. __count_23:

count
~~~~~

How many elements to ignore.

session-delete
--------------

Syntax: :session-delete [*--force*] 'name'

Delete a session.

.. __positional_arguments_47:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'name': The name of the session.

.. __optional_arguments_41:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-f*, \*--force*: Force deleting internal sessions (starting with an
   underline).

session-load
------------

Syntax: :session-load [*--clear*] [*--temp*] [*--force*] [*--delete*]
'name'

Load a session.

.. __positional_arguments_48:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'name': The name of the session.

.. __optional_arguments_42:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-c*, \*--clear*: Close all existing windows.

-  \*-t*, \*--temp*: Don’t set the current session for :session-save.

-  \*-f*, \*--force*: Force loading internal sessions (starting with an
   underline).

-  \*-d*, \*--delete*: Delete the saved session once it has loaded.

session-save
------------

Syntax: :session-save [*--current*] [*--quiet*] [*--force*]
[*--only-active-window*] [*--with-private*] ['name']

Save a session.

.. __positional_arguments_49:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'name': The name of the session. If not given, the session configured
   in session.default_name is saved.

.. __optional_arguments_43:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-c*, \*--current*: Save the current session instead of the default.

-  \*-q*, \*--quiet*: Don’t show confirmation message.

-  \*-f*, \*--force*: Force saving internal sessions (starting with an
   underline).

-  \*-o*, \*--only-active-window*: Saves only tabs of the currently
   active window.

-  \*-p*, \*--with-private*: Include private windows.

set
---

Syntax: :set [*--temp*] [*--print*] [*--pattern\* 'pattern'] ['option']
['value']

Set an option.

If the option name ends with '?' or no value is provided, the value of
the option is shown instead. Using :set without any arguments opens a
page where settings can be changed interactively.

.. __positional_arguments_50:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'option': The name of the option.

-  'value': The value to set.

.. __optional_arguments_44:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-t*, \*--temp*: Set value temporarily until qutebrowser is closed.

-  \*-p*, \*--print*: Print the value after setting.

-  \*-u*, \*--pattern*: The URL pattern to use.

set-cmd-text
------------

Syntax: :set-cmd-text [*--space*] [*--append*] [*--run-on-count*] 'text'

Preset the statusbar to some text.

.. __positional_arguments_51:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'text': The commandline to set.

.. __optional_arguments_45:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-s*, \*--space*: If given, a space is added to the end.

-  \*-a*, \*--append*: If given, the text is appended to the current
   text.

-  \*-r*, \*--run-on-count*: If given with a count, the command is run
   with the given count rather than setting the command text.

.. __count_24:

count
~~~~~

The count if given.

.. __note_16:

note
~~~~

-  This command does not split arguments after the last argument and
   handles quotes literally.

set-mark
--------

Syntax: :set-mark 'key'

Set a mark at the current scroll position in the current tab.

.. __positional_arguments_52:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'key': mark identifier; capital indicates a global mark

spawn
-----

Syntax: :spawn [*--userscript*] [*--verbose*] [*--output*] [*--detach*]
'cmdline'

Spawn a command in a shell.

.. __positional_arguments_53:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'cmdline': The commandline to execute.

.. __optional_arguments_46:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-u*, \*--userscript*: Run the command as a userscript. You can use
   an absolute path, or store the userscript in one of those locations:

   -  ``~/.local/share/qutebrowser/userscripts`` (or ``$XDG_DATA_HOME``)

   -  ``/usr/share/qutebrowser/userscripts``

-  \*-v*, \*--verbose*: Show notifications when the command
   started/exited.

-  \*-o*, \*--output*: Whether the output should be shown in a new tab.

-  \*-d*, \*--detach*: Whether the command should be detached from
   qutebrowser.

.. __count_25:

count
~~~~~

Given to userscripts as $QUTE_COUNT.

.. __note_17:

note
~~~~

-  This command does not split arguments after the last argument and
   handles quotes literally.

stop
----

Stop loading in the current/[count]th tab.

.. __count_26:

count
~~~~~

The tab index to stop.

tab-clone
---------

Syntax: :tab-clone [*--bg*] [*--window*]

Duplicate the current tab.

.. __optional_arguments_47:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-b*, \*--bg*: Open in a background tab.

-  \*-w*, \*--window*: Open in a new window.

tab-close
---------

Syntax: :tab-close [*--prev*] [*--next*] [*--opposite*] [*--force*]

Close the current/[count]th tab.

.. __optional_arguments_48:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-p*, \*--prev*: Force selecting the tab before the current tab.

-  \*-n*, \*--next*: Force selecting the tab after the current tab.

-  \*-o*, \*--opposite*: Force selecting the tab in the opposite
   direction of what’s configured in 'tabs.select_on_remove'.

-  \*-f*, \*--force*: Avoid confirmation for pinned tabs.

.. __count_27:

count
~~~~~

The tab index to close

tab-focus
---------

Syntax: :tab-focus [*--no-last*] ['index']

Select the tab given as argument/[count].

If neither count nor index are given, it behaves like tab-next. If both
are given, use count.

.. __positional_arguments_54:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'index': The tab index to focus, starting with 1. The special value
   ``last`` focuses the last focused tab (regardless of count). Negative
   indices count from the end, such that -1 is the last tab.

.. __optional_arguments_49:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-n*, \*--no-last*: Whether to avoid focusing last tab if already
   focused.

.. __count_28:

count
~~~~~

The tab index to focus, starting with 1.

tab-give
--------

Syntax: :tab-give [*--keep*] ['win-id']

Give the current tab to a new or existing window if win_id given.

If no win_id is given, the tab will get detached into a new window.

.. __positional_arguments_55:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'win-id': The window ID of the window to give the current tab to.

.. __optional_arguments_50:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-k*, \*--keep*: If given, keep the old tab around.

.. __count_29:

count
~~~~~

Overrides win_id (index starts at 1 for win_id=0).

tab-move
--------

Syntax: :tab-move ['index']

Move the current tab according to the argument and [count].

If neither is given, move it to the first position.

.. __positional_arguments_56:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'index': ``+`` or ``-`` to move relative to the current tab by count,
   or a default of 1 space. A tab index to move to that index.

.. __count_30:

count
~~~~~

If moving relatively: Offset. If moving absolutely: New position
(default: 0). This overrides the index argument, if given.

tab-mute
--------

Mute/Unmute the current/[count]th tab.

.. __count_31:

count
~~~~~

The tab index to mute or unmute

tab-next
--------

Switch to the next tab, or switch [count] tabs forward.

.. __count_32:

count
~~~~~

How many tabs to switch forward.

tab-only
--------

Syntax: :tab-only [*--prev*] [*--next*] [*--force*]

Close all tabs except for the current one.

.. __optional_arguments_51:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-p*, \*--prev*: Keep tabs before the current.

-  \*-n*, \*--next*: Keep tabs after the current.

-  \*-f*, \*--force*: Avoid confirmation for pinned tabs.

tab-pin
-------

Pin/Unpin the current/[count]th tab.

Pinning a tab shrinks it to the size of its title text. Attempting to
close a pinned tab will cause a confirmation, unless --force is passed.

.. __count_33:

count
~~~~~

The tab index to pin or unpin

tab-prev
--------

Switch to the previous tab, or switch [count] tabs back.

.. __count_34:

count
~~~~~

How many tabs to switch back.

tab-take
--------

Syntax: :tab-take [*--keep*] 'index'

Take a tab from another window.

.. __positional_arguments_57:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'index': The [win_id/]index of the tab to take. Or a substring in
   which case the closest match will be taken.

.. __optional_arguments_52:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-k*, \*--keep*: If given, keep the old tab around.

.. __note_18:

note
~~~~

-  This command does not split arguments after the last argument and
   handles quotes literally.

unbind
------

Syntax: :unbind [*--mode\* 'mode'] 'key'

Unbind a keychain.

.. __positional_arguments_58:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'key': The keychain to unbind. See the help for ``:bind`` for the
   correct syntax for keychains.

.. __optional_arguments_53:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-m*, \*--mode*: A mode to unbind the key in (default: ``normal``).
   See ``:help bindings.commands`` for the available modes.

undo
----

Re-open the last closed tab or tabs.

version
-------

Syntax: :version [*--paste*]

Show version information.

.. __optional_arguments_54:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-p*, \*--paste*: Paste to pastebin.

view-source
-----------

Syntax: :view-source [*--edit*] [*--pygments*]

Show the source of the current page in a new tab.

.. __optional_arguments_55:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-e*, \*--edit*: Edit the source in the editor instead of opening a
   tab.

-  \*-p*, \*--pygments*: Use pygments to generate the view. This is
   always the case for QtWebKit. For QtWebEngine it may display slightly
   different source. Some JavaScript processing may be applied.

window-only
-----------

Close all windows except for the current one.

yank
----

Syntax: :yank [*--sel*] [*--keep*] [*--quiet*] ['what']

Yank something to the clipboard or primary selection.

.. __positional_arguments_59:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'what': What to yank.

   -  ``url``: The current URL.

   -  ``pretty-url``: The URL in pretty decoded form.

   -  ``title``: The current page’s title.

   -  ``domain``: The current scheme, domain, and port number.

   -  ``selection``: The selection under the cursor.

   -  ``markdown``: Yank title and URL in markdown format.

.. __optional_arguments_56:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-s*, \*--sel*: Use the primary selection instead of the clipboard.

-  \*-k*, \*--keep*: Stay in visual mode after yanking the selection.

-  \*-q*, \*--quiet*: Don’t show an information message.

zoom
----

Syntax: :zoom [*--quiet*] ['level']

Set the zoom level for the current tab.

The zoom can be given as argument or as [count]. If neither is given,
the zoom is set to the default zoom. If both are given, use [count].

.. __positional_arguments_60:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'level': The zoom percentage to set.

.. __optional_arguments_57:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-q*, \*--quiet*: Don’t show a zoom level message.

.. __count_35:

count
~~~~~

The zoom percentage to set.

zoom-in
-------

Syntax: :zoom-in [*--quiet*]

Increase the zoom level for the current tab.

.. __optional_arguments_58:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-q*, \*--quiet*: Don’t show a zoom level message.

.. __count_36:

count
~~~~~

How many steps to zoom in.

zoom-out
--------

Syntax: :zoom-out [*--quiet*]

Decrease the zoom level for the current tab.

.. __optional_arguments_59:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-q*, \*--quiet*: Don’t show a zoom level message.

.. __count_37:

count
~~~~~

How many steps to zoom out.

.. __commands_not_usable_in_normal_mode:

Commands not usable in normal mode
==================================

.. table:: Quick reference

   +-----------------+----------------------------------------------------+
   | Command         | Description                                        |
   +=================+====================================================+
   | `command-accept | Execute the command currently in the commandline.  |
   |  <#command-acce |                                                    |
   | pt>`__          |                                                    |
   +-----------------+----------------------------------------------------+
   | `command-histor | Go forward in the commandline history.             |
   | y-next <#comman |                                                    |
   | d-history-next> |                                                    |
   | `__             |                                                    |
   +-----------------+----------------------------------------------------+
   | `command-histor | Go back in the commandline history.                |
   | y-prev <#comman |                                                    |
   | d-history-prev> |                                                    |
   | `__             |                                                    |
   +-----------------+----------------------------------------------------+
   | `completion-ite | Delete the current completion item.                |
   | m-del <#complet |                                                    |
   | ion-item-del>`_ |                                                    |
   | _               |                                                    |
   +-----------------+----------------------------------------------------+
   | `completion-ite | Shift the focus of the completion menu to another  |
   | m-focus <#compl | item.                                              |
   | etion-item-focu |                                                    |
   | s>`__           |                                                    |
   +-----------------+----------------------------------------------------+
   | `completion-ite | Yank the current completion item into the          |
   | m-yank <#comple | clipboard.                                         |
   | tion-item-yank> |                                                    |
   | `__             |                                                    |
   +-----------------+----------------------------------------------------+
   | `drop-selection | Drop selection and keep selection mode enabled.    |
   |  <#drop-selecti |                                                    |
   | on>`__          |                                                    |
   +-----------------+----------------------------------------------------+
   | `follow-hint <# | Follow a hint.                                     |
   | follow-hint>`__ |                                                    |
   +-----------------+----------------------------------------------------+
   | `leave-mode <#l | Leave the mode we’re currently in.                 |
   | eave-mode>`__   |                                                    |
   +-----------------+----------------------------------------------------+
   | `move-to-end-of | Move the cursor or selection to the end of the     |
   | -document <#mov | document.                                          |
   | e-to-end-of-doc |                                                    |
   | ument>`__       |                                                    |
   +-----------------+----------------------------------------------------+
   | `move-to-end-of | Move the cursor or selection to the end of line.   |
   | -line <#move-to |                                                    |
   | -end-of-line>`_ |                                                    |
   | _               |                                                    |
   +-----------------+----------------------------------------------------+
   | `move-to-end-of | Move the cursor or selection to the end of next    |
   | -next-block <#m | block.                                             |
   | ove-to-end-of-n |                                                    |
   | ext-block>`__   |                                                    |
   +-----------------+----------------------------------------------------+
   | `move-to-end-of | Move the cursor or selection to the end of         |
   | -prev-block <#m | previous block.                                    |
   | ove-to-end-of-p |                                                    |
   | rev-block>`__   |                                                    |
   +-----------------+----------------------------------------------------+
   | `move-to-end-of | Move the cursor or selection to the end of the     |
   | -word <#move-to | word.                                              |
   | -end-of-word>`_ |                                                    |
   | _               |                                                    |
   +-----------------+----------------------------------------------------+
   | `move-to-next-c | Move the cursor or selection to the next char.     |
   | har <#move-to-n |                                                    |
   | ext-char>`__    |                                                    |
   +-----------------+----------------------------------------------------+
   | `move-to-next-l | Move the cursor or selection to the next line.     |
   | ine <#move-to-n |                                                    |
   | ext-line>`__    |                                                    |
   +-----------------+----------------------------------------------------+
   | `move-to-next-w | Move the cursor or selection to the next word.     |
   | ord <#move-to-n |                                                    |
   | ext-word>`__    |                                                    |
   +-----------------+----------------------------------------------------+
   | `move-to-prev-c | Move the cursor or selection to the previous char. |
   | har <#move-to-p |                                                    |
   | rev-char>`__    |                                                    |
   +-----------------+----------------------------------------------------+
   | `move-to-prev-l | Move the cursor or selection to the prev line.     |
   | ine <#move-to-p |                                                    |
   | rev-line>`__    |                                                    |
   +-----------------+----------------------------------------------------+
   | `move-to-prev-w | Move the cursor or selection to the previous word. |
   | ord <#move-to-p |                                                    |
   | rev-word>`__    |                                                    |
   +-----------------+----------------------------------------------------+
   | `move-to-start- | Move the cursor or selection to the start of the   |
   | of-document <#m | document.                                          |
   | ove-to-start-of |                                                    |
   | -document>`__   |                                                    |
   +-----------------+----------------------------------------------------+
   | `move-to-start- | Move the cursor or selection to the start of the   |
   | of-line <#move- | line.                                              |
   | to-start-of-lin |                                                    |
   | e>`__           |                                                    |
   +-----------------+----------------------------------------------------+
   | `move-to-start- | Move the cursor or selection to the start of next  |
   | of-next-block < | block.                                             |
   | #move-to-start- |                                                    |
   | of-next-block>` |                                                    |
   | __              |                                                    |
   +-----------------+----------------------------------------------------+
   | `move-to-start- | Move the cursor or selection to the start of       |
   | of-prev-block < | previous block.                                    |
   | #move-to-start- |                                                    |
   | of-prev-block>` |                                                    |
   | __              |                                                    |
   +-----------------+----------------------------------------------------+
   | `prompt-accept  | Accept the current prompt.                         |
   | <#prompt-accept |                                                    |
   | >`__            |                                                    |
   +-----------------+----------------------------------------------------+
   | `prompt-item-fo | Shift the focus of the prompt file completion menu |
   | cus <#prompt-it | to another item.                                   |
   | em-focus>`__    |                                                    |
   +-----------------+----------------------------------------------------+
   | `prompt-open-do | Immediately open a download.                       |
   | wnload <#prompt |                                                    |
   | -open-download> |                                                    |
   | `__             |                                                    |
   +-----------------+----------------------------------------------------+
   | `prompt-yank <# | Yank URL to clipboard or primary selection.        |
   | prompt-yank>`__ |                                                    |
   +-----------------+----------------------------------------------------+
   | `rl-backward-ch | Move back a character.                             |
   | ar <#rl-backwar |                                                    |
   | d-char>`__      |                                                    |
   +-----------------+----------------------------------------------------+
   | `rl-backward-de | Delete the character before the cursor.            |
   | lete-char <#rl- |                                                    |
   | backward-delete |                                                    |
   | -char>`__       |                                                    |
   +-----------------+----------------------------------------------------+
   | `rl-backward-ki | Remove chars from the cursor to the beginning of   |
   | ll-word <#rl-ba | the word.                                          |
   | ckward-kill-wor |                                                    |
   | d>`__           |                                                    |
   +-----------------+----------------------------------------------------+
   | `rl-backward-wo | Move back to the start of the current or previous  |
   | rd <#rl-backwar | word.                                              |
   | d-word>`__      |                                                    |
   +-----------------+----------------------------------------------------+
   | `rl-beginning-o | Move to the start of the line.                     |
   | f-line <#rl-beg |                                                    |
   | inning-of-line> |                                                    |
   | `__             |                                                    |
   +-----------------+----------------------------------------------------+
   | `rl-delete-char | Delete the character after the cursor.             |
   |  <#rl-delete-ch |                                                    |
   | ar>`__          |                                                    |
   +-----------------+----------------------------------------------------+
   | `rl-end-of-line | Move to the end of the line.                       |
   |  <#rl-end-of-li |                                                    |
   | ne>`__          |                                                    |
   +-----------------+----------------------------------------------------+
   | `rl-forward-cha | Move forward a character.                          |
   | r <#rl-forward- |                                                    |
   | char>`__        |                                                    |
   +-----------------+----------------------------------------------------+
   | `rl-forward-wor | Move forward to the end of the next word.          |
   | d <#rl-forward- |                                                    |
   | word>`__        |                                                    |
   +-----------------+----------------------------------------------------+
   | `rl-kill-line < | Remove chars from the cursor to the end of the     |
   | #rl-kill-line>` | line.                                              |
   | __              |                                                    |
   +-----------------+----------------------------------------------------+
   | `rl-kill-word < | Remove chars from the cursor to the end of the     |
   | #rl-kill-word>` | current word.                                      |
   | __              |                                                    |
   +-----------------+----------------------------------------------------+
   | `rl-unix-filena | Remove chars from the cursor to the previous path  |
   | me-rubout <#rl- | separator.                                         |
   | unix-filename-r |                                                    |
   | ubout>`__       |                                                    |
   +-----------------+----------------------------------------------------+
   | `rl-unix-line-d | Remove chars backward from the cursor to the       |
   | iscard <#rl-uni | beginning of the line.                             |
   | x-line-discard> |                                                    |
   | `__             |                                                    |
   +-----------------+----------------------------------------------------+
   | `rl-unix-word-r | Remove chars from the cursor to the beginning of   |
   | ubout <#rl-unix | the word.                                          |
   | -word-rubout>`_ |                                                    |
   | _               |                                                    |
   +-----------------+----------------------------------------------------+
   | `rl-yank <#rl-y | Paste the most recently deleted text.              |
   | ank>`__         |                                                    |
   +-----------------+----------------------------------------------------+
   | `toggle-selecti | Toggle caret selection mode.                       |
   | on <#toggle-sel |                                                    |
   | ection>`__      |                                                    |
   +-----------------+----------------------------------------------------+

command-accept
--------------

Syntax: :command-accept [*--rapid*]

Execute the command currently in the commandline.

.. __optional_arguments_60:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-r*, \*--rapid*: Run the command without closing or clearing the
   command bar.

command-history-next
--------------------

Go forward in the commandline history.

command-history-prev
--------------------

Go back in the commandline history.

completion-item-del
-------------------

Delete the current completion item.

completion-item-focus
---------------------

Syntax: :completion-item-focus [*--history*] 'which'

Shift the focus of the completion menu to another item.

.. __positional_arguments_61:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'which': 'next', 'prev', 'next-category', or 'prev-category'.

.. __optional_arguments_61:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-H*, \*--history*: Navigate through command history if no text was
   typed.

completion-item-yank
--------------------

Syntax: :completion-item-yank [*--sel*]

Yank the current completion item into the clipboard.

.. __optional_arguments_62:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-s*, \*--sel*: Use the primary selection instead of the clipboard.

drop-selection
--------------

Drop selection and keep selection mode enabled.

follow-hint
-----------

Syntax: :follow-hint [*--select*] ['keystring']

Follow a hint.

.. __positional_arguments_62:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'keystring': The hint to follow.

.. __optional_arguments_63:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-s*, \*--select*: Only select the given hint, don’t necessarily
   follow it.

leave-mode
----------

Leave the mode we’re currently in.

move-to-end-of-document
-----------------------

Move the cursor or selection to the end of the document.

move-to-end-of-line
-------------------

Move the cursor or selection to the end of line.

move-to-end-of-next-block
-------------------------

Move the cursor or selection to the end of next block.

.. __count_38:

count
~~~~~

How many blocks to move.

move-to-end-of-prev-block
-------------------------

Move the cursor or selection to the end of previous block.

.. __count_39:

count
~~~~~

How many blocks to move.

move-to-end-of-word
-------------------

Move the cursor or selection to the end of the word.

.. __count_40:

count
~~~~~

How many words to move.

move-to-next-char
-----------------

Move the cursor or selection to the next char.

.. __count_41:

count
~~~~~

How many lines to move.

move-to-next-line
-----------------

Move the cursor or selection to the next line.

.. __count_42:

count
~~~~~

How many lines to move.

move-to-next-word
-----------------

Move the cursor or selection to the next word.

.. __count_43:

count
~~~~~

How many words to move.

move-to-prev-char
-----------------

Move the cursor or selection to the previous char.

.. __count_44:

count
~~~~~

How many chars to move.

move-to-prev-line
-----------------

Move the cursor or selection to the prev line.

.. __count_45:

count
~~~~~

How many lines to move.

move-to-prev-word
-----------------

Move the cursor or selection to the previous word.

.. __count_46:

count
~~~~~

How many words to move.

move-to-start-of-document
-------------------------

Move the cursor or selection to the start of the document.

move-to-start-of-line
---------------------

Move the cursor or selection to the start of the line.

move-to-start-of-next-block
---------------------------

Move the cursor or selection to the start of next block.

.. __count_47:

count
~~~~~

How many blocks to move.

move-to-start-of-prev-block
---------------------------

Move the cursor or selection to the start of previous block.

.. __count_48:

count
~~~~~

How many blocks to move.

prompt-accept
-------------

Syntax: :prompt-accept ['value']

Accept the current prompt.

.. __positional_arguments_63:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'value': If given, uses this value instead of the entered one. For
   boolean prompts, "yes"/"no" are accepted as value.

prompt-item-focus
-----------------

Syntax: :prompt-item-focus 'which'

Shift the focus of the prompt file completion menu to another item.

.. __positional_arguments_64:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'which': 'next', 'prev'

prompt-open-download
--------------------

Syntax: :prompt-open-download [*--pdfjs*] ['cmdline']

Immediately open a download.

If no specific command is given, this will use the system’s default
application to open the file.

.. __positional_arguments_65:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'cmdline': The command which should be used to open the file. A
   ``{}`` is expanded to the temporary file name. If no ``{}`` is
   present, the filename is automatically appended to the cmdline.

.. __optional_arguments_64:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-p*, \*--pdfjs*: Open the download via PDF.js.

.. __note_19:

note
~~~~

-  This command does not split arguments after the last argument and
   handles quotes literally.

prompt-yank
-----------

Syntax: :prompt-yank [*--sel*]

Yank URL to clipboard or primary selection.

.. __optional_arguments_65:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-s*, \*--sel*: Use the primary selection instead of the clipboard.

rl-backward-char
----------------

Move back a character.

This acts like readline’s backward-char.

rl-backward-delete-char
-----------------------

Delete the character before the cursor.

This acts like readline’s backward-delete-char.

rl-backward-kill-word
---------------------

Remove chars from the cursor to the beginning of the word.

This acts like readline’s backward-kill-word. Any non-alphanumeric
character is considered a word delimiter.

rl-backward-word
----------------

Move back to the start of the current or previous word.

This acts like readline’s backward-word.

rl-beginning-of-line
--------------------

Move to the start of the line.

This acts like readline’s beginning-of-line.

rl-delete-char
--------------

Delete the character after the cursor.

This acts like readline’s delete-char.

rl-end-of-line
--------------

Move to the end of the line.

This acts like readline’s end-of-line.

rl-forward-char
---------------

Move forward a character.

This acts like readline’s forward-char.

rl-forward-word
---------------

Move forward to the end of the next word.

This acts like readline’s forward-word.

rl-kill-line
------------

Remove chars from the cursor to the end of the line.

This acts like readline’s kill-line.

rl-kill-word
------------

Remove chars from the cursor to the end of the current word.

This acts like readline’s kill-word.

rl-unix-filename-rubout
-----------------------

Remove chars from the cursor to the previous path separator.

This acts like readline’s unix-filename-rubout.

rl-unix-line-discard
--------------------

Remove chars backward from the cursor to the beginning of the line.

This acts like readline’s unix-line-discard.

rl-unix-word-rubout
-------------------

Remove chars from the cursor to the beginning of the word.

This acts like readline’s unix-word-rubout. Whitespace is used as a word
delimiter.

rl-yank
-------

Paste the most recently deleted text.

This acts like readline’s yank.

toggle-selection
----------------

Toggle caret selection mode.

.. __debugging_commands:

Debugging commands
==================

These commands are mainly intended for debugging. They are hidden if
qutebrowser was started without the ``--debug``-flag.

.. table:: Quick reference

   +-----------------+----------------------------------------------------+
   | Command         | Description                                        |
   +=================+====================================================+
   | `debug-all-obje | Print a list of all objects to the debug log.      |
   | cts <#debug-all |                                                    |
   | -objects>`__    |                                                    |
   +-----------------+----------------------------------------------------+
   | `debug-cache-st | Print LRU cache stats.                             |
   | ats <#debug-cac |                                                    |
   | he-stats>`__    |                                                    |
   +-----------------+----------------------------------------------------+
   | `debug-clear-ss | Clear remembered SSL error answers.                |
   | l-errors <#debu |                                                    |
   | g-clear-ssl-err |                                                    |
   | ors>`__         |                                                    |
   +-----------------+----------------------------------------------------+
   | `debug-console  | Show the debugging console.                        |
   | <#debug-console |                                                    |
   | >`__            |                                                    |
   +-----------------+----------------------------------------------------+
   | `debug-crash <# | Crash for debugging purposes.                      |
   | debug-crash>`__ |                                                    |
   +-----------------+----------------------------------------------------+
   | `debug-dump-his | Dump the history to a file in the old pre-SQL      |
   | tory <#debug-du | format.                                            |
   | mp-history>`__  |                                                    |
   +-----------------+----------------------------------------------------+
   | `debug-dump-pag | Dump the current page’s content to a file.         |
   | e <#debug-dump- |                                                    |
   | page>`__        |                                                    |
   +-----------------+----------------------------------------------------+
   | `debug-log-capa | Change the number of log lines to be stored in     |
   | city <#debug-lo | RAM.                                               |
   | g-capacity>`__  |                                                    |
   +-----------------+----------------------------------------------------+
   | `debug-log-filt | Change the log filter for console logging.         |
   | er <#debug-log- |                                                    |
   | filter>`__      |                                                    |
   +-----------------+----------------------------------------------------+
   | `debug-log-leve | Change the log level for console logging.          |
   | l <#debug-log-l |                                                    |
   | evel>`__        |                                                    |
   +-----------------+----------------------------------------------------+
   | `debug-pyeval < | Evaluate a python string and display the results   |
   | #debug-pyeval>` | as a web page.                                     |
   | __              |                                                    |
   +-----------------+----------------------------------------------------+
   | `debug-set-fake | Put data into the fake clipboard and enable        |
   | -clipboard <#de | logging, used for tests.                           |
   | bug-set-fake-cl |                                                    |
   | ipboard>`__     |                                                    |
   +-----------------+----------------------------------------------------+
   | `debug-trace <# | Trace executed code via hunter.                    |
   | debug-trace>`__ |                                                    |
   +-----------------+----------------------------------------------------+
   | `debug-webactio | Execute a webaction.                               |
   | n <#debug-webac |                                                    |
   | tion>`__        |                                                    |
   +-----------------+----------------------------------------------------+

debug-all-objects
-----------------

Print a list of all objects to the debug log.

debug-cache-stats
-----------------

Print LRU cache stats.

debug-clear-ssl-errors
----------------------

Clear remembered SSL error answers.

debug-console
-------------

Show the debugging console.

debug-crash
-----------

Syntax: :debug-crash ['typ']

Crash for debugging purposes.

.. __positional_arguments_66:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'typ': either 'exception' or 'segfault'.

debug-dump-history
------------------

Syntax: :debug-dump-history 'dest'

Dump the history to a file in the old pre-SQL format.

.. __positional_arguments_67:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'dest': Where to write the file to.

debug-dump-page
---------------

Syntax: :debug-dump-page [*--plain*] 'dest'

Dump the current page’s content to a file.

.. __positional_arguments_68:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'dest': Where to write the file to.

.. __optional_arguments_66:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-p*, \*--plain*: Write plain text instead of HTML.

debug-log-capacity
------------------

Syntax: :debug-log-capacity 'capacity'

Change the number of log lines to be stored in RAM.

.. __positional_arguments_69:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'capacity': Number of lines for the log.

debug-log-filter
----------------

Syntax: :debug-log-filter 'filters'

Change the log filter for console logging.

.. __positional_arguments_70:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'filters': A comma separated list of logger names. Can also be "none"
   to clear any existing filters.

debug-log-level
---------------

Syntax: :debug-log-level 'level'

Change the log level for console logging.

.. __positional_arguments_71:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'level': The log level to set.

debug-pyeval
------------

Syntax: :debug-pyeval [*--file*] [*--quiet*] 's'

Evaluate a python string and display the results as a web page.

.. __positional_arguments_72:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  's': The string to evaluate.

.. __optional_arguments_67:

optional arguments
~~~~~~~~~~~~~~~~~~

-  \*-f*, \*--file*: Interpret s as a path to file, also implies
   --quiet.

-  \*-q*, \*--quiet*: Don’t show the output in a new tab.

.. __note_20:

note
~~~~

-  This command does not split arguments after the last argument and
   handles quotes literally.

-  With this command, ;; is interpreted literally instead of splitting
   off a second command.

debug-set-fake-clipboard
------------------------

Syntax: :debug-set-fake-clipboard ['s']

Put data into the fake clipboard and enable logging, used for tests.

.. __positional_arguments_73:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  's': The text to put into the fake clipboard, or unset to enable
   logging.

debug-trace
-----------

Syntax: :debug-trace ['expr']

Trace executed code via hunter.

.. __positional_arguments_74:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'expr': What to trace, passed to hunter.

.. __note_21:

note
~~~~

-  This command does not split arguments after the last argument and
   handles quotes literally.

-  With this command, ;; is interpreted literally instead of splitting
   off a second command.

debug-webaction
---------------

Syntax: :debug-webaction 'action'

Execute a webaction.

Available actions:
http://doc.qt.io/archives/qt-5.5/qwebpage.html#WebAction-enum (WebKit)
http://doc.qt.io/qt-5/qwebenginepage.html#WebAction-enum (WebEngine)

.. __positional_arguments_75:

positional arguments
~~~~~~~~~~~~~~~~~~~~

-  'action': The action to execute, e.g. MoveToNextChar.

.. __count_49:

count
~~~~~

How many times to repeat the action.
