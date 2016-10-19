#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QObject>
#include <QQuickItem>

class MyClass : public QObject
{
    Q_OBJECT
public slots:
    void cppSlot(const QVariant &v) {
       qDebug() << "Called the C++ slot with value:" << v;

       QQuickItem *item =
           qobject_cast<QQuickItem*>(v.value<QObject*>());
       qDebug() << "Item dimensions:" << item->width()
                << item->height();
    }
};

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    QObject *root = engine.rootObjects().at(0);

    QObject *item = root->findChild<QObject*>("plus");

    MyClass myClass;
    QObject::connect(item, SIGNAL(qmlSignal(QVariant)), &myClass, SLOT(cppSlot(QVariant)));

    return app.exec();
}
