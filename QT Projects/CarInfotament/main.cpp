#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <Controllers/system.h>
#include <Controllers/hvachandler.h>
#include <Controllers/audiocontroller.h>



int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    System m_systemHandler;

    HVACHandler m_driverHVACHandler;

    HVACHandler m_passengerVACHandler;

    AudioController m_audioController;

    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/CarInfotament/main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    QQmlContext * context( engine.rootContext() );
    context->setContextProperty( "systemHandler", &m_systemHandler );
    context->setContextProperty( "driverHVAC", &m_driverHVACHandler );
    context->setContextProperty( "passengerHVAC", &m_passengerVACHandler );
    context->setContextProperty( "audioController", &m_audioController );

    return app.exec();
}
