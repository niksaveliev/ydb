PROGRAM(mvp_oidc_proxy)

CFLAGS(
    -DPROFILE_MEMORY_ALLOCATIONS
)

ALLOCATOR(LF_DBG)

SRCS(
    main.cpp
)

PEERDIR(
    ydb/mvp/oidc_proxy
    library/cpp/getopt
)

YQL_LAST_ABI_VERSION()

END()
