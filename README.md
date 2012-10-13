# startproject #
Simplest Emacs project starter for all you framework people — Django, Sproutcore, whatever — they have start commands. Really, the name „startproject“ is from Django‘s script :-)

It just runs framework‘s **start command** (or just a simple **tar** command extracting your project skeleton... or a **mkdir** if you‘re not a framework person) and opens the newly created project with **dired**. Also it can initialize version control (bzr/hg/git) and open **vc-dir**.

Requires a modern **Emacs** and **ido**. ido usually works out of the box, *at least* with GNU Emacs from Ubuntu repos and Aquamacs for Mac.

## How to use it ##
- require it in your init file (.emacs, config.el, or something else if you‘re very creative)

    `(add-to-list 'load-path "~/Dropbox/emacs/startproject")
    (require 'startproject)`
- bind „start-project“ to some key (I don‘t think you want to M-x all the time), like this:

    `(global-set-key (kbd "C-x p") 'start-project)`
- add your own starters if you need them, for example, [HTML5 Boilerplate](http://html5boilerplate.com):

    `(puthash "html5" "tar -xvf ~/Dropbox/webdev/html5-boilerplate-0.9.x.tar.gz" project-starters)`
- change the work directory — I‘m not sure if you want your projects in ~/. **Don‘t forget the slashes!**:

    `(setq projects-dir "~/Dropbox/work/")`
- enjoy it!

## FAQ ##
- Q: It says something about wrong paths... What the?

  A: You forgot slashes in the projects-dir.
- Q: Why I have to add a command for my favorite framework by hand? It‘s popular.

  A: Because I‘m too lazy to google these commands for all the mainstream frameworks. Feel free to open a pull request.
- Q: I don‘t need to open vc-dir! Can I turn it off?

  A: Of course! Just put it in your init file:
    `(setq sp-open-vc-dir nil)`

