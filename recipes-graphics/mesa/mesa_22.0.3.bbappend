FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

PACKAGECONFIG:append:pn-mesa = " egl kmsro panfrost"

python () {
    import re

    kernel_provider = d.getVar('PREFERRED_PROVIDER_virtual/kernel')
    kernel_version = d.getVar('PREFERRED_VERSION_linux-cip')
    bb.debug(1, "SRC_URI %s" % d.getVar('SRC_URI', True))

    bb.debug(1, "Current kernel provider: %s" % kernel_provider)
    if not re.match(r'linux-renesas', kernel_provider) and re.match(r'6\.1*', kernel_version):
        src_uri = d.getVar('SRC_URI', True)
        patch = " file://mesa_add_rzg2l_du_entrypoint.patch"
        src_uri += patch 
        d.setVar('SRC_URI', src_uri)
}
