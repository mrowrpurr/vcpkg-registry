vcpkg_from_git(
    OUT_SOURCE_PATH SOURCE_PATH
    URL https://github.com/mrowrpurr/skse-library-demo.git
    REF 9819ff02c5d1b66a729e4f770e3754aac7880204
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_install_cmake()

vcpkg_cmake_config_fixup(PACKAGE_NAME MySkseLibraryExample CONFIG_PATH lib/cmake)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_copy_pdbs()

file(COPY ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/MySkseLibraryExample/copyright)
