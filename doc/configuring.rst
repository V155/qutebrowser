   **Important**

   qutebrowser’s configuration system was completely rewritten in
   September 2017. This information is not applicable to older releases,
   and older information elsewhere might be outdated.

.. __qutebrowsers_config_files:

qutebrowser’s config files
==========================

qutebrowser releases before v1.0.0 had a ``qutebrowser.conf`` and
``keys.conf`` file. Those are not used anymore since that release - see
`"Migrating older configurations" <#migrating>`__ for information on how
to migrate to the new config.

When using ``:set`` and ``:bind``, changes are saved to an
``autoconfig.yml`` file automatically. If you don’t want to have a
config file which is curated by hand, you can simply use those - see
`"Configuring qutebrowser via the user interface" <#autoconfig>`__ for
details.

For more advanced configuration, you can write a ``config.py`` file -
see `"Configuring qutebrowser via config.py" <#configpy>`__. When a
``config.py`` exists, the ``autoconfig.yml`` file **is not read
anymore** by default. You need to `load it from
``config.py`` <#configpy-autoconfig>`__ if you want settings changed via
``:set``/``:bind`` to persist between restarts.

.. _autoconfig:

Configuring qutebrowser via the user interface
==============================================

The easy (but less flexible) way to configure qutebrowser is using its
user interface or command line. Changes you make this way are
immediately active (with the exception of a few settings, where this is
pointed out in the documentation) and are persisted in an
``autoconfig.yml`` file.

The ``autoconfig.yml`` file is located in the "config" folder listed on
the `qute://version <qute://version>`__ page. On macOS, the "auto
config" folder is used, which is different from where hand-written
config files are kept.

However, **do not** edit ``autoconfig.yml`` by hand. Instead, see the
next section.

If you want to customize many settings, you can open the
`qute://settings <qute://settings>`__ page by running ``:set`` without
any arguments, where all settings are listed and customizable.

Using the ```:set`` <commands.xml#set>`__ command and command
completion, you can quickly set settings interactively, for example
``:set tabs.position left``.

Some settings are also customizable for a given `URL
pattern <https://developer.chrome.com/apps/match_patterns>`__ by doing
e.g. ``:set --pattern=*://example.com/ content.images false``.

To get more help about a setting, use e.g. ``:help tabs.position``.

To bind and unbind keys, you can use the
```:bind`` <commands.xml#bind>`__ and
```:unbind`` <commands.xml#unbind>`__ commands:

-  Binding the key chain ``,v`` to the ``:spawn mpv {url}`` command:
   ``:bind ,v spawn mpv {url}``

-  Unbinding the same key chain: ``:unbind ,v``

Key chains starting with a comma are ideal for custom bindings, as the
comma key will never be used in a default keybinding.

See the help pages linked above (or ``:help :bind``, ``:help :unbind``)
for more information.

Other useful commands for config manipulation are
```:config-unset`` <commands.xml#config-unset>`__ to reset a value to
its default, ```:config-clear`` <commands.xml#config-clear>`__ to reset
the entire configuration, and
```:config-cycle`` <commands.xml#config-cycle>`__ to cycle a setting
between different values.

.. _configpy:

Configuring qutebrowser via config.py
=====================================

For more powerful configuration possibilities, you can create a
``config.py`` file. Since it’s a Python file, you have much more
flexibility for configuration. Note that qutebrowser will never touch
this file - this means you’ll be responsible for updating it when
upgrading to a newer qutebrowser version.

You can run ``:config-edit`` inside qutebrowser to open the file in your
editor, ``:config-source`` to reload the file (``:config-edit`` does
this automatically), or ``:config-write-py --defaults`` to write a
template file to work with.

The file should be located in the "config" location listed on
`qute://version <qute://version>`__, which is typically
``~/.config/qutebrowser/config.py`` on Linux,
``~/.qutebrowser/config.py`` on macOS, and
``%APPDATA%/qutebrowser/config.py`` on Windows.

