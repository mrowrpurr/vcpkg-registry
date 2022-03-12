vcpkg_from_git(
    OUT_SOURCE_PATH SOURCE_PATH
    URL https://github.com/mrowrpurr/bandit.git
    REF 195553f0410e6effe9437be1763dcb501e93e46f
)

file(COPY ${SOURCE_PATH}/bandit DESTINATION ${CURRENT_PACKAGES_DIR}/include/ FILES_MATCHING PATTERN *.h)
file(COPY ${SOURCE_PATH}/docs/LICENSE.txt DESTINATION ${CURRENT_PACKAGES_DIR}/share/bandit/copyright)
