vcpkg_from_git(
    OUT_SOURCE_PATH SOURCE_PATH
    URL https://github.com/mrowrpurr/bandit.git
    REF abf2d7c2eee6285a67607e709eba4a7e7dc6cb76
)

file(COPY ${SOURCE_PATH}/bandit DESTINATION ${CURRENT_PACKAGES_DIR}/include/ FILES_MATCHING PATTERN *.h)
file(COPY ${SOURCE_PATH}/docs/LICENSE.txt DESTINATION ${CURRENT_PACKAGES_DIR}/share/bandit/copyright)