Two global objects are pre-defined when running ``config.py``: ``c`` and
``config``.

.. __changing_settings:

Changing settings
-----------------

While you can set settings using the ``config.set()`` method (which is
explained in the next section), it’s easier to use the ``c`` shorthand
object to easily set settings like this:

**config.py:.**

.. code:: python

   c.tabs.position = "left"
   c.completion.shrink = True

Note that qutebrowser does some Python magic so it’s able to warn you
about mistyped config settings. As an example, if you do
``c.tabs.possition = "left"``, you’ll get an error when starting.

See the `settings help page <settings.xml>`__ for all available
settings. The accepted values depend on the type of the option. Commonly
used are:

-  Strings: ``c.tabs.position = "left"``

-  Booleans: ``c.completion.shrink = True``

-  Integers: ``c.messages.timeout = 5000``

-  Dictionaries:

   -  ``c.headers.custom = {'X-Hello': 'World', 'X-Awesome': 'yes'}`` to
      override any other values in the dictionary.

   -  ``c.aliases['foo'] = 'message-info foo'`` to add a single value.

-  Lists:

   -  ``c.url.start_pages = ["https://www.qutebrowser.org/"]`` to
      override any previous elements.

   -  ``c.url.start_pages.append("https://www.python.org/")`` to add a
      new value.

Any other config types (e.g. a color) are specified as a string. The
only exception is the ``Regex`` type, which can take either a string
(with an ``r`` prefix to preserve backslashes) or a Python regex object:

-  ``c.hints.next_regexes.append(r'\bvor\b')``

-  ``c.hints.prev_regexes.append(re.compile(r'\bzurück\b'))``

If you want to read a setting, you can use the ``c`` object to do so as
well: ``c.colors.tabs.even.bg = c.colors.tabs.odd.bg``.

.. __using_strings_for_setting_names:

Using strings for setting names
-------------------------------

If you want to set settings based on their name as a string, use the
``config.set`` method:

**config.py:.**

.. code:: python

   # Equivalent to:
   # c.content.javascript.enabled = False
   config.set('content.javascript.enabled', False)

To read a setting, use the ``config.get`` method:

.. code:: python

   # Equivalent to:
   # color = c.colors.completion.fg
   color = config.get('colors.completion.fg')

.. __per_domain_settings:

Per-domain settings
-------------------

Using ``config.set``, some settings are also customizable for a given
`URL pattern <https://developer.chrome.com/apps/match_patterns>`__:

.. code:: python

   config.set('content.images', False, '*://example.com/')

Alternatively, you can use ``with config.pattern(...) as p:`` to get a
shortcut similar to ``c.`` which is scoped to the given domain:

.. code:: python

   with config.pattern('*://example.com/') as p:
       p.content.images = False

.. __binding_keys:

Binding keys
------------

While it’s possible to change the ``bindings.commands`` setting to bind
keys, it’s preferred to use the ``config.bind`` command. Doing so
ensures the commands are valid and normalizes different expressions
which map to the same key.

For details on how to specify keys and the available modes, see the
`documentation <settings.xml#bindings.commands>`__ for the
``bindings.commands`` setting.

To bind a key:

**config.py:.**

.. code:: python

   config.bind('<Ctrl-v>', 'spawn mpv {url}')

To bind a key in a mode other than ``'normal'``, add a ``mode``
argument:

.. code:: python

   config.bind('<Ctrl-y>', 'prompt-yes', mode='prompt')

To unbind a key (either a key which has been bound before, or a default
binding):

.. code:: python

   config.unbind('<Ctrl-v>', mode='normal')

To bind keys without modifiers, specify a key chain to bind as a string.
Key chains starting with a comma are ideal for custom bindings, as the
comma key will never be used in a default keybinding.

.. code:: python

   config.bind(',v', 'spawn mpv {url}')

To suppress loading of any default keybindings, you can set
``c.bindings.default = {}``.

.. _configpy-autoconfig:

