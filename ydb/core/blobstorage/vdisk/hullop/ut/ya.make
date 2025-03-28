UNITTEST_FOR(ydb/core/blobstorage/vdisk/hullop)

FORK_SUBTESTS()

IF (SANITIZER_TYPE == "thread" OR WITH_VALGRIND)
    SIZE(LARGE)
    TAG(ya:fat)
    REQUIREMENTS(
        ram:32
    )
ELSE()
    SIZE(MEDIUM)
ENDIF()

PEERDIR(
    library/cpp/getopt
    library/cpp/svnversion
    ydb/core/blobstorage/pdisk
)

SRCS(
    blobstorage_hullcompactdeferredqueue_ut.cpp
    blobstorage_readbatch_ut.cpp
    hullop_delayedresp_ut.cpp
)

END()
