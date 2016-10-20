#include "myclass.h"
#include <QFile>
#include <QTextStream>

MyClass::MyClass(QObject *parent):
    QObject(parent)
{
}

int insopernd(QString ch)
{
    QFile file("/dev/operand");
    if (!file.open(QIODevice::WriteOnly | QIODevice::Text))
              return 1;
    QTextStream out(&file);
    out << ch;
    return 0;
}

int insopert(QString data, int opnum)
{
    QString opertr ("/dev/operator");
    QString nm = QString::number(opnum);
    opertr.append(nm);
    QFile file(opertr);
    if (!file.open(QIODevice::WriteOnly | QIODevice::Text)) {
        perror("Could not open file");
        return 1;
    }
    QTextStream out(&file);
    out << data;
    return 0;
}

int getRes(QString *data)
{
    QFile file("/proc/result");
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
              return 1;
    QTextStream in(&file);
    in >> *data;
    return 0;
}

void MyClass::plusClicked(const QString ch)
{
    insopernd(ch.at(0));
}

void MyClass::btnClicked(const QString op0, const QString op1, const QVariant &txt)
{
    insopert(op0, 0);
    insopert(op1, 1);

    QString str;
    getRes(&str);
    int counter = 0;
    for (int var = 0; var < str.size(); ++var) {
        QChar ch = str.at(var);
        if (ch == QLatin1Char('\0')) {
            break;
        }
        ++counter;
    }
    str = str.remove(counter, str.size() - counter);
    QObject *obj = txt.value<QObject*>();
    obj->setProperty("text", str);
}
