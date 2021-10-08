FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
FILESEXTRAPATHS:prepend_df-ast-img-sdk := "${THISDIR}/files/df-ast-img:"

SRC_URI:append = " file://fw_env_ast2600_nor.config "
SRC_URI:append_ast-mmc = " file://fw_env_ast2600_mmc.config "

ENV_CONFIG_FILE = "fw_env_ast2600_nor.config"
ENV_CONFIG_FILE_ast-mmc = "fw_env_ast2600_mmc.config"

do_install:append () {
        install -m 644 ${WORKDIR}/${ENV_CONFIG_FILE} ${D}${sysconfdir}/fw_env.config
}

