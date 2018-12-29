==========================
Frequently asked questions
==========================

:Author: The Compiler mail@qutebrowser.org
:Date:   2018-12-29

**Q:** What is qutebrowser based on?

**A:** qutebrowser uses `Python <https://www.python.org/>`__,
`Qt <https://www.qt.io/>`__ and
`PyQt <https://www.riverbankcomputing.com/software/pyqt/intro>`__.

The concept of it is largely inspired by
`dwb <https://bitbucket.org/portix/dwb/>`__ and
`Vimperator <http://www.vimperator.org/vimperator>`__. Many actions and
key bindings are similar to dwb.

**Q:** Why another browser?

**A:** It might be hard to believe, but I didn’t find any browser which
I was happy with, so I started to write my own. Also, I needed a project
to get into writing GUI applications with Python and
`Qt <https://www.qt.io/>`__/`PyQt <https://www.riverbankcomputing.com/software/pyqt/intro>`__.

Read the next few questions to find out why I was unhappy with existing
software.

**Q:** What’s wrong with
`dwb <https://bitbucket.org/portix/dwb/>`__/`vimprobable <https://sourceforge.net/projects/vimprobable/>`__/`luakit <https://mason-larobina.github.io/luakit/>`__/jumanji/…​
(projects based on WebKitGTK)?

**A:** Most of them are based on the
`WebKitGTK+ <https://webkitgtk.org/>`__
`WebKit1 <https://webkitgtk.org/reference/webkitgtk/stable/index.html>`__
API, which causes a lot of crashes. As the GTK API using WebKit1 is
`deprecated <https://lists.webkit.org/pipermail/webkit-gtk/2014-March/001821.html>`__,
these bugs are never going to be fixed.

When qutebrowser was created, the newer `WebKit2
API <https://webkitgtk.org/reference/webkit2gtk/stable/index.html>`__
lacked basic features like proxy support, and almost no projects have
started porting to WebKit2. In the meantime, this situation has improved
a bit, but there are still only a few projects which have some kind of
WebKit2 support (see the `list of
alternatives <https://github.com/qutebrowser/qutebrowser#similar-projects>`__).

qutebrowser uses `Qt <https://www.qt.io/>`__ and
`QtWebEngine <https://wiki.qt.io/QtWebEngine>`__ by default (and
supports `QtWebKit <https://wiki.qt.io/QtWebKit>`__ optionally).
QtWebEngine is based on Google’s
`Chromium <https://www.chromium.org/Home>`__. With an up-to-date Qt, it
has much more man-power behind it than WebKitGTK+ has, and thus supports
more modern web features - it’s also arguably more secure.

**Q:** What’s wrong with
`Firefox <https://www.mozilla.org/en-US/firefox/new/>`__ and
`Pentadactyl <http://bug.5digits.org/pentadactyl/>`__/`Vimperator <http://www.vimperator.org/vimperator>`__?

**A:** Firefox likes to break compatibility with addons on each upgrade,
gets slower and more bloated with every upgrade, and has some `horrible
ideas <https://blog.mozilla.org/advancingcontent/2014/02/11/publisher-transformation-with-users-at-the-center/>`__
lately.

Also, developing addons for it is a nightmare.

**Q:** What’s wrong with `Chromium <https://www.chromium.org/Home>`__
and `Vimium <https://vimium.github.io/>`__?

**A:** The Chrome plugin API doesn’t seem to allow much freedom for
plugin writers, which results in Vimium not really having all the
features you’d expect from a proper minimal, vim-like browser.

**Q:** Why Python?

**A:** I enjoy writing Python since 2011, which made it one of the
possible choices. I wanted to use `Qt <https://www.qt.io/>`__ because of
`QtWebKit <https://wiki.qt.io/QtWebKit>`__ so I didn’t have `many other
choices <https://wiki.qt.io/Category:LanguageBindings>`__. I don’t like
C++ and can’t write it very well, so that wasn’t an alternative.

**Q:** But isn’t Python too slow for a browser?

**A:** `No. <https://www.infoworld.com/d/application-development/van-rossum-python-not-too-slow-188715>`__
I believe efficiency while coding is a lot more important than
efficiency while running. Also, most of the heavy lifting of qutebrowser
is done by Qt and WebKit in C++, with the
`GIL <https://wiki.python.org/moin/GlobalInterpreterLock>`__ released.

