vcpkg_from_git(
    OUT_SOURCE_PATH SOURCE_PATH
    URL https://github.com/mrowrpurr/SkySpec.git
    REF b70b79ab2b0df2356657640ab3b96e824faa0a24
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}/SkySpec.TestRunner"
  PREFER_NINJA
)

vcpkg_install_cmake()
vcpkg_cmake_config_fixup(PACKAGE_NAME SkySpec_Runner CONFIG_PATH lib/cmake)
vcpkg_copy_pdbs()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(COPY ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/skyspec-runner/copyright)
