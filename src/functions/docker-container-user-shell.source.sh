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
# Sourcing
########################################################################################################################

    ebde_functions_dir=$(cd "$( dirname "${BASH_SOURCE}" )" && pwd )

    source "${ebde_functions_dir}/docker-user-exec.source.sh"


########################################################################################################################
# Functions
########################################################################################################################

    function Docker_Container_User_Shell()
    {
        local _shell_into_container="${1}"

        local _shell_name="${2:-bash}"

        local _shell_user="${3:-$USER}"

        Docker_User_Exec "${_shell_into_container}" "${_shell_user}" "${_shell_name}"
    }
