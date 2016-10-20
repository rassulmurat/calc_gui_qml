#ifndef MYCLASS_H
#define MYCLASS_H

#include <QObject>

class MyClass: public QObject
{
    Q_OBJECT

public:
    explicit MyClass(QObject *parent = 0);

public slots:
    void plusClicked(const QString ch);
    void btnClicked(const QString op0, const QString op1, const QVariant &txt);
};

#endif // MYCLASS_H
