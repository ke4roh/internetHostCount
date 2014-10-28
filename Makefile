target:
	[ -d target ] || mkdir target

svglinear: target
	grep -v logscale InternetHostCount.gp | sed s/Log/Linear/ | gnuplot

pnglinear: target
	grep -v logscale InternetHostCount.gp | sed s/Log/Linear/ | sed s/svg/png/ | gnuplot

svglog: target
	gnuplot <InternetHostCount.gp

pnglog: target
	sed s/svg/png/ <InternetHostCount.gp | gnuplot

all: svglog pnglog svglinear pnglinear

clean:
	rm -r target
