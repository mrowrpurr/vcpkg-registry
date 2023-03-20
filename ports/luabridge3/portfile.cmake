# From: https://github.com/kunitoki/LuaBridge3/issues/11

vcpkg_from_git(
    OUT_SOURCE_PATH SOURCE_PATH
    URL https://github.com/kunitoki/LuaBridge3.git
    REF 220ba91fd3ee7672cae2935781d08fbb17d0372f
)

# vcpkg_from_github(
# 	OUT_SOURCE_PATH SOURCE_PATH
# 	REPO kunitoki/LuaBridge3 
# 	REF 46963493b262ca81e432285a522455eaeb2aae10
# 	SHA512 a901fd9979b06ddb1a7b27d311d59c03dddc3de309c8a784b3b9c1632818d3186b5ab03f49b396f3a064562d123489ad71c5ddd7179e37bd15bcccf892075b04
# 	HEAD_REF master
# )

file(
	COPY ${SOURCE_PATH}/Source/LuaBridge
	DESTINATION ${CURRENT_PACKAGES_DIR}/include
)

configure_file(
	${SOURCE_PATH}/README.md
	${CURRENT_PACKAGES_DIR}/share/luabridge3/copyright
	COPYONLY
)
