#include "system.h"
#include <QDateTime>
#include <QDebug>

System::System(QObject *parent)
    : QObject{parent}
    , m_carLocked( false )
    , m_outdoorTemp( 25 )
    , m_userName( "Aydan" )
{
    m_currentTimeTimer = new QTimer(this);
    m_currentTimeTimer -> setInterval( 500 );
    m_currentTimeTimer -> setSingleShot( true );
    connect( m_currentTimeTimer, &QTimer::timeout, this, &System::currentTimeTimerTimeout );

    currentTimeTimerTimeout();
}

bool System::carLocked() const
{
    return m_carLocked;
}

void System::setCarLocked(bool newCarLocked)
{
    if (m_carLocked == newCarLocked)
        return;
    m_carLocked = newCarLocked;
    emit carLockedChanged(m_carLocked);
}

int System::outdoorTemp() const
{
    return m_outdoorTemp;
}

void System::setOutdoorTemp(int newOutdoorTemp)
{
    if (m_outdoorTemp == newOutdoorTemp)
        return;
    m_outdoorTemp = newOutdoorTemp;
    emit outdoorTempChanged(m_outdoorTemp);
}

QString System::userName() const
{
    return m_userName;
}

void System::setUserName(QString newUserName)
{
    if (m_userName == newUserName)
        return;
    m_userName = newUserName;
    emit userNameChanged(m_userName);
}

QString System::currentTime() const
{
    return m_currentTime;
}

void System::setCurrentTime(const QString newCurrentTime)
{
    if (m_currentTime == newCurrentTime)
        return;
    m_currentTime = newCurrentTime;
    emit currentTimeChanged(m_currentTime);
}

void System::currentTimeTimerTimeout()
{
    QDateTime dateTime;
    QString currentTime = dateTime.currentDateTime().toString( "hh:mm ap" );

    //qDebug() << currentTime ;

    setCurrentTime(currentTime);

    m_currentTimeTimer -> start();
}