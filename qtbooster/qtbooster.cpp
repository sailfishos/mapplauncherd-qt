/***************************************************************************
**
** Copyright (C) 2010 Nokia Corporation and/or its subsidiary(-ies).
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

#include "qtbooster.h"
#include "daemon.h"
#include <QtGlobal>

const string QtBooster::m_boosterType = "qt5";

const string & QtBooster::boosterType() const
{
    return m_boosterType;
}

bool QtBooster::preload()
{
    return true;
}

int main(int argc, char **argv)
{
    QtBooster *booster = new QtBooster;

    Daemon d(argc, argv);
    d.run(booster);
}

