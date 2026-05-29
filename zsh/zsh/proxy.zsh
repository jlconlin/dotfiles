# This assumes that the environment variable PROXY_SERVER has been set elsewhere
proxy(){
  # https://gist.github.com/jnishii/f21948ddc974234869b1743d4cca93ad
	case $1 in
		start)
      echo "setting proxy..."
			export http_proxy="http://$PROXY_SERVER"
			export https_proxy="https://$PROXY_SERVER"
      export ftp_proxy="$PROXY_SERVER"
			export HTTP_PROXY=$http_proxy
			export HTTPS_PROXY=$https_proxy
      export FTP_PROXY=$ftp_proxy
			export all_proxy=$PROXY_SERVER
			export ALL_PROXY=$PROXY_SERVER
			export NO_PROXY=$no_proxy,localhost,192.168.*,10.250.*,127.0.*
      git config --global http.proxy $PROXY_SERVER
      git config --global https.proxy $PROXY_SERVER
			npm config set proxy http://$PROXY_SERVER
			npm config set https-proxy http://$PROXY_SERVER
      ;;
		stop)
      echo "stopping proxy..."
			unset http_proxy
			unset https_proxy
      unset ftp_proxy
			unset HTTP_PROXY
			unset HTTPS_PROXY
      unset FTP_PROXY
			unset all_proxy
			unset ALL_PROXY
			unset NO_PROXY
      git config --global --unset http.proxy
      git config --global --unset https.proxy
			npm config rm proxy
			npm config rm https-proxy
      ;;
		status)
			for proxyVar in `export | grep -i proxy`; do
				echo $proxyVar;
			done
      echo "git http.proxy" `git config --global --get http.proxy`
      echo "git https.proxy" `git config --global --get https.proxy`
			;;
	esac
}

