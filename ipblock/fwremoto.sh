#!/bin/bash
# Script para gerenciar regras de firewall em hosts remotos
#
# Copyright (C) 2013
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# fwremoto.sh
# --- hosts.conf
# --- regras.conf
#
# Created:  Ago 30, 2013
# Author:   James < james.assis@gmail.com >

#  Definicoes
usuario="root"

# Verfica se os arquivos existem e flags da linha de comando
if [ -e "hosts.conf" ] && [ -e "regras.conf" ];then
	if [ "$1" == "aplicar" ];then
		# Aplica as regras nos hosts remotos
		for estacao in `cat hosts.conf` ; do
			echo -n "Aplicando regra no host $estacao:.."
			cat regras.conf | ssh $usuario@$estacao "iptables-restore -c"
			echo "  ok"
		done
	else
		if [ "$1" == "remover" ];then
			# Caso de remocao das regras
			for estacao in `cat hosts.conf` ; do
				echo -n "Removendo regras no host $estacao:.."
				ssh $usuario@$estacao "iptables --flush "
				echo "  ok"
			done
		else
	       		echo "Utilize as opcoes aplicar|remover"
			echo "Ex.: ./fwremoto.sh aplicar"	
		fi
	fi
else echo "Verifique se os arquivos hosts.conf e regras.conf estão no diretorio"
fi
