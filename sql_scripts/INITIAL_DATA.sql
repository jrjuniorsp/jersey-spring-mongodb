-- LANGUAGES
INSERT INTO LANGUAGES (NAME, CODE) VALUES ('ENGLISH', 'en');
INSERT INTO LANGUAGES (NAME, CODE) VALUES ('FRENCH', 'fr');
INSERT INTO LANGUAGES (NAME, CODE) VALUES ('SPANISH', 'es');

-- CONDITIONS
INSERT INTO CONDITIONS (LANGUAGE_ID, NAME) VALUES (1,'Rheumatoid Arthritis');
INSERT INTO CONDITIONS (LANGUAGE_ID, NAME) VALUES (2,'FR-Rheumatoid Arthritis');
INSERT INTO CONDITIONS (LANGUAGE_ID, NAME) VALUES (3,'ES-Rheumatoid Arthritis');

INSERT INTO CONDITIONS (LANGUAGE_ID, NAME) VALUES (1,'Ankylosing Spondylitis');
INSERT INTO CONDITIONS (LANGUAGE_ID, NAME) VALUES (2,'FR-Ankylosing Spondylitis');
INSERT INTO CONDITIONS (LANGUAGE_ID, NAME) VALUES (3,'ES-Ankylosing Spondylitis');

-- SYMPTOMS
INSERT INTO SYMPTOMS (CONDITION_ID, NAME) VALUES (1,'Pain');
INSERT INTO SYMPTOMS (CONDITION_ID, NAME) VALUES (2,'FR-Pain');
INSERT INTO SYMPTOMS (CONDITION_ID, NAME) VALUES (3,'ES-Pain');

INSERT INTO SYMPTOMS (CONDITION_ID, NAME) VALUES (1,'Stiffness');
INSERT INTO SYMPTOMS (CONDITION_ID, NAME) VALUES (2,'FR-Stiffness');
INSERT INTO SYMPTOMS (CONDITION_ID, NAME) VALUES (3,'ES-Stiffness');

INSERT INTO SYMPTOMS (CONDITION_ID, NAME) VALUES (1,'Activities');
INSERT INTO SYMPTOMS (CONDITION_ID, NAME) VALUES (2,'FR-Activities');
INSERT INTO SYMPTOMS (CONDITION_ID, NAME) VALUES (3,'ES-Activities');


-- SYMPTOM_FORM (PAIN)
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (1,'<b>Where</b> was the pain?', 1, true);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (2,'FR-<b>Where</b> was the pain?', 1, true);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (3,'ES-<b>Where</b> was the pain?', 1, true);

INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (1,'<b>When</b> did it happened?', 2, false);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (2,'FR-<b>When</b> did it happened?', 2, false);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (3,'ES-<b>When</b> did it happened?', 2, false);

INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (1,'How was the <b>intensity</b> of the pain?', 4, false);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (2,'FR-How was the <b>intensity</b> of the pain?', 4, false);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (3,'ES-How was the <b>intensity</b> of the pain?', 4, false);

INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (1,'<b>How long</b> did it last?', 4, false);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (2,'FR-<b>How long</b> did it last?', 4, false);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (3,'ES-<b>How long</b> did it last?', 4, false);

INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (1,'Do you want to take a <b>picture</b>?', 5, false);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (2,'FR-Do you want to take a <b>picture</b>?', 5, false);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (3,'ES-Do you want to take a <b>picture</b>?', 5, false);

INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (1,'Would you like to add any <b>comments</b>?', 3, false);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (2,'FR-Would you like to add any <b>comments</b>?', 3, false);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (3,'ES-Would you like to add any <b>comments</b>?', 3, false);

-- SYMPTOM_FORM_SLIDER (PAIN)
INSERT INTO SYMPTOM_FORM_SLIDER (SYMPTOM_FORM_ID, MIN_VALUE, MAX_VALUE, DEFAULT_VALUE, SLIDER_TYPE) VALUES (7, 1, 3, 1, 1);
INSERT INTO SYMPTOM_FORM_SLIDER (SYMPTOM_FORM_ID, MIN_VALUE, MAX_VALUE, DEFAULT_VALUE, SLIDER_TYPE) VALUES (8, 1, 3, 1, 1);
INSERT INTO SYMPTOM_FORM_SLIDER (SYMPTOM_FORM_ID, MIN_VALUE, MAX_VALUE, DEFAULT_VALUE, SLIDER_TYPE) VALUES (9, 1, 3, 1, 1);

