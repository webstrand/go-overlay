# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

GOLANG_PKG_IMPORTPATH="github.com/derekparker"
GOLANG_PKG_OUTPUT_NAME="dlv"
GOLANG_PKG_VERSION="6bff4d19706b46b7bd350212048e4a140caad271"
GOLANG_PKG_BUILDPATH="/cmd/${GOLANG_PKG_OUTPUT_NAME}"
GOLANG_PKG_HAVE_TEST=1
GOLANG_PKG_USE_CGO=1

inherit golang-single

DESCRIPTION="Delve is a debugger for the Go programming language"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE="doc"

src_install() {
	golang-single_src_install
	use doc && dodoc -r Documentation/*
}
