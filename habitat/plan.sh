#!/usr/bin/env bash

pkg_name="habitat-sample"
pkg_version="0.0.1"
pkg_origin=pisixlab
pkg_license=('Public Domain')
pkg_maintainer="Rickdana (christdana14@gmail.com>"
pkg_description="An hello-world sample build using Chef Habitat."
pkg_build_deps=(
  core/go
)
pkg_bin_dirs=(
  bin
)

do_build() {
  go build -o ${pkg_name}
}

do_install() {
  mkdir -p "${pkd_prefix}/bin"
  mv "${SRC_PATH}/${pkg_name}" "${pkd_prefix}/bin"
}