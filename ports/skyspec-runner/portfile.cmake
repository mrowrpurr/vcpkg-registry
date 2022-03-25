vcpkg_from_git(
    OUT_SOURCE_PATH SOURCE_PATH
    URL https://github.com/mrowrpurr/SkySpec.git
    REF 9db552b9980282aa0d1e13223d5b27609989dca4
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}/SkySpec.TestRunner"
  PREFER_NINJA
)

vcpkg_install_cmake()
vcpkg_copy_pdbs()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(COPY ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/skyspec-runner/copyright)
