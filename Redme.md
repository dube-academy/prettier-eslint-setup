# Set up ESLint & Prettier with 1 command

These steps will create a command that you can easily use in new projects to set up Prettier & ESLint in seconds.

1. Download and place `.eslintrc`, `.prettierrc` and `setup-lint.sh` in a folder (I personally like to use `~/.scripts`).

2. Edit `.zshrc` `.bashrc` or whatever shell config you use. Add the following lines:

```sh
function setup-lint {
  zsh $HOME/.scripts/setup-lint.sh
}
```

3. Now you can simply run `setup-lint` and the script will install all dependencies and create the `.eslintrc` and `.prettierrc` files in the current directory. You probably want to run `npm init` `yarn init` beforehand.

4. You can adjust line 1 of `~/.scripts/setup-lint.sh` to add / remove any dependencies you want to have as default. Also, you can adjust the template files `~/.scripts/.eslintrc` & `~/.scripts/.prettierrc` to your liking.
