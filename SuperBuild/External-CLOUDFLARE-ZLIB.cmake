set(CLOUDFLARE_BRANCH gcc.amd64) # Cloudflare zlib branch

ExternalProject_Add(zlib
    GIT_REPOSITORY "https://github.com/ningfei/zlib.git"
    GIT_TAG "${CLOUDFLARE_BRANCH}"
    SOURCE_DIR cloudflare-zlib
    BINARY_DIR cloudflare-zlib-build
    CMAKE_ARGS
        -Wno-dev
        ${OSX_ARCHITECTURES}
        -DCMAKE_BUILD_TYPE:STRING=${CMAKE_BUILD_TYPE}
        # Install directories
        -DCMAKE_INSTALL_PREFIX:PATH=${DEP_INSTALL_DIR}
)

set(ZLIB_ROOT ${DEP_INSTALL_DIR})