Loading ``autoconfig.yml``
--------------------------

All customization done via the UI (``:set``, ``:bind`` and ``:unbind``)
is stored in the ``autoconfig.yml`` file. When a ``config.py`` file
exists, ``autoconfig.yml`` is not loaded automatically. To load
``autoconfig.yml`` automatically, add the following snippet to
``config.py``:

.. code:: python

   config.load_autoconfig()

You can configure which file overrides the other by the location of the
above code snippet. Place the snippet at the top to allow ``config.py``
to override ``autoconfig.yml``. Place the snippet at the bottom for the
opposite effect.

.. __importing_other_modules:

Importing other modules
-----------------------

You can import any module from the `Python standard
library <https://docs.python.org/3/library/index.html>`__ (e.g.
``import os.path``), as well as any module installed in the environment
qutebrowser is run with.

If you have an ``utils.py`` file in your qutebrowser config folder, you
can import that via ``import utils`` as well.

While it’s in some cases possible to import code from the qutebrowser
installation, doing so is unsupported and discouraged.

To read config data from a different file with ``c`` and ``config``
available, you can use ``config.source('otherfile.py')`` in your
``config.py``.

.. __getting_the_config_directory:

Getting the config directory
----------------------------

If you need to get the qutebrowser config directory, you can do so by
reading ``config.configdir``. Similarly, you can get the qutebrowser
data directory via ``config.datadir``.

This gives you a ```pathlib.Path``
object <https://docs.python.org/3/library/pathlib.html>`__, on which you
can use ``/`` to add more directory parts, or ``str(...)`` to get a
string:

**config.py:.**

.. code:: python

   print(str(config.configdir / 'config.py'))

.. __handling_errors:

Handling errors
---------------

If there are errors in your ``config.py``, qutebrowser will try to apply
as much of it as possible, and show an error dialog before starting.

qutebrowser tries to display errors which are easy to understand even
for people who are not used to writing Python. If you see a config error
which you find confusing or you think qutebrowser could handle better,
please `open an
issue <https://github.com/qutebrowser/qutebrowser/issues>`__!

.. __recipes:

Recipes
-------

.. __reading_a_yaml_file:

Reading a YAML file
~~~~~~~~~~~~~~~~~~~

To read a YAML config like this:

**config.yml:.**

::

   tabs.position: left
   tabs.show: switching

You can use:

**config.py:.**

.. code:: python

   import yaml

   with (config.configdir / 'config.yml').open() as f:
       yaml_data = yaml.load(f)

   for k, v in yaml_data.items():
       config.set(k, v)

.. __reading_a_nested_yaml_file:

Reading a nested YAML file
~~~~~~~~~~~~~~~~~~~~~~~~~~

To read a YAML file with nested values like this:

**colors.yml:.**

::

   colors:
     statusbar:
       normal:
         bg: lime
         fg: black
       url:
         fg: red

You can use:

**config.py:.**

.. code:: python

   import yaml

   with (config.configdir / 'colors.yml').open() as f:
       yaml_data = yaml.load(f)

   def dict_attrs(obj, path=''):
       if isinstance(obj, dict):
           for k, v in obj.items():
               yield from dict_attrs(v, '{}.{}'.format(path, k) if path else k)
       else:
           yield path, obj

   for k, v in dict_attrs(yaml_data):
       config.set(k, v)

Note that this won’t work for values which are dictionaries.

.. __binding_chained_commands:

Binding chained commands
~~~~~~~~~~~~~~~~~~~~~~~~

If you have a lot of chained commands you want to bind, you can write a
helper to do so:

.. code:: python

   def bind_chained(key, *commands):
       config.bind(key, ' ;; '.join(commands))

   bind_chained('<Escape>', 'clear-keychain', 'search')

.. __reading_colors_from_xresources:

Reading colors from Xresources
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can use something like this to read colors from an ``~/.Xresources``
file:

