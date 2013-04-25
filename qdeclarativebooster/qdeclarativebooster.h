/***************************************************************************
**
** Copyright (C) 2011 Nokia Corporation and/or its subsidiary(-ies).
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

#ifndef QDECLARATIVEBOOSTER_H
#define QDECLARATIVEBOOSTER_H

#include "eventhandler.h"
#include "booster.h"

/*!
 * \class QDeclarativeBooster.
 * \brief QDeclarative-specific version of the Booster.
 */
class QDeclarativeBooster : public Booster
{
public:

    //! Constructor.
    QDeclarativeBooster() {};

    //! Destructor.
    virtual ~QDeclarativeBooster() {};

    virtual const string & boosterType() const;

    //! \reimp
    virtual bool preload();

protected:

    //! \reimp
    virtual bool receiveDataFromInvoker(int socketFd);

    //! \reimp
    virtual void preinit();

private:

    //! Disable copy-constructor
    QDeclarativeBooster(const QDeclarativeBooster & r);

    //! Disable assignment operator
    QDeclarativeBooster & operator= (const QDeclarativeBooster & r);

    static const string m_boosterType;

#ifdef UNIT_TEST
    friend class Ut_DBooster;
#endif
};

#endif //QDECLARATIVEBOOSTER_H
