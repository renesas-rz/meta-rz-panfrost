# Custom recipe to export environment variables for weston. 

SUMMARY = "Startup script to export environment variables for weston."
DESCRIPTION = "This script exports environment variables required for weston on system startup."


PR="r0"

LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
FILESEXTRAPATHS:prepend := "${THIDIR}/files:"

SRC_URI = "file://environment"

do_install() {
	install -d ${D}/etc
	install -m 0755 ${WORKDIR}/environment ${D}/etc/environment
}

FILES_${PN} += "/etc/enviornment"
