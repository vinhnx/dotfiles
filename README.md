# dotfiles

My dotfiles. 

### Starting from scratch

If you haven't been tracking your configurations in a Git repository before, you can start using this technique easily with these lines:

```bash
$ git init --bare $HOME/.cfg
$ alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
$ config config --local status.showUntrackedFiles no
$ echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zshrc 
```

1. The first line creates a folder `~/.cfg` which is a **Git bare repository** that will track our files.
2. Then we create an `alias config` which we will use **instead of the regular git** when we want to interact with our configuration repository.
3. We set a flag `--local` to the repository - to hide files we are not explicitly tracking yet. This is so that when you type `config status` and other commands later, **files you are not interested in tracking will not show up as untracked.**
4. Also you can add the `alias` definition by hand to your `.zshrc` or use the the fourth line provided for convenience.

Managed by `git init --bare` repository technique.

Read more: https://www.atlassian.com/git/tutorials/dotfiles
