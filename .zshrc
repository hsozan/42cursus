alias d="cd ~/Desktop"
alias ua="source ~/.zshrc"
alias fixvim="mkdir ~/.cache/vim"
alias ü="clear"
alias present="cat ~/.zshrc"
function ct()
{
	cd
	bash clean.sh
	fixvim
	cd -
}
function bekle()
{
	cd 
	make re --silent -C sleepwipe
	mv sleepwipe/stay .
	./stay
	rm -rf stay
	cd -
}
function brew_install()
{
	cd ~/goinfre
	mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
	cd homebrew/bin && ./brew install readline
}
