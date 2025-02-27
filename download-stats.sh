#!/bin/sh

# This script shows the download stats on GitHub. Update the ids by calling
# this script with the `--update` option

test "--update" != "$1" || {
	curl -s \
	 https://api.github.com/repos/git-for-windows/git/releases |
	tac |
	sed -n '/^  }/{
    :1;N;/\n  {/b2;b1
    :2;
    y/\n/\r/
    s/.*"tag_name": "\([^"]*\)".*"id": \([0-9]*\).*/# \1\n#id=${1:-\2}/p
}' | sed '$s/^#//' >"${0%.sh}".ids &&
	echo "$ids" |
	sed -i -e '/^#\( v\?2.*windows\|id=\)/d' -e '/^id=/d' \
		-e "/^# IDs/r${0%.sh}.ids" "$0"
	exit
}

# IDs
# v2.36.2.windows.1
#id=${1:-71825145}
# v2.37.1.windows.1
#id=${1:-71824978}
# v2.37.2.windows.1
#id=${1:-74247192}
# v2.37.2.windows.2
#id=${1:-74254206}
# v2.37.3.windows.1
#id=${1:-75831597}
# v2.38.0-rc0.windows.1
#id=${1:-77353845}
# v2.38.0-rc1.windows.1
#id=${1:-77863153}
# v2.38.0-rc2.windows.1
#id=${1:-78375228}
# v2.38.0.windows.1
#id=${1:-78876064}
# v2.38.1.windows.1
#id=${1:-80235068}
# v2.35.5.windows.1
#id=${1:-80234950}
# v2.39.0-rc0.windows.1
#id=${1:-83984287}
# v2.39.0-rc1.windows.1
#id=${1:-84595301}
# v2.39.0-rc2.windows.1
#id=${1:-85119857}
# v2.39.0.windows.1
#id=${1:-85761293}
# v2.39.0.windows.2
#id=${1:-86797918}
# v2.35.6.windows.1
#id=${1:-89290758}
# v2.39.1.windows.1
#id=${1:-89284263}
# v2.35.7.windows.1
#id=${1:-92404335}
# v2.39.2.windows.1
#id=${1:-92403927}
# v2.40.0-rc0.windows.1
#id=${1:-93820603}
# v2.40.0-rc1.windows.1
#id=${1:-94525474}
# v2.40.0-rc2.windows.1
#id=${1:-94847502}
# v2.40.0.windows.1
#id=${1:-95506050}
# v2.39.3.windows.1
#id=${1:-100842599}
# v2.40.1.windows.1
#id=${1:-100843039}
# v2.41.0-rc0.windows.1
#id=${1:-103323513}
# v2.41.0-rc1.windows.1
#id=${1:-103666003}
# v2.41.0-rc2.windows.1
#id=${1:-104189428}
# v2.41.0.windows.1
id=${1:-105721665}
# v2.11.1.mingit-prerelease.6
# v2.11.1.mingit-prerelease.4
# v2.11.1.mingit-prerelease.5
# v2.11.1.mingit-prerelease.6
# v2.11.1.mingit-prerelease.4
# v2.11.1.mingit-prerelease.5
# v2.11.1.mingit-prerelease.6
# v2.11.1.mingit-prerelease.4
# v2.11.1.mingit-prerelease.5
# v2.11.1.mingit-prerelease.6
# v2.11.1.mingit-prerelease.4
# v2.11.1.mingit-prerelease.5
# v2.11.1.mingit-prerelease.6
# v2.11.1.mingit-prerelease.4
# v2.11.1.mingit-prerelease.5
# v2.11.1.mingit-prerelease.6
# v2.11.1.mingit-prerelease.4
# v2.11.1.mingit-prerelease.5
# v2.11.1.mingit-prerelease.4
# v2.11.1.mingit-prerelease.5
# v2.11.1.mingit-prerelease.3
# v2.11.1.mingit-prerelease.3
# v2.11.1.mingit-prerelease.3
# v2.11.1.mingit-prerelease.3
# v2.11.1.mingit-prerelease.3
# v2.11.1.mingit-prerelease.3
# v2.11.1.mingit-prerelease.3
# v2.11.1.mingit-prerelease.3
# v2.11.1.mingit-prerelease.2
# v2.11.1.mingit-prerelease.2
# v2.11.1.mingit-prerelease.2
# v2.11.1.mingit-prerelease.2
# v2.11.1.mingit-prerelease.2
# v2.11.1.mingit-prerelease.2
# v2.11.1.mingit-prerelease.2
# v2.11.1.mingit-prerelease.2
# v2.11.1.mingit-prerelease.2
# v2.11.1.mingit-prerelease.2
# v2.11.1.mingit-prerelease.1
# v2.11.1.mingit-prerelease.2
# v2.11.1.mingit-prerelease.1
# v2.11.1.mingit-prerelease.2
# prerelease-v2.11.0.windows.1.1
# v2.11.1.mingit-prerelease.1
# v2.11.1.mingit-prerelease.2
# prerelease-v2.11.0.windows.1.1
# v2.11.1.mingit-prerelease.1
# v2.11.1.mingit-prerelease.2
# prerelease-v2.11.0.windows.1.1
# v2.11.1.mingit-prerelease.1
# v2.11.1.mingit-prerelease.2
# prerelease-v2.11.0.windows.1.1
# v2.11.1.mingit-prerelease.1
# v2.11.1.mingit-prerelease.2
# prerelease-v2.11.0.windows.1.1
# v2.11.1.mingit-prerelease.1
# v2.11.1.mingit-prerelease.2
# prerelease-v2.11.0.windows.1.1
# v2.11.1.mingit-prerelease.1
# prerelease-v2.10.0.windows.1.11.geda474c
# prerelease-v2.11.0.windows.1.1
# v2.11.1.mingit-prerelease.1
# prerelease-v2.10.0.windows.1.11.geda474c
# prerelease-v2.11.0.windows.1.1
# v2.11.1.mingit-prerelease.1
# prerelease-v2.10.0.windows.1.11.geda474c
# prerelease-v2.11.0.windows.1.1
# v2.11.1.mingit-prerelease.1
# prerelease-v2.10.0.windows.1.11.geda474c
# prerelease-v2.11.0.windows.1.1
# v2.11.1.mingit-prerelease.1
# prerelease-v2.10.0.windows.1.11.geda474c
# prerelease-v2.11.0.windows.1.1
# v2.11.1.mingit-prerelease.1
# prerelease-v2.10.0.windows.1.11.geda474c
# prerelease-v2.11.0.windows.1.1
# v2.11.1.mingit-prerelease.1
# prerelease-v2.10.0.windows.1.11.geda474c
# prerelease-v2.11.0.windows.1.1
# v2.11.1.mingit-prerelease.1
# prerelease-v2.10.0.windows.1.11.geda474c
# prerelease-v2.11.0.windows.1.1
# v2.11.1.mingit-prerelease.1
# prerelease-v2.10.0.windows.1.11.geda474c
# prerelease-v2.11.0.windows.1.1
# v2.11.1.mingit-prerelease.1
# prerelease-v2.10.0.windows.1.11.geda474c
# prerelease-v2.11.0.windows.1.1
# v2.11.1.mingit-prerelease.1
# prerelease-v2.10.0.windows.1.11.geda474c
# prerelease-v2.11.0.windows.1.1
# v2.11.1.mingit-prerelease.1
# prerelease-v2.10.0.windows.1.11.geda474c
# prerelease-v2.11.0.windows.1.1
# v2.11.1.mingit-prerelease.1
# prerelease-v2.10.0.windows.1.11.geda474c
# prerelease-v2.11.0.windows.1.1
# v2.11.1.mingit-prerelease.1
# prerelease-v2.10.0.windows.1.11.geda474c
# prerelease-v2.11.0.windows.1.1
# v2.11.1.mingit-prerelease.1
# prerelease-v2.10.0.windows.1.11.geda474c
# prerelease-v2.10.0.windows.1.11.geda474c
# prerelease-v2.10.0.windows.1.11.geda474c

case "$id" in
*.*)
	case "$id" in
	v*.windows.*) id="$(echo "$id" | sed 's/\./\\./g')";;
	*\(*\)) id="$(echo "$id" |
		sed -e 's/(\(.*\))$/.windows.\1/' -e 's/\./\\./g')";;
	*)
		id="$(echo "$id" | sed 's/\./\\./g').windows.1";;
	esac
	id="$(sed -n "/$id/{N;s/.*:-\([0-9]*\).*/\1/p}" <"$0")"
	test -n "$id" || {
		echo "Version $1 not found" >&2
		exit 1
	}
	;;
esac

curl -s https://api.github.com/repos/git-for-windows/git/releases/$id/assets |
grep -e '"name":' -e '"download_count":'
