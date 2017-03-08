#!/bin/bash
# @package exadra37-bash/docker-exec
# @link    https://gitlab.com/u/exadra37-bash/docker-exec
# @since   2017/03/10
# @license GPL-3.0
# @author  Exadra37(Paulo Silva) <exadra37ingmailpointcom>
#
# Social Links:
# @link    Auhthor:  https://exadra37.com
# @link    Github:   https://gitlab.com/Exadra37
# @link    Github:   https://github.com/Exadra37
# @link    Linkedin: https://uk.linkedin.com/in/exadra37
# @link    Twitter:  https://twitter.com/Exadra37

set -e

########################################################################################################################
# Functions
########################################################################################################################

    function Docker_Exec()
    {
        local _shell_into_container="${1}"

        local _command="${2:-bash}"

        local _arguments="${3}"

        sudo docker exec \
                --interactive \
                --tty \
                "${_shell_into_container}" \
                "${_command}" ${_arguments}
    }
