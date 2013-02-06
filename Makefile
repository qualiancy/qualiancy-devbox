
BOX=qualiancy-devbox

clean: 
	@rm -f $(BOX).box
ifneq ($(shell bundle exec vagrant box list | grep $(BOX)),)
	@bundle exec vagrant box remove '$(BOX)'
endif

build:
	@bundle exec veewee vbox build -a -f -n 'qualiancy-devbox'

validate:
	@bundle exec veewee vbox validate 'qualiancy-devbox'

export: 
	@bundle exec vagrant basebox export 'qualiancy-devbox'
	@mv qualiancy-devbox.box $(BOX).box
	@bundle exec vagrant box add '$(BOX)' '$(BOX).box'

devbox: build export

.PHONY: clean devbox
