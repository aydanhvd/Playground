#include "mylabel.h"
#include "QtQml/qqml.h"


MyLabel::MyLabel(QObject *parent)
    : QObject{parent}
{
    void MyLabel::SetMyObject( QObject *obj ) {
        myObject = obj;
    }

}
