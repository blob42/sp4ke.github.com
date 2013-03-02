#
# BUILD Bootstrap theme
#
#
##TODO:
# Add compressing and jshint 

OUTPUT = css/bootstrap.css
OUTPUT_MIN = css/bootstrap.min.css
LESS = less/compile.less
HR=\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#\#
CHECK=\033[32m✔\033[39m

build:
	@echo "\n${HR}"
	@echo "Building bootstrap theme ..."
	@recess --compile ${LESS} > ${OUTPUT}
	@lessc --compress  ${LESS} > ${OUTPUT_MIN}
	@echo "Compiling LESS with Recess...				${CHECK} Done"

## Responsive 
#	#lessc swatchmaker-responsive.less > ${OUTPUT_PATH}/bootstrap-responsive.css
#	#lessc --compress  swatchmaker-responsive.less > ${OUTPUT_PATH}/bootstrap-responsive.min.css
#


bootstrap:
	@make -C ./lib/bootstrap build

clean:
	@rm -rf ${OUTPUT} ${OUTPUT_MIN}


.PHONY: build bootstrap