**Q:** Is qutebrowser secure?

**A:** Most security issues are in the backend (which handles
networking, rendering, JavaScript, etc.) and not qutebrowser itself.

qutebrowser uses `QtWebEngine <https://wiki.qt.io/QtWebEngine>`__ by
default. QtWebEngine is based on Google’s
`Chromium <https://www.chromium.org/Home>`__. While Qt only updates to a
new Chromium release on every minor Qt release (all ~6 months), every
patch release backports security fixes from newer Chromium versions. In
other words: As long as you’re using an up-to-date Qt, you should be
recieving security updates on a regular basis, without qutebrowser
having to do anything. Chromium’s process isolation and
`sandboxing <https://chromium.googlesource.com/chromium/src/+/master/docs/design/sandbox.md>`__
features are also enabled as a second line of defense.

`QtWebKit <https://wiki.qt.io/QtWebKit>`__ is also supported as an
alternative backend, but hasn’t seen new releases `in a
while <https://github.com/annulen/webkit/releases>`__. It also doesn’t
have any process isolation or sandboxing. See
`#4039 <https://github.com/qutebrowser/qutebrowser/issues/4039>`__ for
more details.

Security issues in qutebrowser’s code happen very rarely (as per July
2018, there have been three security issues caused by qutebrowser in
over 4.5 years). Those were handled appropriately
(`example <http://seclists.org/oss-sec/2018/q3/29>`__) and fixed timely.
To report security bugs, please contact me directly at
mail@qutebrowser.org, GPG ID
`0x916eb0c8fd55a072 <https://www.the-compiler.org/pubkey.asc>`__.

**Q:** Is there an adblocker?

**A:** There is a host-based adblocker which takes /etc/hosts-like
lists. A "real" adblocker has a `big
impact <https://www.reddit.com/r/programming/comments/25j41u/adblock_pluss_effect_on_firefoxs_memory_usage/chhpomw>`__
on browsing speed and `RAM
usage <https://blog.mozilla.org/nnethercote/2014/05/14/adblock-pluss-effect-on-firefoxs-memory-usage/>`__,
so implementing support for AdBlockPlus-like lists is currently not a
priority.

**Q:** How can I get No-Script-like behavior?

**A:** To disable JavaScript by default:

::

   :set content.javascript.enabled false

The basic command for enabling JavaScript for the current host is
``tsh``. This will allow JavaScript execution for the current session.
Use ``S`` instead of ``s`` to make the exception permanent. With ``H``
instead of ``h``, subdomains are included. With ``u`` instead of ``h``,
only the current URL is whitelisted (not the whole host).

**Q:** How do I play Youtube videos with mpv?

**A:** You can easily add a key binding to play youtube videos inside a
real video player - optionally even with hinting for links:

::

   :bind m spawn mpv {url}
   :bind M hint links spawn mpv {hint-url}

Note that you might need an additional package (e.g.
`youtube-dl <https://www.archlinux.org/packages/community/any/youtube-dl/>`__
on Archlinux) to play web videos with mpv.

There is a very useful script for mpv, which emulates "unique
application" functionality. This way you can add links to the mpv
playlist instead of playing them all at once.

You can find the script here:
https://github.com/mpv-player/mpv/blob/master/TOOLS/umpv

It also works nicely with rapid hints:

::

   :bind m spawn umpv {url}
   :bind M hint links spawn umpv {hint-url}
   :bind ;M hint --rapid links spawn umpv {hint-url}

**Q:** How do I use qutebrowser with mutt?

**A:** For security reasons, local files without ``.html`` extensions
aren’t rendered as HTML, see `this Chromium
issue <https://bugs.chromium.org/p/chromium/issues/detail?id=777737>`__
for details. You can do this in your ``mailcap`` file to get a proper
extension:

::

       text/html; qutebrowser %s; nametemplate=%s.html

**Q:** What is the difference between bookmarks and quickmarks?

**A:** Bookmarks will always use the title of the website as their name,
but with quickmarks you can set your own title.

For example, if you bookmark multiple food recipe websites and use
``:open``, you have to type the title or address of the website.

When using quickmark, you can give them all names, like
``foodrecipes1``, ``foodrecipes2`` and so on. When you type
``:open foodrecipes``, you will see a list of all the food recipe sites,
without having to remember the exact website title or address.

