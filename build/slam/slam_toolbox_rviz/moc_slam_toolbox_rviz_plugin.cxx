/****************************************************************************
** Meta object code from reading C++ file 'slam_toolbox_rviz_plugin.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/slam/slam_toolbox_rviz/src/slam_toolbox_rviz_plugin.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'slam_toolbox_rviz_plugin.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_slam_toolbox__SlamToolboxPlugin_t {
    QByteArrayData data[18];
    char stringdata0[258];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_slam_toolbox__SlamToolboxPlugin_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_slam_toolbox__SlamToolboxPlugin_t qt_meta_stringdata_slam_toolbox__SlamToolboxPlugin = {
    {
QT_MOC_LITERAL(0, 0, 31), // "slam_toolbox::SlamToolboxPlugin"
QT_MOC_LITERAL(1, 32, 12), // "ClearChanges"
QT_MOC_LITERAL(2, 45, 0), // ""
QT_MOC_LITERAL(3, 46, 11), // "SaveChanges"
QT_MOC_LITERAL(4, 58, 7), // "SaveMap"
QT_MOC_LITERAL(5, 66, 10), // "ClearQueue"
QT_MOC_LITERAL(6, 77, 13), // "InteractiveCb"
QT_MOC_LITERAL(7, 91, 5), // "state"
QT_MOC_LITERAL(8, 97, 19), // "PauseMeasurementsCb"
QT_MOC_LITERAL(9, 117, 16), // "FirstNodeMatchCb"
QT_MOC_LITERAL(10, 134, 14), // "PoseEstMatchCb"
QT_MOC_LITERAL(11, 149, 13), // "CurEstMatchCb"
QT_MOC_LITERAL(12, 163, 10), // "LocalizeCb"
QT_MOC_LITERAL(13, 174, 10), // "LoadSubmap"
QT_MOC_LITERAL(14, 185, 11), // "GenerateMap"
QT_MOC_LITERAL(15, 197, 12), // "SerializeMap"
QT_MOC_LITERAL(16, 210, 14), // "DeserializeMap"
QT_MOC_LITERAL(17, 225, 32) // "updateCheckStateIfExternalChange"

    },
    "slam_toolbox::SlamToolboxPlugin\0"
    "ClearChanges\0\0SaveChanges\0SaveMap\0"
    "ClearQueue\0InteractiveCb\0state\0"
    "PauseMeasurementsCb\0FirstNodeMatchCb\0"
    "PoseEstMatchCb\0CurEstMatchCb\0LocalizeCb\0"
    "LoadSubmap\0GenerateMap\0SerializeMap\0"
    "DeserializeMap\0updateCheckStateIfExternalChange"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_slam_toolbox__SlamToolboxPlugin[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      15,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   89,    2, 0x09 /* Protected */,
       3,    0,   90,    2, 0x09 /* Protected */,
       4,    0,   91,    2, 0x09 /* Protected */,
       5,    0,   92,    2, 0x09 /* Protected */,
       6,    1,   93,    2, 0x09 /* Protected */,
       8,    1,   96,    2, 0x09 /* Protected */,
       9,    0,   99,    2, 0x09 /* Protected */,
      10,    0,  100,    2, 0x09 /* Protected */,
      11,    0,  101,    2, 0x09 /* Protected */,
      12,    0,  102,    2, 0x09 /* Protected */,
      13,    0,  103,    2, 0x09 /* Protected */,
      14,    0,  104,    2, 0x09 /* Protected */,
      15,    0,  105,    2, 0x09 /* Protected */,
      16,    0,  106,    2, 0x09 /* Protected */,
      17,    0,  107,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,    7,
    QMetaType::Void, QMetaType::Int,    7,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void slam_toolbox::SlamToolboxPlugin::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<SlamToolboxPlugin *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->ClearChanges(); break;
        case 1: _t->SaveChanges(); break;
        case 2: _t->SaveMap(); break;
        case 3: _t->ClearQueue(); break;
        case 4: _t->InteractiveCb((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 5: _t->PauseMeasurementsCb((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 6: _t->FirstNodeMatchCb(); break;
        case 7: _t->PoseEstMatchCb(); break;
        case 8: _t->CurEstMatchCb(); break;
        case 9: _t->LocalizeCb(); break;
        case 10: _t->LoadSubmap(); break;
        case 11: _t->GenerateMap(); break;
        case 12: _t->SerializeMap(); break;
        case 13: _t->DeserializeMap(); break;
        case 14: _t->updateCheckStateIfExternalChange(); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject slam_toolbox::SlamToolboxPlugin::staticMetaObject = { {
    &rviz::Panel::staticMetaObject,
    qt_meta_stringdata_slam_toolbox__SlamToolboxPlugin.data,
    qt_meta_data_slam_toolbox__SlamToolboxPlugin,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *slam_toolbox::SlamToolboxPlugin::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *slam_toolbox::SlamToolboxPlugin::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_slam_toolbox__SlamToolboxPlugin.stringdata0))
        return static_cast<void*>(this);
    return rviz::Panel::qt_metacast(_clname);
}

int slam_toolbox::SlamToolboxPlugin::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Panel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 15)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 15;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 15)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 15;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
