# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

COMMIT="a5096e5dd79f46b568806240c0824cd8cb2fcda2"

DESCRIPTION="Simple AES/DES encryption and SHA1/SHA2 hashing library"
HOMEPAGE="https://github.com/SDL-Hercules-390/crypto"
SRC_URI="https://github.com/SDL-Hercules-390/crypto/archive/${COMMIT}.tar.gz -> crypto-${COMMIT}.tar.gz"

LICENSE="public-domain MIT BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc64 ~x86"
PATCHES=( "${FILESDIR}/cmakefix.patch" )
S="${WORKDIR}/crypto-${COMMIT}"
