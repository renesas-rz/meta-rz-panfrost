# Make BitBake find our 'linux-renesas/' folder
FILESEXTRAPATHS:prepend := "${THISDIR}/linux-renesas:"

# Add the fragment to sources so kernel tooling merges it
SRC_URI += "file://panfrost.cfg"

