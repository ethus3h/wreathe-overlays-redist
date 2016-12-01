# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python2_{5,6,7} )

inherit distutils-r1 git-r3

DESCRIPTION="A Python library to build Twitter bots over Tweepy library"
HOMEPAGE="https://github.com/caxap/${PN}"
SRC_URI=""
EGIT_REPO_URI="${HOMEPAGE}"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="examples test"

#RESTRICT="test" 	#missing a required dep frpm portage

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		dev-python/tweepy
		dev-python/simplejson[${PYTHON_USEDEP}]"

python_prepare() {
	# Required to avoid file collisions at install
	sed -e "s:find_packages():find_packages(exclude=['tests','tests.*']):" -i setup.py || die
	distutils-r1_python_prepare
}

python_test() {
	"${PYTHON}" -m tests || die "Tests failed"
}

python_install() {
	use examples && local EXAMPLES=( examples/. )
	distutils-r1_python_install
}
