   **Note**

   This page will only appear on the first start. To view it at a later
   time, use the ``:help`` command.

.. __basic_keybindings_to_get_you_started:

Basic keybindings to get you started
====================================

-  Use the arrow keys or ``hjkl`` to move around a webpage (vim-like
   syntax is used in quite a few places)

-  To go to a new webpage, press ``o``, then type a url, then press
   Enter (Use ``O`` to open the url in a new tab, ``go`` to edit the
   current URL)

-  If what you’ve typed isn’t a url, then a search engine will be used
   instead (DuckDuckGo, by default)

-  To switch between tabs, use ``J`` (next tab) and ``K`` (previous
   tab), or press ``<Alt-num>``, where ``num`` is the position of the
   tab to switch to

-  To close the current tab, press ``d`` (and press ``u`` to undo
   closing a tab)

-  Use ``H`` and ``L`` to go back and forth in the history

-  To click on something without using the mouse, press ``f`` to show
   the hints, then type the keys next to what you want to click on (if
   that sounds weird, then just try pressing ``f`` and see what happens)

-  Press ``:`` to show the commandline

-  To search in a page, press ``/``, type the phrase to search for, then
   press Enter. Use ``n`` and ``N`` to go back and forth through the
   matches, and press Esc to stop doing the search.

-  To close qutebrowser, press ``Alt-F4``, or ``:q``, or ``:wq`` to save
   the currently open tabs and quit (note that in the settings you can
   make qutebrowser always save the currently open tabs)

.. __what_to_do_now:

What to do now
==============

-  | View the `key binding
     cheatsheet <https://raw.githubusercontent.com/qutebrowser/qutebrowser/master/doc/img/cheatsheet-big.png>`__
     to make yourself familiar with the key bindings:
   | |qutebrowser key binding cheatsheet|

-  There’s also a `free training
   course <https://www.shortcutfoo.com/app/dojos/qutebrowser>`__ on
   shortcutfoo for the keybindings - note that you need to be in insert
   mode (i) for it to work.

-  Run ``:adblock-update`` to download adblock lists and activate
   adblocking.

-  If you just cloned the repository, you’ll need to run
   ``scripts/asciidoc2html.py`` to generate the documentation.

-  Go to the `settings page <qute://settings>`__ to set up qutebrowser
   the way you want it.

-  Subscribe to `the
   mailinglist <https://lists.schokokeks.org/mailman/listinfo.cgi/qutebrowser>`__
   or `the announce-only
   mailinglist <https://lists.schokokeks.org/mailman/listinfo.cgi/qutebrowser-announce>`__.

-  Let me know what features you are missing or things that need (even
   small!) improvements.

.. __getting_help:

Getting help
============

If you get stuck, you can get help in multiple ways:

-  The ``:help`` command inside qutebrowser shows the built-in
   documentation. Additionally, each command can be started with a
   ``--help`` flag to show its help.

-  IRC channel:
   ```#qutebrowser`` <irc://irc.freenode.org/#qutebrowser>`__ on
   `Freenode <http://freenode.net/>`__
   (`webchat <https://webchat.freenode.net/?channels=#qutebrowser>`__)

-  Mailinglist: qutebrowser@lists.qutebrowser.org (
   `subscribe <https://lists.schokokeks.org/mailman/listinfo.cgi/qutebrowser>`__)

.. __donating:

Donating
========

Working on qutebrowser is a very rewarding hobby, but like (nearly) all
hobbies it also costs some money. Namely I have to pay for the server
and domain, and do occasional hardware upgrades  [1]_.

If you want to give me a beer or a pizza back, I’m trying to make it as
easy as possible for you to do so. If some other way would be easier for
you, please get in touch!

-  PayPal: me@the-compiler.org

-  Bitcoin:
   `1PMzbcetAHfpxoXww8Bj5XqquHtVvMjJtE <bitcoin:1PMzbcetAHfpxoXww8Bj5XqquHtVvMjJtE>`__

.. [1]
   It turned out a 160 GB SSD is rather small - the VMs and custom Qt
   builds I use for testing/developing qutebrowser need about 100 GB of
   space

.. |qutebrowser key binding cheatsheet| image:: https://raw.githubusercontent.com/qutebrowser/qutebrowser/master/doc/img/cheatsheet-small.png