INSERT INTO SYMPTOM_FORM_SLIDER (SYMPTOM_FORM_ID, MIN_VALUE, MAX_VALUE, DEFAULT_VALUE, SLIDER_TYPE) VALUES (10, 1, 5, 2, 2);
INSERT INTO SYMPTOM_FORM_SLIDER (SYMPTOM_FORM_ID, MIN_VALUE, MAX_VALUE, DEFAULT_VALUE, SLIDER_TYPE) VALUES (11, 1, 5, 2, 2);
INSERT INTO SYMPTOM_FORM_SLIDER (SYMPTOM_FORM_ID, MIN_VALUE, MAX_VALUE, DEFAULT_VALUE, SLIDER_TYPE) VALUES (12, 1, 5, 2, 2);

-- SYMPTOM_FORM_PICKER (PAIN)
INSERT INTO SYMPTOM_FORM_PICKER (SYMPTOM_FORM_ID, PICKER_TYPE) VALUES (4, 1);
INSERT INTO SYMPTOM_FORM_PICKER (SYMPTOM_FORM_ID, PICKER_TYPE) VALUES (5, 1);
INSERT INTO SYMPTOM_FORM_PICKER (SYMPTOM_FORM_ID, PICKER_TYPE) VALUES (6, 1);

-- SYMPTOM_FORM (STIFNESS)
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (4,'<b>Where</b> was the pain?', 1, true);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (5,'FR-<b>Where</b> was the pain?', 1, true);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (6,'ES-<b>Where</b> was the pain?', 1, true);

INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (4,'<b>When</b> did it happened?', 2, false);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (5,'FR-<b>When</b> did it happened?', 2, false);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (6,'ES-<b>When</b> did it happened?', 2, false);

INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (4,'How was the <b>intensity</b> of the pain?', 4, false);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (5,'FR-How was the <b>intensity</b> of the pain?', 4, false);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (6,'ES-How was the <b>intensity</b> of the pain?', 4, false);

INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (4,'<b>How long</b> did it last?', 4, false);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (5,'FR-<b>How long</b> did it last?', 4, false);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (6,'ES-<b>How long</b> did it last?', 4, false);

INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (4,'Do you want to take a <b>picture</b>?', 5, false);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (5,'FR-Do you want to take a <b>picture</b>?', 5, false);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (6,'ES-Do you want to take a <b>picture</b>?', 5, false);

INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (4,'Would you like to add any <b>comments</b>?', 3, false);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (5,'FR-Would you like to add any <b>comments</b>?', 3, false);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (6,'ES-Would you like to add any <b>comments</b>?', 3, false);

-- SYMPTOM_FORM_SLIDER (STIFNESS)
INSERT INTO SYMPTOM_FORM_SLIDER (SYMPTOM_FORM_ID, MIN_VALUE, MAX_VALUE, DEFAULT_VALUE, SLIDER_TYPE) VALUES (25, 1, 3, 1, 1);
INSERT INTO SYMPTOM_FORM_SLIDER (SYMPTOM_FORM_ID, MIN_VALUE, MAX_VALUE, DEFAULT_VALUE, SLIDER_TYPE) VALUES (26, 1, 3, 1, 1);
INSERT INTO SYMPTOM_FORM_SLIDER (SYMPTOM_FORM_ID, MIN_VALUE, MAX_VALUE, DEFAULT_VALUE, SLIDER_TYPE) VALUES (27, 1, 3, 1, 1);

INSERT INTO SYMPTOM_FORM_SLIDER (SYMPTOM_FORM_ID, MIN_VALUE, MAX_VALUE, DEFAULT_VALUE, SLIDER_TYPE) VALUES (28, 1, 5, 2, 2);
INSERT INTO SYMPTOM_FORM_SLIDER (SYMPTOM_FORM_ID, MIN_VALUE, MAX_VALUE, DEFAULT_VALUE, SLIDER_TYPE) VALUES (29, 1, 5, 2, 2);
INSERT INTO SYMPTOM_FORM_SLIDER (SYMPTOM_FORM_ID, MIN_VALUE, MAX_VALUE, DEFAULT_VALUE, SLIDER_TYPE) VALUES (30, 1, 5, 2, 2);

