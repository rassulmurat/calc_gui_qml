#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QObject>
#include <QQuickItem>
#include <QQmlContext>
#include "myclass.h"
#include <QQuickWindow>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    QObject *root = engine.rootObjects().value(0);

    QObject *item = root->findChild<QObject*>("recsign");
    MyClass myClass;
    QObject::connect(item, SIGNAL(qmlSignal(QString)), &myClass, SLOT(plusClicked(QString)));

    QObject *btn = root->findChild<QObject*>("button");
    QObject::connect(btn, SIGNAL(btnClc(QString, QString, QVariant)), &myClass, SLOT(btnClicked(QString, QString, QVariant)));

    return app.exec();
}
