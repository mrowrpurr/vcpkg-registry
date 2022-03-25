vcpkg_from_git(
    OUT_SOURCE_PATH SOURCE_PATH
    URL https://github.com/mrowrpurr/SkySpec.git
    REF 2bf076b91977af2667348f314b9ab7668bbd6343
)

# vcpkg_configure_cmake(
#   SOURCE_PATH "${SOURCE_PATH}/SkySpec.Common"
#   PREFER_NINJA
# )

# vcpkg_install_cmake()

file(COPY ${SOURCE_PATH}/SkySpec.Common/include DESTINATION ${CURRENT_PACKAGES_DIR}/include/ FILES_MATCHING PATTERN *.h)
file(COPY ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/skyspec-common/copyright)
