/*!
**
** @copyright (C) 2011 Nokia Corporation and/or its subsidiary(-ies).
** @license GNU Lesser General Public License version 2.1
** All rights reserved.
** Contact: Nokia Corporation (directui@nokia.com)
**
** This file is part of applauncherd
**
** If you have questions regarding the use of this file, please contact
** Nokia at directui@nokia.com.
**
** This library is free software; you can redistribute it and/or
** modify it under the terms of the GNU Lesser General Public
** License version 2.1 as published by the Free Software Foundation
** and appearing in the file LICENSE.LGPL included in the packaging
** of this file.
**
****************************************************************************/

#ifndef MDECLARATIVECACHE_H
#define MDECLARATIVECACHE_H

#include <QString>

class MDeclarativeCachePrivate;
class QGuiApplication;
class QQuickView;

/*!
 * \class MDeclarativeCache.
 * \brief Cache class for QDeclarativeBooster.
 */
class MDeclarativeCache
{
public:
    MDeclarativeCache() {}
    virtual ~MDeclarativeCache() {}

    //! Populate cache with QGuiApplication and QQuickView
    /*!
     * Returns the cached QQuickView instance, which can be used for booster-specific
     * initialization.
     */
    static QQuickView *populate();

    //! Returns QGuiApplication instance from cache or creates a new one.
    /*!
     * Ownership of the returned object is passed to the caller.
     * NOTE: This is subject to change.
     */
    static QGuiApplication *qApplication(int &argc, char **argv);

    //! Returns QDeclarativeView instance from cache or creates a new one.
    /*!
     * Ownership of the returned object is passed to the caller.
     * NOTE: This is subject to change.
     */
    static QQuickView *qQuickView();

    //! Returns the directory that contains the application executable.
    /*!
     * This function is deprecated. It used to be a workaround for QApplication::applicationDirPath()
     * not working on harmattan with qdeclarativebooster and Qt 4.7, but this has been fixed.
     */
    static QString applicationDirPath() __attribute__ ((deprecated));

    //! Returns the file path of the application executable.
    /*!
     * This function is deprecated. It used to be a workaround for QApplication::applicationFilePath()
     * not working on harmattan with qdeclarativebooster and Qt 4.7, but this has been fixed.
     */
    static QString applicationFilePath() __attribute__ ((deprecated));

protected:

    static MDeclarativeCachePrivate* const d_ptr;

private:
    Q_DISABLE_COPY(MDeclarativeCache)

#ifdef UNIT_TEST
    friend class Ut_MDeclarativeCache;
#endif
};

#endif //MDECLARATIVECACHE_H