**Q:** How do I use spell checking?

**A:** Configuring spell checking in qutebrowser depends on the backend
in use (see
`#700 <https://github.com/qutebrowser/qutebrowser/issues/700>`__ for a
more detailed discussion).

For QtWebKit:

1. Install
   `qtwebkit-plugins <https://github.com/QupZilla/qtwebkit-plugins>`__.

2. Note: with QtWebKit reloaded you may experience some issues. See
   `#10 <https://github.com/QupZilla/qtwebkit-plugins/issues/10>`__.

3. The dictionary to use is taken from the ``DICTIONARY`` environment
   variable. The default is ``en_US``. For example to use Dutch spell
   check set ``DICTIONARY`` to ``nl_NL``; you can’t use multiple
   dictionaries or change them at runtime at the moment. (also see the
   README file for ``qtwebkit-plugins``).

4. Remember to install the hunspell dictionaries if you don’t have them
   already (most distros should have packages for this).

For QtWebEngine:

1. Make sure your versions of PyQt and Qt are 5.8 or higher.

2. Use ``dictcli.py`` script to install dictionaries. Run the script
   with ``-h`` for the parameter description.

3. Set ``spellcheck.languages`` to the desired list of languages, e.g.:
   ``:set spellcheck.languages "['en-US', 'pl-PL']"``

**Q:** How do I use Tor with qutebrowser?

**A:** Start tor on your machine, and do
``:set content.proxy socks://localhost:9050/`` in qutebrowser. Note this
won’t give you the same amount of fingerprinting protection that the Tor
Browser does, but it’s useful to be able to access ``.onion`` sites.

**Q:** Why does J move to the next (right) tab, and K to the previous
(left) one?

**A:** One reason is because `dwb <https://bitbucket.org/portix/dwb>`__
did it that way, and qutebrowser’s keybindings are designed to be
compatible with dwb’s. The rationale behind it is that J is "down" in
vim, and K is "up", which corresponds nicely to "next"/"previous". It
also makes much more sense with vertical tabs (e.g.
``:set tabs.position left``).

**Q:** What’s the difference between insert and passthrough mode?

**A:** They are quite similar, but insert mode has some bindings (like
``Ctrl-e`` to open an editor) while passthrough mode only has escape
bound. It might also be useful to rebind escape to something else in
passthrough mode only, to be able to send an escape keypress to the
website.

**Q:** Why does it take longer to open a URL in qutebrowser than in
chromium?

**A:** When opening a URL in an existing instance, the normal
qutebrowser Python script is started and a few PyQt libraries need to be
loaded until it is detected that there is an instance running to which
the URL is then passed. This takes some time. One workaround is to use
this
`script <https://github.com/qutebrowser/qutebrowser/blob/master/scripts/open_url_in_instance.sh>`__
and place it in your $PATH with the name "qutebrowser". This script
passes the URL via an unix socket to qutebrowser (if its running
already) using socat which is much faster and starts a new qutebrowser
if it is not running already. Also check if you want to use webengine as
backend in line 17 and change it to your needs.

**Q:** How do I make qutebrowser use greasemonkey scripts?

**A:** There is currently no UI elements to handle managing greasemonkey
scripts. All management of what scripts are installed or disabled is
done in the filesystem by you. qutebrowser reads all files that have an
extension of ``.js`` from the ``<data>/greasemonkey/`` folder and
attempts to load them. Where ``<data>`` is the qutebrowser data
directory shown in the ``Paths`` section of the page displayed by
``:version``. If you want to disable a script just rename it, for
example, to have ``.disabled`` on the end, after the ``.js`` extension.
To reload scripts from that directory run the command
``:greasemonkey-reload``.

Troubleshooting: to check that your script is being loaded when
``:greasemonkey-reload`` runs you can start qutebrowser with the
arguments ``--debug --logfilter greasemonkey,js`` and check the messages
on the program’s standard output for errors parsing or loading your
script. You may also see javascript errors if your script is expecting
an environment that we fail to provide.

Note that there are some missing features which you may run into:

1. Some scripts expect ``GM_xmlhttpRequest`` to ignore Cross Origin
   Resource Sharing restrictions, this is currently not supported, so
   scripts making requests to third party sites will often fail to
   function correctly.

