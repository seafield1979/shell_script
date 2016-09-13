#!/bin/sh

# --共通関数定義--
# ログ出力関数
LOG()
{
	# ログ出力先
	LOG_DIR=./

	# 引数展開
	FILENM=`basename $0`
	MSG=$1

	printf "${FILENM}\n"
	# 変数定義
	LOG_DATE=`date '+%Y-%m-%d'`
	LOG_TIME=`date '+%H:%M:%S'`
	LOGFILE="${LOG_DIR}${LOG_DATE}_`basename $0 .sh`.log"

	printf "LOGFILE is ${LOGFILE}\n"

	# ログ出力実行
	printf "%-10s %-8s %-14s %-50s\n" \
	"${LOG_DATE}" "${LOG_TIME}" "${FILENM}" "${MSG}" >>${LOGFILE}
}
# 年月取得関数
GetYM()
{
	SYSTEM_MONTH=`date '+%Y%m'`
	echo ${SYSTEM_MONTH}
}
# 年月日取得関数
GetYMD()
{
	SYSTEM_DATE=`date '+%Y%m%d'`
	echo ${SYSTEM_DATE}
}
