vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO mrowrpurr/CommonLibVR
  REF cfa6a181cfbf98fd631e1e1ff0313474050bc29f
  SHA512 96f117fc657fbb11d6461af92432e4cf0095c3f2df80b2fdfdf0d6ee8ef135d1b3a8579962b5030cb16678190fb0eeb49b5ee1a5d8cbd827cd1c853b956a2d3b
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
