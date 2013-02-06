
BOX=qualiancy-devbox

clean: 
	@rm -f $(BOX).box
ifneq ($(shell bundle exec vagrant box list | grep $(BOX)),)
	@bundle exec vagrant box remove '$(BOX)'
endif

devbox: 
	@bundle exec veewee vbox build -a -f -n 'qualiancy-devbox'
	@bundle exec veewee vbox validate 'qualiancy-devbox'
	@bundle exec vagrant basebox export 'qualiancy-devbox'
	@mv qualiancy-devbox.box $(BOX).box
	@bundle exec vagrant box add '$(BOX)' '$(BOX).box'

.PHONY: clean devbox