-- SYMPTOM_FORM_PICKER (STIFNESS)
INSERT INTO SYMPTOM_FORM_PICKER (SYMPTOM_FORM_ID, PICKER_TYPE) VALUES (22, 1);
INSERT INTO SYMPTOM_FORM_PICKER (SYMPTOM_FORM_ID, PICKER_TYPE) VALUES (23, 1);
INSERT INTO SYMPTOM_FORM_PICKER (SYMPTOM_FORM_ID, PICKER_TYPE) VALUES (24, 1);

-- SYMPTOM_FORM (ACTIVITIES)
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (7,'Ability to <b>dressing and grooming.</b>', 4, true);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (8,'FR-Ability to <b>dressing and grooming.</b>', 4, true);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (9,'ES-Ability to <b>dressing and grooming.</b>', 4, true);

INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (7,'Ability to <b>getting in and out of bed.</b>', 4, true);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (8,'FR-Ability to <b>getting in and out of bed.</b>', 4, true);
INSERT INTO SYMPTOM_FORM (SYMPTOM_ID, LABEL, TYPE, SHOW_IN_TIMELINE) VALUES (9,'ES-Ability to <b>getting in and out of bed.</b>', 4, true);

-- SYMPTOM_FORM_SLIDER (ACTIVITIES)
INSERT INTO SYMPTOM_FORM_SLIDER (SYMPTOM_FORM_ID, MIN_VALUE, MAX_VALUE, DEFAULT_VALUE, SLIDER_TYPE) VALUES (37, 1, 4, 2, 4);
INSERT INTO SYMPTOM_FORM_SLIDER (SYMPTOM_FORM_ID, MIN_VALUE, MAX_VALUE, DEFAULT_VALUE, SLIDER_TYPE) VALUES (38, 1, 4, 2, 4);
INSERT INTO SYMPTOM_FORM_SLIDER (SYMPTOM_FORM_ID, MIN_VALUE, MAX_VALUE, DEFAULT_VALUE, SLIDER_TYPE) VALUES (39, 1, 4, 2, 4);

INSERT INTO SYMPTOM_FORM_SLIDER (SYMPTOM_FORM_ID, MIN_VALUE, MAX_VALUE, DEFAULT_VALUE, SLIDER_TYPE) VALUES (40, 1, 4, 2, 4);
INSERT INTO SYMPTOM_FORM_SLIDER (SYMPTOM_FORM_ID, MIN_VALUE, MAX_VALUE, DEFAULT_VALUE, SLIDER_TYPE) VALUES (41, 1, 4, 2, 4);
INSERT INTO SYMPTOM_FORM_SLIDER (SYMPTOM_FORM_ID, MIN_VALUE, MAX_VALUE, DEFAULT_VALUE, SLIDER_TYPE) VALUES (42, 1, 4, 2, 4);


-- FORM_FIELDS_TYPES
1- Corpo
2- Picker
3- Texto
4- Slider
5- Foto

--SLIDER_TYPE
1 - MODERATE
2 - HOURS
3 - NUMBER
4 - DIFFICULT

--PICKER_TYPE
1 - DATE
2 - YES / NO / FREQUENCY

--LIST OF ALL FORMS
SELECT SF.LABEL, SF.TYPE, S.NAME AS SYMPTOM, C.NAME FROM SYMPTOM_FORM SF
INNER JOIN SYMPTOMS S ON S.SYMPTOM_ID = SF.SYMPTOM_ID
INNER JOIN CONDITIONS C ON C.CONDITION_ID = S.CONDITION_ID
INNER JOIN LANGUAGES L ON L.LANGUAGE_ID = C.LANGUAGE_ID
WHERE L.LANGUAGE_ID = 1 and C.CONDITION_ID = 1

-- LIST OF CONDITIONS
SELECT C.NAME FROM CONDITIONS C
INNER JOIN LANGUAGES L ON L.LANGUAGE_ID = C.LANGUAGE_ID
WHERE L.CODE = 'en'

-- LIST OF SYMPTOMS
SELECT S.NAME FROM SYMPTOMS S
INNER JOIN CONDITIONS C ON C.CONDITION_ID = S.CONDITION_ID
INNER JOIN LANGUAGES L ON L.LANGUAGE_ID = C.LANGUAGE_ID
WHERE L.CODE = 'en' and C.CONDITION_ID = 1;