#!/bin/bash
#
# Slurm Epilog script that removes directories created by the
# private-tmpdir SPANK plugin.
#
# TMPDIR_BASE needs to match the configured base= in plugstack.conf
TMPDIR_BASE=/tmp/slurm
PRIVATE_TMPDIR="${TMPDIR_BASE}.${SLURM_JOB_ID}.${SLURM_RESTART_COUNT:=0}"
if [ -d "${PRIVATE_TMPDIR}" ]; then
   rm -rf "${PRIVATE_TMPDIR}"
fi