2. If your backend is a QtWebEngine version 5.8, 5.9 or 5.10 then
   regular expressions are not supported in ``@include`` or ``@exclude``
   rules. If your script uses them you can re-write them to use glob
   expressions or convert them to ``@match`` rules. See `the
   wiki <https://wiki.greasespot.net/Metadata_Block>`__ for more info.

3. Any greasemonkey API function to do with adding UI elements is not
   currently supported. That means context menu extentensions and
   background pages.

**Q:** How do I change the ``WM_CLASS`` used by qutebrowser windows?

**A:** Qt only supports setting ``WM_CLASS`` globally, which you can do
by starting with ``--qt-arg name foo``. Note that all windows are part
of the same qutebrowser instance (unless you use ``--temp-basedir`` or
``--basedir``), so they all will share the same ``WM_CLASS``.

.. __troubleshooting:

Troubleshooting
===============

Unable to view flash content.
   If you have flash installed for on your system, it’s necessary to
   enable plugins to use the flash plugin. Using the command
   ``:set content.plugins true`` in qutebrowser will enable plugins.
   Packages for flash should be provided for your platform or it can be
   obtained from `Adobe <https://get.adobe.com/flashplayer/>`__.

Experiencing freezing on sites like duckduckgo and youtube.
   This issue could be caused by stale plugin files installed by
   ``mozplugger`` if mozplugger was subsequently removed. Try exiting
   qutebrowser and removing ``~/.mozilla/plugins/mozplugger*.so``. See
   `Issue
   #357 <https://github.com/qutebrowser/qutebrowser/issues/357>`__ for
   more details.

When using QtWebEngine, qutebrowser reports "Render Process Crashed" and the console prints a traceback on Gentoo Linux or another Source-Based Distro
   | As stated in `GCC’s
     Website <https://gcc.gnu.org/gcc-6/changes.html>`__ GCC 6 has
     introduced some optimizations that could break non-conforming
     codebases, like QtWebEngine.
   | As a workaround, you can disable the nullpointer check optimization
     by adding the -fno-delete-null-pointer-checks flag while compiling.
   | On gentoo, you just need to add it into your make.conf, like this:

   ::

      CFLAGS="... -fno-delete-null-pointer-checks"
      CXXFLAGS="... -fno-delete-null-pointer-checks"

   | And then re-emerging qtwebengine with:

   ::

      emerge -1 qtwebengine

Unable to view DRM content (Netflix, Spotify, etc.).
   You will need to install ``widevine`` and set ``qt.args`` to point to
   it. Qt 5.9 currently only supports widevine up to Chrome version 61.

   On Arch, simply install ``qt5-webengine-widevine`` from the AUR and
   run:

   ::

      :set qt.args '["ppapi-widevine-path=/usr/lib/qt/plugins/ppapi/libwidevinecdmadapter.so"]'
      :restart

   For other distributions, download the chromium tarball and
   widevine-cdm zip from `the AUR
   page <https://aur.archlinux.org/packages/qt5-webengine-widevine/>`__,
   extract ``libwidevinecdmadapter.so`` and ``libwidevinecdm.so`` files,
   respectively, and move them to the ``ppapi`` plugin directory in your
   Qt library directory (create it if it does not exist).

   Lastly, set your ``qt.args`` to point to that directory and restart
   qutebrowser:

   ::

      :set qt.args '["ppapi-widevine-path=/usr/lib64/qt5/plugins/ppapi/libwidevinecdmadapter.so"]'
      :restart

Unable to use ``spawn`` on MacOS.
   When running qutebrowser from the prebuilt binary
   (``qutebrowser.app``) it **will not** read any files that would alter
   your ``$PATH`` (e.g. ``.profile``, ``.bashrc``, etc). This is not a
   bug, just that ``.profile`` is not propogated to GUI applications in
   MacOS.

   See `Issue
   #4273 <https://github.com/qutebrowser/qutebrowser/issues/4273>`__ for
   details and potential workarounds.

My issue is not listed.
   If you experience any segfaults or crashes, you can report the issue
   in `the issue
   tracker <https://github.com/qutebrowser/qutebrowser/issues>`__ or
   using the ``:report`` command. If you are reporting a segfault, make
   sure you read the `guide <stacktrace.xml>`__ on how to report them
   with all needed information.
