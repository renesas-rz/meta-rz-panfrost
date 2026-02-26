FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

PACKAGECONFIG:append:pn-mesa = " egl kmsro panfrost"
IMAGE_INSTALL:append = " mesa"

SRC_URI += "file://mesa_add_rzg2l_du_entrypoint.patch" 
