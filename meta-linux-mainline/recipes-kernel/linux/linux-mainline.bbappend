FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = " \
file://panfrost.cfg \
"

do_configure:append() {
    cat ${WORKDIR}/panfrost.cfg >> ${B}/.config
}
