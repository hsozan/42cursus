alias stay="caffeinate -dismu"
alias d="cd ~/Desktop"
alias ua="source ~/.zshrc"
alias fixvim="mkdir ~/.cache/vim"
alias ü="clear"
function ct()
{
	cd
	bash clean.sh
	fixvim
	cd -
}
function brew_install()
{
	cd ~/goinfre
	mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
	cd homebrew/bin && ./brew install readline
}
