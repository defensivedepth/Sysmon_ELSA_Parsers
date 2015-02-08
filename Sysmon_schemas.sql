/*  v. 2/8/15 --- Copyright (c) 2015 Josh Brower, Josh@DefensiveDepth.com */

use syslog;

/*  Creates SYSMON_PROCESS Class & associated fields */
INSERT INTO classes (id, class) VALUES (10778, "SYSMON_PROCESS");

INSERT INTO fields (field, field_type, pattern_type) VALUES ("hostname","string", "QSTRING");  
INSERT INTO fields (field, field_type, pattern_type) VALUES ("processguid","string", "QSTRING");
INSERT INTO fields (field, field_type, pattern_type) VALUES ("image","string", "QSTRING");
INSERT INTO fields (field, field_type, pattern_type) VALUES ("hash","string", "QSTRING");
INSERT INTO fields (field, field_type, pattern_type) VALUES ("parentimage","string", "QSTRING");

INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="SYSMON_PROCESS"), (SELECT id FROM fields WHERE field="hostname"), 11);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="SYSMON_PROCESS"), (SELECT id FROM fields WHERE field="processguid"), 12);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="SYSMON_PROCESS"), (SELECT id FROM fields WHERE field="image"), 13);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="SYSMON_PROCESS"), (SELECT id FROM fields WHERE field="user"), 14);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="SYSMON_PROCESS"), (SELECT id FROM fields WHERE field="hash"), 15);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="SYSMON_PROCESS"), (SELECT id FROM fields WHERE field="parentimage"), 16);


/*  Creates SYSMON_NETWORK Class & associated fields */
INSERT INTO classes (id, class) VALUES (10779, "SYSMON_NETWORK");

INSERT INTO fields (field, field_type, pattern_type) VALUES ("initiated","string", "QSTRING");
INSERT INTO fields (field, field_type, pattern_type) VALUES ("destip","string", "QSTRING");
INSERT INTO fields (field, field_type, pattern_type) VALUES ("sourceport","string", "QSTRING");
INSERT INTO fields (field, field_type, pattern_type) VALUES ("destport","string", "QSTRING");
	
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="SYSMON_NETWORK"), (SELECT id FROM fields WHERE field="hostname"), 11);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="SYSMON_NETWORK"), (SELECT id FROM fields WHERE field="processguid"), 12);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="SYSMON_NETWORK"), (SELECT id FROM fields WHERE field="image"), 13);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="SYSMON_NETWORK"), (SELECT id FROM fields WHERE field="user"), 14);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="SYSMON_NETWORK"), (SELECT id FROM fields WHERE field="initiated"), 15);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="SYSMON_NETWORK"), (SELECT id FROM fields WHERE field="destip"), 16);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="SYSMON_NETWORK"), (SELECT id FROM fields WHERE field="sourceport"), 5);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="SYSMON_NETWORK"), (SELECT id FROM fields WHERE field="destport"), 6);