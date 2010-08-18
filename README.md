# startproject #
Simplest Emacs project starter for all you framework guys — Django, Sproutcore, whatever — they have start commands. Really, the name „startproject“ is from Django‘s script.

It just runs framework's **start command** (or just a simple **tar** command extracting your project skeleton) and opens the newly created project with **dired**.

Requires a modern **Emacs** and **ido**. ido usually works out of the box, *at least* with GNU Emacs from Ubuntu repos and Aquamacs for Mac.

## How to use it ##
- require it in your init file (.emacs, config.el, or something else if you‘re very creative)

    `(add-to-list 'load-path "~/Dropbox/emacs/startproject")
    (require 'startproject)`
- bind „start-project“ to some key (I don‘t think you want to M-x all the time), like this:

    `(global-set-key (kbd "C-x p") 'start-project)`
- add your own starters if you need them, for example:

    `(puthash "html5" "tar -xvf ~/Dropbox/webdev/html5boilerplate.tar.gz" project-starters)`
- change the work directory — I‘m not sure if you want your projects in ~/. Don‘t forget the /:

    `(setq projects-dir "~/Dropbox/work/")`
- enjoy it! Also, follow me on Twitter: [english](http://twitter.com/myfreeweb_en) or [russian](http://twitter.com/myfreeweb).
