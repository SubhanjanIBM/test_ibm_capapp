namespace ibmcapapp.db;
using { cuid, managed } from '@sap/cds/common';
using { ibmcapapp.reuse as spiderman } from './reuse';
context basic {
    entity student: spiderman.address {
        key studentId: spiderman.GUID;
        class: Association to one standard;
        nameFirst: String(255);
        nameLast: String(255);
        age: Int16;
        gender: String(1);
    }
    entity standard {
        key id : spiderman.GUID;
        className: String(48);
        sections: Int16;
        classTeacher: String(255);
    }
    entity books : cuid, managed {
        bookName: localized String(48);
        author: String(255);
    }
}
