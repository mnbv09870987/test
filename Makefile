WHOAMI          ?=  ${shell whoami}

export APP_ROOT ?=  ${shell pwd -P}
export CONF_DIR ?=  ${APP_ROOT}/etc
export APP      ?=  ${APP_ROOT}/app/maitre_d/run.pl

export PATH     :=  ${APP_ROOT}/local/bin:${PATH}

LOCAL_LIBS      :=  ${APP_ROOT}/lib
LOCAL_LIBS      :=  ${LOCAL_LIBS}:${APP_ROOT}/local/lib/perl5
export PERL5LIB :=  ${LOCAL_LIBS}:${PERL5LIB}


DOCKER_CONTAINER :=  postgres-db

DEBUG_CMD = PERLDB_OPTS="white_box" PERL5DB="use DB::Hooks qw'::Terminal NonStop'" perl -d

# Run this target as: eval make setenv
setenv:
	export PATH=${PATH}
	export PERL5LIB=${LOCAL_LIBS}
	export PERL5DB='use DB::Hooks qw"::Terminal NonStop ::TraceVariable"'
	export MOJO_INACTIVITY_TIMEOUT=0
  	