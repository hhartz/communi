######################################################################
# Communi
######################################################################

INCLUDEPATH += $$PWD/../include
DEPENDPATH += $$PWD/../include

macx:!qt_no_framework {
    LIBS += -F$$PWD/../lib -framework Communi
} else {
    TEMPLATE += fakelib
    LIBS += -L$$PWD/../lib -l$$qtLibraryTarget(Communi)
    TEMPLATE -= fakelib
    QMAKE_RPATHDIR += $$PWD/../lib
}