.. code:: python

   import subprocess

   def read_xresources(prefix):
       props = {}
       x = subprocess.run(['xrdb', '-query'], stdout=subprocess.PIPE)
       lines = x.stdout.decode().split('\n')
       for line in filter(lambda l : l.startswith(prefix), lines):
           prop, _, value = line.partition(':\t')
           props[prop] = value
       return props

   xresources = read_xresources('*')
   c.colors.statusbar.normal.bg = xresources['*.background']

.. __pre_built_colorschemes:

Pre-built colorschemes
~~~~~~~~~~~~~~~~~~~~~~

-  A collection of `base16 <https://github.com/chriskempson/base16>`__
   color-schemes can be found in
   `base16-qutebrowser <https://github.com/theova/base16-qutebrowser>`__
   and used with
   `base16-manager <https://github.com/AuditeMarlow/base16-manager>`__.

-  Two implementations of the
   `Nord <https://github.com/arcticicestudio/nord>`__ colorscheme for
   qutebrowser exist:
   `Linuus <https://github.com/Linuus/nord-qutebrowser>`__,
   `KnownAsDon <https://github.com/KnownAsDon/QuteBrowser-Nord-Theme>`__

-  `Dracula <https://github.com/evannagle/qutebrowser-dracula-theme>`__

.. __avoiding_flake8_errors:

Avoiding flake8 errors
~~~~~~~~~~~~~~~~~~~~~~

If you use an editor with flake8 and pylint integration, it may have
some complaints about invalid names, undefined variables, or missing
docstrings. You can silence those with:

.. code:: python

   # pylint: disable=C0111
   c = c  # noqa: F821 pylint: disable=E0602,C0103
   config = config  # noqa: F821 pylint: disable=E0602,C0103

For type annotation support (note that those imports aren’t guaranteed
to be stable across qutebrowser versions):

.. code:: python

   # pylint: disable=C0111
   from qutebrowser.config.configfiles import ConfigAPI  # noqa: F401
   from qutebrowser.config.config import ConfigContainer  # noqa: F401
   config = config  # type: ConfigAPI # noqa: F821 pylint: disable=E0602,C0103
   c = c  # type: ConfigContainer # noqa: F821 pylint: disable=E0602,C0103

.. __emacs_like_config:

emacs-like config
~~~~~~~~~~~~~~~~~

Various emacs/conkeror-like keybinding configs exist:

-  `jgkamat <https://gitlab.com/jgkamat/qutemacs/blob/master/qutemacs.py>`__

-  `Kaligule <https://gitlab.com/Kaligule/qutebrowser-emacs-config/blob/master/config.py>`__

-  `nm0i <http://me0w.net/pit/1540882719>`__

It’s also mostly possible to get rid of modal keybindings by setting
``input.insert_mode.auto_enter`` to ``false``, and
``input.forward_unbound_keys`` to ``all``.

.. _migrating:

Migrating older configurations
==============================

qutebrowser does no automatic migration for the new configuration.
However, there’s a special `configdiff <qute://configdiff/old>`__ page
(``qute://configdiff/old``) in qutebrowser, which will show you the
changes you did in your old configuration, compared to the old defaults.

Other changes in default settings:

-  In v1.1.x and newer, ``<Up>`` and ``<Down>`` navigate through command
   history if no text was entered yet. With v1.0.x, they always navigate
   through command history instead of selecting completion items. Use
   ``<Tab>``/``<Shift-Tab>`` to cycle through the completion instead.
   You can get back the old behavior by doing:

   ::

      :bind -m command <Up> completion-item-focus prev
      :bind -m command <Down> completion-item-focus next

   or always navigate through command history with

   ::

      :bind -m command <Up> command-history-prev
      :bind -m command <Down> command-history-next

-  The default for ``completion.web_history.max_items`` is now set to
   ``-1``, showing an unlimited number of items in the completion for
   ``:open`` as the new sqlite-based completion is much faster. If the
   ``:open`` completion is too slow on your machine, set an appropriate
   limit again.
