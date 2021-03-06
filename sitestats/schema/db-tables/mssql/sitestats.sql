create table SST_EVENTS (ID numeric(19,0) identity not null, USER_ID varchar(99) not null, SITE_ID varchar(99) not null, EVENT_ID varchar(32) not null, EVENT_DATE datetime not null, EVENT_COUNT numeric(19,0) not null, primary key (ID));
create table SST_JOB_RUN (ID numeric(19,0) identity not null, JOB_START_DATE datetime null, JOB_END_DATE datetime null, START_EVENT_ID numeric(19,0) null, END_EVENT_ID numeric(19,0) null, LAST_EVENT_DATE datetime null, primary key (ID));
create table SST_PREFERENCES (ID numeric(19,0) identity not null, SITE_ID varchar(99) not null, PREFS text not null, primary key (ID));
create table SST_PRESENCES (ID numeric(19,0) identity not null, SITE_ID varchar(99) not null, USER_ID varchar(99) not null, P_DATE datetime not null, DURATION numeric(19,0) default 0 not null, LAST_VISIT_START_TIME datetime default null null, primary key (ID));
create table SST_REPORTS (ID numeric(19,0) identity not null, SITE_ID varchar(99) null, TITLE varchar(255) not null, DESCRIPTION text null, HIDDEN tinyint null, REPORT_DEF text not null, CREATED_BY varchar(99) not null, CREATED_ON datetime not null, MODIFIED_BY varchar(99) null, MODIFIED_ON datetime null, primary key (ID));
create table SST_RESOURCES (ID numeric(19,0) identity not null, USER_ID varchar(99) not null, SITE_ID varchar(99) not null, RESOURCE_REF varchar(255) not null, RESOURCE_ACTION varchar(12) not null, RESOURCE_DATE datetime not null, RESOURCE_COUNT numeric(19,0) not null, primary key (ID));
create table SST_SITEACTIVITY (ID numeric(19,0) identity not null, SITE_ID varchar(99) not null, ACTIVITY_DATE datetime not null, EVENT_ID varchar(32) not null, ACTIVITY_COUNT numeric(19,0) not null, primary key (ID));
create table SST_SITEVISITS (ID numeric(19,0) identity not null, SITE_ID varchar(99) not null, VISITS_DATE datetime not null, TOTAL_VISITS numeric(19,0) not null, TOTAL_UNIQUE numeric(19,0) not null, primary key (ID));
create index SST_EVENTS_USER_ID_IX on SST_EVENTS (USER_ID);
create index SST_EVENTS_SITE_ID_IX on SST_EVENTS (SITE_ID);
create index SST_EVENTS_SITEEVENTUSER_ID_IX on SST_EVENTS (USER_ID, SITE_ID, EVENT_ID);
create index SST_EVENTS_EVENT_ID_IX on SST_EVENTS (EVENT_ID);
create index SST_EVENTS_DATE_IX on SST_EVENTS (EVENT_DATE);
create index SST_PREFERENCES_SITE_ID_IX on SST_PREFERENCES (SITE_ID);
create index SST_PRESENCE_DATE_IX on SST_PRESENCES (P_DATE);
create index SST_PRESENCE_USER_ID_IX on SST_PRESENCES (USER_ID);
create index SST_PRESENCE_SITE_ID_IX on SST_PRESENCES (SITE_ID);
create index SST_PRESENCE_SUD_ID_IX on SST_PRESENCES (SITE_ID, USER_ID, P_DATE);
create index SST_REPORTS_SITE_ID_IX on SST_REPORTS (SITE_ID);
create index SST_RESOURCES_USER_ID_IX on SST_RESOURCES (USER_ID);
create index SST_RESOURCES_SITE_ID_IX on SST_RESOURCES (SITE_ID);
create index SST_RESOURCES_RES_ACT_IDX on SST_RESOURCES (RESOURCE_ACTION);
create index SST_RESOURCES_DATE_IX on SST_RESOURCES (RESOURCE_DATE);
create index SST_SITEACTIVITY_EVENT_ID_IX on SST_SITEACTIVITY (EVENT_ID);
create index SST_SITEACTIVITY_DATE_IX on SST_SITEACTIVITY (ACTIVITY_DATE);
create index SST_SITEACTIVITY_SITE_ID_IX on SST_SITEACTIVITY (SITE_ID);
create index SST_SITEVISITS_DATE_IX on SST_SITEVISITS (VISITS_DATE);
create index SST_SITEVISITS_SITE_ID_IX on SST_SITEVISITS (SITE_ID);
