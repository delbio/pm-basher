load lib/assertions

export PM_BASHER_TEST_DIR="${BATS_TMPDIR}/pm-basher"
export PM_BASHER_TMP_BIN="${PM_BASHER_TEST_DIR}/bin"
export PM_BASHER_CWD="${PM_BASHER_TEST_DIR}/cwd"

export PATH="${BATS_TEST_DIRNAME}/libexec:$PATH"
export PATH="${BATS_TEST_DIRNAME}/../libexec:$PATH"
export PATH="${PM_BASHER_TMP_BIN}:$PATH"

mkdir -p "${PM_BASHER_TMP_BIN}"
mkdir -p "${PM_BASHER_TEST_DIR}"
mkdir -p "${PM_BASHER_CWD}"

setup() {
  cd "${PM_BASHER_CWD}"
}

teardown() {
  rm -rf "${PM_BASHER_TEST_DIR}"
}
