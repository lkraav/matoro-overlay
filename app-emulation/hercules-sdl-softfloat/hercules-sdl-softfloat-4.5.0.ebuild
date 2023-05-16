# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

COMMIT="4b0c326008e174610969c92e69178939ed80653d"

DESCRIPTION="Berkeley IEEE Binary Floating-Point Library"
HOMEPAGE="https://github.com/SDL-Hercules-390/SoftFloat"
SRC_URI="https://github.com/SDL-Hercules-390/SoftFloat/archive/${COMMIT}.tar.gz -> SoftFloat-${COMMIT}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc64 ~x86"
PATCHES=( "${FILESDIR}/cmakefix.patch" )
S="${WORKDIR}/SoftFloat-${COMMIT}"
