vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO mrowrpurr/CommonLibVR
  REF 5d4a1ed524b9164ca9279e135f5b6f1383c2145b
  SHA512 ce7ba0ada6517ecb4117e78ad7a81d86e739fa90b3900b89427bf87488ab5a08e8583d0b821251c880d3cb70164b9aabc359f1bf37bff202fd663cc54a3fe9a6
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
