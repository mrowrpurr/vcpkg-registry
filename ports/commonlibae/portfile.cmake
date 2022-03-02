vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO powerof3/CommonLibSSE
  REF e8b189e6ea92df7d3926cc539175bead3c92a383
  SHA512 3f52acde77fdd157c8b40f7e9b1bdee37e23b4066d29c7e0d369971bae2194dd17b69335e99bf30e140a0c21c3097c78f0925ba6573f373b5cf8ade3643431b9
  HEAD_REF dev
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)

vcpkg_install_cmake()
vcpkg_cmake_config_fixup(PACKAGE_NAME CommonLibSSE CONFIG_PATH lib/cmake)
vcpkg_copy_pdbs()

file(GLOB CMAKE_CONFIGS "${CURRENT_PACKAGES_DIR}/share/CommonLibSSE/CommonLibSSE/*.cmake")
file(INSTALL ${CMAKE_CONFIGS} DESTINATION "${CURRENT_PACKAGES_DIR}/share/CommonLibSSE")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/share/CommonLibSSE/CommonLibSSE")

file(
  INSTALL "${SOURCE_PATH}/LICENSE"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright)
