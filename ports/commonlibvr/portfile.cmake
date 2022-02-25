vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO mrowrpurr/CommonLibVR
  REF 1232805a097bf2c861984f9002de7f8363dfca4a
  SHA512 dcc4f1819f256869854cdbd13e882d9886404fb0c04bf81a5c3653f60a344cd0b6289ccb636ad70248e3880d74f4593ec13292378fc8211f3aaf75cff58df375
  HEAD_REF main
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)

vcpkg_install_cmake()
vcpkg_cmake_config_fixup(PACKAGE_NAME CommonLibVR CONFIG_PATH lib/cmake)
vcpkg_copy_pdbs()

file(GLOB CMAKE_CONFIGS "${CURRENT_PACKAGES_DIR}/share/CommonLibVR/CommonLibVR/*.cmake")
file(INSTALL ${CMAKE_CONFIGS} DESTINATION "${CURRENT_PACKAGES_DIR}/share/CommonLibVR")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/share/CommonLibVR/CommonLibVR")

file(
  INSTALL "${SOURCE_PATH}/LICENSE"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright)
