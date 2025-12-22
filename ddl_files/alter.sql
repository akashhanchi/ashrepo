
ALTER TABLE WEB_USER_ACTIVITY_LOG ADD CONSTRAINT WACT_TO_WUAL FOREIGN KEY (	WEB_APP_CNTX_TYP_CD) REFERENCES
WEB_APPLICATION_CONTEXT_TYPE (WEB_APP_CNTX_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE WEB_USER_ACTIVITY_LOG ADD CONSTRAINT WAMT_TO_WUAL FOREIGN KEY (	WEB_ACTV_MSG_TYP_CD) REFERENCES 
WEB_ACTIVITY_MESSAGE_TYPE (WEB_ACTV_MSG_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE WEB_USER_ACTIVITY_LOG ADD CONSTRAINT USER_TO_WUAL FOREIGN KEY (user_id) REFERENCES 
USERS (user_id)  ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE WEB_CARRIER_TEXT_TYPE ADD CONSTRAINT WACT_TO_WCTT FOREIGN KEY (WEB_APP_CNTX_TYP_CD) REFERENCES 
WEB_APPLICATION_CONTEXT_TYPE (WEB_APP_CNTX_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE BENEFIT_INDEMNITY_FREQ_XREF
 add constraint BNFTT_TO_BIFX foreign key (BNFT_TYP_CD)
      references BENEFIT_TYPE (BNFT_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE BENEFIT_INDEMNITY_FREQ_XREF
 add constraint IFT_TO_BIFX foreign key (INDM_FREQ_TYP_CD)
      references INDEMNITY_FREQUENCY_TYPE (INDM_FREQ_TYP_CD)
      on delete restrict on update restrict;

alter table ACTION_RULE_RESULT
   add constraint TASKT_TO_ACTNRR foreign key (TASK_TMPL_ID)
      references TASK_TEMPLATE (TASK_TMPL_ID)
      on delete restrict on update restrict;      

alter table ACTION_RULE_RESULT
   add constraint ACTNRT_TO_ARR foreign key (ACTN_RSLT_TYP_CD)
      references ACTION_RESULT_TYPE (ACTN_RSLT_TYP_CD)
      on delete restrict on update restrict;

alter table ACTION_RULE_RESULT
  add constraint RI_TO_ARR foreign key (RL_ITEM_ID)
     references RULE_ITEM (RL_ITEM_ID)
     on delete restrict on update restrict;

alter table ACTION_RULE_RESULT
   add constraint USER_TO_ARR1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ACTION_RULE_RESULT
   add constraint USER_TO_ARR2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table ACTION_RULE_RESULT
 add constraint DOCMT_TO_ARR foreign key (DOCM_TYP_ID)
   references DOCUMENT_TYPE (DOCM_TYP_ID)
    on delete restrict on update restrict;      

alter table ACTION_RULE_RESULT
  add constraint COND_TO_ARR foreign key (COND_ID)
    references CONDITION (COND_ID)
    on delete restrict on update restrict;      

alter table ACTION_RULE_RESULT
   add constraint PAT_TO_ARR foreign key (PLCY_AUDT_TYP_CD)
      references POLICY_AUDIT_TYPE (PLCY_AUDT_TYP_CD)
      on delete restrict on update restrict;


alter table ACTIVITY
   add constraint CNTXT_TO_ACTV foreign key (CNTX_TYP_CD)
      references CONTEXT_TYPE (CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table ACTIVITY
   add constraint SUBLOCT_TO_ACTV foreign key (SUBLOC_TYP_CD)
      references SUBLOCATION_TYPE (SUBLOC_TYP_CD)
      on delete restrict on update restrict;

alter table ACTIVITY
   add constraint USER_TO_ACTV foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ACTIVITY_DETAIL
   add constraint AAT_TO_AD foreign key (ACTV_ACTN_TYP_CD)
      references ACTIVITY_ACTION_TYPE (ACTV_ACTN_TYP_CD)
      on delete restrict on update restrict;

alter table ACTIVITY_DETAIL
   add constraint ACTV_TO_AD foreign key (ACTV_ID)
      references ACTIVITY (ACTV_ID)
      on delete restrict on update restrict;

alter table ACTIVITY_DETAIL
   add constraint ANT_TO_AD foreign key (ACTV_NM_TYP_CD)
      references ACTIVITY_NAME_TYPE (ACTV_NM_TYP_CD)
      on delete restrict on update restrict;

alter table AGREEMENT
   add constraint AGT_TO_AGRE foreign key (AGRE_TYP_CD)
      references AGREEMENT_TYPE (AGRE_TYP_CD)
      on delete restrict on update restrict;

alter table AGREEMENT_LOB_JUR_XREF
   add constraint AGT_TO_ALJX foreign key (AGRE_TYP_CD)
      references AGREEMENT_TYPE (AGRE_TYP_CD)
      on delete restrict on update restrict;

alter table AGREEMENT_LOB_JUR_XREF
   add constraint JT_TO_ALJX foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table AGREEMENT_LOB_JUR_XREF
   add constraint LOBT_TO_ALJX foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table AGREEMENT_PARTICIPATION_XREF
   add constraint AGT_TO_AGREPX foreign key (AGRE_TYP_CD)
      references AGREEMENT_TYPE (AGRE_TYP_CD)
      on delete restrict on update restrict;

alter table AGREEMENT_PARTICIPATION_XREF
   add constraint PTCPT_TO_AGREPX foreign key (PTCP_TYP_CD)
      references PARTICIPATION_TYPE (PTCP_TYP_CD)
      on delete restrict on update restrict;


alter table AGREEMENT_RELATIONSHIP_TYPE
   add constraint AGT_TO_ART1 foreign key (AGRE_TYP_CD)
      references AGREEMENT_TYPE (AGRE_TYP_CD)
      on delete restrict on update restrict;

alter table AGREEMENT_RELATIONSHIP_TYPE
   add constraint AGT_TO_ART2 foreign key (AGRE_TYP_CD_RLT)
      references AGREEMENT_TYPE (AGRE_TYP_CD)
      on delete restrict on update restrict;
      
alter table AGRE_PLCY_STS_TRANS_RSN_XREF
   add constraint APSTX_TO_APSTRX foreign key (AGRE_PLCY_STS_TRANS_ID)
      references AGREEMENT_PLCY_STS_TRANS_XREF (AGRE_PLCY_STS_TRANS_ID)
      on delete restrict on update restrict;

alter table AGRE_PLCY_STS_TRANS_RSN_XREF
   add constraint PSRT_TO_APSTRX foreign key (PLCY_STS_RSN_TYP_CD)
      references POLICY_STATUS_REASON_TYPE (PLCY_STS_RSN_TYP_CD)
      on delete restrict on update restrict;

alter table APPLICATION_DATA_TYPE
   add constraint ACT_TO_ADT foreign key (APP_CNTX_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table APPLICATION_DATA_TYPE
   add constraint ASCT_TO_ADT foreign key (APP_SUB_CNTX_TYP_CD)
      references APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table APPLICATION_DETAIL_LEVEL
   add constraint ADLT_TO_ADL foreign key (APP_DTL_LVL_TYP_CD)
      references APPLICATION_DETAIL_LEVEL_TYPE (APP_DTL_LVL_TYP_CD)
      on delete restrict on update restrict;

alter table APPLICATION_DETAIL_LEVEL
   add constraint ADL_TO_ADL foreign key (APP_DTL_LVL_PAR_CD)
      references APPLICATION_DETAIL_LEVEL (APP_DTL_LVL_CD)
      on delete restrict on update restrict;

alter table APPLICATION_DETAIL_LEVEL_TYPE
   add constraint ADLT_TO_ADLT foreign key (APP_DTL_LVL_TYP_PAR)
      references APPLICATION_DETAIL_LEVEL_TYPE (APP_DTL_LVL_TYP_CD)
      on delete restrict on update restrict;

alter table APPLICATION_DTL_LVL_PTCP_XREF
   add constraint ADL_TO_ADLPX foreign key (APP_DTL_LVL_CD)
      references APPLICATION_DETAIL_LEVEL (APP_DTL_LVL_CD)
      on delete restrict on update restrict;

alter table APPLICATION_DTL_LVL_PTCP_XREF
   add constraint PTCPT_TO_ADLPX1 foreign key (DFLT_PTCP_TYP_CD)
      references PARTICIPATION_TYPE (PTCP_TYP_CD)
      on delete restrict on update restrict;

alter table APPLICATION_DTL_LVL_PTCP_XREF
   add constraint PTCPT_TO_ADLPX2 foreign key (PTCP_TYP_CD)
      references PARTICIPATION_TYPE (PTCP_TYP_CD)
      on delete restrict on update restrict;

alter table APPLICATION_NOTE_CALL_FR_XREF
   add constraint ADL_TO_ANCFX foreign key (APP_DTL_LVL_CD)
      references APPLICATION_DETAIL_LEVEL (APP_DTL_LVL_CD)
      on delete restrict on update restrict;

alter table APPLICATION_NOTE_CALL_FR_XREF
   add constraint NCFT_TO_ANCFX foreign key (NOTE_CALL_FR_TYP_CD)
      references NOTE_CALL_FROM_TYPE (NOTE_CALL_FR_TYP_CD)
      on delete restrict on update restrict;

alter table APP_DTL_LVL_NOTE_CTG_XREF
    add constraint ADL_TO_ADLNCX foreign key (APP_DTL_LVL_CD)
       references APPLICATION_DETAIL_LEVEL (APP_DTL_LVL_CD)
       on delete restrict on update restrict;

alter table APP_DTL_LVL_NOTE_CTG_XREF
   add constraint NCTGT_TO_ADLNCX foreign key (NOTE_CTG_TYP_CD)
      references NOTE_CATEGORY_TYPE (NOTE_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table APPLICATION_SUB_CONTEXT_TYPE
   add constraint ACT_TO_ASCT foreign key (APP_CNTX_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table APP_DTL_LVL_EJB_JNDI_TYP_XREF
   add constraint ADL_TO_ADLEJX foreign key (APP_DTL_LVL_CD)
      references APPLICATION_DETAIL_LEVEL (APP_DTL_LVL_CD)
      on delete restrict on update restrict;

alter table APP_DTL_LVL_EJB_JNDI_TYP_XREF
   add constraint EJT_TO_ADLEJX foreign key (EJB_JNDI_TYP_CD)
      references EJB_JNDI_TYPE (EJB_JNDI_TYP_CD)
      on delete restrict on update restrict;

alter table AUTHORIZATIONS
   add constraint AUTHST_TO_AUTH foreign key (AUTH_STS_TYP_CD)
      references AUTHORIZATION_STATUS_TYPE (AUTH_STS_TYP_CD)
      on delete restrict on update restrict;

alter table BATCH_LAST_RUN_DATE
   add constraint BJT_TO_BLRD foreign key (BTCH_JOB_TYP_CD)
      references BATCH_JOB_TYPE (BTCH_JOB_TYP_CD)
      on delete restrict on update restrict;

alter table BATCH_LOG
   add constraint ACT_TO_BL foreign key (APP_CNTX_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table BATCH_LOG
   add constraint ASCT_TO_BL foreign key (APP_SUB_CNTX_TYP_CD)
      references APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table BATCH_LOG
   add constraint BJT_TO_BL foreign key (BTCH_JOB_TYP_CD)
      references BATCH_JOB_TYPE (BTCH_JOB_TYP_CD)
      on delete restrict on update restrict;

alter table BATCH_LOG
   add constraint BLT_TO_BL foreign key (BTCH_LOG_TYP_CD)
      references BATCH_LOG_TYPE (BTCH_LOG_TYP_CD)
      on delete restrict on update restrict;
      
alter table BATCH_LOG
   add constraint BJE_TO_BL foreign key (BTCH_JOB_EXECUTION_ID)
      references BATCH_JOB_EXECUTION(JOB_EXECUTION_ID)
      on delete restrict on update restrict;
      
alter table BATCH_LOG
   add constraint BSE_TO_BL foreign key (BTCH_STEP_EXECUTION_ID)
      references BATCH_STEP_EXECUTION(STEP_EXECUTION_ID)
      on delete restrict on update restrict;         

ALTER TABLE BATCH_SCHEDULER  ADD CONSTRAINT BJT_TO_BSPAR FOREIGN KEY (BTCH_JOB_TYP_CD_PAR) REFERENCES 
BATCH_JOB_TYPE (BTCH_JOB_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE BATCH_SCHEDULER  ADD CONSTRAINT BJT_TO_BSCHLD FOREIGN KEY (BTCH_JOB_TYP_CD_CHLD) REFERENCES 
BATCH_JOB_TYPE (BTCH_JOB_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE BATCH_LOG_DETAIL  
   ADD CONSTRAINT BL_TO_BLD FOREIGN KEY (BTCH_LOG_ID) 
   REFERENCES BATCH_LOG (BTCH_LOG_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table BILLING_SCHEDULE_DETAIL
   add constraint PPBD_TO_BSD foreign key (PLCY_PRD_BILL_SCH_ID)
      references POLICY_PERIOD_BILLING_SCHEDULE (PLCY_PRD_BILL_SCH_ID)
      on delete restrict on update restrict;

alter table BILLING_SCHEDULE_DETAIL
   add constraint USER_TO_BSD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table BILLING_SCHEDULE_DETAIL
   add constraint USER_TO_BSD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table BILLING_SCHEDULE_DETAIL_HIST
   add constraint PPDB_TO_BSDH foreign key (PLCY_PRD_BILL_SCH_ID)
      references POLICY_PERIOD_BILLING_SCHEDULE (PLCY_PRD_BILL_SCH_ID)
      on delete restrict on update restrict;
      
alter table BILLING_SCHEDULE_DETAIL_HIST
   add constraint BSD_TO_BSDH foreign key (BILL_SCH_DTL_ID)
      references BILLING_SCHEDULE_DETAIL (BILL_SCH_DTL_ID)
      on delete restrict on update restrict;

alter table BILLING_SCHEDULE_DETAIL_HIST
   add constraint USER_TO_BSDH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table BILLING_SCHEDULE_DETAIL_HIST
   add constraint USER_TO_BSDH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table BILLING_SCHEDULE_DETAIL_AMOUNT
   add constraint BSD_TO_BSDA foreign key (BILL_SCH_DTL_ID)
      references BILLING_SCHEDULE_DETAIL (BILL_SCH_DTL_ID)
      on delete restrict on update restrict;

alter table BILLING_SCHEDULE_DETAIL_AMOUNT
   add constraint SAT_TO_BSDA foreign key (SCH_AMT_TYP_CD)
      references SCHEDULE_AMOUNT_TYPE (SCH_AMT_TYP_CD)
      on delete restrict on update restrict;

alter table BILLING_SCHEDULE_DETAIL_AMOUNT
   add constraint USER_TO_BSDA1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table BILLING_SCHEDULE_DETAIL_AMOUNT
   add constraint USER_TO_BSDA2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table BILLING_SCHEDULE_DTL_AMT_HIST
   add constraint BSDA_TO_BSDAH foreign key (BILL_SCH_DTL_AMT_ID)
      references BILLING_SCHEDULE_DETAIL_AMOUNT (BILL_SCH_DTL_AMT_ID)
      on delete restrict on update restrict;
      
alter table BILLING_SCHEDULE_DTL_AMT_HIST
   add constraint BSD_TO_BSDAH foreign key (BILL_SCH_DTL_ID)
      references BILLING_SCHEDULE_DETAIL (BILL_SCH_DTL_ID)
      on delete restrict on update restrict;

alter table BILLING_SCHEDULE_DTL_AMT_HIST
   add constraint SAT_TO_BSDAH foreign key (SCH_AMT_TYP_CD)
      references SCHEDULE_AMOUNT_TYPE (SCH_AMT_TYP_CD)
      on delete restrict on update restrict;

alter table BILLING_SCHEDULE_DTL_AMT_HIST
   add constraint USER_TO_BSDAH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table BILLING_SCHEDULE_DTL_AMT_HIST
   add constraint USER_TO_BSDAH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table BLOCK
   add constraint BT_TO_BLK foreign key (BLK_TYP_CD)
      references BLOCK_TYPE (BLK_TYP_CD)
      on delete restrict on update restrict;

alter table BLOCK
   add constraint USER_TO_BLK1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table BLOCK
   add constraint USER_TO_BLK2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

--alter table BLOCK_HISTORY
   --add constraint BLK_TO_BLKH foreign key (BLK_ID)
      --references BLOCK (BLK_ID)
      --on delete restrict on update restrict;

--alter table BLOCK_HISTORY
   --add constraint BT_TO_BLKH foreign key (BLK_TYP_CD)
      --references BLOCK_TYPE (BLK_TYP_CD)
      --on delete restrict on update restrict;

--alter table BLOCK_HISTORY
   --add constraint USER_TO_BLKH1 foreign key (AUDIT_USER_ID_CREA)
      --references USERS (USER_ID)
      --on delete restrict on update restrict;

--alter table BLOCK_HISTORY
   --add constraint USER_TO_BLKH2 foreign key (AUDIT_USER_ID_UPDT)
      --references USERS (USER_ID)
      --on delete restrict on update restrict;

--alter table BUREAU
--   add constraint RVT_TO_BUR foreign key (RT_VERF_TYP_CD)
--      references RATING_VERIFICATION_TYPE (RT_VERF_TYP_CD)
--      on delete restrict on update restrict;

alter table BUREAU
   add constraint USER_TO_BUR1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table BUREAU
   add constraint USER_TO_BUR2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

--alter table BUREAU_HISTORY
   --add constraint BUR_TO_BURH foreign key (BUR_ID)
      --references BUREAU (BUR_ID)
      --on delete restrict on update restrict;

--alter table BUREAU_HISTORY
   --add constraint RVT_TO_BURH foreign key (RT_VERF_TYP_CD)
      --references RATING_VERIFICATION_TYPE (RT_VERF_TYP_CD)
      --on delete restrict on update restrict;

--alter table BUREAU_HISTORY
   --add constraint USER_TO_BURH1 foreign key (AUDIT_USER_ID_CREA)
      --references USERS (USER_ID)
      --on delete restrict on update restrict;

--alter table BUREAU_HISTORY
   --add constraint USER_TO_BURH2 foreign key (AUDIT_USER_ID_UPDT)
      --references USERS (USER_ID)
      --on delete restrict on update restrict;

alter table BUSINESS
   add constraint CUST_TO_BUSN foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;
      
alter table BUSINESS_HISTORY
   add constraint CUST_TO_BH foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CAUSE_OF_LOSS_TYPE
   add constraint COLCT_TO_COLT foreign key (CAUS_OF_LOSS_CTG_TYP_CD)
      references CAUSE_OF_LOSS_CATEGORY_TYPE (CAUS_OF_LOSS_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table CERTIFICATE_HOLDER_STND_TXT
   add constraint CSTT_TO_CHST foreign key (CERT_STND_TXT_TYP_CD)
      references CERTIFICATE_STANDARD_TEXT_TYPE (CERT_STND_TXT_TYP_CD)
      on delete restrict on update restrict;

alter table CERTIFICATE_HOLDER_STND_TXT
   add constraint PPPCH_TO_CHST foreign key (PTCP_ID)
      references POLICY_PERIOD_PTCP_CERT_HLDR (PTCP_ID)
      on delete restrict on update restrict;

alter table CERTIFICATE_HLDR_STND_TXT_HIST
   add constraint CSTT_TO_CHSTH foreign key (CERT_STND_TXT_TYP_CD)
      references CERTIFICATE_STANDARD_TEXT_TYPE (CERT_STND_TXT_TYP_CD)
      on delete restrict on update restrict;      

alter table CLAIM
   add constraint AGRE_TO_CLM foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint AIET_TO_CLM foreign key (ACT_IN_EFF_TYP_CD)
      references ACT_IN_EFFECT_TYPE (ACT_IN_EFF_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint CINJRT_TO_CLM foreign key (CTRPH_INJR_TYP_CD)
      references CATASTROPHIC_INJURY_TYPE (CTRPH_INJR_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint CLMCT_TO_CLM foreign key (CLM_COV_TYP_CD)
      references CLAIM_COVERAGE_TYPE (CLM_COV_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint CLMRT_TO_CLM foreign key (CLM_RCVR_TYP_CD)
      references CLAIM_RECOVERY_TYPE (CLM_RCVR_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint CLT_TO_CLM foreign key (CLM_LOSS_TYP_CD)
      references CLAIM_LOSS_TYPE (CLM_LOSS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint COLCT_TO_CLM foreign key (CAUS_OF_LOSS_CTG_TYP_CD)
      references CAUSE_OF_LOSS_CATEGORY_TYPE (CAUS_OF_LOSS_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint COLT_TO_CLM foreign key (CAUS_OF_LOSS_TYP_CD)
      references CAUSE_OF_LOSS_TYPE (CAUS_OF_LOSS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint CSTYP_TO_CLM foreign key (CLM_SETL_TYP_CD)
      references CLAIM_SETTLEMENT_TYPE (CLM_SETL_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint CTRPH_TO_CLM foreign key (CTRPH_CD)
      references CATASTROPHE (CTRPH_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint EDUCLT_TO_CLM foreign key (EDUC_LVL_TYP_CD)
      references EDUCATION_LEVEL_TYPE (EDUC_LVL_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint CLMEST_TO_CLM foreign key (CLM_EMPL_STS_TYP_CD)
      references CLAIM_EMPLOYMENT_STATUS_TYPE (CLM_EMPL_STS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint JT_TO_CLM foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint LCT_TO_CLM foreign key (LOSS_COV_TYP_ID)
      references LOSS_COVERAGE_TYPE (LOSS_COV_TYP_ID)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint LOBT_TO_CLM foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint MEDTT_TO_CLM foreign key (MED_TRT_TYP_CD)
      references MEDICAL_TREATMENT_TYPE (MED_TRT_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint NOICT_TO_CLM foreign key (NOI_CTG_TYP_CD)
      references NATURE_OF_INJURY_CATEGORY_TYPE (NOI_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint NOIT_TO_CLM foreign key (NOI_TYP_CD)
      references NATURE_OF_INJURY_TYPE (NOI_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint OMT_TO_CLM foreign key (OCCR_MEDA_TYP_CD)
      references OCCURRENCE_MEDIA_TYPE (OCCR_MEDA_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint OPT_TO_CLM foreign key (OCCR_PRMS_TYP_CD)
      references OCCURRENCE_PREMISES_TYPE (OCCR_PRMS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint OST_TO_CLM foreign key (OCCR_SRC_TYP_CD)
      references OCCURRENCE_SOURCE_TYPE (OCCR_SRC_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint PILLTYP_TO_CLM foreign key (PRE_INJR_LBR_LVL_TYP_CD)
      references PRE_INJURY_LABOR_LEVEL_TYPE (PRE_INJR_LBR_LVL_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint PILLT_TO_CLM foreign key (POST_INJR_LBR_LVL_TYP_CD)
      references POST_INJURY_LABOR_LEVEL_TYPE (POST_INJR_LBR_LVL_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint STTH_TO_CLM foreign key (CLM_CLMT_HIRE_STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint UCT_TO_CLM foreign key (UNSL_CLM_TYP_CD)
      references UNUSUAL_CLAIM_TYPE (UNSL_CLM_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint USER_TO_CLM1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint USER_TO_CLM2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint NDTLTN_TO_CLM foreign key (NWISP_DTL_TYP_CD_NOI)
      references NWISP_DETAIL_TYPE (NWISP_DTL_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint NDTLTS_TO_CLM foreign key (NWISP_DTL_TYP_CD_SRC_INJR)
      references NWISP_DETAIL_TYPE (NWISP_DTL_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint NDTLTE_TO_CLM foreign key (NWISP_DTL_TYP_CD_EVNT_EXPSR)
      references NWISP_DETAIL_TYPE (NWISP_DTL_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint NDTLTSS_TO_CLM foreign key (NWISP_DTL_TYP_CD_SECD_SRC_INJR)
      references NWISP_DETAIL_TYPE (NWISP_DTL_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint NUT_TO_CLM foreign key (NOC_UNT_TYP_CD)
      references NOC_UNIT_TYPE (NOC_UNT_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint STT_TO_CLM foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table CLAIM
   add constraint CNTRY_TO_CLM foreign key (CNTRY_ID)
      references COUNTRY (CNTRY_ID)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint CLM_TO_CLMH foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint AIET_TO_CLMH foreign key (ACT_IN_EFF_TYP_CD)
      references ACT_IN_EFFECT_TYPE (ACT_IN_EFF_TYP_CD)
      on delete restrict on update restrict;


alter table CLAIM_HISTORY
   add constraint CINJRT_TO_CLMH foreign key (CTRPH_INJR_TYP_CD)
      references CATASTROPHIC_INJURY_TYPE (CTRPH_INJR_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint CLMCT_TO_CLMH foreign key (CLM_COV_TYP_CD)
      references CLAIM_COVERAGE_TYPE (CLM_COV_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint CLMRT_TO_CLMH foreign key (CLM_RCVR_TYP_CD)
      references CLAIM_RECOVERY_TYPE (CLM_RCVR_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint CLT_TO_CLMH foreign key (CLM_LOSS_TYP_CD)
      references CLAIM_LOSS_TYPE (CLM_LOSS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint COLCT_TO_CLMH foreign key (CAUS_OF_LOSS_CTG_TYP_CD)
      references CAUSE_OF_LOSS_CATEGORY_TYPE (CAUS_OF_LOSS_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint COLT_TO_CLMH foreign key (CAUS_OF_LOSS_TYP_CD)
      references CAUSE_OF_LOSS_TYPE (CAUS_OF_LOSS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint CSTYP_TO_CLMH foreign key (CLM_SETL_TYP_CD)
      references CLAIM_SETTLEMENT_TYPE (CLM_SETL_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint CTRPH_TO_CLMH foreign key (CTRPH_CD)
      references CATASTROPHE (CTRPH_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint EDUCLT_TO_CLMH foreign key (EDUC_LVL_TYP_CD)
      references EDUCATION_LEVEL_TYPE (EDUC_LVL_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint CLMEST_TO_CLMH foreign key (CLM_EMPL_STS_TYP_CD)
      references CLAIM_EMPLOYMENT_STATUS_TYPE (CLM_EMPL_STS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint JT_TO_CLMH foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint LCT_TO_CLMH foreign key (LOSS_COV_TYP_ID)
      references LOSS_COVERAGE_TYPE (LOSS_COV_TYP_ID)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint LOBT_TO_CLMH foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint MEDTT_TO_CLMH foreign key (MED_TRT_TYP_CD)
      references MEDICAL_TREATMENT_TYPE (MED_TRT_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint NOICT_TO_CLMH foreign key (NOI_CTG_TYP_CD)
      references NATURE_OF_INJURY_CATEGORY_TYPE (NOI_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint NOIT_TO_CLMH foreign key (NOI_TYP_CD)
      references NATURE_OF_INJURY_TYPE (NOI_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint OMT_TO_CLMH foreign key (OCCR_MEDA_TYP_CD)
      references OCCURRENCE_MEDIA_TYPE (OCCR_MEDA_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint OPT_TO_CLMH foreign key (OCCR_PRMS_TYP_CD)
      references OCCURRENCE_PREMISES_TYPE (OCCR_PRMS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint OST_TO_CLMH foreign key (OCCR_SRC_TYP_CD)
      references OCCURRENCE_SOURCE_TYPE (OCCR_SRC_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint PILLTYP_TO_CLMH foreign key (PRE_INJR_LBR_LVL_TYP_CD)
      references PRE_INJURY_LABOR_LEVEL_TYPE (PRE_INJR_LBR_LVL_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint PILLT_TO_CLMH foreign key (POST_INJR_LBR_LVL_TYP_CD)
      references POST_INJURY_LABOR_LEVEL_TYPE (POST_INJR_LBR_LVL_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint STTH_TO_CLMH foreign key (CLM_CLMT_HIRE_STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint UCT_TO_CLMH foreign key (UNSL_CLM_TYP_CD)
      references UNUSUAL_CLAIM_TYPE (UNSL_CLM_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint USER_TO_CLMH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint USER_TO_CLMH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint NDTLTN_TO_CLMH foreign key (NWISP_DTL_TYP_CD_NOI)
      references NWISP_DETAIL_TYPE (NWISP_DTL_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint NDTLTS_TO_CLMH foreign key (NWISP_DTL_TYP_CD_SRC_INJR)
      references NWISP_DETAIL_TYPE (NWISP_DTL_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint NDTLTE_TO_CLMH foreign key (NWISP_DTL_TYP_CD_EVNT_EXPSR)
      references NWISP_DETAIL_TYPE (NWISP_DTL_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint NDTLTSS_TO_CLMH foreign key (NWISP_DTL_TYP_CD_SECD_SRC_INJR)
      references NWISP_DETAIL_TYPE (NWISP_DTL_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint NUT_TO_CLMH foreign key (NOC_UNT_TYP_CD)
      references NOC_UNIT_TYPE (NOC_UNT_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint STT_TO_CLMH foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table CLAIM_HISTORY
   add constraint CNTRY_TO_CLMH foreign key (CNTRY_ID)
      references COUNTRY (CNTRY_ID)
      on delete restrict on update restrict;

alter table CLAIM_ALIAS_NUMBER
   add constraint CANT_TO_CAN foreign key (CLM_ALIAS_NO_TYP_CD)
      references CLAIM_ALIAS_NUMBER_TYPE (CLM_ALIAS_NO_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_ALIAS_NUMBER
   add constraint CLM_TO_CAN foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_ALIAS_NUMBER
   add constraint USER_TO_CAN1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_ALIAS_NUMBER
   add constraint USER_TO_CAN2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_ALIAS_NUMBER_HISTORY
   add constraint CAN_TO_CANH foreign key (CLM_ALIAS_NO_ID)
      references CLAIM_ALIAS_NUMBER(CLM_ALIAS_NO_ID)
      on delete restrict on update restrict;
 
alter table CLAIM_ALIAS_NUMBER_HISTORY
   add constraint CANT_TO_CANH foreign key (CLM_ALIAS_NO_TYP_CD)
      references CLAIM_ALIAS_NUMBER_TYPE (CLM_ALIAS_NO_TYP_CD)
      on delete restrict on update restrict;
  
alter table CLAIM_ALIAS_NUMBER_HISTORY  
 add constraint CLM_TO_CANH foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;
 
alter table CLAIM_ALIAS_NUMBER_HISTORY
   add constraint USER_TO_CANH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
 
alter table CLAIM_ALIAS_NUMBER_HISTORY
   add constraint USER_TO_CANH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table CLAIM_AVERAGE_WAGE
   add constraint CAWCST_TO_CAW foreign key (CAWCST_CD)
      references CLAIM_AVERAGE_WG_CALC_STS_TYP (CAWCST_CD)
      on delete restrict on update restrict;

alter table CLAIM_AVERAGE_WAGE
   add constraint CAWT_TO_CAW foreign key (CLM_AVG_WG_TYP_CD)
      references CLAIM_AVERAGE_WAGE_TYPE (CLM_AVG_WG_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_AVERAGE_WAGE
   add constraint CLM_TO_CAW foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_AVERAGE_WAGE
   add constraint USER_TO_CAW1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_AVERAGE_WAGE
   add constraint USER_TO_CAW2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_AVERAGE_WAGE_HISTORY
   add constraint CAW_TO_CAWH foreign key (CLM_AVG_WG_ID)
      references CLAIM_AVERAGE_WAGE (CLM_AVG_WG_ID)
      on delete restrict on update restrict;

alter table CLAIM_AVERAGE_WAGE_HISTORY
   add constraint CAWCST_TO_CAWH foreign key (CAWCST_CD)
      references CLAIM_AVERAGE_WG_CALC_STS_TYP (CAWCST_CD)
      on delete restrict on update restrict;

alter table CLAIM_AVERAGE_WAGE_HISTORY
   add constraint CAWT_TO_CAWH foreign key (CLM_AVG_WG_TYP_CD)
      references CLAIM_AVERAGE_WAGE_TYPE (CLM_AVG_WG_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_AVERAGE_WAGE_HISTORY
   add constraint CLM_TO_CAWH foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_AVERAGE_WAGE_HISTORY
   add constraint USER_TO_CAWH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_AVERAGE_WAGE_HISTORY
   add constraint USER_TO_CAWH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_AVERAGE_WAGE_JUR_XREF
   add constraint CAWT_TO_CAWJX foreign key (CLM_AVG_WG_TYP_CD)
      references CLAIM_AVERAGE_WAGE_TYPE (CLM_AVG_WG_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_AVERAGE_WAGE_JUR_XREF
   add constraint JT_TO_CAWJX foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;


alter table AGREEMENT_ASSIGNMENT_OVERRIDE
   add constraint AGRE_TO_AAO foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict;

alter table AGREEMENT_ASSIGNMENT_OVERRIDE
   add constraint USER_TO_AAO foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table AGREEMENT_ASSIGNMENT_OVERRIDE
   add constraint FR_TO_AAO foreign key (FNCT_ROLE_ID)
      references FUNCTIONAL_ROLE (FNCT_ROLE_ID)
      on delete restrict on update restrict;


alter table AGREEMENT_ASSIGNMENT_OVERRIDE
   add constraint OU_TO_AAO foreign key (ORG_UNT_ID)
      references ORGANIZATIONAL_UNIT (ORG_UNT_ID)
      on delete restrict on update restrict;

alter table CLAIM_AVERAGE_WAGE_WG_SRC_DTL
   add constraint CAW_TO_CAWWSD foreign key (CLM_AVG_WG_ID)
      references CLAIM_AVERAGE_WAGE (CLM_AVG_WG_ID)
      on delete restrict on update restrict;


alter table CLAIM_AVERAGE_WAGE_WG_SRC_DTL
   add constraint CWSD_TO_CAWWSD foreign key (CLM_WG_SRC_DTL_ID)
      references CLAIM_WAGE_SOURCE_DETAIL (CLM_WG_SRC_DTL_ID)
      on delete restrict on update restrict;

alter table CLAIM_AVERAGE_WAGE_WG_SRC_DTL
   add constraint USER_TO_CAWWSD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_AVERAGE_WAGE_WG_SRC_DTL
   add constraint USER_TO_CAWWSD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)

      on delete restrict on update restrict;

alter table CLAIM_AVG_WG_WG_SRC_DTL_HIST
   add constraint CAWWSD_TO_CAWWSDH foreign key (CAWWSD_ID)
      references CLAIM_AVERAGE_WAGE_WG_SRC_DTL (CAWWSD_ID)
      on delete restrict on update restrict;

alter table CLAIM_AVG_WG_WG_SRC_DTL_HIST
   add constraint CAW_TO_CAWWSDH foreign key (CLM_AVG_WG_ID)
      references CLAIM_AVERAGE_WAGE (CLM_AVG_WG_ID)
      on delete restrict on update restrict;

alter table CLAIM_AVG_WG_WG_SRC_DTL_HIST
   add constraint CWSD_TO_CAWWSDH foreign key (CLM_WG_SRC_DTL_ID)
      references CLAIM_WAGE_SOURCE_DETAIL (CLM_WG_SRC_DTL_ID)
      on delete restrict on update restrict;

alter table CLAIM_AVG_WG_WG_SRC_DTL_HIST
   add constraint USER_TO_CAWWSDH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_AVG_WG_WG_SRC_DTL_HIST
   add constraint USER_TO_CAWWSDH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_CLAIM_STATUS
   add constraint CLMSTST_TO_CCS foreign key (CLM_STS_TYP_CD)
      references CLAIM_STATUS_TYPE (CLM_STS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_CLAIM_STATUS
   add constraint CLMST_TO_CCS foreign key (CLM_STT_TYP_CD)
      references CLAIM_STATE_TYPE (CLM_STT_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_CLAIM_STATUS
   add constraint CLM_TO_CCS foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_CLAIM_STATUS
   add constraint CTRT_TO_CCS foreign key (CLM_TRANS_RSN_TYP_CD)
      references CLAIM_TRANSITION_REASON_TYPE (CLM_TRANS_RSN_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_CLAIM_STATUS
   add constraint USER_TO_CCS1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_CLAIM_STATUS
   add constraint USER_TO_CCS2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table CLAIM_CLAIM_STATUS_HISTORY
   add constraint CCS_TO_CCSH foreign key (CLM_CLM_STS_ID)
      references CLAIM_CLAIM_STATUS (CLM_CLM_STS_ID)
      on delete restrict on update restrict;

alter table CLAIM_CLAIM_STATUS_HISTORY
   add constraint CLM_TO_CCSH foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_CLAIM_STATUS_HISTORY
   add constraint CLMSTST_TO_CCSH foreign key (CLM_STS_TYP_CD)
      references CLAIM_STATUS_TYPE (CLM_STS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_CLAIM_STATUS_HISTORY
   add constraint CLMST_TO_CCSH foreign key (CLM_STT_TYP_CD)
      references CLAIM_STATE_TYPE (CLM_STT_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_CLAIM_STATUS_HISTORY
   add constraint CTRT_TO_CCSH foreign key (CLM_TRANS_RSN_TYP_CD)
      references CLAIM_TRANSITION_REASON_TYPE (CLM_TRANS_RSN_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_CLAIM_STATUS_HISTORY
   add constraint USER_TO_CCSH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_CLAIM_STATUS_HISTORY
   add constraint USER_TO_CCSH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table CLAIM_CLAIM_TYPE
   add constraint CLMT_TO_CCT foreign key (CLM_TYP_CD)
      references CLAIM_TYPE (CLM_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_CLAIM_TYPE
   add constraint CLM_TO_CCT foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_CLAIM_TYPE
   add constraint USER_TO_CCT1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_CLAIM_TYPE
   add constraint USER_TO_CCT2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table CLAIM_CLAIM_TYPE_HISTORY
   add constraint CCT_TO_CCTH foreign key (CLM_CLM_TYP_ID)
      references CLAIM_CLAIM_TYPE (CLM_CLM_TYP_ID)
      on delete restrict on update restrict;


alter table CLAIM_CLAIM_TYPE_HISTORY
   add constraint CLMT_TO_CCTH foreign key (CLM_TYP_CD)
      references CLAIM_TYPE (CLM_TYP_CD)
      on delete restrict on update restrict;


alter table CLAIM_CLAIM_TYPE_HISTORY
   add constraint CLM_TO_CCTH foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_CLAIM_TYPE_HISTORY
   add constraint USER_TO_CCTH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_CLAIM_TYPE_HISTORY
   add constraint USER_TO_CCTH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_COVERAGE
   add constraint CCOT_TO_CCOV foreign key (CLM_COV_OVRRD_TYP_CD)
      references CLAIM_COVERAGE_OVERRIDE_TYPE (CLM_COV_OVRRD_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_COVERAGE
   add constraint CCST_TO_CCOV foreign key (CLM_COV_STS_TYP_CD)
      references CLAIM_COVERAGE_STATUS_TYPE (CLM_COV_STS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_COVERAGE
   add constraint CPI_TO_CCOV foreign key (CLM_PTCP_INSRD_ID)
      references CLAIM_PARTICIPATION_INSRD (CLM_PTCP_INSRD_ID)
      on delete restrict on update restrict;

alter table CLAIM_COVERAGE
   add constraint USER_TO_CCOV1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_COVERAGE
   add constraint USER_TO_CCOV2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_COVERAGE
   add constraint PDST_TO_CCOV foreign key (PLCY_DATA_SRC_TYP_CD)
      references POLICY_DATA_SOURCE_TYPE (PLCY_DATA_SRC_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_COVERAGE
   add constraint RIOCP_TO_CCOV foreign key (RIOCP_ID)
      references ROLE_INSURED_OTHER_CAR_PLCY (RIOCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_COVERAGE
   add constraint RIOCPC_TO_CCOV foreign key (RIOCPC_ID)
      references ROLE_INSRD_OTHR_CAR_PLCY_CLS (RIOCPC_ID)
      on delete restrict on update restrict;

alter table CLAIM_COVERAGE
   add constraint RIOCPL_TO_CCOV foreign key (RIOCPL_ID)
      references ROLE_INSRD_OTHR_CAR_PLCY_LOC (RIOCPL_ID)
      on delete restrict on update restrict;

alter table CLAIM_COVERAGE_HISTORY
   add constraint CCOT_TO_CCOVH foreign key (CLM_COV_OVRRD_TYP_CD)
      references CLAIM_COVERAGE_OVERRIDE_TYPE (CLM_COV_OVRRD_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_COVERAGE_HISTORY
   add constraint CCOV_TO_CCOVH foreign key (CLM_COV_ID)
      references CLAIM_COVERAGE (CLM_COV_ID)
      on delete restrict on update restrict;


alter table CLAIM_COVERAGE_HISTORY
   add constraint CCST_TO_CCOVH foreign key (CLM_COV_STS_TYP_CD)
      references CLAIM_COVERAGE_STATUS_TYPE (CLM_COV_STS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_COVERAGE_HISTORY
   add constraint CPI_TO_CCOVH foreign key (CLM_PTCP_INSRD_ID)
      references CLAIM_PARTICIPATION_INSRD (CLM_PTCP_INSRD_ID)
      on delete restrict on update restrict;

alter table CLAIM_COVERAGE_HISTORY
   add constraint USER_TO_CCOVH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_COVERAGE_HISTORY
   add constraint USER_TO_CCOVH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table CLAIM_COVERAGE_HISTORY
   add constraint PDST_TO_CCOVH foreign key (PLCY_DATA_SRC_TYP_CD)
      references POLICY_DATA_SOURCE_TYPE (PLCY_DATA_SRC_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_COVERAGE_HISTORY
   add constraint RIOCP_TO_CCOVH foreign key (RIOCP_ID)
      references ROLE_INSURED_OTHER_CAR_PLCY (RIOCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_COVERAGE_HISTORY
   add constraint RIOCPC_TO_CCOVH foreign key (RIOCPC_ID)
      references ROLE_INSRD_OTHR_CAR_PLCY_CLS (RIOCPC_ID)
      on delete restrict on update restrict;

alter table CLAIM_COVERAGE_HISTORY
   add constraint RIOCPL_TO_CCOVH foreign key (RIOCPL_ID)
      references ROLE_INSRD_OTHR_CAR_PLCY_LOC (RIOCPL_ID)
      on delete restrict on update restrict;

alter table CLAIM_DCSN_CLM_DCSN_CTG_XREF
   add constraint CDCSNT_TO_CDCDCX foreign key (CLM_DCSN_TYP_CD)
      references CLAIM_DECISION_TYPE (CLM_DCSN_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_DCSN_CLM_DCSN_CTG_XREF
   add constraint CDCT_TO_CDCDCX foreign key (CLM_DCSN_CTG_TYP_CD)
      references CLAIM_DECISION_CATEGORY_TYPE (CLM_DCSN_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_DECISION
   add constraint CDCDCX_TO_CD foreign key (CDCDCX_ID)
      references CLAIM_DCSN_CLM_DCSN_CTG_XREF (CDCDCX_ID)
      on delete restrict on update restrict;

alter table CLAIM_DECISION
   add constraint CDST_TO_CD foreign key (CLM_DCSN_STS_TYP_CD)
      references CLAIM_DECISION_STATUS_TYPE (CLM_DCSN_STS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_DECISION
   add constraint CLM_TO_CD foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_DECISION
   add constraint USER_TO_CD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_DECISION
   add constraint USER_TO_CD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_DECISION_HISTORY
   add constraint CDCDCX_TO_CDH foreign key (CDCDCX_ID)
      references CLAIM_DCSN_CLM_DCSN_CTG_XREF (CDCDCX_ID)
      on delete restrict on update restrict;

alter table CLAIM_DECISION_HISTORY
   add constraint CDST_TO_CDH foreign key (CLM_DCSN_STS_TYP_CD)
      references CLAIM_DECISION_STATUS_TYPE (CLM_DCSN_STS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_DECISION_HISTORY
   add constraint CD_TO_CDH foreign key (CLM_DCSN_ID)
      references CLAIM_DECISION (CLM_DCSN_ID)
      on delete restrict on update restrict;

alter table CLAIM_DECISION_HISTORY
   add constraint CLM_TO_CDH foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_DECISION_HISTORY
   add constraint USER_TO_CDH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_DECISION_HISTORY
   add constraint USER_TO_CDH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_EARNING_CAPACITY
   add constraint CLM_TO_CEC foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_EARNING_CAPACITY
   add constraint USER_TO_CEC1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_EARNING_CAPACITY
   add constraint USER_TO_CEC2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_EARNING_CAPACITY_HIST
   add constraint CEC_TO_CECH foreign key (CLM_EARN_CAP_ID)
      references CLAIM_EARNING_CAPACITY (CLM_EARN_CAP_ID)
      on delete restrict on update restrict;

alter table CLAIM_EARNING_CAPACITY_HIST
   add constraint USER_TO_CECH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_EARNING_CAPACITY_HIST
   add constraint USER_TO_CECH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_EMPL_STS_CLM_WG_XREF
   add constraint CLMEST_TO_CESCWX foreign key (CLM_EMPL_STS_TYP_CD)
      references CLAIM_EMPLOYMENT_STATUS_TYPE (CLM_EMPL_STS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_EMPL_STS_CLM_WG_XREF
   add constraint CWT_TO_CESCWX foreign key (CLM_WG_TYP_CD)
      references CLAIM_WAGE_TYPE (CLM_WG_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE FEDERAL_INCOME_TAX_WITHHOLDING
   ADD CONSTRAINT WMST_TO_FITW FOREIGN KEY (WH_MAR_STS_TYP_CD)
      REFERENCES WITHHOLDING_MARITAL_STATUS_TYP(WH_MAR_STS_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE FEDERAL_INCOME_TAX_WITHHOLDING
   ADD CONSTRAINT PPT_TO_FITW FOREIGN KEY (PYRL_PRD_TYP_CD)
      REFERENCES PAYROLL_PERIOD_TYPE (PYRL_PRD_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_AVERAGE_WG_PYRL_PRD_XREF
   ADD CONSTRAINT CAWT_TO_CAWPPX FOREIGN KEY (CLM_AVG_WG_TYP_CD)
      REFERENCES CLAIM_AVERAGE_WAGE_TYPE (CLM_AVG_WG_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_AVERAGE_WG_PYRL_PRD_XREF
   ADD CONSTRAINT PPT_TO_CAWPPX FOREIGN KEY (PYRL_PRD_TYP_CD)
      REFERENCES PAYROLL_PERIOD_TYPE (PYRL_PRD_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE FICA_TAX_RATE
   ADD CONSTRAINT FICATT_TO_FICATR FOREIGN KEY (FICA_TAX_TYP_CD)
      REFERENCES FICA_TAX_TYPE (FICA_TAX_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE JURISDICTION_INCOME_TAX_WH
   ADD CONSTRAINT JT_TO_JITW FOREIGN KEY (JUR_TYP_CD)
      REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE JURISDICTION_INCOME_TAX_WH
   ADD CONSTRAINT WMST_TO_JITW FOREIGN KEY (WH_MAR_STS_TYP_CD)
      REFERENCES WITHHOLDING_MARITAL_STATUS_TYP (WH_MAR_STS_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE JURISDICTION_INCOME_TAX_WH
   ADD CONSTRAINT PPT_TO_JITW FOREIGN KEY (PYRL_PRD_TYP_CD)
      REFERENCES PAYROLL_PERIOD_TYPE (PYRL_PRD_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table TAX_FILING_STATUS_TYPE
  add constraint WMST_TO_TFST foreign key (WH_MAR_STS_TYP_CD)
    references WITHHOLDING_MARITAL_STATUS_TYP (WH_MAR_STS_TYP_CD)
    on delete restrict on update restrict;
      
alter table CLAIM_FINANCIAL_TRANSACTION
   add constraint CUST_TO_CFT foreign key (CUST_ID)
	  references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_TRANSACTION
   add constraint CCTYP_TO_CFT foreign key (CST_CNTR_TYP_CD)
	  references COST_CENTER_TYPE (CST_CNTR_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_TRANSACTION
   add constraint PTCP_TO_CFT foreign key (PTCP_ID)
	  references PARTICIPATION (PTCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_TRANSACTION
   add constraint PAYT_TO_CFT foreign key (PAY_TYP_CD)
	  references PAYMENT_TYPE (PAY_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_TRANSACTION
   add constraint FTT_TO_CFT foreign key (FNCL_TRAN_TYP_ID)
	  references FINANCIAL_TRANSACTION_TYPE (FNCL_TRAN_TYP_ID)
      on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_TRANSACTION
   add constraint CLM_TO_CFT FOREIGN KEY (AGRE_ID)
	  references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_TRANSACTION
   add constraint BNFTT_TO_CFT foreign key (BNFT_TYP_CD)
	  references BENEFIT_TYPE (BNFT_TYP_CD)
      on delete restrict on update restrict;      

alter table CLAIM_FINANCIAL_TRAN_LNK
   add constraint CFT_TO_CFTLPRI foreign key (CFT_ID_PRI)
      references CLAIM_FINANCIAL_TRANSACTION (CFT_ID) on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_TRAN_LNK
   add constraint CFT_TO_CFTLSECD foreign key (CFT_ID_SECD)
      references CLAIM_FINANCIAL_TRANSACTION (CFT_ID) on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_TRAN_LNK
   add constraint CFTLT_TO_CFTL foreign key (CFT_LNK_TYP_CD)
      references CLAIM_FINANCIAL_TRAN_LNK_TYP (CFT_LNK_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_TRAN_LNK
   add constraint USER_TO_CFTL1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
     
alter table CLAIM_FINANCIAL_TRAN_LNK
   add constraint USER_TO_CFTL2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

--TABLES NOT IMPLEMENTED YET
--alter table CLAIM_FINANCIAL_TRANSACTION
--   add constraint PBD_TO_CFT foreign key (PAY_BTCH_DTL_ID)
--      references PAYMENT_BATCH_DETAIL (PAY_BTCH_DTL_ID)
--      on delete restrict on update restrict;

--alter table CLAIM_FINANCIAL_TRANSACTION
--   add constraint PBD_TO_CFT foreign key (PAY_BTCH_ID)
--      references PAYMENT_BATCH (PAY_BTCH_ID)
--      on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_TRANSACTION
   add constraint USER_TO_CFT1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
     
alter table CLAIM_FINANCIAL_TRANSACTION
   add constraint USER_TO_CFT2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_TRAN_APP
   add constraint FTAT_TO_CFTA foreign key (FTAT_ID)
	  references FINANCIAL_TRANSACTION_APP_TYP (FTAT_ID)
      on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_TRAN_APP
   add constraint CFT_TO_CFTARVRS foreign key (CFT_ID_RVRS)
	  references CLAIM_FINANCIAL_TRANSACTION (CFT_ID)
      on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_TRAN_APP
   add constraint CFT_TO_CFTATO foreign key (CFT_ID_APLD_TO)
	  references CLAIM_FINANCIAL_TRANSACTION (CFT_ID)
      on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_TRAN_APP
   add constraint CFT_TO_CFTAFR foreign key (CFT_ID_APLD_FR)
	  references CLAIM_FINANCIAL_TRANSACTION (CFT_ID)
      on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_TRAN_APP
   add constraint USER_TO_CFTA1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
     
alter table CLAIM_FINANCIAL_TRAN_APP
   add constraint USER_TO_CFTA2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;



alter table CLAIM_FINANCIAL_TRAN_TRN
   add constraint CFT_TO_CFTTFR foreign key (CFT_ID_TRN_FR)
	  references CLAIM_FINANCIAL_TRANSACTION (cft_id)
      on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_TRAN_TRN
   add constraint CFT_TO_CFTTTO foreign key (CFT_ID_TRN_TO)
	  references CLAIM_FINANCIAL_TRANSACTION (CFT_ID)
      on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_TRAN_BILL
   add constraint CFT_TO_CFTB foreign key (CFT_ID)
	  references CLAIM_FINANCIAL_TRANSACTION (CFT_ID)
      on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_TRAN_BILL
   add constraint BLI_TO_CFTB foreign key (BILL_LN_ITEM_ID)
	  references BILL_LINE_ITEM (BILL_LN_ITEM_ID)
      on delete restrict on update restrict;
alter table CLAIM_ICD_STATUS
   add constraint AGRE_TO_CIS foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_ICD_STATUS
   add constraint ICD_TO_CIS foreign key (ICD_ID)
      references ICD (ICD_ID)
      on delete restrict on update restrict;

alter table CLAIM_ICD_STATUS
   add constraint ISTYP_TO_CIS foreign key (ICD_STS_TYP_CD)
      references ICD_STATUS_TYPE (ICD_STS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_ICD_STATUS
   add constraint USER_TO_CIS1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_ICD_STATUS
   add constraint USER_TO_CIS2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_ICD_STATUS_HISTORY
   add constraint CIS_TO_CISH foreign key (CLM_ICD_STS_ID)
      references CLAIM_ICD_STATUS (CLM_ICD_STS_ID)
      on delete restrict on update restrict;

alter table CLAIM_ICD_STATUS_HISTORY
   add constraint ICD_TO_CISH foreign key (ICD_ID)
      references ICD (ICD_ID)
      on delete restrict on update restrict;

alter table CLAIM_ICD_STATUS_HISTORY
   add constraint AGRE_TO_CISH foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_ICD_STATUS_HISTORY
   add constraint ISTYP_TO_CISH foreign key (ICD_STS_TYP_CD)
      references ICD_STATUS_TYPE (ICD_STS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_ICD_STATUS_HISTORY
   add constraint USER_TO_CISH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_ICD_STATUS_HISTORY
   add constraint USER_TO_CISH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table CLAIM_IMPAIRMENT
   add constraint CLM_TO_CLMI foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_IMPAIRMENT
   add constraint CPPROV_TO_CLMI foreign key (CLM_PTCP_PROV_ID)
      references CLAIM_PARTICIPATION_PROV (CLM_PTCP_PROV_ID)
      on delete restrict on update restrict;

alter table CLAIM_IMPAIRMENT
   add constraint USER_TO_CLMI1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_IMPAIRMENT
   add constraint USER_TO_CLMI2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_IMPAIRMENT_HISTORY
   add constraint CLMI_TO_CLMIH foreign key (CLM_IMPR_ID)
      references CLAIM_IMPAIRMENT (CLM_IMPR_ID)
      on delete restrict on update restrict;

alter table CLAIM_IMPAIRMENT_HISTORY
   add constraint CLM_TO_CLMIH foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_IMPAIRMENT_HISTORY
   add constraint CPPROV_TO_CLMIH foreign key (CLM_PTCP_PROV_ID)
      references CLAIM_PARTICIPATION_PROV (CLM_PTCP_PROV_ID)
      on delete restrict on update restrict;

alter table CLAIM_IMPAIRMENT_HISTORY
   add constraint USER_TO_CLMIH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_IMPAIRMENT_HISTORY
   add constraint USER_TO_CLMIH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table CLAIM_INJURY_XREF
   add constraint CLMT_TO_CIX foreign key (CLM_TYP_CD)
      references CLAIM_TYPE (CLM_TYP_CD)
      on delete restrict on update restrict;

alter table INJURY_TYPE
   add constraint NIT_TO_INJRT foreign key (NCCI_INJR_TYP_ID)
      references NCCI_INJURY_TYPE (NCCI_INJR_TYP_ID)
      on delete restrict on update restrict;

alter table INJURY_TYPE
  add constraint JT_TO_INJRT foreign key (JUR_TYP_CD)
  references JURISDICTION_TYPE (JUR_TYP_CD)
  on delete restrict on update restrict;

alter table CLAIM_INJURY_XREF
   add constraint INJRT_TO_CIX foreign key (INJR_TYP_CD)
      references INJURY_TYPE (INJR_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_NONCUSTOMER_PARTICIPANT
   add constraint CLM_TO_CNP foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_NONCUSTOMER_PARTICIPANT
   add constraint CNTRY_TO_CNP foreign key (CNTRY_ID)
      references COUNTRY (CNTRY_ID)
      on delete restrict on update restrict;

alter table CLAIM_NONCUSTOMER_PARTICIPANT
   add constraint USER_TO_CNP1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_NONCUSTOMER_PARTICIPANT
   add constraint USER_TO_CNP2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_NONCUSTOMER_PTCP_HIST
   add constraint CLM_TO_CNPH foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_NONCUSTOMER_PTCP_HIST
   add constraint CNP_TO_CNPH foreign key (CLM_NONCUST_PTCP_ID)
      references CLAIM_NONCUSTOMER_PARTICIPANT (CLM_NONCUST_PTCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_NONCUSTOMER_PTCP_HIST
   add constraint CNTRY_TO_CNPH foreign key (CNTRY_ID)
      references COUNTRY (CNTRY_ID)
      on delete restrict on update restrict;

alter table CLAIM_NONCUSTOMER_PTCP_HIST
   add constraint USER_TO_CNPH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_NONCUSTOMER_PTCP_HIST
   add constraint USER_TO_CNPH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table CLAIM_OTHER_DATE
   add constraint CDT_TO_COD foreign key (CLM_DT_TYP_CD)
      references CLAIM_DATE_TYPE (CLM_DT_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_OTHER_DATE
   add constraint CLM_TO_COD foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_OTHER_DATE
   add constraint USER_TO_COD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_OTHER_DATE
   add constraint USER_TO_COD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_OTHER_DATE_HISTORY
   add constraint COD_TO_CODH foreign key (CLM_OTHR_DT_ID)
      references CLAIM_OTHER_DATE (CLM_OTHR_DT_ID)
      on delete restrict on update restrict;

alter table CLAIM_OTHER_DATE_HISTORY 
   add constraint CDT_TO_CODH foreign key (CLM_DT_TYP_CD)
      references CLAIM_DATE_TYPE (CLM_DT_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_OTHER_DATE_HISTORY 
   add constraint CLM_TO_CODH foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_OTHER_DATE_HISTORY 
   add constraint USER_TO_CODH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_OTHER_DATE_HISTORY 
   add constraint USER_TO_CODH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
alter table CLAIM_OWNER
   add constraint CLM_TO_CO foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_OWNER
   add constraint COT_TO_CO foreign key (CLM_OWNR_TYP_CD)
      references CLAIM_OWNER_TYPE (CLM_OWNR_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_OWNER
   add constraint CUST_TO_CO foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION
   add constraint PTCP_TO_CPTCP foreign key (PTCP_ID)
      references PARTICIPATION (PTCP_ID)
      on delete restrict on update restrict;



alter table CLAIM_PARTICIPATION
   add constraint USER_TO_CPTCP1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION
   add constraint USER_TO_CPTCP2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_ATTY
   add constraint CPTCP_TO_CPA foreign key (CLM_PTCP_ID)
      references CLAIM_PARTICIPATION (CLM_PTCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_ATTY
   add constraint RT_TO_CPA foreign key (REP_TYP_CD)
      references REPRESENTATION_TYPE (REP_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_ATTY
   add constraint USER_TO_CPA1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_ATTY
   add constraint USER_TO_CPA2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_ATTY_HIST
   add constraint CPA_TO_CPAH foreign key (CLM_PTCP_ATTY_ID)
      references CLAIM_PARTICIPATION_ATTY (CLM_PTCP_ATTY_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_ATTY_HIST
   add constraint CPTCP_TO_CPAH foreign key (CLM_PTCP_ID)
      references CLAIM_PARTICIPATION (CLM_PTCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_ATTY_HIST
   add constraint RT_TO_CPAH foreign key (REP_TYP_CD)
      references REPRESENTATION_TYPE (REP_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_ATTY_HIST
   add constraint USER_TO_CPAH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_ATTY_HIST
   add constraint USER_TO_CPAH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table CLAIM_PARTICIPATION_BNFCY
   add constraint BNFCYT_TO_CPB foreign key (BNFCY_TYP_CD)
      references BENEFICIARY_TYPE (BNFCY_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_BNFCY
   add constraint CPTCP_TO_CPB foreign key (CLM_PTCP_ID)
      references CLAIM_PARTICIPATION (CLM_PTCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_BNFCY
   add constraint USER_TO_CPB1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_BNFCY
   add constraint USER_TO_CPB2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_BNFCY_DEP
   add constraint CPB_TO_CPBD foreign key (CLM_PTCP_BNFCY_ID)
      references CLAIM_PARTICIPATION_BNFCY (CLM_PTCP_BNFCY_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_BNFCY_DEP
   add constraint USER_TO_CPBD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_BNFCY_DEP
   add constraint USER_TO_CPBD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_BNFCY_HIST
   add constraint BNFCYT_TO_CPBH foreign key (BNFCY_TYP_CD)
      references BENEFICIARY_TYPE (BNFCY_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_BNFCY_HIST
   add constraint CPB_TO_CPBH foreign key (CLM_PTCP_BNFCY_ID)
      references CLAIM_PARTICIPATION_BNFCY (CLM_PTCP_BNFCY_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_BNFCY_HIST
   add constraint CPTCP_TO_CPBH foreign key (CLM_PTCP_ID)
      references CLAIM_PARTICIPATION (CLM_PTCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_BNFCY_HIST
   add constraint USER_TO_CPBH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_BNFCY_HIST
   add constraint USER_TO_CPBH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table CLAIM_PARTICIPATION_DEP
   add constraint CPTCP_TO_CPD foreign key (CLM_PTCP_ID)
      references CLAIM_PARTICIPATION (CLM_PTCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_DEP
   add constraint CPDT_TO_CPD foreign key (CLM_PTCP_DEP_TYP_CD)
      references CLAIM_PARTICIPATION_DEP_TYP (CLM_PTCP_DEP_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_DEP
   add constraint LOST_TO_CPD foreign key (LVL_OF_SUPT_TYP_CD)
      references LEVEL_OF_SUPPORT_TYPE (LVL_OF_SUPT_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_DEP
   add constraint RLT_TO_CPD foreign key (RLT_ID)
      references RELATIONSHIP (RLT_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_DEP
   add constraint USER_TO_CPD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_DEP
   add constraint USER_TO_CPD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_DEP_HIST
   add constraint CPD_TO_CPDH foreign key (CLM_PTCP_DEP_ID)
      references CLAIM_PARTICIPATION_DEP (CLM_PTCP_DEP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_DEP_HIST
   add constraint CPTCP_TO_CPDH foreign key (CLM_PTCP_ID)
      references CLAIM_PARTICIPATION (CLM_PTCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_DEP_HIST
   add constraint CPDT_TO_CPDH foreign key (CLM_PTCP_DEP_TYP_CD)
      references CLAIM_PARTICIPATION_DEP_TYP (CLM_PTCP_DEP_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_DEP_HIST
   add constraint LOST_TO_CPDH foreign key (LVL_OF_SUPT_TYP_CD)
      references LEVEL_OF_SUPPORT_TYPE (LVL_OF_SUPT_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_DEP_HIST
   add constraint RLT_TO_CPDH foreign key (RLT_ID)
      references RELATIONSHIP (RLT_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_DEP_HIST
   add constraint USER_TO_CPDH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_DEP_HIST
   add constraint USER_TO_CPDH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


 
alter table CLAIM_PARTICIPATION_HISTORY
   add constraint CPTCP_TO_CLMPH foreign key (CLM_PTCP_ID)
      references CLAIM_PARTICIPATION (CLM_PTCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_HISTORY
   add constraint PTCP_TO_CLMPH foreign key (PTCP_ID)
      references PARTICIPATION (PTCP_ID)
      on delete restrict on update restrict;



alter table CLAIM_PARTICIPATION_HISTORY
   add constraint USER_TO_CLMPH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_HISTORY
   add constraint USER_TO_CLMPH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_INSRD
   add constraint CPTCP_TO_CPI foreign key (CLM_PTCP_ID)
      references CLAIM_PARTICIPATION (CLM_PTCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_INSRD
   add constraint USER_TO_CPI1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_INSRD
   add constraint USER_TO_CPI2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_INSRD_HIST
   add constraint CPI_TO_CPIH foreign key (CLM_PTCP_INSRD_ID)
      references CLAIM_PARTICIPATION_INSRD (CLM_PTCP_INSRD_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_INSRD_HIST
   add constraint CPTCP_TO_CPIH foreign key (CLM_PTCP_ID)
      references CLAIM_PARTICIPATION (CLM_PTCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_INSRD_HIST
   add constraint USER_TO_CPIH1 foreign key (AUDIT_USER_ID_CREA)      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_INSRD_HIST
   add constraint USER_TO_CPIH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;



alter table CLAIM_PARTICIPATION_PAYEE
   add constraint CPTCP_TO_CPP foreign key (CLM_PTCP_ID)
      references CLAIM_PARTICIPATION (CLM_PTCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_PAYEE
   add constraint PAYT_TO_CPP foreign key (PAY_TYP_CD)
      references PAYMENT_TYPE (PAY_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_PAYEE
   add constraint PST_TO_CPP foreign key (PAY_STS_TYP_CD)
      references PAYMENT_STATUS_TYPE (PAY_STS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_PAYEE
   add constraint USER_TO_CPP1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_PAYEE
   add constraint USER_TO_CPP2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_PAYEE_HIST
   add constraint CPP_TO_CPPH foreign key (CLM_PTCP_PAYE_ID)
      references CLAIM_PARTICIPATION_PAYEE (CLM_PTCP_PAYE_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_PAYEE_HIST
   add constraint CPTCP_TO_CPPH foreign key (CLM_PTCP_ID)
      references CLAIM_PARTICIPATION (CLM_PTCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_PAYEE_HIST
   add constraint PAYT_TO_CPPH foreign key (PAY_TYP_CD)
      references PAYMENT_TYPE (PAY_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_PAYEE_HIST
   add constraint PST_TO_CPPH foreign key (PAY_STS_TYP_CD)
      references PAYMENT_STATUS_TYPE (PAY_STS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_PAYEE_HIST
   add constraint USER_TO_CPPH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_PAYEE_HIST
   add constraint USER_TO_CPPH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_PROV
   add constraint CPTCP_TO_CPPROV foreign key (CLM_PTCP_ID)
      references CLAIM_PARTICIPATION (CLM_PTCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_PROV
   add constraint RPTYP_TO_CPPROV foreign key (ROLE_PROV_TYP_ID)
      references ROLE_PROVIDER_TYPE (ROLE_PROV_TYP_ID)
      on delete restrict on update restrict;


alter table CLAIM_PARTICIPATION_PROV
   add constraint ROLEPT_TO_CPPROV foreign key (ROLE_PROV_TXNMY_ID)
      references ROLE_PROVIDER_TAXONOMY (ROLE_PROV_TXNMY_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_PROV
   add constraint USER_TO_CPPROV1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_PROV
   add constraint USER_TO_CPPROV2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_PROV_HIST
   add constraint CPPROV_TO_CPPROVH foreign key (CLM_PTCP_PROV_ID)
      references CLAIM_PARTICIPATION_PROV (CLM_PTCP_PROV_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_PROV_HIST
   add constraint CPTCP_TO_CPPROVH foreign key (CLM_PTCP_ID)
      references CLAIM_PARTICIPATION (CLM_PTCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_PROV_HIST
   add constraint RPTYP_TO_CPPROVH foreign key (ROLE_PROV_TYP_ID)
      references ROLE_PROVIDER_TYPE (ROLE_PROV_TYP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_PROV_HIST
   add constraint ROLEPT_TO_CPPROVH foreign key (ROLE_PROV_TXNMY_ID)
      references ROLE_PROVIDER_TAXONOMY (ROLE_PROV_TXNMY_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_PROV_HIST
   add constraint USER_TO_CPPROVH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_PROV_HIST
   add constraint USER_TO_CPPROVH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table CLAIM_PARTICIPATION_WTN
   add constraint CPTCP_TO_CPW foreign key (CLM_PTCP_ID)
      references CLAIM_PARTICIPATION (CLM_PTCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_WTN
   add constraint USER_TO_CPW1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_WTN
   add constraint USER_TO_CPW2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_WTN
   add constraint WT_TO_CPW foreign key (WTN_TYP_CD)
      references WITNESS_TYPE (WTN_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_WTN_HIST
   add constraint CPTCP_TO_CPWH foreign key (CLM_PTCP_ID)
      references CLAIM_PARTICIPATION (CLM_PTCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_WTN_HIST
   add constraint CPW_TO_CPWH foreign key (CLM_PTCP_WTN_ID)
      references CLAIM_PARTICIPATION_WTN (CLM_PTCP_WTN_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_WTN_HIST
   add constraint USER_TO_CPWH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_WTN_HIST
   add constraint USER_TO_CPWH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;



alter table CLAIM_PARTICIPATION_WTN_HIST
   add constraint WT_TO_CPWH foreign key (WTN_TYP_CD)
      references WITNESS_TYPE (WTN_TYP_CD)
      on delete restrict on update restrict;

alter table PART_OF_BODY_TYPE
   add constraint NPOBT_TO_POB foreign key (NCCI_POB_TYP_CD)
      references NCCI_PART_OF_BODY_TYPE (NCCI_POB_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PART_OF_BODY
   add constraint CLM_TO_CPOB foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_PART_OF_BODY
   add constraint POBLT_TO_CLMPOB foreign key (POB_LOC_TYP_CD)
      references PART_OF_BODY_LOCATION_TYPE (POB_LOC_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PART_OF_BODY
   add constraint POBST_TO_CLMPOB foreign key (POB_STS_TYP_CD)
      references PART_OF_BODY_STATUS_TYPE (POB_STS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PART_OF_BODY
   add constraint POBT_TO_CLMPOB foreign key (POB_TYP_CD)
      references PART_OF_BODY_TYPE (POB_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PART_OF_BODY
   add constraint NDTLT_TO_CLMPOB foreign key (NWISP_DTL_TYP_CD)
      references NWISP_DETAIL_TYPE (NWISP_DTL_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PART_OF_BODY
   add constraint USER_TO_CPOB1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PART_OF_BODY
   add constraint USER_TO_CPOB2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table CLAIM_PART_OF_BODY_HISTORY
   add constraint CPOB_TO_CPOBH   foreign key (CLM_POB_ID)
      references CLAIM_PART_OF_BODY(CLM_POB_ID)
      on delete restrict on update restrict; 
 
 alter table CLAIM_PART_OF_BODY_HISTORY
   add constraint CLM_TO_CPOBH   foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;
 
alter table CLAIM_PART_OF_BODY_HISTORY
   add constraint POBLT_TO_CPOBH    foreign key (POB_LOC_TYP_CD)
      references PART_OF_BODY_LOCATION_TYPE (POB_LOC_TYP_CD)
      on delete restrict on update restrict;
 
alter table CLAIM_PART_OF_BODY_HISTORY
   add constraint POBST_TO_CPOBH foreign key (POB_STS_TYP_CD)
      references PART_OF_BODY_STATUS_TYPE (POB_STS_TYP_CD)
      on delete restrict on update restrict;
 
alter table CLAIM_PART_OF_BODY_HISTORY 
    add constraint POBT_TO_CPOBH foreign key (POB_TYP_CD)
      references PART_OF_BODY_TYPE (POB_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PART_OF_BODY_HISTORY
   add constraint NDTLT_TO_CPOBH foreign key (NWISP_DTL_TYP_CD)
      references NWISP_DETAIL_TYPE (NWISP_DTL_TYP_CD)
      on delete restrict on update restrict;
 
alter table CLAIM_PART_OF_BODY_HISTORY
   add constraint USER_TO_CPOBH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
 
alter table CLAIM_PART_OF_BODY_HISTORY 
    add constraint USER_TO_CPOBH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
 


alter table CLAIM_PART_OF_BODY_IMPAIRMENT
   add constraint CLMI_TO_CPOBI foreign key (CLM_IMPR_ID)
      references CLAIM_IMPAIRMENT (CLM_IMPR_ID)
      on delete restrict on update restrict;

alter table CLAIM_PART_OF_BODY_IMPAIRMENT
   add constraint CPOB_TO_CPOBI foreign key (CLM_POB_ID)
      references CLAIM_PART_OF_BODY (CLM_POB_ID)
      on delete restrict on update restrict;

alter table CLAIM_PART_OF_BODY_IMPAIRMENT
   add constraint ILT_TO_CPOBI foreign key (IMPR_LOSS_TYP_CD)
      references IMPAIRMENT_LOSS_TYPE (IMPR_LOSS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PART_OF_BODY_IMPAIRMENT
   add constraint USER_TO_CPOBI1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PART_OF_BODY_IMPAIRMENT
   add constraint USER_TO_CPOBI2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PART_OF_BODY_IMPR_HIST
   add constraint CPOBI_TO_CPOBIH foreign key (CLM_POB_IMPR_ID)
      references CLAIM_PART_OF_BODY_IMPAIRMENT (CLM_POB_IMPR_ID)
      on delete restrict on update restrict;
 
alter table CLAIM_PART_OF_BODY_IMPR_HIST
   add constraint CLMI_TO_CPOBIH foreign key (CLM_IMPR_ID)
      references CLAIM_IMPAIRMENT (CLM_IMPR_ID)
      on delete restrict on update restrict;
 
alter table CLAIM_PART_OF_BODY_IMPR_HIST
   add constraint CPOB_TO_CPOBIH foreign key (CLM_POB_ID)
      references CLAIM_PART_OF_BODY (CLM_POB_ID)
      on delete restrict on update restrict;
 
alter table CLAIM_PART_OF_BODY_IMPR_HIST
   add constraint ILT_TO_CPOBIH foreign key (IMPR_LOSS_TYP_CD)
      references IMPAIRMENT_LOSS_TYPE (IMPR_LOSS_TYP_CD)
      on delete restrict on update restrict;
 
alter table CLAIM_PART_OF_BODY_IMPR_HIST
   add constraint USER_TO_CPOBIH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
 
alter table CLAIM_PART_OF_BODY_IMPR_HIST
   add constraint USER_TO_CPOBIH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PERMANENT_AWARD
   add constraint AGRE_TO_CLMPA foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict; 

alter table CLAIM_PERMANENT_AWARD
   add constraint USER_TO_CLMPA1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict; 

alter table CLAIM_PERMANENT_AWARD
   add constraint USER_TO_CLMPA2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PERMANENT_AWARD_HIST
   add constraint CLMPA_TO_CLMPAH foreign key (CLM_PRM_AWARD_ID)
      references CLAIM_PERMANENT_AWARD (CLM_PRM_AWARD_ID)
      on delete restrict on update restrict; 

alter table CLAIM_PERMANENT_AWARD_HIST
   add constraint AGRE_TO_CLMPAH foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict; 

alter table CLAIM_PERMANENT_AWARD_HIST
   add constraint USER_TO_CLMPAH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict; 

alter table CLAIM_PERMANENT_AWARD_HIST
   add constraint USER_TO_CLMPAH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE
   add constraint AGRE_TO_CLMP foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE
   add constraint PTCP_TO_CLMP foreign key (PTCP_ID)
      references PARTICIPATION (PTCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE
   add constraint CPCT_TO_CLMP foreign key (CLM_PRFL_CTG_TYP_CD)
      references CLAIM_PROFILE_CATEGORY_TYPE (CLM_PRFL_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE
   add constraint JT_TO_CLMP foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE
   add constraint LOBT_TO_CLMP foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE
   add constraint PRFLS_TO_CLMP foreign key (PRFL_STMT_ID)
      references PROFILE_STATEMENT (PRFL_STMT_ID)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE
   add constraint PSSN_TO_CLMP foreign key (PRFL_STMT_SEL_NEST_ID)
      references PROFILE_STATEMENT_SEL_NEST (PRFL_STMT_SEL_NEST_ID)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE
   add constraint PSS_TO_CLMP foreign key (PRFL_STMT_SEL_ID)
      references PROFILE_STATEMENT_SELECTION (PRFL_STMT_SEL_ID)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE
   add constraint PSVT_TO_CLMP foreign key (PRFL_SEL_VAL_TYP_CD)
      references PROFILE_SELECTION_VALUE_TYPE (PRFL_SEL_VAL_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE
   add constraint PTCPT_TO_CLMP foreign key (PTCP_TYP_CD)
      references PARTICIPATION_TYPE (PTCP_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE
   add constraint USER_TO_CLMP1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE
   add constraint USER_TO_CLMP2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table CLAIM_PROFILE_HISTORY
   add constraint CLMP_TO_CPRFLH foreign key (CLM_PRFL_ID)
      references CLAIM_PROFILE (CLM_PRFL_ID)
      on delete restrict on update restrict;

 alter table CLAIM_PROFILE_HISTORY
   add constraint AGRE_TO_CPRFLH foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict;

alter table  CLAIM_PROFILE_HISTORY
   add constraint PTCP_TO_CPRFLH foreign key (PTCP_ID)
      references PARTICIPATION (PTCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE_HISTORY
   add constraint CPCT_TO_CPRFLH foreign key (CLM_PRFL_CTG_TYP_CD)
      references CLAIM_PROFILE_CATEGORY_TYPE (CLM_PRFL_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE_HISTORY
   add constraint JT_TO_CPRFLH foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE_HISTORY
   add constraint LOBT_TO_CPRFLH foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE_HISTORY
   add constraint PRFLS_TO_CPRFLH foreign key (PRFL_STMT_ID)
      references PROFILE_STATEMENT (PRFL_STMT_ID)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE_HISTORY
   add constraint PSSN_TO_CPRFLH foreign key (PRFL_STMT_SEL_NEST_ID)
      references PROFILE_STATEMENT_SEL_NEST (PRFL_STMT_SEL_NEST_ID)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE_HISTORY
   add constraint PSS_TO_CPRFLH foreign key (PRFL_STMT_SEL_ID)
      references PROFILE_STATEMENT_SELECTION (PRFL_STMT_SEL_ID)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE_HISTORY
   add constraint PSVT_TO_CPRFLH foreign key (PRFL_SEL_VAL_TYP_CD)
      references PROFILE_SELECTION_VALUE_TYPE (PRFL_SEL_VAL_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE_HISTORY
   add constraint PTCPT_TO_CPRFLH foreign key (PTCP_TYP_CD)
      references PARTICIPATION_TYPE (PTCP_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE_HISTORY
   add constraint USER_TO_CPRFLH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE_HISTORY
   add constraint USER_TO_CPRFLH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict; 

alter table CLAIM_PROFILE_STATEMENT
   add constraint CPCT_TO_CPS foreign key (CLM_PRFL_CTG_TYP_CD)
      references CLAIM_PROFILE_CATEGORY_TYPE (CLM_PRFL_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE_STATEMENT
   add constraint JT_TO_CPS foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE_STATEMENT
   add constraint LOBT_TO_CPS foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE_STATEMENT
   add constraint PRFLS_TO_CPS foreign key (PRFL_STMT_ID)
      references PROFILE_STATEMENT (PRFL_STMT_ID)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE_STATEMENT
   add constraint PSSN_TO_CPS foreign key (PRFL_STMT_SEL_NEST_ID) 


      references PROFILE_STATEMENT_SEL_NEST (PRFL_STMT_SEL_NEST_ID)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE_STATEMENT
   add constraint PSS_TO_CPS foreign key (PRFL_STMT_SEL_ID)
      references PROFILE_STATEMENT_SELECTION (PRFL_STMT_SEL_ID)
      on delete restrict on update restrict;

alter table CLAIM_PROFILE_STATEMENT
   add constraint PTCPT_TO_CPS foreign key (PTCP_TYP_CD)
      references PARTICIPATION_TYPE (PTCP_TYP_CD)
      on delete restrict on update restrict;



alter table CLAIM_3WAY_PARTICIPATION_CNTC
   add constraint AGRE_TO_C3PC foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_3WAY_PARTICIPATION_CNTC
   add constraint PTCP_TO_C3PC foreign key (PTCP_ID)
      references PARTICIPATION (PTCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_3WAY_PARTICIPATION_CNTC
   add constraint USER_TO_C3PC1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_3WAY_PARTICIPATION_CNTC
   add constraint USER_TO_C3PC2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table CLAIM_3WAY_PTCP_CNTC_HIST
   add constraint C3PC_TO_C3PCH foreign key (CLM_3WAY_PTCP_CNTC_ID)
      references CLAIM_3WAY_PARTICIPATION_CNTC(CLM_3WAY_PTCP_CNTC_ID)
      on delete restrict on update restrict;

alter table CLAIM_3WAY_PTCP_CNTC_HIST
   add constraint AGRE_TO_C3PCH foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_3WAY_PTCP_CNTC_HIST
   add constraint PTCP_TO_C3PCH foreign key (PTCP_ID)
      references PARTICIPATION (PTCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_3WAY_PTCP_CNTC_HIST
   add constraint USER_TO_C3PCH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_3WAY_PTCP_CNTC_HIST
   add constraint USER_TO_C3PCH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;



alter table CLAIM_PTCP_BNFCY_DEP_HIST
   add constraint CPBD_TO_CPBDH foreign key (CLM_PTCP_BNFCY_DEP_ID)
      references CLAIM_PARTICIPATION_BNFCY_DEP (CLM_PTCP_BNFCY_DEP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PTCP_BNFCY_DEP_HIST
   add constraint CPB_TO_CPBDH foreign key (CLM_PTCP_BNFCY_ID)
      references CLAIM_PARTICIPATION_BNFCY (CLM_PTCP_BNFCY_ID)
      on delete restrict on update restrict;

alter table CLAIM_PTCP_BNFCY_DEP_HIST
   add constraint USER_TO_CPBDH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PTCP_BNFCY_DEP_HIST
   add constraint USER_TO_CPBDH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table CLAIM_PTCP_PROV_PTCP_TYP
   add constraint CPPROV_TO_CPPPT foreign key (CLM_PTCP_PROV_ID)
      references CLAIM_PARTICIPATION_PROV (CLM_PTCP_PROV_ID)
      on delete restrict on update restrict;

alter table CLAIM_PTCP_PROV_PTCP_TYP
   add constraint PPT_TO_CPPPT foreign key (PROV_PTCP_TYP_CD)
      references PROVIDER_PARTICIPATING_TYPE (PROV_PTCP_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PTCP_PROV_PTCP_TYP
   add constraint USER_TO_CPPPT1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PTCP_PROV_PTCP_TYP
   add constraint USER_TO_CPPPT2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PTCP_PROV_PTCP_TYP_HIST
   add constraint CPPROV_TO_CPPPTH foreign key (CLM_PTCP_PROV_ID)
      references CLAIM_PARTICIPATION_PROV (CLM_PTCP_PROV_ID)
      on delete restrict on update restrict;

alter table CLAIM_PTCP_PROV_PTCP_TYP_HIST
   add constraint PPT_TO_CPPPTH foreign key (PROV_PTCP_TYP_CD)
      references PROVIDER_PARTICIPATING_TYPE (PROV_PTCP_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PTCP_PROV_PTCP_TYP_HIST
   add constraint USER_TO_CPPPTH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PTCP_PROV_PTCP_TYP_HIST
   add constraint USER_TO_CPPPTH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE
   add constraint AGRE_TO_CLMR foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE
   add constraint CLMRST_TO_CLMR foreign key (CLM_RSRV_STS_TYP_CD)
      references CLAIM_RESERVE_STATUS_TYPE (CLM_RSRV_STS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE
   add constraint CRSCRSRX_TO_CLMR foreign key (CRSCRSRX_ID)
      references CLM_RSRV_STS_CRSR_XREF (CRSCRSRX_ID)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE
   add constraint CRST_TO_CLMR foreign key (CLM_RSRV_SRC_TYP_CD)
      references CLAIM_RESERVE_SOURCE_TYPE (CLM_RSRV_SRC_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE
   add constraint AUTH_TO_CLMR foreign key (AUTH_ID)
      references AUTHORIZATIONS (AUTH_ID)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE
   add constraint USER_TO_CLMR1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE
   add constraint USER_TO_CLMR2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table CLAIM_RESERVE_HISTORY
   add constraint CLMR_TO_CLMRH foreign key (CLM_RSRV_ID)
      references CLAIM_RESERVE (CLM_RSRV_ID)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE_HISTORY
   add constraint AGRE_TO_CLMRH foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE_HISTORY
   add constraint CLMRST_TO_CLMRH foreign key (CLM_RSRV_STS_TYP_CD)
      references CLAIM_RESERVE_STATUS_TYPE (CLM_RSRV_STS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE_HISTORY
   add constraint CRSCRSRX_TO_CLMRH foreign key (CRSCRSRX_ID)
      references CLM_RSRV_STS_CRSR_XREF (CRSCRSRX_ID)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE_HISTORY
   add constraint CRST_TO_CLMRH foreign key (CLM_RSRV_SRC_TYP_CD)
      references CLAIM_RESERVE_SOURCE_TYPE (CLM_RSRV_SRC_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE_HISTORY
   add constraint AUTH_TO_CLMRH foreign key (AUTH_ID)
      references AUTHORIZATIONS (AUTH_ID)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE_HISTORY
   add constraint USER_TO_CLMRH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE_HISTORY
   add constraint USER_TO_CLMRH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE_CATEGORY
   add constraint CLMRCT_TO_CRC foreign key (CLM_RSRV_CTG_TYP_CD)
      references CLAIM_RESERVE_CATEGORY_TYPE (CLM_RSRV_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE_CATEGORY
   add constraint CLMR_TO_CRC foreign key (CLM_RSRV_ID)
      references CLAIM_RESERVE (CLM_RSRV_ID)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE_CATEGORY
   add constraint USER_TO_CRC1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE_CATEGORY
   add constraint USER_TO_CRC2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE_CATEGORY_HIST
   add constraint CRC_TO_CRCH foreign key (CRC_ID)
      references CLAIM_RESERVE_CATEGORY (CRC_ID)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE_CATEGORY_HIST
   add constraint CLMRCT_TO_CRCH foreign key (CLM_RSRV_CTG_TYP_CD)
      references CLAIM_RESERVE_CATEGORY_TYPE (CLM_RSRV_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE_CATEGORY_HIST
   add constraint CLR_TO_CRCH foreign key (CLM_RSRV_ID)
      references CLAIM_RESERVE (CLM_RSRV_ID)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE_CATEGORY_HIST
   add constraint USER_TO_CRCH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE_CATEGORY_HIST
   add constraint USER_TO_CRCH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE_CATEGORY_TYPE
   add constraint LOBT_TO_CLMRCT foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE_CATEGORY_DETAIL
   add constraint CRC_TO_CRCD foreign key (CRC_ID)
      references CLAIM_RESERVE_CATEGORY (CRC_ID)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE_CATEGORY_DETAIL
    add constraint CCCTYP_TO_CRCD foreign key (CST_CNTR_CTG_TYP_CD)
       references COST_CENTER_CATEGORY_TYPE (CST_CNTR_CTG_TYP_CD)
       on delete restrict on update restrict;

alter table CLAIM_RESERVE_CATEGORY_DETAIL
   add constraint USER_TO_CRCD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE_CATEGORY_DETAIL
   add constraint USER_TO_CRCD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table CLAIM_RESERVE_CTG_DTL_HIST
   add constraint CRCD_TO_CRCDH foreign key (CLM_RSRV_CTG_DTL_ID)
      references CLAIM_RESERVE_CATEGORY_DETAIL (CLM_RSRV_CTG_DTL_ID)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE_CTG_DTL_HIST
   add constraint CLRC_TO_CRCDH foreign key (CRC_ID)
      references CLAIM_RESERVE_CATEGORY (CRC_ID)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE_CTG_DTL_HIST
    add constraint CCCTYP_TO_CRCDH foreign key (CST_CNTR_CTG_TYP_CD)
       references COST_CENTER_CATEGORY_TYPE (CST_CNTR_CTG_TYP_CD)
       on delete restrict on update restrict;

alter table CLAIM_RESERVE_CTG_DTL_HIST
   add constraint USER_TO_CRCDH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_RESERVE_CTG_DTL_HIST
   add constraint USER_TO_CRCDH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_STATUS_CLAIM_STATE_XREF
   add constraint CLMSTST_TO_CSCSX foreign key (CLM_STS_TYP_CD)
      references CLAIM_STATUS_TYPE (CLM_STS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_STATUS_CLAIM_STATE_XREF
   add constraint CLMST_TO_CSCSX foreign key (CLM_STT_TYP_CD)
      references CLAIM_STATE_TYPE (CLM_STT_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_STATUS_STATE_PAY_XREF
   add constraint CSCSX_TO_CSSPX foreign key (CLM_STS_CLM_STT_XREF_ID)
      references CLAIM_STATUS_CLAIM_STATE_XREF (CLM_STS_CLM_STT_XREF_ID)
      on delete restrict on update restrict;

alter table CLAIM_STATUS_STATE_PAY_XREF
   add constraint PAYT_TO_CSSPX foreign key (PAY_TYP_CD)
      references PAYMENT_TYPE (PAY_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_STATUS_STATE_TRANS_TYP
   add constraint CLMT_TO_CSSTT foreign key (CLM_TYP_CD)
      references CLAIM_TYPE (CLM_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_STATUS_STATE_TRANS_TYP
   add constraint CSSATX_TO_CSSTT foreign key (CSSATX_ID)
      references CLAIM_STS_STT_ACTN_TRANS_XREF (CSSATX_ID)
      on delete restrict on update restrict;

alter table CLAIM_STATUS_STT_TRN_RSN_XREF
   add constraint CLMT_TO_CSSTRX foreign key (CLM_TYP_CD)
      references CLAIM_TYPE (CLM_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_STATUS_STT_TRN_RSN_XREF
   add constraint CSCSX_TO_CSSTRX foreign key (CLM_STS_CLM_STT_XREF_ID)
      references CLAIM_STATUS_CLAIM_STATE_XREF (CLM_STS_CLM_STT_XREF_ID)
      on delete restrict on update restrict;

alter table CLAIM_STATUS_STT_TRN_RSN_XREF
   add constraint CTRT_TO_CSSTRX foreign key (CLM_TRANS_RSN_TYP_CD)
      references CLAIM_TRANSITION_REASON_TYPE (CLM_TRANS_RSN_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_STS_STT_ACTN_TRANS_XREF
   add constraint CSCSX_TO_CSSATX1 foreign key (CLM_STS_CLM_STT_XREF_ID_TO)
      references CLAIM_STATUS_CLAIM_STATE_XREF (CLM_STS_CLM_STT_XREF_ID)
      on delete restrict on update restrict;

alter table CLAIM_STS_STT_ACTN_TRANS_XREF
   add constraint CSCSX_TO_CSSATX2 foreign key (CLM_STS_CLM_STT_XREF_ID_FR)
      references CLAIM_STATUS_CLAIM_STATE_XREF (CLM_STS_CLM_STT_XREF_ID)
      on delete restrict on update restrict;

alter table CLAIM_STS_STT_ACTN_TRANS_XREF
   add constraint CSSAT_TO_CSSATX foreign key (CLM_STS_STT_ACTN_TYP_CD)
      references CLAIM_STATUS_STATE_ACTION_TYPE (CLM_STS_STT_ACTN_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_TREATMENT_DETAIL
   add constraint AGRE_TO_CTD foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_TREATMENT_DETAIL
   add constraint CTDT_TO_CTD foreign key (CLM_TRT_DTL_TYP_CD)
      references CLAIM_TREATMENT_DETAIL_TYP (CLM_TRT_DTL_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_TREATMENT_DETAIL
   add constraint CUST_TO_CTD foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CLAIM_TREATMENT_DETAIL
   add constraint USER_TO_CTD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_TREATMENT_DETAIL
   add constraint USER_TO_CTD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

  
alter table CLAIM_TREATMENT_DETAIL_HIST
   add constraint CTD_TO_CTDH foreign key (CLM_TRT_DTL_ID)
      references CLAIM_TREATMENT_DETAIL (CLM_TRT_DTL_ID)
      on delete restrict on update restrict;
 
alter table CLAIM_TREATMENT_DETAIL_HIST
   add constraint AGRE_TO_CTDH foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict;
 
alter table CLAIM_TREATMENT_DETAIL_HIST
   add constraint CTDT_TO_CTDH foreign key (CLM_TRT_DTL_TYP_CD)
      references CLAIM_TREATMENT_DETAIL_TYP (CLM_TRT_DTL_TYP_CD)
      on delete restrict on update restrict;
 
alter table CLAIM_TREATMENT_DETAIL_HIST
   add constraint CUST_TO_CTDH foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;
 
alter table CLAIM_TREATMENT_DETAIL_HIST
   add constraint USER_TO_CTDH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
 
alter table CLAIM_TREATMENT_DETAIL_HIST
   add constraint USER_TO_CTDH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_TYPE
   add constraint LOBT_TO_CLMTYP foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_SOURCE
   add constraint CLMEST_TO_CWS foreign key (CLM_EMPL_STS_TYP_CD)
      references CLAIM_EMPLOYMENT_STATUS_TYPE (CLM_EMPL_STS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_SOURCE
   add constraint CLM_TO_CWS foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_SOURCE
   add constraint CWCT_TO_CWS foreign key (CLM_WG_CTG_TYP_CD)
      references CLAIM_WAGE_CATEGORY_TYPE (CLM_WG_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_SOURCE
   add constraint USER_TO_CWS1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_SOURCE
   add constraint USER_TO_CWS2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table CLAIM_WAGE_SOURCE_HISTORY
   add constraint CWS_TO_CWSH foreign key (CLM_WG_SRC_ID)
      references CLAIM_WAGE_SOURCE (CLM_WG_SRC_ID)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_SOURCE_HISTORY
   add constraint CLMEST_TO_CWSH foreign key (CLM_EMPL_STS_TYP_CD)
      references CLAIM_EMPLOYMENT_STATUS_TYPE (CLM_EMPL_STS_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_SOURCE_HISTORY
   add constraint CLM_TO_CWSH foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_SOURCE_HISTORY
   add constraint CWCT_TO_CWSH foreign key (CLM_WG_CTG_TYP_CD)
      references CLAIM_WAGE_CATEGORY_TYPE (CLM_WG_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_SOURCE_HISTORY
   add constraint USER_TO_CWSH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_SOURCE_HISTORY
   add constraint USER_TO_CWSH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_SOURCE_DETAIL
   add constraint CPPT_TO_CWSD foreign key (CLM_PAY_PRD_TYP_CD)
      references CLAIM_PAY_PERIOD_TYPE (CLM_PAY_PRD_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_SOURCE_DETAIL
   add constraint CWRST_TO_CWSD foreign key (CLM_WG_RPT_SRC_TYP_CD)
      references CLAIM_WAGE_REPORT_SOURCE_TYPE (CLM_WG_RPT_SRC_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_SOURCE_DETAIL
   add constraint CWS_TO_CWSD foreign key (CLM_WG_SRC_ID)
      references CLAIM_WAGE_SOURCE (CLM_WG_SRC_ID)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_SOURCE_DETAIL
   add constraint CWT_TO_CWSD foreign key (CLM_WG_TYP_CD)
      references CLAIM_WAGE_TYPE (CLM_WG_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_SOURCE_DETAIL
   add constraint USER_TO_CWSD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_SOURCE_DETAIL
   add constraint USER_TO_CWSD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table CLAIM_WAGE_SOURCE_DETAIL_HIST
   add constraint CWSD_TO_CWSDH foreign key (CLM_WG_SRC_DTL_ID)
      references CLAIM_WAGE_SOURCE_DETAIL (CLM_WG_SRC_DTL_ID)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_SOURCE_DETAIL_HIST
   add constraint CPPT_TO_CWSDH foreign key (CLM_PAY_PRD_TYP_CD)
      references CLAIM_PAY_PERIOD_TYPE (CLM_PAY_PRD_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_SOURCE_DETAIL_HIST
   add constraint CWRST_TO_CWSDH foreign key (CLM_WG_RPT_SRC_TYP_CD)
      references CLAIM_WAGE_REPORT_SOURCE_TYPE (CLM_WG_RPT_SRC_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_SOURCE_DETAIL_HIST
   add constraint CWS_TO_CWSDH foreign key (CLM_WG_SRC_ID)
      references CLAIM_WAGE_SOURCE (CLM_WG_SRC_ID)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_SOURCE_DETAIL_HIST
   add constraint CWT_TO_CWSDH foreign key (CLM_WG_TYP_CD)
      references CLAIM_WAGE_TYPE (CLM_WG_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_SOURCE_DETAIL_HIST
   add constraint USER_TO_CWSDH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_SOURCE_DETAIL_HIST
   add constraint USER_TO_CWSDH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table JURISDICTION_WAGE_CALC_XREF
   add constraint JT_TO_JWCX foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table JURISDICTION_WAGE_CALC_XREF
   add constraint CAWT_TO_JWCX foreign key (CLM_AVG_WG_TYP_CD)
      references CLAIM_AVERAGE_WAGE_TYPE (CLM_AVG_WG_TYP_CD)
      on delete restrict on update restrict;

alter table JURISDICTION_WAGE_CALC_XREF
   add constraint CPPT_TO_JWCX foreign key (CLM_PAY_PRD_TYP_CD)
      references CLAIM_PAY_PERIOD_TYPE (CLM_PAY_PRD_TYP_CD)
      on delete restrict on update restrict;

alter table JURISDICTION_WAGE_CALC_XREF
   add constraint CLMEST_TO_JWCX foreign key (CLM_EMPL_STS_TYP_CD)
      references CLAIM_EMPLOYMENT_STATUS_TYPE (CLM_EMPL_STS_TYP_CD)
      on delete restrict on update restrict;

alter table JURISDICTION_WAGE_CALC_XREF
   add constraint CWC_TO_JWCX foreign key (CLM_WG_CALC_ID)
      references CLAIM_WAGE_CALCULATION (CLM_WG_CALC_ID)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_INDEX
   add constraint CLM_TO_CWI foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_INDEX
   add constraint INDXST_TO_CWI foreign key (INDX_SRC_TYP_CD)
      references INDEX_SOURCE_TYPE (INDX_SRC_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_INDEX
   add constraint JIX_TO_CWI foreign key (JIX_ID)
      references JURISDICTION_INDEX_XREF (JIX_ID)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_INDEX
   add constraint IMT_TO_CWI foreign key (INDX_METH_TYP_CD)
      references INDEX_METHOD_TYPE (INDX_METH_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_INDEX
   add constraint USER_TO_CWI1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_INDEX
   add constraint USER_TO_CWI2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_INDEX_HISTORY
   add constraint CLM_TO_CWIH foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_INDEX_HISTORY
   add constraint INDXST_TO_CWIH foreign key (INDX_SRC_TYP_CD)
      references INDEX_SOURCE_TYPE (INDX_SRC_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_INDEX_HISTORY
   add constraint JIX_TO_CWIH foreign key (JIX_ID)
      references JURISDICTION_INDEX_XREF (JIX_ID)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_INDEX_HISTORY
   add constraint IMT_TO_CWIH foreign key (INDX_METH_TYP_CD)
      references INDEX_METHOD_TYPE (INDX_METH_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_INDEX_HISTORY
   add constraint USER_TO_CWIH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_WAGE_INDEX_HISTORY
   add constraint USER_TO_CWIH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table JURISDICTION_INDEX_XREF
   add constraint JT_TO_JIX foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table JURISDICTION_INDEX_XREF
   add constraint INDXT_TO_JIX foreign key (INDX_TYP_CD)
      references INDEX_TYPE (INDX_TYP_CD)
      on delete restrict on update restrict;

alter table JURISDICTION_INDEX_XREF
   add constraint IDRT_TO_JIX foreign key (INDX_DT_RL_TYP_CD)
      references INDEX_DATE_RULE_TYPE (INDX_DT_RL_TYP_CD)
      on delete restrict on update restrict;

alter table JURISDICTION_INDEX_XREF
   add constraint INDXCT_TO_JIX foreign key (INDX_CTG_TYP_CD)
      references INDEX_CATEGORY_TYPE (INDX_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table JURISDICTION_INDEX_XREF
   add constraint IMT_TO_JIX foreign key (INDX_METH_TYP_CD)
      references INDEX_METHOD_TYPE (INDX_METH_TYP_CD)
      on delete restrict on update restrict;

alter table JURISDICTION_INDEX_XREF
   add constraint CST_TO_JIX foreign key (JIX_EL_CLM_ST_CD)
      references CLAIM_STATE_TYPE (CLM_STT_TYP_CD)
      on delete restrict on update restrict;

alter table JURISDICTION_INDEX_XREF
   add constraint IFT_TO_JIX foreign key (JIX_NXT_DT_FREQ_CD)
      references INDEX_FREQ_TYPE (INDX_FREQ_TYP_CD)
      on delete restrict on update restrict;

alter table JURISDICTION_INDEX_RULE_XREF
   add constraint JT_TO_JIRX foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table JURISDICTION_INDEX_RULE_XREF
   add constraint INDXRT_TO_JIRX foreign key (INDX_RL_TYP_CD)
      references INDEX_RULE_TYPE (INDX_RL_TYP_CD)
      on delete restrict on update restrict;

alter table JURISDICTION_INDEX_RULE_XREF
   add constraint INDXCT_TO_JIRX foreign key (INDX_CTG_TYP_CD)
      references INDEX_CATEGORY_TYPE (INDX_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table JURISDICTION_INDEX_RULE_XREF
   add constraint IRPST_TO_JIRX foreign key (INDX_RL_PEN_SRC_TYP_CD)
      references INDEX_RULE_PENSION_SOURCE_TYPE (INDX_RL_PEN_SRC_TYP_CD)
      on delete restrict on update restrict;

alter table JURISDICTION_INDEX_RULE_XREF
   add constraint IRST_TO_JIRX foreign key (INDX_RL_SRC_TYP_CD)
      references INDEX_RULE_SOURCE_TYPE (INDX_RL_SRC_TYP_CD)
      on delete restrict on update restrict;

alter table INDEX_CALCULATION_RULE
   add constraint JIRX_TO_ICR foreign key (JUR_INDX_RL_XREF_ID)
      references JURISDICTION_INDEX_RULE_XREF (JUR_INDX_RL_XREF_ID)
      on delete restrict on update restrict;

alter table JUR_BNFT_INDX_CALC_SRC_XREF
   add constraint JBT_TO_JBICSX foreign key (JUR_BNFT_TYP_ID)
      references JURISDICTION_BENEFIT_TYPE (JUR_BNFT_TYP_ID)
      on delete restrict on update restrict;

alter table JUR_BNFT_INDX_CALC_SRC_XREF
   add constraint ICST_TO_JBICSX foreign key (INDX_CALC_SRC_TYP_CD)
      references INDEX_CALCULATION_SOURCE_TYPE (INDX_CALC_SRC_TYP_CD)
      on delete restrict on update restrict;

alter table JUR_BNFT_INDX_CALC_SRC_XREF
   add constraint INDXT_TO_JBICSX foreign key (INDX_TYP_CD)
      references INDEX_TYPE (INDX_TYP_CD)
      on delete restrict on update restrict;

alter table CLASS_RATE_TIER_LOB_STATE
   add constraint LMICJX_TO_CRTLS foreign key (LMICJX_ID)
      references LOB_MRKT_INS_CMPY_JUR_XREF (LMICJX_ID)
      on delete restrict on update restrict;

alter table CLASS_RATE_TIER_LOB_STATE
   add constraint WCCRTT_TO_CRTLS foreign key (WC_CLS_RT_TIER_TYP_CD)
      references WC_CLASS_RATE_TIER_TYPE (WC_CLS_RT_TIER_TYP_CD)
      on delete restrict on update restrict;

alter table CLM_RSRV_STS_CRSR_XREF
   add constraint CLMRSRT_TO_CRSCRSR foreign key (CLM_RSRV_STS_RSN_TYP_CD)
      references CLAIM_RESERVE_STATUS_RSN_TYP (CLM_RSRV_STS_RSN_TYP_CD)
      on delete restrict on update restrict;

alter table CLM_RSRV_STS_CRSR_XREF
   add constraint CLMRST_TO_CRSCRSRX foreign key (CLM_RSRV_STS_TYP_CD)
      references CLAIM_RESERVE_STATUS_TYPE (CLM_RSRV_STS_TYP_CD)
      on delete restrict on update restrict;

alter table COMMUNICATION_PREFERENCE
   add constraint CHCKPT_TO_CP foreign key (CHCK_PREF_TYP_CD)
      references CHECK_PREFERENCE_TYPE (CHCK_PREF_TYP_CD)
      on delete restrict on update restrict;

alter table COMMUNICATION_PREFERENCE
   add constraint CPT_TO_CP foreign key (CRES_PREF_TYP_CD)
      references CORRESPONDENCE_PREF_TYP (CRES_PREF_TYP_CD)
      on delete restrict on update restrict;

alter table COMMUNICATION_PREFERENCE
   add constraint PMPT_TO_CP foreign key (PAY_MEDA_PREF_TYP_CD)
      references PAYMENT_MEDIA_PREFERENCE_TYPE (PAY_MEDA_PREF_TYP_CD)
      on delete restrict on update restrict;

alter table COMMUNICATION_PREFERENCE
   add constraint USER_TO_CP1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table COMMUNICATION_PREFERENCE
   add constraint USER_TO_CP2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table COMMUNICATION_PREFERENCE_HIST
   add constraint CHCKPT_TO_CPH foreign key (CHCK_PREF_TYP_CD)
      references CHECK_PREFERENCE_TYPE (CHCK_PREF_TYP_CD)
      on delete restrict on update restrict;

alter table COMMUNICATION_PREFERENCE_HIST
   add constraint CPT_TO_CPH foreign key (CRES_PREF_TYP_CD)
      references CORRESPONDENCE_PREF_TYP (CRES_PREF_TYP_CD)
      on delete restrict on update restrict;

alter table COMMUNICATION_PREFERENCE_HIST
   add constraint CP_TO_CPH foreign key (COMM_PREF_ID)
      references COMMUNICATION_PREFERENCE (COMM_PREF_ID)
      on delete restrict on update restrict;

alter table COMMUNICATION_PREFERENCE_HIST
   add constraint PMPT_TO_CPH foreign key (PAY_MEDA_PREF_TYP_CD)
      references PAYMENT_MEDIA_PREFERENCE_TYPE (PAY_MEDA_PREF_TYP_CD)
      on delete restrict on update restrict;

alter table COMMUNICATION_PREFERENCE_HIST
   add constraint USER_TO_CPH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table COMMUNICATION_PREFERENCE_HIST
   add constraint USER_TO_CPH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table COMM_PREF_CUST_ROLE_XREF
   add constraint CP_TO_CPCRX foreign key (COMM_PREF_ID)
      references COMMUNICATION_PREFERENCE (COMM_PREF_ID)
      on delete restrict on update restrict;

alter table COMM_PREF_CUST_ROLE_XREF
   add constraint CRT_TO_CPCRX foreign key (CUST_ROLE_TYP_CD)
      references CUSTOMER_ROLE_TYPE (CUST_ROLE_TYP_CD)
      on delete restrict on update restrict;

alter table COMM_PREF_CUST_ROLE_XREF
   add constraint CUST_TO_CPCRX foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;
      
      
 alter table COMM_PREF_CUST_ROLE_XREF
   add constraint USER_TO_CPCRX1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table COMM_PREF_CUST_ROLE_XREF
   add constraint USER_TO_CPCRX2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
         
alter table COMM_PREF_CUST_ROLE_XREF_HIST
   add constraint CPCRX_TO_CPCRXH foreign key (CPCRX_ID)
      references COMM_PREF_CUST_ROLE_XREF (CPCRX_ID)
      on delete restrict on update restrict;

alter table COMM_PREF_CUST_ROLE_XREF_HIST
   add constraint CP_TO_CPCRXH foreign key (COMM_PREF_ID)
      references COMMUNICATION_PREFERENCE (COMM_PREF_ID)
      on delete restrict on update restrict;

alter table COMM_PREF_CUST_ROLE_XREF_HIST
   add constraint CRT_TO_CPCRXH foreign key (CUST_ROLE_TYP_CD)
      references CUSTOMER_ROLE_TYPE (CUST_ROLE_TYP_CD)
      on delete restrict on update restrict;

alter table COMM_PREF_CUST_ROLE_XREF_HIST
   add constraint CUST_TO_CPCRXH foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

 alter table COMM_PREF_CUST_ROLE_XREF_HIST
   add constraint USER_TO_CPCRXH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table COMM_PREF_CUST_ROLE_XREF_HIST
   add constraint USER_TO_CPCRXH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table COMPANY_STATE_MARKET_FILINGS
   add constraint CRCT_TO_CSMF foreign key (CLS_RT_CALC_TYP_CD)
      references CLASS_RATE_CALCULATION_TYPE (CLS_RT_CALC_TYP_CD)
      on delete restrict on update restrict;

alter table COMPANY_STATE_MARKET_FILINGS
   add constraint CRTLS_TO_CSMF foreign key (CLS_RT_TIER_LOB_STT_ID)
      references CLASS_RATE_TIER_LOB_STATE (CLS_RT_TIER_LOB_STT_ID)
      on delete restrict on update restrict;

alter table COMPANY_STATE_MARKET_FILINGS
   add constraint FT_TO_CSMF foreign key (FILE_TYP_CD)
      references FILING_TYPE (FILE_TYP_CD)
      on delete restrict on update restrict;

alter table COMPANY_STATE_MARKET_FILINGS
   add constraint LMICJX_TO_CSMF foreign key (LMICJX_ID)
      references LOB_MRKT_INS_CMPY_JUR_XREF (LMICJX_ID)
     on delete restrict on update restrict;

alter table "CONDITION"
   add constraint ACT_TO_COND foreign key (APP_CNTX_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table "CONDITION"
   add constraint ASCT_TO_COND foreign key (APP_SUB_CNTX_TYP_CD)
      references APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table "CONDITION"
   add constraint USER_TO_COND1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table "CONDITION"
   add constraint USER_TO_COND2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CONTROL_ELEMENT_SUB_TYPE
   add constraint CET_TO_CEST foreign key (CTL_ELEM_TYP_ID)
      references CONTROL_ELEMENT_TYPE (CTL_ELEM_TYP_ID)
      on delete restrict on update restrict;

alter table CONTROL_ELEMENT_TYPE
   add constraint LOBT_TO_CET foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;


alter table COST_CENTER_CATEGORY_TYPE
    add constraint CLMRCT_TO_CCCTYP foreign key (CLM_RSRV_CTG_TYP_CD)
       references CLAIM_RESERVE_CATEGORY_TYPE (CLM_RSRV_CTG_TYP_CD)
       on delete restrict on update restrict;

alter table CST_CNTR_CTG_BNFT_CST_PAY_XREF
    add constraint BNFTT_TO_CCCBCPX foreign key (BNFT_TYP_CD)
       references BENEFIT_TYPE (BNFT_TYP_CD)
       on delete restrict on update restrict;

alter table CST_CNTR_CTG_BNFT_CST_PAY_XREF
    add constraint CCCTYP_TO_CCCBCPX foreign key (CST_CNTR_CTG_TYP_CD)
       references COST_CENTER_CATEGORY_TYPE (CST_CNTR_CTG_TYP_CD)
       on delete restrict on update restrict;

alter table CST_CNTR_CTG_BNFT_CST_PAY_XREF
    add constraint PAYT_TO_CCCBCPX foreign key (PAY_TYP_CD)
       references PAYMENT_TYPE (PAY_TYP_CD)
       on delete restrict on update restrict;

alter table CST_CNTR_CTG_BNFT_CST_PAY_XREF
    add constraint CCTYP_TO_CCCBCPX foreign key (CST_CNTR_TYP_CD)
       references COST_CENTER_TYPE (CST_CNTR_TYP_CD)
       on delete restrict on update restrict;

alter table CST_CNTR_CTG_BNFT_CST_PAY_XREF
    add constraint LOBT_TO_CCCBCPX foreign key (LOB_TYP_CD)
       references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
       on delete restrict on update restrict;

alter table COST_CENTER_TYPE
   add constraint CCCTYP_TO_CCTYP foreign key (CST_CNTR_CTG_TYP_CD)
      references COST_CENTER_CATEGORY_TYPE (CST_CNTR_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table COST_CENTER_TYPE
     add constraint PAYT_TO_CCTYP foreign key (PAY_TYP_CD_DFLT)
      references PAYMENT_TYPE (PAY_TYP_CD)
      on delete restrict on update restrict;
      
alter table CUSTOMER
   add constraint CRST_TO_CUSTA foreign key (CRST_CD)
      references CUSTOMER_RECORD_SOURCE_TYPE (CRST_CD)
      on delete restrict on update restrict;

alter table CUSTOMER
   add constraint CNTIRT_TO_CUST foreign key (CNTIRT_CD)
      references CUSTOMER_NO_TAX_ID_REASON_TYPE (CNTIRT_CD)
      on delete restrict on update restrict;

alter table CUSTOMER
   add constraint CUSTT_TO_CUST foreign key (CUST_TYP_CD)
      references CUSTOMER_TYPE (CUST_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER
   add constraint CNTRY_TO_CUST foreign key (CNTRY_ID)
      references COUNTRY (CNTRY_ID)
      on delete restrict on update restrict;

alter table CUSTOMER
   add constraint USER_TO_CUST1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER
   add constraint USER_TO_CUST2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table CUSTOMER_ADDRESS
   add constraint CAT_TO_CUSTA foreign key (CUST_ADDR_TYP_CD)
      references CUSTOMER_ADDRESS_TYPE (CUST_ADDR_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_ADDRESS
   add constraint CUST_TO_CUSTA1 foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_ADDRESS
   add constraint USER_TO_CUSTA2 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_ADDRESS
   add constraint USER_TO_CUSTA3 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_ADDRESS
   add constraint STT_TO_CUSTA foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_ADDRESS
   add constraint CNTRY_TO_CUSTA foreign key (CNTRY_ID)
      references COUNTRY (CNTRY_ID)
      on delete restrict on update restrict;
      
alter table CUSTOMER_ADDRESS_HISTORY
   add constraint CUSTA_TO_CAH foreign key (CUST_ADDR_ID)
      references CUSTOMER_ADDRESS (CUST_ADDR_ID)
      on delete restrict on update restrict;     

alter table CUSTOMER_ADDRESS_HISTORY
   add constraint CAT_TO_CAH foreign key (CUST_ADDR_TYP_CD)
      references CUSTOMER_ADDRESS_TYPE (CUST_ADDR_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_ADDRESS_HISTORY
   add constraint CUST_TO_CAH  foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_ADDRESS_HISTORY
   add constraint USER_TO_CAH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_ADDRESS_HISTORY
   add constraint USER_TO_CAH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table CUSTOMER_ADDRESS_HISTORY
   add constraint STT_TO_CAH foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_ADDRESS_HISTORY
   add constraint CNTRY_TO_CAH foreign key (CNTRY_ID)
      references COUNTRY (CNTRY_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_BLOCK_ROLE_BLOCK
   add constraint BLK_TO_CBRB foreign key (BLK_ID)
      references BLOCK (BLK_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_BLOCK_ROLE_BLOCK
   add constraint CRT_TO_CBRB foreign key (CUST_ROLE_TYP_CD)
      references CUSTOMER_ROLE_TYPE (CUST_ROLE_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_BLOCK_ROLE_BLOCK
   add constraint CUST_TO_CBRB foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;
      
alter table CUSTOMER_BLOCK_ROLE_BLOCK
   add constraint USER_TO_CBRB1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_BLOCK_ROLE_BLOCK
   add constraint USER_TO_CBRB2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      

alter table CUSTOMER_CHILD_SUPPORT
   add constraint CUST_TO_CUSTCSISSR foreign key (CUST_ID_ISSR)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_CHILD_SUPPORT
   add constraint CUST_TO_CUSTCSPRSN foreign key (CUST_ID_PRSN)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_CHILD_SUPPORT
   add constraint USER_TO_CUSTCS1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_CHILD_SUPPORT
   add constraint USER_TO_CUSTCS2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_CHILD_SUPPORT
   add constraint WPT_TO_CUSTCS foreign key (WH_PRD_TYP_CD)
      references WITHHOLDING_PERIOD_TYPE (WH_PRD_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_CHILD_SUPPORT
   add constraint CMT_TO_CCS foreign key (CHR_METH_TYP_CD)
      references CHARGE_METHOD_TYPE (CHR_METH_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_CHILD_SUPPORT_HISTORY
   add constraint CUSTCS_TO_CCSH foreign key (CUST_CHLD_SUPT_ID)
      references CUSTOMER_CHILD_SUPPORT (CUST_CHLD_SUPT_ID)
      on delete restrict on update restrict;	  

	  
alter table CUSTOMER_CHILD_SUPPORT_HISTORY
   add constraint CUST_TO_CCSH1 foreign key (CUST_ID_ISSR)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;
	  
alter table CUSTOMER_CHILD_SUPPORT_HISTORY
   add constraint CUST_TO_CCSH2 foreign key (CUST_ID_PRSN)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_CHILD_SUPPORT_HISTORY
   add constraint USER_TO_CUSTCSH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_CHILD_SUPPORT_HISTORY
   add constraint USER_TO_CUSTCSH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_CHILD_SUPPORT_HISTORY
   add constraint WPT_TO_CCSH foreign key (WH_PRD_TYP_CD)
      references WITHHOLDING_PERIOD_TYPE (WH_PRD_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_CHILD_SUPPORT_HISTORY
   add constraint CMT_TO_CCSH foreign key (CHR_METH_TYP_CD)
      references CHARGE_METHOD_TYPE (CHR_METH_TYP_CD)
      on delete restrict on update restrict;
	 
alter table CUSTOMER_CHILD_SUPPORT_HISTORY
   add constraint ICT_TO_CCSH foreign key (INS_CMPY_TYP_ID)
      references INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_CONTACT
   add constraint CT_TO_CC foreign key (CNTC_TYP_CD)
      references CONTACT_TYPE (CNTC_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_CONTACT
   add constraint CUST_TO_CC foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_CONTACT
   add constraint USER_TO_CC1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_CONTACT
   add constraint USER_TO_CC2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
            
alter table CUSTOMER_CONTACT_HISTORY
   add constraint CC_TO_CCH foreign key (CUST_CNTC_ID)
      references CUSTOMER_CONTACT (CUST_CNTC_ID)
      on delete restrict on update restrict;
      
alter table CUSTOMER_CONTACT_HISTORY
   add constraint CT_TO_CCH foreign key (CNTC_TYP_CD)
      references CONTACT_TYPE (CNTC_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_CONTACT_HISTORY
   add constraint CUST_TO_CCH foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_CONTACT_HISTORY
   add constraint USER_TO_CCH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_CONTACT_HISTORY
   add constraint USER_TO_CCH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_CONTACT_DETAIL
   add constraint CCDT_TO_CCD foreign key (CUST_CNTC_DTL_TYP_CD)
      references CUSTOMER_CONTACT_DETAIL_TYPE (CUST_CNTC_DTL_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_CONTACT_DETAIL
   add constraint CC_TO_CCD foreign key (CUST_CNTC_ID)
      references CUSTOMER_CONTACT (CUST_CNTC_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_CONTACT_DETAIL
   add constraint USER_TO_CCD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_CONTACT_DETAIL
   add constraint USER_TO_CCD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table CUSTOMER_CONTACT_DETAIL_HIST
   add constraint CCD_TO_CCDH foreign key (CUST_CNTC_DTL_ID)
      references CUSTOMER_CONTACT_DETAIL (CUST_CNTC_DTL_ID)
      on delete restrict on update restrict;
      
alter table CUSTOMER_CONTACT_DETAIL_HIST
   add constraint CCDT_TO_CCDH foreign key (CUST_CNTC_DTL_TYP_CD)
      references CUSTOMER_CONTACT_DETAIL_TYPE (CUST_CNTC_DTL_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_CONTACT_DETAIL_HIST
   add constraint CC_TO_CCDH foreign key (CUST_CNTC_ID)
      references CUSTOMER_CONTACT (CUST_CNTC_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_CONTACT_DETAIL_HIST
   add constraint USER_TO_CCDH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_CONTACT_DETAIL_HIST
   add constraint USER_TO_CCDH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict; 

alter table CUST_CNTC_DOCM_DLVR_ADDR
   add constraint CUST_TO_CCDDA foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CUST_CNTC_DOCM_DLVR_ADDR
   add constraint CC_TO_CCDDA foreign key (CUST_CNTC_ID)
      references CUSTOMER_CONTACT (CUST_CNTC_ID)
      on delete restrict on update restrict;

alter table CUST_CNTC_DOCM_DLVR_ADDR
   add constraint CA_TO_CCDDA foreign key (CUST_ADDR_ID)
      references CUSTOMER_ADDRESS (CUST_ADDR_ID)
      on delete restrict on update restrict;

alter table CUST_CNTC_DOCM_DLVR_ADDR
   add constraint STT_TO_CCDDA foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table CUST_CNTC_DOCM_DLVR_ADDR
   add constraint CNTRY_TO_CCDDA foreign key (CNTRY_ID)
      references COUNTRY (CNTRY_ID)
      on delete restrict on update restrict;

alter table CUST_CNTC_DOCM_DLVR_ADDR
   add constraint USER_TO_CCDDA1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUST_CNTC_DOCM_DLVR_ADDR
   add constraint USER_TO_CCDDA2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict; 

alter table CUST_CNTC_DOCM_DLVR_ADDR_HIST
   add constraint CCDDA_TO_CCDDAH foreign key (CCDD_ADDR_ID)
      references CUST_CNTC_DOCM_DLVR_ADDR (CCDD_ADDR_ID)
      on delete restrict on update restrict; 

alter table CUST_CNTC_DOCM_DLVR_ADDR_HIST
   add constraint CUST_TO_CCDDAH foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CUST_CNTC_DOCM_DLVR_ADDR_HIST
   add constraint CC_TO_CCDDAH foreign key (CUST_CNTC_ID)
      references CUSTOMER_CONTACT (CUST_CNTC_ID)
      on delete restrict on update restrict;

alter table CUST_CNTC_DOCM_DLVR_ADDR_HIST
   add constraint CA_TO_CCDDAH foreign key (CUST_ADDR_ID)
      references CUSTOMER_ADDRESS (CUST_ADDR_ID)
      on delete restrict on update restrict;

alter table CUST_CNTC_DOCM_DLVR_ADDR_HIST
   add constraint STT_TO_CCDDAH foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table CUST_CNTC_DOCM_DLVR_ADDR_HIST
   add constraint CNTRY_TO_CCDDAH foreign key (CNTRY_ID)
      references COUNTRY (CNTRY_ID)
      on delete restrict on update restrict;

alter table CUST_CNTC_DOCM_DLVR_ADDR_HIST
   add constraint USER_TO_CCDDAH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUST_CNTC_DOCM_DLVR_ADDR_HIST
   add constraint USER_TO_CCDDAH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;  

alter table CUST_CNTC_DOCM_DLVR_PRF
   add constraint CCDDA_TO_CCDDP foreign key (CCDD_ADDR_ID)
      references CUST_CNTC_DOCM_DLVR_ADDR (CCDD_ADDR_ID)
      on delete restrict on update restrict;

alter table CUST_CNTC_DOCM_DLVR_PRF
   add constraint CC_TO_CCDDP foreign key (CUST_CNTC_ID)
      references CUSTOMER_CONTACT (CUST_CNTC_ID)
      on delete restrict on update restrict;

alter table CUST_CNTC_DOCM_DLVR_PRF
   add constraint CCDDGT_TO_CCDDP foreign key (CUST_CNTC_DOCM_DLVR_GRP_TYP_CD)
      references CUSTOMER_CNTC_DOC_DLVR_GRP_TYP (CUST_CNTC_DOCM_DLVR_GRP_TYP_CD)
      on delete restrict on update restrict;

alter table CUST_CNTC_DOCM_DLVR_PRF
   add constraint CPT_TO_CCDDP foreign key (CRES_PREF_TYP_CD)
      references CORRESPONDENCE_PREF_TYP (CRES_PREF_TYP_CD)
      on delete restrict on update restrict;

alter table CUST_CNTC_DOCM_DLVR_PRF
   add constraint USER_TO_CCDDP1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUST_CNTC_DOCM_DLVR_PRF
   add constraint USER_TO_CCDDP2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict; 

alter table CUST_CNTC_DOCM_DLVR_PRF_HIST
   add constraint CCDDP_TO_CCDDPH foreign key (CCDD_PRF_ID)
      references CUST_CNTC_DOCM_DLVR_PRF (CCDD_PRF_ID)
      on delete restrict on update restrict;

alter table CUST_CNTC_DOCM_DLVR_PRF_HIST
   add constraint CC_TO_CCDDPH foreign key (CUST_CNTC_ID)
      references CUSTOMER_CONTACT (CUST_CNTC_ID)
      on delete restrict on update restrict;

alter table CUST_CNTC_DOCM_DLVR_PRF_HIST
   add constraint CCDDA_TO_CCDDPH foreign key (CCDD_ADDR_ID)
      references CUST_CNTC_DOCM_DLVR_ADDR (CCDD_ADDR_ID)
      on delete restrict on update restrict;

alter table CUST_CNTC_DOCM_DLVR_PRF_HIST
   add constraint CCDDGT_TO_CCDDPH foreign key (CUST_CNTC_DOCM_DLVR_GRP_TYP_CD)
      references CUSTOMER_CNTC_DOC_DLVR_GRP_TYP (CUST_CNTC_DOCM_DLVR_GRP_TYP_CD)
      on delete restrict on update restrict;

alter table CUST_CNTC_DOCM_DLVR_PRF_HIST
   add constraint CPT_TO_CCDDPH foreign key (CRES_PREF_TYP_CD)
      references CORRESPONDENCE_PREF_TYP (CRES_PREF_TYP_CD)
      on delete restrict on update restrict;

alter table CUST_CNTC_DOCM_DLVR_PRF_HIST
   add constraint USER_TO_CCDDPH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUST_CNTC_DOCM_DLVR_PRF_HIST
   add constraint USER_TO_CCDDPH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;       

alter table CUSTOMER_CONTACT_XREF
   add constraint CT_TO_CCX foreign key (CNTC_TYP_CD)
      references CONTACT_TYPE (CNTC_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_CONTACT_XREF
   add constraint CUSTT_TO_CCX foreign key (CUST_TYP_CD)
      references CUSTOMER_TYPE (CUST_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_CUSTOMER_ROLE_XREF
   add constraint CRT_TO_CCRX foreign key (CUST_ROLE_TYP_CD)
      references CUSTOMER_ROLE_TYPE (CUST_ROLE_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_CUSTOMER_ROLE_XREF
   add constraint CUSTT_TO_CCRX foreign key (CUST_TYP_CD)
      references CUSTOMER_TYPE (CUST_TYP_CD)
      on delete restrict on update restrict;
    

      
      alter table CUSTOMER_ADDRESS_APP_CNTX_XREF
   add constraint ACT_TO_CAACX foreign key (APP_CNTX_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_ADDRESS_APP_CNTX_XREF
   add constraint ASCT_TO_CAACX foreign key (APP_SUB_CNTX_TYP_CD)
      references APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD);

alter table CUSTOMER_ADDRESS_APP_CNTX_XREF
   add constraint CAT_TO_CAACX foreign key (CUST_ADDR_TYP_CD)
      references CUSTOMER_ADDRESS_TYPE (CUST_ADDR_TYP_CD)
      on delete restrict on update restrict;


alter table CUSTOMER_HISTORY
   add constraint CUST_TO_CUSTH foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_HISTORY
   add constraint CRST_TO_CUSTH foreign key (CRST_CD)
      references CUSTOMER_RECORD_SOURCE_TYPE (CRST_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_HISTORY
   add constraint CNTIRT_TO_CUSTH foreign key (CNTIRT_CD)
      references CUSTOMER_NO_TAX_ID_REASON_TYPE (CNTIRT_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_HISTORY
   add constraint CUSTT_TO_CUSTH foreign key (CUST_TYP_CD)
      references CUSTOMER_TYPE (CUST_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_HISTORY
   add constraint CNTRY_TO_CUSTH foreign key (CNTRY_ID)
      references COUNTRY (CNTRY_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_HISTORY
   add constraint USER_TO_CUSTH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_HISTORY
   add constraint USER_TO_CUSTH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table CUSTOMER_LANGUAGE
   add constraint CUST_TO_CUSTL foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_LANGUAGE
   add constraint LT_TO_CUSTL foreign key (LANG_TYP_CD)
      references LANGUAGE_TYPE (LANG_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_LANGUAGE
   add constraint USER_TO_CUSTL foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table CUSTOMER_LANGUAGE
   add constraint USER_UPDT_TO_CUSTL foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table CUSTOMER_LANGUAGE_HISTORY
   add constraint CL_TO_CLH foreign key (CUST_LANG_ID)
      references CUSTOMER_LANGUAGE (CUST_LANG_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_LANGUAGE_HISTORY
   add constraint CUST_TO_CLH foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_LANGUAGE_HISTORY
   add constraint LT_TO_CLH foreign key (LANG_TYP_CD)
      references LANGUAGE_TYPE (LANG_TYP_CD)
      on delete restrict on update restrict;
 
alter table CUSTOMER_LANGUAGE_HISTORY
   add constraint USER_TO_CLH foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
 
alter table CUSTOMER_LANGUAGE_HISTORY
   add constraint USER_UPDT_TO_CLH foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table CUSTOMER_NAME
   add constraint CNST_TO_CN foreign key (CUST_NM_SFX_TYP_CD)
      references CUSTOMER_NAME_SUFFIX_TYPE (CUST_NM_SFX_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_NAME
   add constraint CNTT_TO_CN foreign key (CUST_NM_TTL_TYP_CD)
      references CUSTOMER_NAME_TITLE_TYPE (CUST_NM_TTL_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_NAME
   add constraint CNT_TO_CN foreign key (CUST_NM_TYP_CD)
      references CUSTOMER_NAME_TYPE (CUST_NM_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_NAME
   add constraint CUST_TO_CN foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_NAME
   add constraint USER_TO_CN2 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_NAME
   add constraint USER_TO_CN3 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table CUSTOMER_NAME
   add constraint CNAT_TO_CN foreign key (CUST_NM_ALIAS_TYP_CD)
      references CUSTOMER_NAME_ALIAS_TYPE (CUST_NM_ALIAS_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_NAME_HISTORY
   add constraint CN_TO_CNH foreign key (CUST_NM_ID)
      references CUSTOMER_NAME (CUST_NM_ID)
      on delete restrict on update restrict;
      
alter table CUSTOMER_NAME_HISTORY
   add constraint CNST_TO_CNH foreign key (CUST_NM_SFX_TYP_CD)
      references CUSTOMER_NAME_SUFFIX_TYPE (CUST_NM_SFX_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_NAME_HISTORY
   add constraint CNTT_TO_CNH foreign key (CUST_NM_TTL_TYP_CD)
      references CUSTOMER_NAME_TITLE_TYPE (CUST_NM_TTL_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_NAME_HISTORY
   add constraint CNT_TO_CNH foreign key (CUST_NM_TYP_CD)
      references CUSTOMER_NAME_TYPE (CUST_NM_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_NAME_HISTORY
   add constraint CUST_TO_CNH foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_NAME_HISTORY
   add constraint USER_TO_CNH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_NAME_HISTORY
   add constraint USER_TO_CNH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table CUSTOMER_NAME_HISTORY
   add constraint CNAT_TO_CNH foreign key (CUST_NM_ALIAS_TYP_CD)
      references CUSTOMER_NAME_ALIAS_TYPE (CUST_NM_ALIAS_TYP_CD)
      on delete restrict on update restrict;
      
alter table CUSTOMER_ROLE
   add constraint CRT_TO_CR foreign key (ROLE_TYP_CD)
      references CUSTOMER_ROLE_TYPE (CUST_ROLE_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_ROLE
   add constraint CUST_TO_CRL foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_ROLE
   add constraint USER_TO_CRL1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_ROLE
   add constraint USER_TO_CRL2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_ROLE_BLOCK_XREF
   add constraint BT_TO_CRBX foreign key (BLK_TYP_CD)
      references BLOCK_TYPE (BLK_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_ROLE_BLOCK_XREF
   add constraint CRT_TO_CRBX foreign key (CUST_ROLE_TYP_CD)
      references CUSTOMER_ROLE_TYPE (CUST_ROLE_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_ROLE_IDENTIFIER
   add constraint CI_TO_CRI foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;


alter table CUSTOMER_ROLE_IDENTIFIER
   add constraint CRT_TO_CRI foreign key (CUST_ROLE_TYP_CD)
      references CUSTOMER_ROLE_TYPE (CUST_ROLE_TYP_CD)
      on delete restrict on update restrict;


alter table CUSTOMER_ROLE_IDENTIFIER
   add constraint IT_TO_CRI foreign key (ID_TYP_CD)
      references IDENTIFIER_TYPE (ID_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_ROLE_IDENTIFIER
   add constraint LOBT_TO_CRI foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_ROLE_IDENTIFIER
   add constraint STT_TO_CRI foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;


alter table CUSTOMER_ROLE_IDENTIFIER
   add constraint USER_TO_CRI1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_ROLE_IDENTIFIER
   add constraint USER_TO_CRI2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_ROLE_IDENTIFIER
   add constraint LICT_TO_CRI foreign key (LIC_TYP_CD)
      references LICENSE_TYPE (LIC_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_ROLE_IDENTIFIER_HIST
   add constraint LICT_TO_CRIH foreign key (LIC_TYP_CD)
      references LICENSE_TYPE (LIC_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_ROLE_IDENTIFIER_HIST
   add constraint CRI_TO_CRIH foreign key (CUST_ROLE_ID_ID)
      references CUSTOMER_ROLE_IDENTIFIER (CUST_ROLE_ID_ID)
      on delete restrict on update restrict;


alter table CUSTOMER_ROLE_IDENTIFIER_HIST
   add constraint CUST_TO_CRIH foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;


alter table CUSTOMER_ROLE_IDENTIFIER_HIST
   add constraint CRT_TO_CRIH foreign key (CUST_ROLE_TYP_CD)
      references CUSTOMER_ROLE_TYPE (CUST_ROLE_TYP_CD)
      on delete restrict on update restrict;


alter table CUSTOMER_ROLE_IDENTIFIER_HIST
   add constraint IT_TO_CRIH foreign key (ID_TYP_CD)
      references IDENTIFIER_TYPE (ID_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_ROLE_IDENTIFIER_HIST
   add constraint LOBT_TO_CRIH foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_ROLE_IDENTIFIER_HIST
   add constraint STT_TO_CRIH foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;


alter table CUSTOMER_ROLE_IDENTIFIER_HIST
   add constraint USER_TO_CRIH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_ROLE_IDENTIFIER_HIST
   add constraint USER_TO_CRIH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


      
alter table CUSTOMER_TAX_IDENTIFIER_XREF
   add constraint CUSTT_TO_CTIX foreign key (CUST_TYP_CD)
      references CUSTOMER_TYPE (CUST_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_TAX_IDENTIFIER_XREF
   add constraint TIT_TO_CTIX foreign key (TAX_ID_TYP_CD)
      references TAX_IDENTIFIER_TYPE (TAX_ID_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_TAX_IDENTIFIER_XREF
   add constraint CNTRY_TO_CTIX foreign key (CNTRY_ID)
      references COUNTRY (CNTRY_ID)
      on delete restrict on update restrict;

alter table CUST_CUST_NO_TAX_ID_RSN_XREF
   add constraint CNTIRT_TO_CCNTIRX foreign key (CNTIRT_CD)
      references CUSTOMER_NO_TAX_ID_REASON_TYPE (CNTIRT_CD)
      on delete restrict on update restrict;

alter table CUST_CUST_NO_TAX_ID_RSN_XREF
   add constraint CUSTT_TO_CCNTIRX foreign key (CUST_TYP_CD)
      references CUSTOMER_TYPE (CUST_TYP_CD)
      on delete restrict on update restrict;

alter table DATA_RETRIEVER_CONFIGURATION
  add constraint ADT_TO_DRC foreign key (APP_DATA_TYP_CD)
     references APPLICATION_DATA_TYPE (APP_DATA_TYP_CD)
     on delete restrict on update restrict;

alter table EFT
   add constraint AGRE_TO_EFT foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict;

alter table EFT
   add constraint AT_TO_EFT foreign key (EFT_BANK_ACCT_TYP_CD)
      references ACCOUNT_TYPE (ACCT_TYP_CD)
      on delete restrict on update restrict;

alter table EFT
   add constraint ESRT_TO_EFT foreign key (EFT_STS_RSN_TYP_CD)
      references EFT_STATUS_REASON_TYPE (EFT_STS_RSN_TYP_CD)
      on delete restrict on update restrict;

alter table EFT
   add constraint EST_TO_EFT foreign key (EFT_STS_TYP_CD)
      references EFT_STATUS_TYPE (EFT_STS_TYP_CD)
      on delete restrict on update restrict;

alter table EFT
   add constraint ET_TO_EFT foreign key (EFT_TYP_CD)
      references EFT_TYPE (EFT_TYP_CD)
      on delete restrict on update restrict;

alter table EFT
   add constraint USER_TO_EFT1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table EFT
   add constraint USER_TO_EFT2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table EFT_ACTION_STATUS_REASON_XREF
   add constraint ESAT_TO_EASRX foreign key (EFT_STS_ACTN_TYP_CD)
      references EFT_STATUS_ACTION_TYPE (EFT_STS_ACTN_TYP_CD)
      on delete restrict on update restrict;

alter table EFT_ACTION_STATUS_REASON_XREF
   add constraint ESRT_TO_EASRX foreign key (EFT_STS_RSN_TYP_CD)
      references EFT_STATUS_REASON_TYPE (EFT_STS_RSN_TYP_CD)
      on delete restrict on update restrict;

alter table EFT_ACTION_STATUS_REASON_XREF
   add constraint EST_TO_EASRX foreign key (EFT_STS_TYP_CD)
      references EFT_STATUS_TYPE (EFT_STS_TYP_CD)
      on delete restrict on update restrict;

alter table EFT_HISTORY
   add constraint AGRE_TO_EH foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict;

alter table EFT_HISTORY
   add constraint AT_TO_EH foreign key (EFT_BANK_ACCT_TYP_CD)
      references ACCOUNT_TYPE (ACCT_TYP_CD)
      on delete restrict on update restrict;


alter table EFT_HISTORY
   add constraint EFT_TO_EH foreign key (EFT_ID)
      references EFT (EFT_ID)
      on delete restrict on update restrict;

alter table EFT_HISTORY
   add constraint ESRT_TO_EH foreign key (EFT_STS_RSN_TYP_CD)
      references EFT_STATUS_REASON_TYPE (EFT_STS_RSN_TYP_CD)
      on delete restrict on update restrict;

alter table EFT_HISTORY
   add constraint EST_TO_EH foreign key (EFT_STS_TYP_CD)
      references EFT_STATUS_TYPE (EFT_STS_TYP_CD)
      on delete restrict on update restrict;

alter table EFT_HISTORY
   add constraint ET_TO_EH foreign key (EFT_TYP_CD)
      references EFT_TYPE (EFT_TYP_CD)
      on delete restrict on update restrict;

alter table EFT_HISTORY
   add constraint USER_TO_EH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table EFT_HISTORY
   add constraint USER_TO_EH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table EFT_STATUS_EFT_ACTION_STS_XREF
   add constraint ESAT_TO_ESEASX foreign key (EFT_STS_ACTN_TYP_CD)
      references EFT_STATUS_ACTION_TYPE (EFT_STS_ACTN_TYP_CD)
      on delete restrict on update restrict;

alter table EFT_STATUS_EFT_ACTION_STS_XREF
   add constraint EST_TO_ESEASX foreign key (EFT_STS_TYP_CD)
      references EFT_STATUS_TYPE (EFT_STS_TYP_CD)
      on delete restrict on update restrict;

alter table EVENT_RULE_XREF
add constraint ACT_TO_ERX foreign key (APP_CNTX_TYP_CD)
   references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
   on delete restrict on update restrict;

alter table EVENT_RULE_XREF
   add constraint EVNTT_TO_ERX foreign key (EVNT_TYP_CD)
      references EVENT_TYPE (EVNT_TYP_CD)
      on delete restrict on update restrict;

alter table EVENT_RULE_XREF
   add constraint RL_TO_ERX foreign key (RL_ID)
      references RULES (RL_ID)
      on delete restrict on update restrict;

alter table EVENT_TYPE
   add constraint ACT_TO_EVNTT foreign key (APP_CNTX_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table EVENT_TYPE
   add constraint ASCT_TO_EVNTT foreign key (APP_SUB_CNTX_TYP_CD)
      references APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table EXPENSE_CONSTANT
   add constraint LMICJX_TO_EC foreign key (LMICJX_ID)
      references LOB_MRKT_INS_CMPY_JUR_XREF (LMICJX_ID)
      on delete restrict on update restrict;

alter table EXPERIENCE_MODIFIER
   add constraint BUR_TO_EXPM foreign key (BUR_ID)
      references BUREAU (BUR_ID)
      on delete restrict on update restrict;

alter table EXPERIENCE_MODIFIER
   add constraint EXPMT_TO_EXPM foreign key (EXPRN_MOD_TYP_CD)
      references EXPERIENCE_MODIFIER_TYPE (EXPRN_MOD_TYP_CD)
      on delete restrict on update restrict;
      
alter table EXPERIENCE_MODIFIER
   add constraint PLCYP_TO_EXPM foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;        

alter table EXPERIENCE_MODIFIER
   add constraint USER_TO_EXPM1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table EXPERIENCE_MODIFIER
   add constraint USER_TO_EXPM2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table EXPERIENCE_MODIFIER_HISTORY
   add constraint EXPM_TO_EXPMH foreign key (EXPRN_MOD_ID)
      references EXPERIENCE_MODIFIER (EXPRN_MOD_ID)
      on delete restrict on update restrict;

alter table EXPERIENCE_MODIFIER_HISTORY
   add constraint BUR_TO_EXPMH foreign key (BUR_ID)
      references BUREAU (BUR_ID)
      on delete restrict on update restrict;

alter table EXPERIENCE_MODIFIER_HISTORY
   add constraint EXPMT_TO_EXPMH foreign key (EXPRN_MOD_TYP_CD)
      references EXPERIENCE_MODIFIER_TYPE (EXPRN_MOD_TYP_CD)
      on delete restrict on update restrict;

alter table EXPERIENCE_MODIFIER_HISTORY
 add constraint PLCYP_TO_EXPMH foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;    

alter table EXPERIENCE_MODIFIER_HISTORY
   add constraint USER_TO_EXPMH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table EXPERIENCE_MODIFIER_HISTORY
   add constraint USER_TO_EXPMH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table EXPRESSION
   add constraint ADT_TO_EXPRSNLHS foreign key (APP_DATA_TYP_CD_LHS)
      references APPLICATION_DATA_TYPE (APP_DATA_TYP_CD)
      on delete restrict on update restrict;

alter table EXPRESSION
   add constraint ADT_TO_EXPRSNRHS foreign key (APP_DATA_TYP_CD_RHS)
      references APPLICATION_DATA_TYPE (APP_DATA_TYP_CD)
      on delete restrict on update restrict;

alter table EXPRESSION
   add constraint DT_TO_EXPRSN foreign key (DATA_TYP_CD)
      references DATA_TYPE (DATA_TYP_CD)
      on delete restrict on update restrict;

alter table EXPRESSION
   add constraint ETYP_TO_EXPRSN foreign key (EXPRSN_TYP_CD)
      references EXPRESSION_TYPE (EXPRSN_TYP_CD)
      on delete restrict on update restrict;

alter table FNCT_ROLE_ORG_UNT_UNQ_XREF
   add constraint FR_TO_FROUUX foreign key (FNCT_ROLE_ID)
      references FUNCTIONAL_ROLE (FNCT_ROLE_ID)
      on delete restrict on update restrict;

alter table FNCT_ROLE_ORG_UNT_UNQ_XREF
   add constraint OU_TO_FROUUX foreign key (ORG_UNT_ID)
      references ORGANIZATIONAL_UNIT (ORG_UNT_ID)
      on delete restrict on update restrict;

alter table FNCT_ROLE_ORG_UNT_UNQ_XREF
   add constraint USER_TO_FROUUX1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table FNCT_ROLE_ORG_UNT_UNQ_XREF
   add constraint USER_TO_FROUUX2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table FOLDER
   add constraint ACT_TO_FOLD foreign key (APP_CNTX_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table FOLDER
   add constraint ASCT_TO_FOLD foreign key (APP_SUB_CNTX_TYP_CD)
      references APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table FOLDER
   add constraint LOBT_TO_FOLD foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table FOLDER
   add constraint OU_TO_FOLD foreign key (ORG_UNT_ID)
      references ORGANIZATIONAL_UNIT (ORG_UNT_ID)
      on delete restrict on update restrict;

alter table FOLDER
   add constraint USER_TO_FOLD foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table FOLDER
   add constraint USER_TO_FOLD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table FOLDER
   add constraint USER_TO_FOLD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table FOLDER
   add constraint OU_TO_FOLDPRVS foreign key (ORG_UNT_ID_PRVS)
      references ORGANIZATIONAL_UNIT (ORG_UNT_ID)
      on delete restrict on update restrict;

alter table FOLDER
   add constraint USER_TO_FOLDPRVS foreign key (USER_ID_PRVS)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table FOLDER_TEMPLATE
   add constraint ACT_TO_FOLDT foreign key (APP_CNTX_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table FOLDER_TEMPLATE
   add constraint ADT_TO_FOLDT foreign key (APP_DATA_TYP_CD)
      references APPLICATION_DATA_TYPE (APP_DATA_TYP_CD)
      on delete restrict on update restrict;

alter table FOLDER_TEMPLATE
   add constraint ASCT_TO_FOLDT foreign key (APP_SUB_CNTX_TYP_CD)
      references APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table FOLDER_TEMPLATE
   add constraint RL_TO_FOLDT1 foreign key (RL_ID_USER_OWNR)
      references RULES (RL_ID)
      on delete restrict on update restrict;

alter table FOLDER_TEMPLATE
   add constraint RL_TO_FOLDT2 foreign key (RL_ID_GRP_OWNR)
      references RULES (RL_ID)
      on delete restrict on update restrict;

alter table FOLDER_TEMPLATE
   add constraint USER_TO_FOLDT1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table FOLDER_TEMPLATE
   add constraint USER_TO_FOLDT2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table FUNCTIONAL_ROLE
   add constraint USER_TO_FR1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table FUNCTIONAL_ROLE
   add constraint USER_TO_FR2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table FUNCTIONAL_ROLE_ORG_UNT_XREF
   add constraint FR_TO_FROUX foreign key (FNCT_ROLE_ID)
      references FUNCTIONAL_ROLE (FNCT_ROLE_ID)
      on delete restrict on update restrict;

alter table FUNCTIONAL_ROLE_ORG_UNT_XREF
   add constraint OU_TO_FROUX foreign key (ORG_UNT_ID)
      references ORGANIZATIONAL_UNIT (ORG_UNT_ID)
      on delete restrict on update restrict;

alter table FUNCTIONAL_ROLE_ORG_UNT_XREF
   add constraint USER_TO_FROUX foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table FUNCTIONAL_ROLE_ORG_UNT_XREF
   add constraint USER_TO_FROUX1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table FUNCTIONAL_ROLE_ORG_UNT_XREF
   add constraint USER_TO_FROUX2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


ALTER TABLE HIGH_LOW_PROGRAM_DETAIL
	ADD CONSTRAINT HLPSRX_TO_HLPD FOREIGN KEY (HLPSRX_ID)
	REFERENCES HIGH_LOW_PROGRAM_STS_RSN_XREF (HLPSRX_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE HIGH_LOW_PROGRAM_STS_RSN_XREF
	ADD CONSTRAINT HLPST_TO_HLPSRX FOREIGN KEY (HI_LOW_PGM_STS_TYP_CD)
	REFERENCES HIGH_LOW_PROGRAM_STATUS_TYPE (HI_LOW_PGM_STS_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE HIGH_LOW_PROGRAM_STS_RSN_XREF
	ADD CONSTRAINT HLPSRT_TO_HLPSRX FOREIGN KEY (HI_LOW_PGM_STS_RSN_TYP_CD)
	REFERENCES HIGH_LOW_PROGRAM_STS_RSN_TYP (HI_LOW_PGM_STS_RSN_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table ICD
   add constraint ICDTYP_TO_ICD foreign key (ICD_TYP_CD)
      references ICD_TYPE (ICD_TYP_CD)
      on delete restrict on update restrict;

alter table ICD
   add constraint IVT_TO_ICD foreign key (ICD_VLD_TYP_CD)
      references ICD_VALIDITY_TYPE (ICD_VLD_TYP_CD)
      on delete restrict on update restrict;

alter table IDENTIFIER_TYPE
   add constraint CRT_TO_IT foreign key (CUST_ROLE_TYP_CD)
      references CUSTOMER_ROLE_TYPE (CUST_ROLE_TYP_CD)
      on delete restrict on update restrict;

alter table IDENTIFIER_TYPE
   add constraint DT_TO_IT foreign key (DATA_TYP_CD)
      references DATA_TYPE (DATA_TYP_CD)
      on delete restrict on update restrict;

alter table INDUSTRY_GROUP_TYPE
   add constraint IST_TO_IGT foreign key (INDST_SCH_TYP_CD)
      references INDUSTRY_SCHEDULE_TYPE (INDST_SCH_TYP_CD)
      on delete restrict on update restrict;

alter table INDUSTRY_SCHEDULE_TYPE
   add constraint ICT_TO_IST foreign key (INDST_CTG_TYP_CD)
      references INDUSTRY_CATEGORY_TYPE (INDST_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table INSURANCE_COMPANY_TYPE
   add constraint CUST_TO_INSCT foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_INTERACTION_CHANNEL
   add constraint INTRNCT_TO_CINTRNC foreign key (INTRN_CHNL_TYP_CD)
      references INTERACTION_CHANNEL_TYPE (INTRN_CHNL_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_INTERACTION_CHANNEL
   add constraint PNT_TO_CINTRNC foreign key (PHN_NO_TYP_CD)
      references PHONE_NUMBER_TYPE (PHN_NO_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_INTERACTION_CHANNEL
   add constraint CRT_TO_CINTRNC foreign key (CUST_ROLE_TYP_CD)
      references CUSTOMER_ROLE_TYPE (CUST_ROLE_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_INTERACTION_CHANNEL
   add constraint CUST_TO_CINTRNC foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_INTERACTION_CHANNEL
   add constraint USER_TO_CINTRNC1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_INTERACTION_CHANNEL
   add constraint USER_TO_CINTRNC2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table INTERFACE_REQUEST
   add constraint AGRE_TO_IR foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict;

alter table INTERFACE_REQUEST
   add constraint IRT_TO_IR foreign key (INTFC_REQS_TYP_CD)
      references INTERFACE_REQUEST_TYPE (INTFC_REQS_TYP_CD)
      on delete restrict on update restrict;

alter table INTERFACE_REQUEST
   add constraint IRST_TO_IR foreign key (INTFC_REQS_STS_TYP_CD)
      references INTERFACE_REQUEST_STATUS_TYPE (INTFC_REQS_STS_TYP_CD)
      on delete restrict on update restrict;

alter table INTERFACE_REQUEST
   add constraint IT_TO_IR foreign key (INTFC_TYP_CD)
      references INTERFACE_TYPE (INTFC_TYP_CD)
      on delete restrict on update restrict;
      
alter table INTERFACE_REQUEST
   add constraint IRMT_TO_IR foreign key (INTFC_REQS_MAINT_TYP_CD)
      references INTERFACE_REQUEST_MAINT_TYP (INTFC_REQS_MAINT_TYP_CD)
      on delete restrict on update restrict;

alter table INTERFACE_REQUEST
   add constraint USER_TO_IR1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table INTERFACE_REQUEST
   add constraint USER_TO_IR2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table INTERFACE_REQUEST_HISTORY
   add constraint IR_TO_IRH foreign key (INTFC_REQS_ID)
      references INTERFACE_REQUEST (INTFC_REQS_ID)
      on delete restrict on update restrict;

alter table INTERFACE_REQUEST_HISTORY
   add constraint AGRE_TO_IRH foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict;

alter table INTERFACE_REQUEST_HISTORY
   add constraint IRT_TO_IRH foreign key (INTFC_REQS_TYP_CD)
      references INTERFACE_REQUEST_TYPE (INTFC_REQS_TYP_CD)
      on delete restrict on update restrict;

alter table INTERFACE_REQUEST_HISTORY
   add constraint IRST_TO_IRH foreign key (INTFC_REQS_STS_TYP_CD)
      references INTERFACE_REQUEST_STATUS_TYPE (INTFC_REQS_STS_TYP_CD)
      on delete restrict on update restrict;
      
alter table INTERFACE_REQUEST_HISTORY
   add constraint IRMT_TO_IRH foreign key (INTFC_REQS_MAINT_TYP_CD)
      references INTERFACE_REQUEST_MAINT_TYP (INTFC_REQS_MAINT_TYP_CD)
      on delete restrict on update restrict;

alter table INTERFACE_REQUEST_HISTORY
   add constraint IT_TO_IRH foreign key (INTFC_TYP_CD)
      references INTERFACE_TYPE (INTFC_TYP_CD)
      on delete restrict on update restrict;

alter table INTERFACE_REQUEST_HISTORY
   add constraint USER_TO_IRH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table INTERFACE_REQUEST_HISTORY
   add constraint USER_TO_IRH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table JURISDICTION_DEP_AGE_LMT_TYP
   add constraint JT_TO_JDALT foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table JURISDICTION_ROUNDING_XREF
   add constraint JRT_TO_JRX foreign key (JUR_RND_TYP_CD)
      references JURISDICTION_ROUNDING_TYPE (JUR_RND_TYP_CD)
      on delete restrict on update restrict;

alter table JURISDICTION_ROUNDING_XREF
   add constraint JT_TO_JRX foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table JURISDICTION_ROUNDING_XREF
   add constraint RMT_TO_JRX foreign key (RND_MTHD_TYP_CD)
      references ROUNDING_METHOD_TYPE (RND_MTHD_TYP_CD)
      on delete restrict on update restrict;

alter table JURISDICTION_ROUNDING_XREF
   add constraint RNDPT_TO_JRX foreign key (RND_PRCSN_TYP_CD)
      references ROUNDING_PRECISION_TYPE (RND_PRCSN_TYP_CD)
      on delete restrict on update restrict;

alter table JURISDICTION_ROUNDING_XREF
   add constraint BT_TO_JRX foreign key (BNFT_TYP_CD)
      references BENEFIT_TYPE (BNFT_TYP_CD)
      on delete restrict on update restrict;
      
alter table JURISDICTION_TYPE
   add constraint STT_TO_JT foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table LOB_MARKET_INSURANCE_CMPY_XREF
   add constraint INSCT_TO_LMICX foreign key (INS_CMPY_TYP_ID)
      references INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID)
      on delete restrict on update restrict;

alter table LOB_MARKET_INSURANCE_CMPY_XREF
   add constraint LOBT_TO_LMICX foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table LOB_MARKET_INSURANCE_CMPY_XREF
   add constraint MT_TO_LMICX foreign key (MRKT_TYP_CD)
      references MARKET_TYPE (MRKT_TYP_CD)
      on delete restrict on update restrict;

alter table LOB_MRKT_INS_CMPY_JUR_XREF
   add constraint INSCT_TO_LMICJX foreign key (INS_CMPY_TYP_ID)
      references INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID)
      on delete restrict on update restrict;

alter table LOB_MRKT_INS_CMPY_JUR_XREF
   add constraint JT_TO_LMICJX foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table LOB_MRKT_INS_CMPY_JUR_XREF
   add constraint LOBT_TO_LMICJX foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table LOB_MRKT_INS_CMPY_JUR_XREF
   add constraint MT_TO_LMICJX foreign key (MRKT_TYP_CD)
      references MARKET_TYPE (MRKT_TYP_CD)
      on delete restrict on update restrict;

alter table LOSS_COVERAGE_TYPE
   add constraint AIET_TO_LCT foreign key (ACT_IN_EFF_TYP_CD)
      references ACT_IN_EFFECT_TYPE (ACT_IN_EFF_TYP_CD)
      on delete restrict on update restrict;

alter table LOSS_COVERAGE_TYPE
   add constraint CLMCT_TO_LCT foreign key (CLM_COV_TYP_CD)
      references CLAIM_COVERAGE_TYPE (CLM_COV_TYP_CD)
      on delete restrict on update restrict;

alter table LOSS_COVERAGE_TYPE
   add constraint CLMRT_TO_LCT foreign key (CLM_RCVR_TYP_CD)
      references CLAIM_RECOVERY_TYPE (CLM_RCVR_TYP_CD)
      on delete restrict on update restrict;

alter table LOSS_COVERAGE_TYPE
   add constraint CLT_TO_LCT foreign key (CLM_LOSS_TYP_CD)
      references CLAIM_LOSS_TYPE (CLM_LOSS_TYP_CD)
      on delete restrict on update restrict;

alter table META_STATE
   add constraint JT_TO_MS foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table META_STATE
   add constraint MST_TO_MS foreign key (META_STT_TYP_CD)
      references META_STATE_TYPE (META_STT_TYP_CD)
      on delete restrict on update restrict;

alter table NATURE_OF_INJURY_TYPE
   add constraint NOICT_TO_NOIT foreign key (NOI_CTG_TYP_CD)
      references NATURE_OF_INJURY_CATEGORY_TYPE (NOI_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table NATURE_OF_INJURY_TYPE
   add constraint UCT_TO_NOIT foreign key (UNSL_CLM_TYP_CD)
      references UNUSUAL_CLAIM_TYPE (UNSL_CLM_TYP_CD)
      on delete restrict on update restrict;

alter table NOC_MAJOR_GROUP_TYPE
   add constraint NOCCT_TO_NMGT foreign key (NOC_CTG_TYP_CD)
      references NOC_CATEGORY_TYPE (NOC_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table NOC_MINOR_GROUP_TYPE
   add constraint NMGT_TO_NMNRGT foreign key (NOC_MJR_GRP_TYP_CD)
      references NOC_MAJOR_GROUP_TYPE (NOC_MJR_GRP_TYP_CD)
      on delete restrict on update restrict;

alter table NOC_UNIT_TYPE
   add constraint NMNRGT_TO_NUT foreign key (NOC_MNR_GRP_TYP_CD)
      references NOC_MINOR_GROUP_TYPE (NOC_MNR_GRP_TYP_CD)
      on delete restrict on update restrict;

alter table NWISP_DIVISION_TYPE
   add constraint NWISPT_TO_NDT foreign key (NWISP_TYP_CD)
      references NWISP_TYPE (NWISP_TYP_CD)
      on delete restrict on update restrict;

alter table NWISP_MAJOR_GROUP_TYPE
   add constraint NDT_TO_NWISPMGT foreign key (NWISP_DIV_TYP_CD)
      references NWISP_DIVISION_TYPE (NWISP_DIV_TYP_CD)
      on delete restrict on update restrict;

alter table NWISP_MINOR_GROUP_TYPE
   add constraint NWISPMG_TO_NWISPMN foreign key (NWISP_MJR_GRP_TYP_CD)
      references NWISP_MAJOR_GROUP_TYPE (NWISP_MJR_GRP_TYP_CD)
      on delete restrict on update restrict;

alter table NWISP_DETAIL_TYPE
   add constraint NWISPMNR_TO_NDTLT foreign key (NWISP_MNR_GRP_TYP_CD)
      references NWISP_MINOR_GROUP_TYPE (NWISP_MNR_GRP_TYP_CD)
      on delete restrict on update restrict;

alter table NOTE
   add constraint ADL_TO_NOTE foreign key (APP_DTL_LVL_CD)
      references APPLICATION_DETAIL_LEVEL (APP_DTL_LVL_CD)
      on delete restrict on update restrict;

alter table NOTE
   add constraint NCFT_TO_NOTE foreign key (NOTE_CALL_FR_TYP_CD)
      references NOTE_CALL_FROM_TYPE (NOTE_CALL_FR_TYP_CD)
      on delete restrict on update restrict;

alter table NOTE
   add constraint NCTGT_TO_NOTE foreign key (NOTE_CTG_TYP_CD)
      references NOTE_CATEGORY_TYPE (NOTE_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table NOTE
   add constraint NCT_TO_NOTE foreign key (NOTE_CALL_TYP_CD)
      references NOTE_CALL_TYPE (NOTE_CALL_TYP_CD)
      on delete restrict on update restrict;

alter table NOTE
   add constraint NT_TO_NOTE foreign key (NOTE_TYP_CD)
      references NOTE_TYPE (NOTE_TYP_CD)
      on delete restrict on update restrict;

alter table NOTE
   add constraint USER_TO_NOTE1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table NOTE
   add constraint USER_TO_NOTE2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
	  
alter table NOTE
   add constraint TMPL_TO_NOTE foreign key (NOTE_TYP_TMPL_ID)
   	  references NOTE_TYPE_TEMPLATE_CD (NOTE_TYP_TMPL_ID)
	  on delete restrict on update restrict;

alter table NOTE_APPLICATION_DETAIL_LEVEL
   add constraint ADL_TO_NADL foreign key (APP_DTL_LVL_CD)
      references APPLICATION_DETAIL_LEVEL (APP_DTL_LVL_CD)
      on delete restrict on update restrict;

alter table NOTE_APPLICATION_DETAIL_LEVEL
   add constraint AGRE_TO_NADL foreign key (AGRE_ID_DRV)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict;

alter table NOTE_APPLICATION_DETAIL_LEVEL
   add constraint CUST_TO_NADL foreign key (CUST_ID_DRV)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table NOTE_APPLICATION_DETAIL_LEVEL
   add constraint NADL_TO_NADL foreign key (NOTE_APP_DTL_LVL_PAR_ID)
      references NOTE_APPLICATION_DETAIL_LEVEL (NOTE_APP_DTL_LVL_ID)
      on delete restrict on update restrict;

alter table NOTE_APPLICATION_DETAIL_LEVEL
   add constraint NOTE_TO_NADL foreign key (NOTE_ID)
      references NOTE (NOTE_ID)
      on delete restrict on update restrict;
      
      
alter table NOTE_APPLICATION_DETAIL_LEVEL
   add constraint PLCYPRD_TO_NADL foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;
      

alter table NOTE_TEXT
   add constraint NOTE_TO_NTXT foreign key (NOTE_ID)
      references NOTE (NOTE_ID)
      on delete restrict on update restrict;

alter table NOTE_TEXT
   add constraint USER_TO_NTXT1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table NOTE_TEXT
   add constraint USER_TO_NTXT2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table OPERATION
   add constraint COND_TO_OP foreign key (COND_ID)
      references "CONDITION" (COND_ID)
      on delete restrict on update restrict;

-- constraint problem with JBoss 3.2.4, so commented out
--alter table OPERATION
--   add constraint EXPRSN_TO_OPLHS foreign key (EXPRSN_ID_LHS)
--      references EXPRESSION (EXPRSN_ID)
--      on delete restrict on update restrict;

-- constraint problem with JBoss 3.2.4, so commented out
--alter table OPERATION
--   add constraint EXPRSN_TO_OPRHS foreign key (EXPRSN_ID_RHS)
--      references EXPRESSION (EXPRSN_ID)
--      on delete restrict on update restrict;

alter table OPERATION
   add constraint OTYP_TO_OP foreign key (OP_TYP_CD)
      references OPERATION_TYPE (OP_TYP_CD)
      on delete restrict on update restrict;

alter table ORGANIZATIONAL_UNIT
   add constraint OUT_TO_OU foreign key (ORG_UNT_TYP_CD)
      references ORGANIZATIONAL_UNIT_TYPE (ORG_UNT_TYP_CD)
      on delete restrict on update restrict;

alter table ORGANIZATIONAL_UNIT
   add constraint OU_TO_OU foreign key (ORG_UNT_PAR_ID)
      references ORGANIZATIONAL_UNIT (ORG_UNT_ID)
      on delete restrict on update restrict;

alter table ORGANIZATIONAL_UNIT
   add constraint USER_TO_OU1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ORGANIZATIONAL_UNIT
   add constraint USER_TO_OU2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table PARTICIPATION
   add constraint AGRE_TO_PTCP foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict;

alter table PARTICIPATION
   add constraint CUST_TO_PTCP foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table PARTICIPATION
   add constraint PTCPT_TO_PTCP foreign key (PTCP_TYP_CD)
      references PARTICIPATION_TYPE (PTCP_TYP_CD)
      on delete restrict on update restrict;

alter table PARTICIPATION_LOB_CUST_XREF
   add constraint CUSTT_TO_PLCX foreign key (CUST_TYP_CD)
      references CUSTOMER_TYPE (CUST_TYP_CD)
      on delete restrict on update restrict;

alter table PARTICIPATION_LOB_CUST_XREF
   add constraint PTCPT_TO_CRTX foreign key (CUST_ROLE_TYP_CD_DFLT)
      references CUSTOMER_ROLE_TYPE (CUST_ROLE_TYP_CD)
      on delete restrict on update restrict;

alter table PARTICIPATION_LOB_CUST_XREF
  add constraint CRT_TO_PLCX foreign key (CUST_ROLE_TYP_CD_PAY)
	references CUSTOMER_ROLE_TYPE (CUST_ROLE_TYP_CD)
	on delete restrict on update restrict; 

alter table PARTICIPATION_LOB_CUST_XREF
   add constraint LOBT_TO_PLCX foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table PARTICIPATION_LOB_CUST_XREF
   add constraint PTCPT_TO_PLCX foreign key (PTCP_TYP_CD)
      references PARTICIPATION_TYPE (PTCP_TYP_CD)
      on delete restrict on update restrict;

alter table PARTICIPATION_PAYMENT_LOB_XREF
   add constraint LOBT_TO_PTPT foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table PARTICIPATION_PAYMENT_LOB_XREF
   add constraint PAYT_TO_PTPT foreign key (PAY_TYP_CD)
      references PAYMENT_TYPE (PAY_TYP_CD)
      on delete restrict on update restrict;
      
alter table PARTICIPATION_PAYMENT_LOB_XREF
   add constraint IDST_TO_PTPT foreign key (INDM_DT_SEL_TYP_CD)
      references INDEMNITY_DATE_SELECTION_TYPE (INDM_DT_SEL_TYP_CD)
      on delete restrict on update restrict;

alter table PARTICIPATION_PAYMENT_LOB_XREF
   add constraint PTCPT_TO_PTPT foreign key (PTCP_TYP_CD)
      references PARTICIPATION_TYPE (PTCP_TYP_CD)
      on delete restrict on update restrict;

alter table PAYMENT_PLAN_PROFILE
   add constraint CEST_TO_PPP foreign key (CTL_ELEM_SUB_TYP_ID)
      references CONTROL_ELEMENT_SUB_TYPE (CTL_ELEM_SUB_TYP_ID)
      on delete restrict on update restrict;

alter table PAYMENT_PLAN_PROFILE_DETAIL
   add constraint PAYPP_TO_PAYPPD foreign key (PYMT_PLAN_PRFL_ID)
      references PAYMENT_PLAN_PROFILE (PYMT_PLAN_PRFL_ID)
      on delete restrict on update restrict;

alter table PAYMENT_PLAN_PROFILE_DTL_AMT
   add constraint PAYPPD_TO_PPPDA foreign key (PPPD_ID)
      references PAYMENT_PLAN_PROFILE_DETAIL (PPPD_ID)
      on delete restrict on update restrict;

alter table PAYMENT_PLAN_PROFILE_DTL_AMT
   add constraint SAT_TO_PPPDA foreign key (SCH_AMT_TYP_CD)
      references SCHEDULE_AMOUNT_TYPE (SCH_AMT_TYP_CD)
      on delete restrict on update restrict;

alter table PAYMENT_TYPE
   add constraint ACT_TO_PAYT foreign key (APP_CNTX_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table PAYROLL_REPORT
   add constraint PRSRT_TO_PR foreign key (PYRL_RPT_STS_RSN_TYP_CD)
      references PAYROLL_REPORT_STATUS_RSN_TYP (PYRL_RPT_STS_RSN_TYP_CD)
      on delete restrict on update restrict;

alter table PAYROLL_REPORT
   add constraint PRST_TO_PR foreign key (PYRL_RPT_STS_TYP_CD)
      references PAYROLL_REPORT_STATUS_TYPE (PYRL_RPT_STS_TYP_CD)
      on delete restrict on update restrict;

alter table PAYROLL_REPORT
   add constraint PRT_TO_PR foreign key (PYRL_RPT_TYP_CD)
      references PAYROLL_REPORT_TYPE (PYRL_RPT_TYP_CD)
      on delete restrict on update restrict;

alter table PAYROLL_REPORT
   add constraint USER_TO_PR1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table PAYROLL_REPORT
   add constraint USER_TO_PR2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table PAYROLL_RPT_STS_STS_RSN_XREF
   add constraint PRSRT_TO_PRSSRX foreign key (PYRL_RPT_STS_RSN_TYP_CD)
      references PAYROLL_REPORT_STATUS_RSN_TYP (PYRL_RPT_STS_RSN_TYP_CD)
      on delete restrict on update restrict;

alter table PAYROLL_RPT_STS_STS_RSN_XREF
   add constraint PRST_TO_PRSSRX foreign key (PYRL_RPT_STS_TYP_CD)
      references PAYROLL_REPORT_STATUS_TYPE (PYRL_RPT_STS_TYP_CD)
      on delete restrict on update restrict;

alter table DEPARTMENT_OF_INS_PAY_TYP
 add constraint BNFTT_TO_DOIPT foreign key (BNFT_TYP_CD)
      references BENEFIT_TYPE (BNFT_TYP_CD)
      on delete restrict on update restrict;

alter table PERSON
   add constraint CUST_TO_PRSN foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table PERSON
   add constraint GT_TO_PRSN foreign key (GNDR_TYP_CD)
      references GENDER_TYPE (GNDR_TYP_CD)
      on delete restrict on update restrict;

alter table PERSON
   add constraint GP_TO_PRSN foreign key (GNDR_PRON_CD)
      references GENDER_PRONOUN (GNDR_PRON_CD)
      on delete restrict on update restrict;
      
alter table PERSON
   add constraint MSTST_TO_PRSN foreign key (MAR_STS_TYP_CD)
      references MARITAL_STATUS_TYPE (MAR_STS_TYP_CD)
      on delete restrict on update restrict;

alter table PERSON
   add constraint TFST_TO_PRSN foreign key (TAX_FILE_STS_TYP_CD)
      references TAX_FILING_STATUS_TYPE (TAX_FILE_STS_TYP_CD)
      on delete restrict on update restrict;
      
alter table PERSON_HISTORY
   add constraint CUST_TO_PH foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;
      
alter table PERSON_HISTORY
   add constraint GT_TO_PH foreign key (GNDR_TYP_CD)
      references GENDER_TYPE (GNDR_TYP_CD)
      on delete restrict on update restrict;

alter table PERSON_HISTORY
   add constraint GP_TO_PH foreign key (GNDR_PRON_CD)
      references GENDER_PRONOUN (GNDR_PRON_CD)
      on delete restrict on update restrict;
      
alter table PERSON_HISTORY
   add constraint MSTST_TO_PH foreign key (MAR_STS_TYP_CD)
      references MARITAL_STATUS_TYPE (MAR_STS_TYP_CD)
      on delete restrict on update restrict;

alter table PERSON_HISTORY
   add constraint TFST_TO_PH foreign key (TAX_FILE_STS_TYP_CD)
      references TAX_FILING_STATUS_TYPE (TAX_FILE_STS_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY
   add constraint AGRE_TO_PLCY foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict;

alter table POLICY
   add constraint CUST_TO_PLCY foreign key (CUST_ID_ACCT_HLDR)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table POLICY
   add constraint INSCT_TO_PLCY foreign key (INS_CMPY_TYP_ID)
      references INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID)
      on delete restrict on update restrict;

alter table POLICY
   add constraint LOBT_TO_PLCY foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY
   add constraint MT_TO_PLCY foreign key (MRKT_TYP_CD)
      references MARKET_TYPE (MRKT_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY
   add constraint USER_TO_PLCY1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY
   add constraint USER_TO_PLCY2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;     

alter table POLICY_ALTERNATE_DEPOSIT
   add constraint CUST_TO_PAD foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table POLICY_ALTERNATE_DEPOSIT
   add constraint PLCY_TO_PAD foreign key (AGRE_ID)
      references POLICY (AGRE_ID)
      on delete restrict on update restrict;

alter table POLICY_ALTERNATE_DEPOSIT
   add constraint USER_TO_PAD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_ALTERNATE_DEPOSIT
   add constraint USER_TO_PAD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_BLOCK
   add constraint BLK_TO_PB foreign key (BLK_ID)
      references BLOCK (BLK_ID)
      on delete restrict on update restrict;

alter table POLICY_BLOCK
   add constraint PLCY_TO_PB foreign key (AGRE_ID)
      references POLICY (AGRE_ID)
      on delete restrict on update restrict;

alter table POLICY_BLOCK
   add constraint PP_TO_PB foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_BLOCK
   add constraint USER_TO_PB1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_BLOCK
   add constraint USER_TO_PB2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

--alter table POLICY_BLOCK_HISTORY
   --add constraint PB_TO_PBH1 foreign key (PLCY_BLK_ID)
      --references POLICY_BLOCK (PLCY_BLK_ID)
      --on delete restrict on update restrict;

--alter table POLICY_BLOCK_HISTORY
   --add constraint USER_TO_PBH1 foreign key (AUDIT_USER_ID_CREA)
      --references USERS (USER_ID)
      --on delete restrict on update restrict;

--alter table POLICY_BLOCK_HISTORY
   --add constraint USER_TO_PBH2 foreign key (AUDIT_USER_ID_UPDT)
      --references USERS (USER_ID)
      --on delete restrict on update restrict;


alter table POLICY_CARRIER_INFORMATION
   add constraint PP_TO_PCI foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_CARRIER_INFORMATION
   add constraint USER_TO_PCI1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_CARRIER_INFORMATION
   add constraint USER_TO_PCI2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_CONTROL_ELEMENT
   add constraint CEST_TO_PCE foreign key (CTL_ELEM_SUB_TYP_ID)
      references CONTROL_ELEMENT_SUB_TYPE (CTL_ELEM_SUB_TYP_ID)
      on delete restrict on update restrict;

alter table POLICY_CONTROL_ELEMENT
   add constraint PLCYP_TO_PCE foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_CONTROL_ELEMENT
   add constraint USER_TO_PCE1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_CONTROL_ELEMENT
   add constraint USER_TO_PCE2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

--alter table POLICY_CONTROL_ELEMENT_HISTORY
    --add constraint PCEH_TO_PCE foreign key(PLCY_CTL_ELEM_ID)
    --references POLICY_CONTROL_ELEMENT(PLCY_CTL_ELEM_ID)
      --on delete restrict on update restrict;

--alter table POLICY_CONTROL_ELEMENT_HISTORY
   --add constraint CEST_TO_PCEH foreign key (CTL_ELEM_SUB_TYP_ID)
      --references CONTROL_ELEMENT_SUB_TYPE (CTL_ELEM_SUB_TYP_ID)
      --on delete restrict on update restrict;

--alter table POLICY_CONTROL_ELEMENT_HISTORY
   --add constraint PLCYP_TO_PCEH foreign key (PLCY_PRD_ID)
      --references POLICY_PERIOD (PLCY_PRD_ID)
      --on delete restrict on update restrict;

--alter table POLICY_CONTROL_ELEMENT_HISTORY
   --add constraint USER_TO_PCEH1 foreign key (AUDIT_USER_ID_CREA)
      --references USERS (USER_ID)
      --on delete restrict on update restrict;

--alter table POLICY_CONTROL_ELEMENT_HISTORY
   --add constraint USER_TO_PCEH2 foreign key (AUDIT_USER_ID_UPDT)
      --references USERS (USER_ID)
      --on delete restrict on update restrict;

alter table POLICY_COVERAGE_PART_3
   add constraint MS_TO_PCP3 foreign key (META_STT_ID)
      references META_STATE (META_STT_ID)
      on delete restrict on update restrict;

alter table POLICY_COVERAGE_PART_3
   add constraint PLCYP_TO_PCP3 foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_COVERAGE_PART_3
   add constraint USER_TO_PCP31 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_COVERAGE_PART_3
   add constraint USER_TO_PCP32 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_COVERAGE_PART_3
   add constraint JT_TO_PCP3 foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_NUMBER_LENGTH_RULE
   add constraint LMICX_TO_PNLR foreign key (LMICX_ID)
      references  LOB_MARKET_INSURANCE_CMPY_XREF (LMICX_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD
   add constraint IDT_TO_PLCYP foreign key (INVC_DD_TYP_CD)
      references INVOICE_DAY_TYPE (INVC_DD_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PERIOD
   add constraint PLCY_TO_PLCYP foreign key (AGRE_ID)
      references POLICY (AGRE_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD
   add constraint PNRRT_TO_PLCYP foreign key (PLCY_NRN_RSN_TYP_CD)
      references POLICY_NON_RENEWAL_REASON_TYPE (PLCY_NRN_RSN_TYP_CD)
      on delete restrict on update restrict;
      
alter table POLICY_PERIOD
   add constraint LDD_TO_PP foreign key (LDD_ID)
      references LARGE_DEDUCTIBLE_DETAIL (LDD_ID)
      on delete restrict on update restrict;
      
alter table POLICY_PERIOD
   add constraint USER_TO_PLCYP1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD
   add constraint USER_TO_PLCYP2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;      

alter table POLICY_PERIOD_BILLING_SCHEDULE
   add constraint PP_TO_PPBS foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_BILLING_SCHEDULE
   add constraint USER_TO_PPBS1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_BILLING_SCHEDULE
   add constraint USER_TO_PPBS2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

ALTER TABLE POLICY_PERIOD_BILLING_SCHEDULE
	ADD CONSTRAINT PPG_TO_PPBS FOREIGN KEY (PLCY_PRD_GRP_ID)
		REFERENCES POLICY_PERIOD_GROUP (PLCY_PRD_GRP_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table POLICY_PERIOD_BILLING_SCH_HIST
   add constraint PPBS_TO_PPBSH foreign key (PLCY_PRD_BILL_SCH_ID)
      references POLICY_PERIOD_BILLING_SCHEDULE (PLCY_PRD_BILL_SCH_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_BILLING_SCH_HIST
   add constraint PP_TO_PPBSH foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_BILLING_SCH_HIST
   add constraint USER_TO_PPBSH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_BILLING_SCH_HIST
   add constraint USER_TO_PPBSH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

ALTER TABLE POLICY_PERIOD_BILLING_SCH_HIST
	ADD CONSTRAINT PPG_TO_PPBSH FOREIGN KEY (PLCY_PRD_GRP_ID)
		REFERENCES POLICY_PERIOD_GROUP (PLCY_PRD_GRP_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table POLICY_PERIOD_INSURED_RISK
    add constraint PPRISK_TO_PPIR 
        foreign key (PLCY_PRD_RISK_ID)
        references POLICY_PERIOD_RISK (PLCY_PRD_RISK_ID)
        on delete restrict on update restrict;
 
 ALTER TABLE POLICY_PERIOD_INSURED_RISK
     ADD CONSTRAINT PPPI_TO_PPIR
         FOREIGN KEY(PTCP_ID)
         REFERENCES POLICY_PERIOD_PTCP_INS(PTCP_ID)
         on delete restrict on update restrict;
 
 alter table POLICY_PERIOD_INSURED_RISK
     add constraint USER_TO_PPIR1 
         foreign key (AUDIT_USER_ID_CREA)
         references USERS (USER_ID)
         on delete restrict on update restrict;
 
 alter table POLICY_PERIOD_INSURED_RISK
     add constraint USER_TO_PPIR2 
         foreign key (AUDIT_USER_ID_UPDT)
         references USERS (USER_ID)
         on delete restrict on update restrict;
 
 alter table POLICY_PERIOD_INSRD_RISK_HIST
 add constraint USER_TO_PPIRH1 
     foreign key (AUDIT_USER_ID_CREA)
     references USERS (USER_ID)
     on delete restrict on update restrict;
 
 alter table POLICY_PERIOD_INSRD_RISK_HIST
 add constraint USER_TO_PPIRH2 
     foreign key (AUDIT_USER_ID_UPDT)
     references USERS (USER_ID)
     on delete restrict on update restrict;
 

      
alter table POLICY_PERIOD_LOSS_RATIO
   add constraint PLCYP_TO_PPLR foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_LARGE_LOSS
   add constraint PLCYP_TO_PPLL foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_LARGE_LOSS
  add constraint USER_TO_PPLL1 
    foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
 
alter table POLICY_PERIOD_LARGE_LOSS
  add constraint USER_TO_PPLL2 
    foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_PARTICIPATION
   add constraint PLCYP_TO_PPP foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_PARTICIPATION
   add constraint PTCP_TO_PPP foreign key (PTCP_ID)
      references PARTICIPATION (PTCP_ID)
      on delete restrict on update restrict;
      
alter table POLICY_PERIOD_PARTICIPATION
    add constraint USER_TO_PPP1 foreign key (AUDIT_USER_ID_CREA)       
    references USERS (USER_ID)
    on delete restrict on update restrict;
      
alter table POLICY_PERIOD_PARTICIPATION
    add constraint USER_TO_PPP2 foreign key (AUDIT_USER_ID_UPDT)
    references USERS (USER_ID)
    on delete restrict on update restrict;

alter table POLICY_PERIOD_PTCP_HIST
    add constraint USER_TO_PPPH1 foreign key (AUDIT_USER_ID_CREA)       
    references USERS (USER_ID)
    on delete restrict on update restrict;
      
alter table POLICY_PERIOD_PTCP_HIST
    add constraint USER_TO_PPPH2 foreign key (AUDIT_USER_ID_UPDT)
    references USERS (USER_ID)
    on delete restrict on update restrict;      

alter table POLICY_PERIOD_PREMIUM_DRV
   add constraint JT_TO_PPPD foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_PREMIUM_DRV
   add constraint PLCYP_TO_PPPD foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_PREMIUM_DRV
   add constraint PREMT_TO_PPPD foreign key (PREM_TYP_CD)
      references PREMIUM_TYPE (PREM_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_PREMIUM_DRV
   add constraint RTET_TO_PPPD foreign key (RT_ELEM_TYP_CD)
      references RATING_ELEMENT_TYPE (RT_ELEM_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_PREMIUM_DRV
   add constraint USER_TO_PPPD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_PREMIUM_DRV
   add constraint USER_TO_PPPD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
            
alter table POLICY_PERIOD_PTCP_AGY
    add constraint CST_TO_PPPAGY foreign key (COMS_SCH_TYP_CD)
    references COMMISSION_SCHEDULE_TYPE(COMS_SCH_TYP_CD)
    on delete restrict on update restrict;
    
alter table POLICY_PERIOD_PTCP_AGY
    add constraint PPP_TO_PPPAGY foreign key (PTCP_ID)    
    references POLICY_PERIOD_PARTICIPATION(PTCP_ID)
    on delete restrict on update restrict;

alter table POLICY_PERIOD_PTCP_AGY
    add constraint RLT_TO_PPPAGY foreign key (RLT_ID)    
    references RELATIONSHIP(RLT_ID)
    on delete restrict on update restrict;
 
alter table POLICY_PERIOD_PTCP_AGY_HIST
    add constraint CST_TO_PPPAGYH foreign key (COMS_SCH_TYP_CD)
    references COMMISSION_SCHEDULE_TYPE(COMS_SCH_TYP_CD)
    on delete restrict on update restrict;    
	
alter table POLICY_PERIOD_PTCP_AGY_HIST
   add constraint PPPH_TO_PPPAGYH foreign key (HIST_ID)
      references POLICY_PERIOD_PTCP_HIST (HIST_ID)
      on delete restrict on update restrict;
    
alter table POLICY_PERIOD_PTCP_AGNT
   add constraint CST_TO_PPPAGNT foreign key (COMS_SCH_TYP_CD)
      references COMMISSION_SCHEDULE_TYPE (COMS_SCH_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_PTCP_AGNT
   add constraint PPP_TO_PPPAGNT foreign key (PTCP_ID)
      references POLICY_PERIOD_PARTICIPATION (PTCP_ID)
      on delete restrict on update restrict;
     
alter table POLICY_PERIOD_PTCP_AGNT_HIST
   add constraint CST_TO_PPPAH foreign key (COMS_SCH_TYP_CD)
      references COMMISSION_SCHEDULE_TYPE (COMS_SCH_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_PTCP_CLNT_OWNR
   add constraint PPP_TO_PPPCO foreign key (PTCP_ID)
      references POLICY_PERIOD_PARTICIPATION (PTCP_ID)
      on delete restrict on update restrict;
	  
alter table POLICY_PRD_PTCP_CLNT_OWNR_HIST
   add constraint PPPH_TO_PPPCO foreign key (HIST_ID)
      references POLICY_PERIOD_PTCP_HIST (HIST_ID)
      on delete restrict on update restrict;
      
alter table POLICY_PERIOD_PTCP_CERT_HLDR
   add constraint CCCT_TO_PPPCH foreign key (CCCT_CD)
      references CERTIFICATE_CANC_CLSE_TYP (CCCT_CD)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_PTCP_CERT_HLDR
   add constraint NPT_TO_PPPCH foreign key (NTC_PRD_TYP_CD)
      references NOTICE_PERIOD_TYPE (NTC_PRD_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_PTCP_CERT_HLDR
   add constraint PPP_TO_PPPCH foreign key (PTCP_ID)
      references POLICY_PERIOD_PARTICIPATION (PTCP_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_PTCP_CERT_HLDR
   add constraint PPPI_TO_PPPCH foreign key (PLCY_PRD_PTCP_INS_ID)
      references POLICY_PERIOD_PTCP_INS (PTCP_ID)
      on delete restrict on update restrict;

alter table POLICY_PRD_PTCP_CERT_HLDR_HIST
   add constraint PPPH_TO_PPPCHH foreign key (HIST_ID)
      references POLICY_PERIOD_PTCP_HIST (HIST_ID)
      on delete restrict on update restrict;

alter table POLICY_PRD_PTCP_CERT_HLDR_HIST
   add constraint CCCT_TO_PPPCHH foreign key (CCCT_CD)
      references CERTIFICATE_CANC_CLSE_TYP (CCCT_CD)
      on delete restrict on update restrict;

alter table POLICY_PRD_PTCP_CERT_HLDR_HIST
   add constraint NPT_TO_PPPCHH foreign key (NTC_PRD_TYP_CD)
      references NOTICE_PERIOD_TYPE (NTC_PRD_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PRD_PTCP_CERT_HLDR_HIST
   add constraint PPPI_TO_PPPCHH foreign key (PLCY_PRD_PTCP_INS_ID)
      references POLICY_PERIOD_PTCP_INS (PTCP_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_PTCP_INCL_EXCL
   add constraint COVT_TO_PPPIE foreign key (COV_TYP_CD)
      references COVERED_TYPE (COV_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_PTCP_INCL_EXCL
   add constraint PPP_TO_PPPIE foreign key (PTCP_ID)
      references POLICY_PERIOD_PARTICIPATION (PTCP_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_PTCP_INCL_EXCL
   add constraint STT_TO_PPPIE foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_PTCP_INCL_EXCL
   add constraint TT_TO_PPPIE foreign key (TTL_TYP_CD)
      references TITLE_TYPE (TTL_TYP_CD)
      on delete restrict on update restrict;
	  
alter table POLICY_PRD_PTCP_INCL_EXCL_HIST
   add constraint PPPH_TO_PPPIEH foreign key (HIST_ID)
      references POLICY_PERIOD_PTCP_HIST (HIST_ID)
      on delete restrict on update restrict;

alter table POLICY_PRD_PTCP_INCL_EXCL_HIST
   add constraint COVT_TO_PPPIEH foreign key (COV_TYP_CD)
      references COVERED_TYPE (COV_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PRD_PTCP_INCL_EXCL_HIST
   add constraint STT_TO_PPPIEH foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;     

alter table POLICY_PRD_PTCP_INCL_EXCL_HIST
   add constraint TT_TO_PPPIEH foreign key (TTL_TYP_CD)
      references TITLE_TYPE (TTL_TYP_CD)
      on delete restrict on update restrict;  
	  
alter table POLICY_PERIOD_PTCP_INS
   add constraint PPP_TO_PPPI foreign key (PTCP_ID)
      references POLICY_PERIOD_PARTICIPATION (PTCP_ID)
      on delete restrict on update restrict;
	  
alter table POLICY_PERIOD_PTCP_INS_HIST
   add constraint PPP_TO_PPPIH foreign key (HIST_ID)
      references POLICY_PERIOD_PTCP_HIST (HIST_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_PTCP_OCIP_LOC
   add constraint PPP_TO_PPPOL foreign key (PTCP_ID)
      references POLICY_PERIOD_PARTICIPATION (PTCP_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_PTCP_OCIP_LOC
   add constraint USER_TO_PPPOL1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_PTCP_OCIP_LOC
   add constraint USER_TO_PPPOL2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table POLICY_PRD_PTCP_OCIP_LOC_HIST
   add constraint USER_TO_PPPOLH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PRD_PTCP_OCIP_LOC_HIST
   add constraint USER_TO_PPPOLH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict; 

alter table POLICY_PERIOD_PTCP_SUBC
   add constraint PPP_TO_PPPS foreign key (PTCP_ID)
      references POLICY_PERIOD_PARTICIPATION (PTCP_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_PTCP_SUBC
   add constraint SUBCT_TO_PPPS foreign key (SUBC_TYP_CD)
      references SUBCONTRACTOR_TYPE (SUBC_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_PTCP_SUBC_HIST
   add constraint SUBCT_TO_PPPSH foreign key (SUBC_TYP_CD)
      references SUBCONTRACTOR_TYPE (SUBC_TYP_CD)
      on delete restrict on update restrict;
	  
alter table POLICY_PERIOD_PTCP_SUBC_HIST
   add constraint PPPH_TO_PPPSH foreign key (HIST_ID)
      references POLICY_PERIOD_PTCP_HIST (HIST_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_PTCP_WVR_SRGT
   add constraint WVRT_TO_PPPWS foreign key (WVR_TYP_CD)
      references WAIVER_TYPE (WVR_TYP_CD)
      on delete restrict on update restrict;
      
alter table POLICY_PERIOD_PTCP_WVR_SRGT
   add constraint PPP_TO_PPPWS foreign key (PTCP_ID)
      references POLICY_PERIOD_PARTICIPATION (PTCP_ID)
      on delete restrict on update restrict;

alter table PLCY_PERIOD_PTCP_WVR_SRGT_HIST
   add constraint WVRT_TO_PPPWSH foreign key (WVR_TYP_CD)
      references WAIVER_TYPE (WVR_TYP_CD)
      on delete restrict on update restrict;  

alter table PLCY_PERIOD_PTCP_WVR_SRGT_HIST
   add constraint PPPH_TO_PPPWSH foreign key (HIST_ID)
      references POLICY_PERIOD_PTCP_HIST (HIST_ID)
      on delete restrict on update restrict;	  

alter table POLICY_PERIOD_RATING_ELEMENT
   add constraint EFTYP_TO_PPRE foreign key (EL_FELA_TYP_CD)
      references EL_FELA_TYPE (EL_FELA_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RATING_ELEMENT
   add constraint ELT_TO_PPRE foreign key (EMPLR_LIAB_TYP_CD)
      references EMPLOYER_LIABILITY_TYPE (EMPLR_LIAB_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RATING_ELEMENT
   add constraint EXPM_TO_PPRE foreign key (EXPRN_MOD_ID)
      references EXPERIENCE_MODIFIER (EXPRN_MOD_ID)
      on delete restrict on update restrict;
      
alter table POLICY_PERIOD_RATING_ELEMENT
   add constraint LDD_TO_PPRE foreign key (LDD_ID)
      references LARGE_DEDUCTIBLE_DETAIL (LDD_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RATING_ELEMENT
   add constraint PLCYP_TO_PPRE foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RATING_ELEMENT
   add constraint REDEDT_TO_PPRE foreign key (RT_ELEM_DED_TYP_ID)
      references RATING_ELEMENT_DEDUCTIBLE_TYPE (RT_ELEM_DED_TYP_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RATING_ELEMENT
   add constraint RELT_TO_PPRE foreign key (RT_ELEM_LMCJ_TYP_ID)
      references RATING_ELEMENT_LMCJ_TYPE (RT_ELEM_LMCJ_TYP_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RATING_ELEMENT
   add constraint RGST_TO_PPRE foreign key (RISK_GRP_SUFX_TYP_CD)
      references RISK_GROUP_SUFFIX_TYPE (RISK_GRP_SUFX_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RATING_ELEMENT
   add constraint USER_TO_PPRE1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RATING_ELEMENT
   add constraint USER_TO_PPRE2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RATING_ELEMENT
   add constraint WCCRTT_TO_PPRE foreign key (WC_CLS_RT_TIER_TYP_CD)
      references WC_CLASS_RATE_TIER_TYPE (WC_CLS_RT_TIER_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RATING_ELEMENT
   add constraint WKSHT_TO_PPRE foreign key (WKSHT_ID)
      references WORKSHEET (WKSHT_ID)
      on delete restrict on update restrict;
      
alter table POLICY_PERIOD_RATING_ELEMENT
   add constraint HLPD_TO_PPRE foreign key (HLPD_ID)
      references HIGH_LOW_PROGRAM_DETAIL (HLPD_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RATING_ELEM_HIST
   add constraint HLPD_TO_PPREH foreign key (HLPD_ID)
      references HIGH_LOW_PROGRAM_DETAIL (HLPD_ID)
      on delete restrict on update restrict;

--alter table POLICY_PERIOD_RATING_ELEM_HIST
    --add constraint PPREH_TO_PPRE foreign key(PPRE_ID)
    --references POLICY_PERIOD_RATING_ELEMENT(PPRE_ID)
      --on delete restrict on update restrict;

--alter table POLICY_PERIOD_RATING_ELEM_HIST
   --add constraint EFTYP_TO_PPREH foreign key (EL_FELA_TYP_CD)
      --references EL_FELA_TYPE (EL_FELA_TYP_CD)
      --on delete restrict on update restrict;

--alter table POLICY_PERIOD_RATING_ELEM_HIST
   --add constraint ELT_TO_PPREH foreign key (EMPLR_LIAB_TYP_CD)
      --references EMPLOYER_LIABILITY_TYPE (EMPLR_LIAB_TYP_CD)
      --on delete restrict on update restrict;

--alter table POLICY_PERIOD_RATING_ELEM_HIST
   --add constraint EXPM_TO_PPREH foreign key (EXPRN_MOD_ID)
      --references EXPERIENCE_MODIFIER (EXPRN_MOD_ID)
      --on delete restrict on update restrict;
      
--alter table POLICY_PERIOD_RATING_ELEM_HIST
   --add constraint LDD_TO_PPREH foreign key (LDD_ID)
      --references LARGE_DEDUCTIBLE_DETAIL (LDD_ID)
      --on delete restrict on update restrict;

--alter table POLICY_PERIOD_RATING_ELEM_HIST
   --add constraint PLCYP_TO_PPREH foreign key (PLCY_PRD_ID)
      --references POLICY_PERIOD (PLCY_PRD_ID)
      --on delete restrict on update restrict;

--alter table POLICY_PERIOD_RATING_ELEM_HIST
   --add constraint REDEDT_TO_PPREH foreign key (RT_ELEM_DED_TYP_ID)
      --references RATING_ELEMENT_DEDUCTIBLE_TYPE (RT_ELEM_DED_TYP_ID)
      --on delete restrict on update restrict;

--alter table POLICY_PERIOD_RATING_ELEM_HIST
   --add constraint RELT_TO_PPREH foreign key (RT_ELEM_LMCJ_TYP_ID)
      --references RATING_ELEMENT_LMCJ_TYPE (RT_ELEM_LMCJ_TYP_ID)
      --on delete restrict on update restrict;

--alter table POLICY_PERIOD_RATING_ELEM_HIST
   --add constraint RGST_TO_PPREH foreign key (RISK_GRP_SUFX_TYP_CD)
      --references RISK_GROUP_SUFFIX_TYPE (RISK_GRP_SUFX_TYP_CD)
      --on delete restrict on update restrict;

--alter table POLICY_PERIOD_RATING_ELEM_HIST
   --add constraint USER_TO_PPREH1 foreign key (AUDIT_USER_ID_CREA)
      --references USERS (USER_ID)
      --on delete restrict on update restrict;

--alter table POLICY_PERIOD_RATING_ELEM_HIST
   --add constraint USER_TO_PPREH2 foreign key (AUDIT_USER_ID_UPDT)
      --references USERS (USER_ID)
      --on delete restrict on update restrict;

--alter table POLICY_PERIOD_RATING_ELEM_HIST
   --add constraint WCCRTT_TO_PPREH foreign key (WC_CLS_RT_TIER_TYP_CD)
      --references WC_CLASS_RATE_TIER_TYPE (WC_CLS_RT_TIER_TYP_CD)
      --on delete restrict on update restrict;

--alter table POLICY_PERIOD_RATING_ELEM_HIST
   --add constraint WKSHT_TO_PPREH foreign key (WKSHT_ID)
      --references WORKSHEET (WKSHT_ID)
      --on delete restrict on update restrict;

alter table POLICY_PRD_RT_ELEM_CNSN_TO_RT
   add constraint PPRECTR_TO_PPRE foreign key (PPRE_ID)
      references POLICY_PERIOD_RATING_ELEMENT (PPRE_ID)
      on delete restrict on update restrict;

alter table POLICY_PRD_RT_ELEM_CNSN_TO_RT
   add constraint PPRECTR_TO_WCCS foreign key (WC_CLS_SUFX_ID)
      references WC_CLASS_SUFFIX (WC_CLS_SUFX_ID)
      on delete restrict on update restrict;


alter table POLICY_PERIOD_RELATIONSHIP
   add constraint PLCYP_TO_PPR foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RELATIONSHIP
   add constraint PLCYP_TO_PPRR foreign key (PLCY_PRD_ID_RLT)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RELATIONSHIP
   add constraint PPRT_TO_PPR foreign key (PLCY_PRD_RLT_TYP_ID)
      references POLICY_PERIOD_RELATIONSHIP_TYP (PLCY_PRD_RLT_TYP_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RELATIONSHIP
   add constraint USER_TO_PPR1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RELATIONSHIP
   add constraint USER_TO_PPR2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RLT_HIST
   add constraint PLCYP_TO_PPRLTH foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RLT_HIST
   add constraint PLCYP_TO_PPRLTHRLT foreign key (PLCY_PRD_ID_RLT)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RLT_HIST
   add constraint PPRT_TO_PPRLTH foreign key (PLCY_PRD_RLT_TYP_ID)
      references POLICY_PERIOD_RELATIONSHIP_TYP (PLCY_PRD_RLT_TYP_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RLT_HIST
   add constraint USER_TO_PPRLTH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RLT_HIST
   add constraint USER_TO_PPRLTH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RELATIONSHIP_TYP
   add constraint AGT_TO_PPRT1 foreign key (AGRE_TYP_CD)
      references AGREEMENT_TYPE (AGRE_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RELATIONSHIP_TYP
   add constraint AGT_TO_PPRT2 foreign key (AGRE_TYP_CD_RLT)
      references AGREEMENT_TYPE (AGRE_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_REQUIRED_DEPS
   add constraint PLCYP_TO_PPRD foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_REQUIRED_DEPS
   add constraint USER_TO_PPRD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_REQUIRED_DEPS
   add constraint USER_TO_PPRD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RISK
   add constraint PLCYP_TO_PPRISK foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RISK
   add constraint RISK_TO_PPRISK foreign key (RISK_ID)
      references RISK (RISK_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RISK
   add constraint USER_TO_PPRISK1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RISK
   add constraint USER_TO_PPRISK2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;      

-- POLICY_PERIOD_RISK records can be deleted, cannot use this constraint
--alter table POLICY_PERIOD_RISK_HISTORY
--   add constraint PPRISK_TO_PPRISKH foreign key (PLCY_PRD_RISK_ID)
--      references POLICY_PERIOD_RISK (PLCY_PRD_RISK_ID)
--      on delete restrict on update restrict;

alter table POLICY_PERIOD_RISK_HISTORY
   add constraint PLCYP_TO_PPRISKH foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RISK_HISTORY
   add constraint RISK_TO_PPRISKH foreign key (RISK_ID)
      references RISK (RISK_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RISK_HISTORY
   add constraint USER_TO_PPRISKH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RISK_HISTORY
   add constraint USER_TO_PPRISKH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;      

alter table POLICY_PREMIUM_DISCOUNT
   add constraint PPD_TO_JT foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PREMIUM_DISCOUNT
   add constraint PPD_TO_PLCYP foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_PREMIUM_PRD_PREM_DRV
   add constraint PR_TO_PPPPD foreign key (PYRL_RPT_ID)
      references PAYROLL_REPORT (PYRL_RPT_ID)
      on delete restrict on update restrict;
      
alter table POLICY_PREMIUM_PRD_PREM_DRV
   add constraint JT_TO_PPPPD foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PREMIUM_PRD_PREM_DRV
   add constraint PREMP_TO_PPPPD foreign key (PREM_PRD_ID)
      references PREMIUM_PERIOD (PREM_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_PREMIUM_PRD_PREM_DRV
   add constraint PREMT_TO_PPPPD foreign key (PREM_TYP_CD)
      references PREMIUM_TYPE (PREM_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PREMIUM_PRD_PREM_DRV
   add constraint RTET_TO_PPPPD foreign key (RT_ELEM_TYP_CD)
      references RATING_ELEMENT_TYPE (RT_ELEM_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PREMIUM_PRD_PREM_DRV
   add constraint USER_TO_PPPPD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PREMIUM_PRD_PREM_DRV
   add constraint USER_TO_PPPPD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;      
      
alter table POLICY_PRIOR_CARRIER
   add constraint PLCY_TO_PPC foreign key (AGRE_ID)
      references POLICY (AGRE_ID)
      on delete restrict on update restrict;

alter table POLICY_PRIOR_CARRIER
   add constraint USER_TO_PPC1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PRIOR_CARRIER
   add constraint USER_TO_PPC2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table POLICY_PROFILE
   add constraint LOBT_TO_PLCYPRFL foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PROFILE
   add constraint PLCYP_TO_PLCYPRFL foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_PROFILE
   add constraint PPCT_TO_PLCYPRFL foreign key (PLCY_PRFL_CTG_TYP_CD)
      references POLICY_PROFILE_CATEGORY_TYPE (PLCY_PRFL_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PROFILE
   add constraint PSSN_TO_PLCYPRFL foreign key (PRFL_STMT_SEL_NEST_ID)
      references PROFILE_STATEMENT_SEL_NEST (PRFL_STMT_SEL_NEST_ID)
      on delete restrict on update restrict;

alter table POLICY_PROFILE
   add constraint PSVT_TO_PLCYPRFL foreign key (PRFL_SEL_VAL_TYP_CD)
      references PROFILE_SELECTION_VALUE_TYPE (PRFL_SEL_VAL_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PROFILE
   add constraint PS_TO_PLCYPRFL foreign key (PRFL_STMT_ID)
      references PROFILE_STATEMENT (PRFL_STMT_ID)
      on delete restrict on update restrict;

alter table POLICY_PROFILE
   add constraint USER_TO_PLCYPRFL1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table POLICY_PROFILE
   add constraint USER_TO_PLCYPRFL2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PROFILE_STATEMENT
   add constraint LOBT_TO_PPS foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PROFILE_STATEMENT
   add constraint PPCT_TO_PPS foreign key (PLCY_PRFL_CTG_TYP_CD)
      references POLICY_PROFILE_CATEGORY_TYPE (PLCY_PRFL_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PROFILE_STATEMENT
   add constraint PRFLS_TO_PPS foreign key (PRFL_STMT_ID)
      references PROFILE_STATEMENT (PRFL_STMT_ID)
      on delete restrict on update restrict;

alter table POLICY_STATUS
   add constraint PLCYP_TO_PLCYS foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_STATUS
   add constraint PSTYP_TO_PLCYS foreign key (PLCY_STS_TYP_CD)
      references POLICY_STATUS_TYPE (PLCY_STS_TYP_CD)
      on delete restrict on update restrict;
  
alter table POLICY_STATUS 
   add CONSTRAINT CMT_TO_PLCYS foreign key (CANC_METH_TYP_CD)
    references CANCELLATION_METHOD_TYPE (CANC_METH_TYP_CD)
      on delete RESTRICT on update restrict;

alter table POLICY_STATUS
   add constraint USER_TO_PLCYS1 foreign key (audit_user_id_crea )
      references users (user_id)
      on delete restrict on update restrict;

alter table POLICY_STATUS
   add constraint user_to_plcys2 foreign key (audit_user_id_updt)
      references users (user_id)
     on delete restrict on update restrict;

alter table POLICY_STATUS 
   add constraint AUTH_TO_PLCYS foreign key (AUTH_ID)
      references AUTHORIZATIONS (AUTH_ID)
      on delete restrict on update restrict;

alter table POLICY_STATUS_HISTORY
   add constraint PLCYS_TO_PSH foreign key (PLCY_STS_ID)
      references POLICY_STATUS (PLCY_STS_ID)
      on delete restrict on update restrict;

alter table POLICY_STATUS_HISTORY
   add constraint USER_TO_PSH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_STATUS_HISTORY
   add constraint USER_TO_PSH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_STATUS_HISTORY
   add constraint PLCYP_TO_PSH foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_STATUS_HISTORY
   add constraint PSTYP_TO_PSH foreign key (PLCY_STS_TYP_CD)
      references POLICY_STATUS_TYPE (PLCY_STS_TYP_CD)
      on delete restrict on update restrict;
  
alter table POLICY_STATUS_HISTORY
   add CONSTRAINT CMT_TO_PSH foreign key (CANC_METH_TYP_CD)
    references CANCELLATION_METHOD_TYPE (CANC_METH_TYP_CD)
      on delete RESTRICT on update restrict;

alter table POLICY_STATUS_HISTORY 
   add constraint AUTH_TO_PSH foreign key (AUTH_ID)
      references AUTHORIZATIONS (AUTH_ID)
      on delete restrict on update restrict;

alter table POLICY_STATUS_REASON
   add constraint PLCYS_TO_PSR foreign key (PLCY_STS_ID)
      references POLICY_STATUS (PLCY_STS_ID)
      on delete restrict on update restrict;
      
alter table POLICY_STATUS_REASON
   add constraint PSRT_TO_PSR foreign key (PLCY_STS_RSN_TYP_CD)
      references POLICY_STATUS_REASON_TYPE (PLCY_STS_RSN_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_STATUS_REASON
   add constraint user_to_psr1 foreign key (audit_user_id_crea )
      references users (user_id)
      on delete restrict on update restrict;

alter table POLICY_STATUS_REASON
   add constraint user_to_psr2 foreign key (audit_user_id_updt)
      references users (user_id)
     on delete restrict on update restrict;

alter table POLICY_STATUS_REASON_HISTORY
    add constraint PSR_TO_PSRH foreign key(PLCY_STS_RSN_ID)
    references POLICY_STATUS_REASON(PLCY_STS_RSN_ID)
      on delete restrict on update restrict;

alter table POLICY_STATUS_REASON_HISTORY
   add constraint PLCYS_TO_PSRH foreign key (PLCY_STS_ID)
      references POLICY_STATUS (PLCY_STS_ID)
      on delete restrict on update restrict;
      
alter table POLICY_STATUS_REASON_HISTORY
   add constraint PSRT_TO_PSRH foreign key (PLCY_STS_RSN_TYP_CD)
      references POLICY_STATUS_REASON_TYPE (PLCY_STS_RSN_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_STATUS_REASON_HISTORY
   add constraint USER_TO_PSRH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_STATUS_REASON_HISTORY
   add constraint USER_TO_PSRH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_STATUS_RSN_REINST_XREF
   add constraint PSTYP_TO_PSRRXFR foreign key (PLCY_STS_TYP_CD_FR)
      references POLICY_STATUS_TYPE (PLCY_STS_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_STATUS_RSN_REINST_XREF
   add constraint PSTYP_TO_PSRRXTO foreign key (PLCY_STS_TYP_CD_TO)
      references POLICY_STATUS_TYPE (PLCY_STS_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_STATUS_RSN_REINST_XREF
   add constraint PSRT_TO_PSRRX foreign key (PLCY_STS_RSN_TYP_CD)
      references POLICY_STATUS_REASON_TYPE (PLCY_STS_RSN_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_STATUS_REASON_STATE
   add constraint PSRT_TO_PSRS foreign key (PLCY_STS_RSN_TYP_CD)
      references POLICY_STATUS_REASON_TYPE (PLCY_STS_RSN_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_STATUS_REASON_STATE
   add constraint STT_TO_PSRS foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

--CR#POWCR00000736 starts
alter table POLICY_STATUS_REASON_STATE
   add constraint PSRWT_TO_PSRS foreign key (PLCY_STS_RSN_TYP_WCIO_CD)
      references POLCY_STATUS_REASON_WCIO_TYPE (PLCY_STS_RSN_TYP_WCIO_CD)
      on delete restrict on update restrict;
--CR#POWCR00000736 end

alter table POLICY_STATUS_REJECTED
   add constraint CICT_TO_PSREJ foreign key (COMPT_INS_CMPY_TYP_CD)
      references COMPETITIVE_INSURANCE_CMPY_TYP (COMPT_INS_CMPY_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_STATUS_REJECTED
   add constraint PLCYS_TO_PSREJ foreign key (PLCY_STS_ID)
      references POLICY_STATUS (PLCY_STS_ID)
      on delete restrict on update restrict;
     
alter table POLICY_STATUS_rejected
   add constraint user_to_psrej1 foreign key (audit_user_id_crea )
      references users (user_id)
      on delete restrict on update restrict;

alter table POLICY_STATUS_rejected
   add constraint user_to_psrej2 foreign key (audit_user_id_updt)
      references users (user_id)
     on delete restrict on update restrict;
      

alter table POLICY_STATUS_REJECTED_HISTORY
    add constraint PSREJ_TO_PSREJH foreign key(PLCY_STS_REJ_ID)
    references POLICY_STATUS_REJECTED(PLCY_STS_REJ_ID)
      on delete restrict on update restrict;

alter table POLICY_STATUS_REJECTED_HISTORY
   add constraint CICT_TO_PSREJH foreign key (COMPT_INS_CMPY_TYP_CD)
      references COMPETITIVE_INSURANCE_CMPY_TYP (COMPT_INS_CMPY_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_STATUS_REJECTED_HISTORY
   add constraint PLCYS_TO_PSREJH foreign key (PLCY_STS_ID)
      references POLICY_STATUS (PLCY_STS_ID)
      on delete restrict on update restrict;

alter table POLICY_STATUS_REJECTED_HISTORY
   add constraint USER_TO_PSREJH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_STATUS_REJECTED_HISTORY
   add constraint USER_TO_PSREJH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_STATUS_RSN_CLS_RSN_TYP
   add constraint PSRCT_TO_PSRCRT foreign key (PLCY_STS_RSN_CLS_TYP_CD)
      references POLICY_STATUS_REASON_CLASS_TYP (PLCY_STS_RSN_CLS_TYP_CD)
      on delete restrict on update restrict;

alter table PREMIUM_PERIOD
   add constraint JT_TO_PP foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table PREMIUM_PERIOD
   add constraint LMICJX_TO_PP foreign key (LMICJX_ID)
      references LOB_MRKT_INS_CMPY_JUR_XREF (LMICJX_ID)
      on delete restrict on update restrict;

alter table PREMIUM_PERIOD
   add constraint PLCYP_TO_PP foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table PREMIUM_PERIOD
   add constraint PREMT_TO_PP foreign key (PREM_TYP_CD)
      references PREMIUM_TYPE (PREM_TYP_CD)
      on delete restrict on update restrict;
      
alter table PREMIUM_PERIOD
   add constraint USER_TO_PP1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table PREMIUM_PERIOD
   add constraint USER_TO_PP2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;   
      
alter table PROFILE_STATEMENT_ANSWER
   add constraint DT_TO_PSA foreign key (DATA_TYP_CD)
      references DATA_TYPE (DATA_TYP_CD)
      on delete restrict on update restrict;

alter table PROFILE_STATEMENT_ANSWER
   add constraint FRMTT_TO_PSA foreign key (FRMT_TYP_CD)
      references FORMAT_TYPE (FRMT_TYP_CD)
      on delete restrict on update restrict;

alter table PROFILE_STATEMENT_ANSWER
   add constraint PRFLS_TO_PSA foreign key (PRFL_STMT_ID)
      references PROFILE_STATEMENT (PRFL_STMT_ID)
      on delete restrict on update restrict;

alter table PROFILE_STATEMENT_SELECTION
   add constraint PRFLS_TO_PSS foreign key (PRFL_STMT_ID)
      references PROFILE_STATEMENT (PRFL_STMT_ID)
      on delete restrict on update restrict;

alter table PROFILE_STATEMENT_SELECTION
   add constraint PSVT_TO_PSS foreign key (PRFL_SEL_VAL_TYP_CD)
      references PROFILE_SELECTION_VALUE_TYPE (PRFL_SEL_VAL_TYP_CD)
      on delete restrict on update restrict;

alter table PROFILE_STATEMENT_SEL_NEST
   add constraint PSS_TO_PSSN foreign key (PRFL_STMT_SEL_ID)
      references PROFILE_STATEMENT_SELECTION (PRFL_STMT_SEL_ID)
      on delete restrict on update restrict;      

alter table PROFILE_STATEMENT_SEL_NEST
   add constraint PRFLS_TO_PSSN foreign key (PRFL_STMT_ID)
      references PROFILE_STATEMENT (PRFL_STMT_ID)
      on delete restrict on update restrict;


alter table PROVIDER_TAXONOMY
   add constraint PTCT_TO_PTXNMY foreign key (PROV_TXNMY_CLS_TYP_CD)
      references PROVIDER_TAXONOMY_CLASS_TYPE (PROV_TXNMY_CLS_TYP_CD)
      on delete restrict on update restrict;

alter table PROVIDER_TAXONOMY
   add constraint PTST_TO_PTXNMY foreign key (PROV_TXNMY_SPL_TYP_CD)
      references PROVIDER_TAXONOMY_SPL_TYP (PROV_TXNMY_SPL_TYP_CD)
      on delete restrict on update restrict;

alter table PROVIDER_TAXONOMY
   add constraint PTT_TO_PTXNMY foreign key (PROV_TXNMY_TYP_CD)
      references PROVIDER_TAXONOMY_TYPE (PROV_TXNMY_TYP_CD)
      on delete restrict on update restrict;

alter table PROVIDER_TYPE
   add constraint CCTYP_TO_PTYP foreign key (CST_CNTR_TYP_CD)
      references COST_CENTER_TYPE (CST_CNTR_TYP_CD)
      on delete restrict on update restrict;

alter table RATING_ELEMENT_DEDUCTIBLE_TYPE
   add constraint DCT_TO_REDEDT foreign key (DED_CTG_TYP_CD)
      references DEDUCTIBLE_CATEGORY_TYPE (DED_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table RATING_ELEMENT_DEDUCTIBLE_TYPE
   add constraint DEDT_TO_REDEDT foreign key (DED_TYP_CD)
      references DEDUCTIBLE_TYPE (DED_TYP_CD)
      on delete restrict on update restrict;

alter table RATING_ELEMENT_DEDUCTIBLE_TYPE
   add constraint HGT_TO_REDEDT foreign key (HZRD_GRP_TYP_CD)
      references HAZARD_GROUP_TYPE (HZRD_GRP_TYP_CD)
      on delete restrict on update restrict;

alter table RATING_ELEMENT_DEDUCTIBLE_TYPE
   add constraint RELT_TO_REDEDT foreign key (RT_ELEM_LMCJ_TYP_ID)
      references RATING_ELEMENT_LMCJ_TYPE (RT_ELEM_LMCJ_TYP_ID)
      on delete restrict on update restrict;

alter table RATING_ELEMENT_LARGE_DED_TYP
  add constraint LMICJX_TO_RELDEDT foreign key (LMICJX_ID)
      references LOB_MRKT_INS_CMPY_JUR_XREF (LMICJX_ID)
      on delete restrict on update restrict;

alter table RATING_ELEMENT_EL_FELA_TYPE
   add constraint EFTYP_TO_REEFT foreign key (EL_FELA_TYP_CD)
      references EL_FELA_TYPE (EL_FELA_TYP_CD)
      on delete restrict on update restrict;

alter table RATING_ELEMENT_EL_FELA_TYPE
   add constraint RELT_TO_REEFT foreign key (RT_ELEM_LMCJ_TYP_ID)
      references RATING_ELEMENT_LMCJ_TYPE (RT_ELEM_LMCJ_TYP_ID)
      on delete restrict on update restrict;

alter table RATING_ELEMENT_EMPLR_LIAB_TYP
   add constraint ELT_TO_REELT foreign key (EMPLR_LIAB_TYP_CD)
      references EMPLOYER_LIABILITY_TYPE (EMPLR_LIAB_TYP_CD)
      on delete restrict on update restrict;

alter table RATING_ELEMENT_EMPLR_LIAB_TYP
   add constraint RELT_TO_REELT foreign key (RT_ELEM_LMCJ_TYP_ID)
      references RATING_ELEMENT_LMCJ_TYPE (RT_ELEM_LMCJ_TYP_ID)
      on delete restrict on update restrict;

alter table RATING_ELEMENT_LMCJ_RATE
   add constraint RELT_TO_RELR foreign key (RT_ELEM_LMCJ_TYP_ID)
      references RATING_ELEMENT_LMCJ_TYPE (RT_ELEM_LMCJ_TYP_ID)
      on delete restrict on update restrict;

alter table RATING_ELEMENT_LMCJ_TYPE
   add constraint LMICJX_TO_RELT foreign key (LMICJX_ID)
      references LOB_MRKT_INS_CMPY_JUR_XREF (LMICJX_ID)
      on delete restrict on update restrict;

alter table RATING_ELEMENT_LMCJ_TYPE
   add constraint REDT_TO_RELT foreign key (RT_ELEM_DSPLY_TYP_CD)
      references RATING_ELEMENT_DISPLAY_TYPE (RT_ELEM_DSPLY_TYP_CD)
      on delete restrict on update restrict;

alter table RATING_ELEMENT_LMCJ_TYPE
   add constraint RTET_TO_RELT foreign key (RT_ELEM_TYP_CD)
      references RATING_ELEMENT_TYPE (RT_ELEM_TYP_CD)
      on delete restrict on update restrict;

alter table RATING_ELEMENT_PREM_DSCNT
   add constraint RELT_TO_REPD foreign key (RT_ELEM_LMCJ_TYP_ID)
      references RATING_ELEMENT_LMCJ_TYPE (RT_ELEM_LMCJ_TYP_ID)
      on delete restrict on update restrict;

alter table RATING_ELEMENT_WC_CLASS_XREF
   add constraint REWCX_TO_RTET foreign key (RT_ELEM_TYP_CD)
      references RATING_ELEMENT_TYPE (RT_ELEM_TYP_CD)
      on delete restrict on update restrict;

alter table RATING_ELEM_RT_ELEM_CLS_XREF
   add constraint RECT_TO_RERECX foreign key (RT_ELEM_CLS_TYP_CD)
      references RATING_ELEMENT_CLASS_TYPE (RT_ELEM_CLS_TYP_CD)
      on delete restrict on update restrict;

alter table RATING_ELEM_RT_ELEM_CLS_XREF
   add constraint RTET_TO_RERECX foreign key (RT_ELEM_TYP_CD)
      references RATING_ELEMENT_TYPE (RT_ELEM_TYP_CD)
      on delete restrict on update restrict;

alter table RELATIONSHIP
   add constraint CUST_TO_RLT1 foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table RELATIONSHIP
   add constraint CUST_TO_RLT2 foreign key (CUST_ID_RLT)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table RELATIONSHIP
   add constraint DEPT_TO_RLT foreign key (DEP_TYP_CD)
      references DEPENDENT_TYPE (DEP_TYP_CD)
      on delete restrict on update restrict;

alter table RELATIONSHIP
   add constraint RCRX_TO_RLT foreign key (RCRX_ID)
      references RELATIONSHIP_CUST_ROLE_XREF (RCRX_ID)
      on delete restrict on update restrict;
      
alter table RELATIONSHIP
    add constraint USER_TO_RLT foreign key(AUDIT_USER_ID_CREA)
        references USERS (USER_ID)
      on delete restrict on update restrict;

alter table RELATIONSHIP
    add constraint USER_UPDT_TO_RLT foreign key(AUDIT_USER_ID_UPDT)
        references USERS (USER_ID)
      on delete restrict on update restrict;

alter table RELATIONSHIP_HISTORY
    add constraint USER_TO_RLTH foreign key(AUDIT_USER_ID_CREA)
        references USERS (USER_ID)
      on delete restrict on update restrict;

alter table RELATIONSHIP_HISTORY
    add constraint USER_UPDT_TO_RLTH foreign key(AUDIT_USER_ID_UPDT)
        references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table RELATIONSHIP_HISTORY
    add constraint CUST_TO_RLTH2 foreign key(CUST_ID)
       references CUSTOMER(CUST_ID)
	  on delete restrict on update restrict;

 alter table RELATIONSHIP_HISTORY
     add constraint RCRX_TO_RLTH foreign key(RCRX_ID)
	references RELATIONSHIP_CUST_ROLE_XREF(RCRX_ID)
	on delete restrict on update restrict;

 alter table RELATIONSHIP_HISTORY
    add constraint DEPT_TO_RLTH foreign key(DEP_TYP_CD)
	references DEPENDENT_TYPE(DEP_TYP_CD)
	on delete restrict on update restrict;
alter table RELATIONSHIP_CUST_ROLE_XREF
   add constraint CRT_TO_RCRX1 foreign key (CUST_ROLE_TYP_CD_RLT)
      references CUSTOMER_ROLE_TYPE (CUST_ROLE_TYP_CD)
      on delete restrict on update restrict;

alter table RELATIONSHIP_CUST_ROLE_XREF
   add constraint CRT_TO_RCRX2 foreign key (CUST_ROLE_TYP_CD)
      references CUSTOMER_ROLE_TYPE (CUST_ROLE_TYP_CD)
      on delete restrict on update restrict;

alter table RELATIONSHIP_CUST_ROLE_XREF
   add constraint RLTT_TO_RCRX foreign key (RLT_TYP_CD)
      references RELATIONSHIP_TYPE (RLT_TYP_CD)
      on delete restrict on update restrict;


alter table REPORTING_FREQUENCY_DEPS_LMC
   add constraint CEST_TO_RFDL foreign key (CTL_ELEM_SUB_TYP_ID)
      references CONTROL_ELEMENT_SUB_TYPE (CTL_ELEM_SUB_TYP_ID)
      on delete restrict on update restrict;

alter table REPORTING_FREQUENCY_DEPS_LMC
   add constraint LMICX_TO_RFDL foreign key (LMICX_ID)
      references LOB_MARKET_INSURANCE_CMPY_XREF (LMICX_ID)
      on delete restrict on update restrict;

alter table RESOURCE_REDIRECT
   add constraint OU_TO_RR foreign key (ORG_UNT_ID)
      references ORGANIZATIONAL_UNIT (ORG_UNT_ID)
      on delete restrict on update restrict;

alter table RESOURCE_REDIRECT
   add constraint OU_TO_RRREDIR foreign key (ORG_UNT_ID_REDIR)
      references ORGANIZATIONAL_UNIT (ORG_UNT_ID)
      on delete restrict on update restrict;

alter table RESOURCE_REDIRECT
   add constraint RTYP_TO_RR1 foreign key (RSRC_TYP_CD)
      references RESOURCE_TYPE (RSRC_TYP_CD)
      on delete restrict on update restrict;

alter table RESOURCE_REDIRECT
   add constraint RTYP_TO_RR2 foreign key (RSRC_TYP_CD_REDIR)
      references RESOURCE_TYPE (RSRC_TYP_CD)
      on delete restrict on update restrict;

alter table RESOURCE_REDIRECT
   add constraint USER_TO_RR foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table RESOURCE_REDIRECT
   add constraint USER_TO_RRREDIR foreign key (USER_ID_REDIR)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table RESOURCE_REDIRECT
   add constraint USER_TO_RR1 foreign key (AUDIT_USER_ID_CREA)
   	references USERS (USER_ID)
   	on delete restrict on update restrict;
   	
alter table RESOURCE_REDIRECT
   add constraint USER_TO_RR2 foreign key (AUDIT_USER_ID_UPDT)
   	references USERS (USER_ID)
   	on delete restrict on update restrict;

alter table RESOURCE_RULE_RESULT
   add constraint FR_TO_RRR foreign key (FNCT_ROLE_ID)
      references FUNCTIONAL_ROLE (FNCT_ROLE_ID)
      on delete restrict on update restrict;

alter table RESOURCE_RULE_RESULT
   add constraint OU_TO_RRR foreign key (ORG_UNT_ID)
      references ORGANIZATIONAL_UNIT (ORG_UNT_ID)
      on delete restrict on update restrict;

alter table RESOURCE_RULE_RESULT
  add constraint RI_TO_RRR foreign key (RL_ITEM_ID)
      references RULE_ITEM (RL_ITEM_ID)
    on delete restrict on update restrict;

alter table RESOURCE_RULE_RESULT
   add constraint RRT_TO_RRR foreign key (RSRC_RSLT_TYP_CD)
     references RESOURCE_RESULT_TYPE (RSRC_RSLT_TYP_CD)
      on delete restrict on update restrict;

alter table RESOURCE_RULE_RESULT
   add constraint USER_TO_RRR foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table RESOURCE_RULE_RESULT
   add constraint USER_TO_RRR1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table RESOURCE_RULE_RESULT
   add constraint USER_TO_RRR2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table RISK
   add constraint CUST_TO_RISK foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table RISK
   add constraint RISKT_TO_RISK foreign key (RISK_TYP_CD)
      references RISK_TYPE (RISK_TYP_CD)
      on delete restrict on update restrict;
      
alter table RISK
   add constraint USER_TO_RISK1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table RISK
   add constraint USER_TO_RISK2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;      

alter table RISK_HISTORY
   add constraint RISK_TO_RISKH foreign key (RISK_ID)
      references RISK (RISK_ID)
      on delete restrict on update restrict;

alter table RISK_HISTORY
   add constraint CUST_TO_RISKH foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table RISK_HISTORY
   add constraint RISKT_TO_RISKH foreign key (RISK_TYP_CD)
      references RISK_TYPE (RISK_TYP_CD)
      on delete restrict on update restrict;
      
alter table RISK_HISTORY
   add constraint USER_TO_RISKH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table RISK_HISTORY
   add constraint USER_TO_RISKH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;      

alter table RISK_LOCATION
   add constraint CUSTA_TO_RISKL foreign key (CUST_ADDR_ID)
      references CUSTOMER_ADDRESS (CUST_ADDR_ID)
      on delete restrict on update restrict;

alter table RISK_LOCATION
   add constraint RISK_TO_RISKL foreign key (RISK_ID)
      references RISK (RISK_ID)       on delete restrict on update restrict;
      
alter table RISK_LOCATION
   add constraint USER_TO_RISKL1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table RISK_LOCATION
   add constraint USER_TO_RISKL2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;   

alter table RISK_LOCATION
   add constraint ST_TO_RISKL foreign key (SIC_TYP_CD)
      references SIC_TYPE (SIC_TYP_CD)
      on delete restrict on update restrict;

alter table RISK_LOCATION
   add constraint NT_TO_RISKL foreign key (NAICS_TYP_CD)
      references NAICS_TYPE (NAICS_TYP_CD)
      on delete restrict on update restrict;         

alter table RISK_LOCATION_HISTORY
   add constraint RISKL_TO_RISKLH foreign key (RISK_LOC_ID)
      references RISK_LOCATION (RISK_LOC_ID)
      on delete restrict on update restrict;
      
alter table RISK_LOCATION_HISTORY
   add constraint CUSTA_TO_RISKLH foreign key (CUST_ADDR_ID)
      references CUSTOMER_ADDRESS (CUST_ADDR_ID)
      on delete restrict on update restrict;

alter table RISK_LOCATION_HISTORY
   add constraint RISK_TO_RISKLH foreign key (RISK_ID)
      references RISK (RISK_ID)       on delete restrict on update restrict;
      
alter table RISK_LOCATION_HISTORY
   add constraint USER_TO_RISKLH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table RISK_LOCATION_HISTORY
   add constraint USER_TO_RISKLH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;      
  
alter table ROLE_ACCOUNT_HOLDER
   add constraint AST_TO_RAH foreign key (ACCT_STS_TYP_CD)
      references ACCOUNT_STATUS_TYPE (ACCT_STS_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_ACCOUNT_HOLDER
   add constraint CR_TO_RAH foreign key (ROLE_ID)
      references CUSTOMER_ROLE (ROLE_ID)
      on delete restrict on update restrict;

alter table ROLE_ACCOUNT_HOLDER
   add constraint ST_TO_RAH foreign key (SIC_TYP_CD)
      references SIC_TYPE (SIC_TYP_CD)
      on delete restrict on update restrict;
      
alter table ROLE_ACCOUNT_HOLDER
   add constraint NT_TO_RAH foreign key (NAICS_TYP_CD)
      references NAICS_TYPE (NAICS_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_ACCOUNT_HOLDER_HISTORY
   add constraint RAH_TO_RAHH foreign key (ROLE_ACCT_HLDR_ID)
      references ROLE_ACCOUNT_HOLDER (ROLE_ACCT_HLDR_ID)
      on delete restrict on update restrict;
      
alter table ROLE_ACCOUNT_HOLDER_HISTORY
   add constraint AST_TO_RAHH foreign key (ACCT_STS_TYP_CD)
      references ACCOUNT_STATUS_TYPE (ACCT_STS_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_ACCOUNT_HOLDER_HISTORY
   add constraint ST_TO_RAHH foreign key (SIC_TYP_CD)
      references SIC_TYPE (SIC_TYP_CD)
      on delete restrict on update restrict;
      
alter table ROLE_ACCOUNT_HOLDER_HISTORY
   add constraint NT_TO_RAHH foreign key (NAICS_TYP_CD)
      references NAICS_TYPE (NAICS_TYP_CD)
      on delete restrict on update restrict;      

alter table ROLE_ATTORNEY_JURISDICTION
   add constraint CR_TO_RAJ foreign key (ROLE_ID)
      references CUSTOMER_ROLE (ROLE_ID)
      on delete restrict on update restrict;

alter table ROLE_ATTORNEY_JURISDICTION
   add constraint JT_TO_RAJ foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_ATTORNEY_JURISDICTION
   add constraint USER_TO_RAJ1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_ATTORNEY_JURISDICTION
   add constraint USER_TO_RAJ2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_ATTORNEY_LINE_OF_BUSINESS
   add constraint CR_TO_RALOB foreign key (ROLE_ID)
      references CUSTOMER_ROLE (ROLE_ID)
      on delete restrict on update restrict;

alter table ROLE_ATTORNEY_LINE_OF_BUSINESS
   add constraint LOBT_TO_RALOB foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_ATTORNEY_LINE_OF_BUSINESS
   add constraint USER_TO_RALOB1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_ATTORNEY_LINE_OF_BUSINESS
   add constraint USER_TO_RALOB2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_FINANCIAL_INSTITUTION
   add constraint CR_TO_RFI foreign key (ROLE_ID)
      references CUSTOMER_ROLE (ROLE_ID)
      on delete restrict on update restrict;

alter table ROLE_GROUP
   add constraint CR_TO_RG foreign key (ROLE_ID)
      references CUSTOMER_ROLE (ROLE_ID)
      on delete restrict on update restrict;

alter table ROLE_GROUP
   add constraint GPPT_TO_RG foreign key (GRP_PGM_PRD_TYP_CD)
      references GROUP_PROGRAM_PERIOD_TYPE (GRP_PGM_PRD_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_GROUP
   add constraint USER_TO_RG1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_GROUP
   add constraint USER_TO_RG2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_GROUP_HISTORY
   add constraint RG_TO_RGH foreign key (ROLE_GRP_ID)
      references ROLE_GROUP(ROLE_GRP_ID)
      	on delete restrict on update restrict;

alter table ROLE_GROUP_HISTORY
   add constraint GPPT_TO_RGH foreign key (GRP_PGM_PRD_TYP_CD)
      references GROUP_PROGRAM_PERIOD_TYPE (GRP_PGM_PRD_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_GROUP_HISTORY
   add constraint USER_TO_RGH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_GROUP_HISTORY
   add constraint USER_TO_RGH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_GROUP_INTERNAL_CONTACT
   add constraint RG_TO_RGIC foreign key (ROLE_GRP_ID)
      references ROLE_GROUP (ROLE_GRP_ID)
      on delete restrict on update restrict;

alter table ROLE_GROUP_INTERNAL_CONTACT
   add constraint USER_TO_RGIC foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table ROLE_GROUP_INTERNAL_CONTACT
   add constraint USER_TO_RGIC1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_GROUP_INTERNAL_CONTACT
   add constraint USER_TO_RGIC2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table ROLE_GROUP_INTERNAL_CNTC_HIST
	add constraint RGIC_TO_RGICH foreign key (ROLE_GRP_INTRNL_CNTC_ID)
		references ROLE_GROUP_INTERNAL_CONTACT(ROLE_GRP_INTRNL_CNTC_ID)
	     		on delete restrict on update restrict;

alter table ROLE_GROUP_INTERNAL_CNTC_HIST
   add constraint RG_TO_RGICH foreign key (ROLE_GRP_ID)
      references ROLE_GROUP (ROLE_GRP_ID)
      on delete restrict on update restrict;

alter table ROLE_GROUP_INTERNAL_CNTC_HIST
   add constraint USER_TO_RGICH foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table ROLE_GROUP_INTERNAL_CNTC_HIST
   add constraint USER_TO_RGICH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_GROUP_INTERNAL_CNTC_HIST
   add constraint USER_TO_RGICH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table ROLE_GROUP_LOSS_RATIO
   add constraint RG_TO_RGLR foreign key (ROLE_GRP_ID)
      references ROLE_GROUP (ROLE_GRP_ID)
      on delete restrict on update restrict;
      
alter table ROLE_GROUP_LOSS_RATIO
   add constraint USER_TO_RGLR1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
 alter table ROLE_GROUP_LOSS_RATIO
       add constraint USER_TO_RGLR2 foreign key (AUDIT_USER_ID_UPDT)
          references USERS (USER_ID)
          on delete restrict on update restrict;
          
alter table ROLE_GROUP_LOSS_RATIO_HISTORY
     add constraint RGLR_TO_RGLRH foreign key (ROLE_GRP_LOSS_RT_ID)
        references ROLE_GROUP_LOSS_RATIO(ROLE_GRP_LOSS_RT_ID)
      		on delete restrict on update restrict;

alter table ROLE_GROUP_LOSS_RATIO_HISTORY
   add constraint RG_TO_RGLRH foreign key (ROLE_GRP_ID)
      references ROLE_GROUP (ROLE_GRP_ID)
      on delete restrict on update restrict;    
      
alter table ROLE_GROUP_LOSS_RATIO_HISTORY
   add constraint USER_TO_RGLRH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
 alter table ROLE_GROUP_LOSS_RATIO_HISTORY
       add constraint USER_TO_RGLRH2 foreign key (AUDIT_USER_ID_UPDT)
          references USERS (USER_ID)
          on delete restrict on update restrict;

alter table ROLE_INSURANCE_COMPANY
   add constraint CR_TO_RIC foreign key (ROLE_ID)
      references CUSTOMER_ROLE (ROLE_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURANCE_COMPANY
   add constraint INSCT_TO_RIC foreign key (INS_CMPY_TYP_ID)
      references INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURANCE_COMPANY_HISTORY
   add constraint INSCT_TO_RICH foreign key (INS_CMPY_TYP_ID)
      references INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURANCE_COMPANY_HISTORY
   add constraint RIC_TO_RICH foreign key (ROLE_ID)
      references ROLE_INSURANCE_COMPANY (ROLE_INS_CMPY_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURANCE_COMPANY_HISTORY
   add constraint USER_TO_RICH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURANCE_COMPANY_HISTORY
   add constraint USER_TO_RICH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURANCE_COMPANY_STT_ID
   add constraint IIT_TO_RICSI foreign key (INS_ID_TYP_CD)
      references INSURED_IDENTIFIER_TYPE (INS_ID_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSURANCE_COMPANY_STT_ID
   add constraint RIC_TO_RICSI foreign key (ROLE_INS_CMPY_ID)
      references ROLE_INSURANCE_COMPANY (ROLE_INS_CMPY_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURANCE_COMPANY_STT_ID
   add constraint STT_TO_RICSI foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURANCE_COMPANY_STT_ID
   add constraint USER_TO_RICSI1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURANCE_COMPANY_STT_ID
   add constraint USER_TO_RICSI2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURED_OWNERSHIP
   add constraint CR_TO_RIO foreign key (ROLE_ID)
      references CUSTOMER_ROLE (ROLE_ID)
      on delete restrict on update restrict;

alter table COVERED_TYPE_JUR_XREF
   add constraint OT_TO_CTJX foreign key (OWNSHP_TYP_CD)
      references OWNERSHIP_TYPE (OWNSHP_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSURED_OWNERSHIP
   add constraint OWNSHPT_TO_RIO foreign key (OWNSHP_TYP_CD)
      references OWNERSHIP_TYPE (OWNSHP_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSURED_OWNERSHIP
   add constraint USER_TO_RIO1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURED_OWNERSHIP
   add constraint USER_TO_RIO2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table ROLE_INSURED_STATE_IDENTIFIER
   add constraint CR_TO_RISI foreign key (ROLE_ID)
      references CUSTOMER_ROLE (ROLE_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURED_STATE_IDENTIFIER
   add constraint IIT_TO_RISI foreign key (INS_ID_TYP_CD)
      references INSURED_IDENTIFIER_TYPE (INS_ID_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSURED_STATE_IDENTIFIER
   add constraint LOBT_TO_RISI foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSURED_STATE_IDENTIFIER
   add constraint STT_TO_RISI foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURED_STATE_IDENTIFIER
   add constraint USER_TO_RISI1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURED_STATE_IDENTIFIER
   add constraint USER_TO_RISI2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
 
alter table ROLE_INS_COMPANY_STT_ID_HIST
   add constraint IIT_TO_RICSIH foreign key (INS_ID_TYP_CD)
      references INSURED_IDENTIFIER_TYPE (INS_ID_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INS_COMPANY_STT_ID_HIST
   add constraint RICSI_TO_RICSIH foreign key (INS_CMPY_STT_ID_ID)
      references ROLE_INSURANCE_COMPANY_STT_ID (ROLE_INS_CMPY_STT_ID_ID)
      on delete restrict on update restrict;

alter table ROLE_INS_COMPANY_STT_ID_HIST
   add constraint STT_TO_RICSIH foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table ROLE_INS_COMPANY_STT_ID_HIST
   add constraint USER_TO_RICSIH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_INS_COMPANY_STT_ID_HIST
   add constraint USER_TO_RICSIH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_LAW_FIRM_JURISDICTION
   add constraint CR_TO_RLFJ foreign key (ROLE_ID)
      references CUSTOMER_ROLE (ROLE_ID)
      on delete restrict on update restrict;

alter table ROLE_LAW_FIRM_JURISDICTION
   add constraint JT_TO_RLFJ foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_LAW_FIRM_JURISDICTION
   add constraint USER_TO_RLFJ1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_LAW_FIRM_JURISDICTION
   add constraint USER_TO_RLFJ2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_LAW_FIRM_LINE_OF_BUSINESS
   add constraint CR_TO_RLFLOB foreign key (ROLE_ID)
      references CUSTOMER_ROLE (ROLE_ID)
      on delete restrict on update restrict;

alter table ROLE_LAW_FIRM_LINE_OF_BUSINESS
   add constraint LOBT_TO_RLFLOB foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_LAW_FIRM_LINE_OF_BUSINESS
   add constraint USER_TO_RLFLOB1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_LAW_FIRM_LINE_OF_BUSINESS
   add constraint USER_TO_RLFLOB2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_LEASE_GROUP
   add constraint CR_TO_RLG foreign key (ROLE_ID)
      references CUSTOMER_ROLE (ROLE_ID)
      on delete restrict on update restrict;

alter table ROLE_LEASE_GROUP_HISTORY
     add constraint RLG_TO_RLGH foreign key (ROLE_LSE_GRP_ID)
        references ROLE_LEASE_GROUP(ROLE_LSE_GRP_ID)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER
   add constraint CR_TO_RP foreign key (ROLE_ID)
      references CUSTOMER_ROLE (ROLE_ID)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER
   add constraint USER_TO_RP1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER
   add constraint USER_TO_RP2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table ROLE_PROVIDER
   add constraint FCT_TO_RP foreign key (FEE_CLS_TYP_ID)
      references FEE_CLASSIFICATION_TYPE (FEE_CLS_TYP_ID)
      on delete restrict on update restrict;      

alter table ROLE_PROVIDER_COST_TO_CHR_RT
   add constraint RP_TO_RPCTCR foreign key (ROLE_PROV_ID)
      references ROLE_PROVIDER (ROLE_PROV_ID)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER_COST_TO_CHR_RT
   add constraint USER_TO_RPCTCR1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER_COST_TO_CHR_RT
   add constraint USER_TO_RPCTCR2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER_COST_TO_CHR_RT
   add constraint CTCT_TO_RPCTCR foreign key (CST_TO_CHR_TYP_ID)
      references COST_TO_CHARGE_TYPE (CST_TO_CHR_TYP_ID)
      on delete restrict on update restrict; 

alter table ROLE_PROVIDER_PER_DIEM
   add constraint PDT_TO_RPPD foreign key (PER_DIEM_TYP_CD)
      references PER_DIEM_TYPE (PER_DIEM_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER_PER_DIEM
   add constraint RP_TO_RPPD foreign key (ROLE_PROV_ID)
      references ROLE_PROVIDER (ROLE_PROV_ID)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER_PER_DIEM
   add constraint USER_TO_RPPD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER_PER_DIEM
   add constraint USER_TO_RPPD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER_SPECIALTY
   add constraint PROVST_TO_RPS foreign key (PROV_SPL_TYP_CD)
      references PROVIDER_SPECIALTY_TYPE (PROV_SPL_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER_SPECIALTY
   add constraint RP_TO_RPS foreign key (ROLE_PROV_ID)
      references ROLE_PROVIDER (ROLE_PROV_ID)
      on delete restrict on update restrict;


alter table ROLE_PROVIDER_SPECIALTY
   add constraint USER_TO_RPS1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER_SPECIALTY
   add constraint USER_TO_RPS2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

      
alter table ROLE_PROVIDER_FOREIGN_JUR
   add constraint CNTRY_TO_RPFJ foreign key (CNTRY_ID)
      references COUNTRY (CNTRY_ID)
      on delete restrict on update restrict;


alter table ROLE_PROVIDER_FOREIGN_JUR
   add constraint RP_TO_RPFJ foreign key (ROLE_PROV_ID)
      references ROLE_PROVIDER (ROLE_PROV_ID)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER_FOREIGN_JUR
   add constraint USER_TO_RPFJ1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER_FOREIGN_JUR
   add constraint USER_TO_RPFJ2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table ROLE_PROVIDER_TAXONOMY
   add constraint PTXNMY_TO_ROLEPT foreign key (PROV_TXNMY_ID)
      references PROVIDER_TAXONOMY (PROV_TXNMY_ID)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER_TAXONOMY
   add constraint RP_TO_ROLEPT foreign key (ROLE_PROV_ID)
      references ROLE_PROVIDER (ROLE_PROV_ID)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER_TAXONOMY
   add constraint PTCT_TO_ROLEPT foreign key (PROV_TXNMY_CLS_TYP_CD)
      references PROVIDER_TAXONOMY_CLASS_TYPE (PROV_TXNMY_CLS_TYP_CD)
      on delete restrict on update restrict;
 
alter table ROLE_PROVIDER_TAXONOMY
   add constraint PTST_TO_ROLEPT foreign key (PROV_TXNMY_SPL_TYP_CD)
      references PROVIDER_TAXONOMY_SPL_TYP (PROV_TXNMY_SPL_TYP_CD)
      on delete restrict on update restrict;
      
alter table  ROLE_PROVIDER_TAXONOMY
   add constraint USER_TO_ROLEPT1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table  ROLE_PROVIDER_TAXONOMY
   add constraint USER_TO_ROLEPT2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER_TYPE
   add constraint PTYP_TO_RPTYP foreign key (PROV_TYP_CD)
      references PROVIDER_TYPE (PROV_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER_TYPE
   add constraint RP_TO_RPTYP foreign key (ROLE_PROV_ID)
      references ROLE_PROVIDER (ROLE_PROV_ID)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER_TYPE
   add constraint USER_TO_RPTYP1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER_TYPE
   add constraint USER_TO_RPTYP2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER_PART_OF_BODY
   add constraint RPTYP_TO_RPPOB foreign key (ROLE_PROV_TYP_ID)
      references ROLE_PROVIDER_TYPE (ROLE_PROV_TYP_ID)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER_PART_OF_BODY
   add constraint PPBTYP_TO_RPPOB foreign key (PROV_POB_TYP_CD)
      references PROVIDER_PART_OF_BODY_TYPE (PROV_POB_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER_PART_OF_BODY
   add constraint USER_TO_RPPOB1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER_PART_OF_BODY
   add constraint USER_TO_RPPOB2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table RULES
   add constraint ACT_TO_RL foreign key (APP_CNTX_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table RULES
   add constraint ASCT_TO_RL foreign key (APP_SUB_CNTX_TYP_CD)
      references APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table RULES
   add constraint RLT_TO_RL foreign key (RL_TYP_CD)
      references RULE_TYPE (RL_TYP_CD)
      on delete restrict on update restrict;

alter table RULES
   add constraint USER_TO_RL1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table RULES
   add constraint USER_TO_RL2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table RULE_ITEM
   add constraint COND_TO_RI foreign key (COND_ID)
      references "CONDITION" (COND_ID)
      on delete restrict on update restrict;

alter table RULE_ITEM
   add constraint RL_TO_RI foreign key (RL_ID)
      references RULES (RL_ID)
      on delete restrict on update restrict;

alter table RULE_ITEM
   add constraint USER_TO_RI1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table RULE_ITEM
   add constraint USER_TO_RI2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table SELECTABLE_USER_CLASS
   add constraint FR_TO_SUC foreign key (FNCT_ROLE_ID)
      references FUNCTIONAL_ROLE (FNCT_ROLE_ID)
      on delete restrict on update restrict;

alter table SELECTABLE_USER_CLASS
   add constraint UT_TO_SUC foreign key (USER_TYP_CD)
      references USERS_TYPE (USER_TYP_CD)
      on delete restrict on update restrict;

alter table SHORT_RATE_CANCELLATION
   add constraint JT_TO_SRC foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table STOP_PAYMENT_DATE
   add constraint CLM_TO_SPD foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table STOP_PAYMENT_DATE
   add constraint SPT_TO_SPD foreign key (STOP_PAY_TYP_CD)
      references STOP_PAYMENT_TYPE (STOP_PAY_TYP_CD)
      on delete restrict on update restrict;

alter table STOP_PAYMENT_DATE
   add constraint USER_TO_SPD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table STOP_PAYMENT_DATE
   add constraint USER_TO_SPD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table STOP_PAYMENT_DATE_HISTORY
   add constraint SPD_TO_SPDH foreign key (STOP_PAY_DT_ID)
      references STOP_PAYMENT_DATE (STOP_PAY_DT_ID)
      on delete restrict on update restrict;

alter table STOP_PAYMENT_DATE_HISTORY
   add constraint CLM_TO_SPDH foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table STOP_PAYMENT_DATE_HISTORY
   add constraint SPT_TO_SPDH foreign key (STOP_PAY_TYP_CD)
      references STOP_PAYMENT_TYPE (STOP_PAY_TYP_CD)
      on delete restrict on update restrict;

alter table STOP_PAYMENT_DATE_HISTORY
   add constraint USER_TO_SPDH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table STOP_PAYMENT_DATE_HISTORY
   add constraint USER_TO_SPDH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table SYSTEM_CONSTANT
   add constraint DT_TO_SC foreign key (DATA_TYP_CD)
      references DATA_TYPE (DATA_TYP_CD)
      on delete restrict on update restrict;

alter table SYSTEM_OPTION
   add constraint DT_TO_SO foreign key (DATA_TYP_CD)
      references DATA_TYPE (DATA_TYP_CD)
      on delete restrict on update restrict;

alter table SYSTEM_OPTION
   add constraint OGT_TO_SO foreign key (OPT_GRP_TYP_CD)
      references OPTION_GROUP_TYPE (OPT_GRP_TYP_CD)
      on delete restrict on update restrict;

alter table SYSTEM_OPTION
   add constraint OT_TO_SO foreign key (OPT_TYP_CD)
      references OPTION_TYPE (OPT_TYP_CD)
      on delete restrict on update restrict; 

alter table TASK
   add constraint ACT_TO_TASK foreign key (APP_CNTX_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table TASK
   add constraint ADL_TO_TASK foreign key (APP_DTL_LVL_CD)
      references APPLICATION_DETAIL_LEVEL (APP_DTL_LVL_CD)
      on delete restrict on update restrict;

alter table TASK
   add constraint ASCT_TO_TASK foreign key (APP_SUB_CNTX_TYP_CD)
      references APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table TASK
   add constraint COND_TO_TASK foreign key (COND_ID)
      references "CONDITION" (COND_ID)
      on delete restrict on update restrict;

alter table TASK
   add constraint FOLD_TO_TASK foreign key (FOLD_ID)
      references FOLDER (FOLD_ID)
      on delete restrict on update restrict;

alter table TASK
   add constraint OU_TO_TASK foreign key (ORG_UNT_ID)
      references ORGANIZATIONAL_UNIT (ORG_UNT_ID)
      on delete restrict on update restrict;

alter table TASK
   add constraint TASK_TO_TASK foreign key (TASK_LNK_ID)
      references TASK (TASK_ID)
      on delete restrict on update restrict;

alter table TASK
   add constraint TPT_TO_TASK foreign key (TASK_PRTY_TYP_CD)
      references TASK_PRIORITY_TYPE (TASK_PRTY_TYP_CD)
      on delete restrict on update restrict;

alter table TASK
   add constraint TST_TO_TASK foreign key (TASK_STS_TYP_CD)
      references TASK_STATUS_TYPE (TASK_STS_TYP_CD)
      on delete restrict on update restrict;

alter table TASK
   add constraint TST_TO_TASK2 foreign key (TASK_PR_STS_TYP_CD)
      references TASK_STATUS_TYPE (TASK_STS_TYP_CD)
      on delete restrict on update restrict;

alter table TASK
   add constraint TTYP_TO_TASK foreign key (TASK_TYP_CD)
      references TASK_TYPE (TASK_TYP_CD)
      on delete restrict on update restrict;

alter table TASK
   add constraint TASKT_TO_TASK foreign key (TASK_TMPL_ID)
      references TASK_TEMPLATE (TASK_TMPL_ID)
      on delete restrict on update restrict;

alter table TASK
   add constraint USER_TO_TASK foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table TASK
   add constraint USER_TO_TASK1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table TASK
   add constraint USER_TO_TASK2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table TASK
   add constraint TCACX_TO_TASK foreign key (TASK_CTG_APP_CNTX_XREF_ID)
      references TASK_CATEGORY_APP_CNTX_XREF (TASK_CTG_APP_CNTX_XREF_ID)
      on delete restrict on update restrict;      
      
alter table TASK_CATEGORY_APP_CNTX_XREF
   add constraint TASKCT_TO_TCACX foreign key (TASK_CTG_TYP_CD)
      references TASK_CATEGORY_TYPE (TASK_CTG_TYP_CD)
      on delete restrict on update restrict;
      
alter table TASK_CATEGORY_APP_CNTX_XREF
   add constraint ACT_TO_TCACX foreign key (APP_CNTX_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table TASK_APPLICATION_DETAIL_LEVEL
   add constraint ADL_TO_TADL foreign key (APP_DTL_LVL_CD)
      references APPLICATION_DETAIL_LEVEL (APP_DTL_LVL_CD)
      on delete restrict on update restrict;

alter table TASK_APPLICATION_DETAIL_LEVEL
   add constraint AGRE_TO_TADL foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict;

alter table TASK_APPLICATION_DETAIL_LEVEL
   add constraint CUST_TO_TADL foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table TASK_APPLICATION_DETAIL_LEVEL
   add constraint PLCYP_TO_TADL foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;      


alter table TASK_APPLICATION_DETAIL_LEVEL
   add constraint TADL_TO_TADL foreign key (TASK_APP_DTL_LVL_PAR_ID)
      references TASK_APPLICATION_DETAIL_LEVEL (TASK_APP_DTL_LVL_ID)
      on delete restrict on update restrict;

alter table TASK_APPLICATION_DETAIL_LEVEL
   add constraint TASK_TO_TADL foreign key (TASK_ID)
      references TASK (TASK_ID)
      on delete restrict on update restrict;

alter table TASK_DATA
   add constraint ADT_TO_TD foreign key (APP_DATA_TYP_CD)
      references APPLICATION_DATA_TYPE (APP_DATA_TYP_CD)
      on delete restrict on update restrict;

alter table TASK_DATA
   add constraint TASK_TO_TD foreign key (TASK_ID)
      references TASK (TASK_ID)
      on delete restrict on update restrict;

alter table TASK_ESCALATION
   add constraint TASK_TO_TE foreign key (TASK_ID)
      references TASK (TASK_ID)
      on delete restrict on update restrict;

alter table TASK_ESCALATION
   add constraint TPT_TO_TE foreign key (TASK_PRTY_TYP_CD)
      references TASK_PRIORITY_TYPE (TASK_PRTY_TYP_CD)
      on delete restrict on update restrict;

alter table TASK_TEMPLATE
   add constraint ACT_TO_TASKT foreign key (APP_CNTX_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table TASK_TEMPLATE
   add constraint ASCT_TO_TASKT foreign key (APP_SUB_CNTX_TYP_CD)
      references APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table TASK_TEMPLATE
   add constraint ADT_TO_TASKT foreign key (APP_DATA_TYP_CD)
      references APPLICATION_DATA_TYPE (APP_DATA_TYP_CD)
      on delete restrict on update restrict;
      
alter table TASK_TEMPLATE
   add constraint COND_TO_TASKT foreign key (COND_ID)
      references "CONDITION" (COND_ID)
      on delete restrict on update restrict;

alter table TASK_TEMPLATE
   add constraint TPT_TO_TASKT foreign key (TASK_PRTY_TYP_CD)
      references TASK_PRIORITY_TYPE (TASK_PRTY_TYP_CD)
      on delete restrict on update restrict;

alter table TASK_TEMPLATE
   add constraint TCACX_TO_TASKT foreign key (TASK_CTG_APP_CNTX_XREF_ID)
      references TASK_CATEGORY_APP_CNTX_XREF (TASK_CTG_APP_CNTX_XREF_ID)
      on delete restrict on update restrict;

alter table TASK_TEMPLATE
   add constraint USER_TO_TASKT1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table TASK_TEMPLATE
   add constraint USER_TO_TASKT2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
	  
alter table TASK_TEMPLATE
   add constraint EVNTT_TO_TASKT foreign key (COMP_TRG_EVNT_TYP_CD)
      references EVENT_TYPE (EVNT_TYP_CD)
      on delete restrict on update restrict;

alter table TASK_TEMPLATE_APP_DTL_LVL_XREF
   add constraint ADL_TO_TTADLX foreign key (APP_DTL_LVL_CD)
      references APPLICATION_DETAIL_LEVEL (APP_DTL_LVL_CD)
      on delete restrict on update restrict;

alter table TASK_TEMPLATE_APP_DTL_LVL_XREF
   add constraint ADT_TO_TTADLX foreign key (APP_DATA_TYP_CD)
      references APPLICATION_DATA_TYPE (APP_DATA_TYP_CD)
      on delete restrict on update restrict;

alter table TASK_TEMPLATE_APP_DTL_LVL_XREF
   add constraint TASKT_TO_TTADLX foreign key (TASK_TMPL_ID)
      references TASK_TEMPLATE (TASK_TMPL_ID)
      on delete restrict on update restrict;

alter table TASK_TEMPLATE_ESCALATION
   add constraint TASKT_TO_TTE foreign key (TASK_TMPL_ID)
     references TASK_TEMPLATE (TASK_TMPL_ID)
      on delete restrict on update restrict;

alter table TASK_TEMPLATE_ESCALATION
   add constraint TPT_TO_TTE foreign key (TASK_PRTY_TYP_CD)
      references TASK_PRIORITY_TYPE (TASK_PRTY_TYP_CD)
      on delete restrict on update restrict;

alter table TASK_TMPL_RULE_XREF
   add constraint RL_TO_TTRX foreign key (RL_ID)
      references RULES (RL_ID)
      on delete restrict on update restrict;

alter table TASK_TMPL_RULE_XREF
   add constraint TASKT_TO_TTRX foreign key (TASK_TMPL_ID)
      references TASK_TEMPLATE (TASK_TMPL_ID)
      on delete restrict on update restrict;

alter table TAX_IDENTIFIER
   add constraint CUST_TO_TI foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table TAX_IDENTIFIER
   add constraint TIT_TO_TI foreign key (TAX_ID_TYP_CD)
      references TAX_IDENTIFIER_TYPE (TAX_ID_TYP_CD)
      on delete restrict on update restrict;

alter table TAX_IDENTIFIER
   add constraint USER_TO_TI2 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table TAX_IDENTIFIER
   add constraint USER_TO_TI3 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table TAX_IDENTIFIER_HISTORY
   add constraint CUST_TO_TIH foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;
      
      
alter table TAX_IDENTIFIER_HISTORY
   add constraint TI_TO_TIH foreign key (TAX_ID_ID)
      references TAX_IDENTIFIER (TAX_ID_ID)
      on delete restrict on update restrict;
      
alter table TAX_IDENTIFIER_HISTORY
   add constraint TIT_TO_TIH foreign key (TAX_ID_TYP_CD)
      references TAX_IDENTIFIER_TYPE (TAX_ID_TYP_CD)
      on delete restrict on update restrict;

alter table TAX_IDENTIFIER_HISTORY
   add constraint USER_TO_TIH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table TAX_IDENTIFIER_HISTORY
   add constraint USER_TO_TIH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table USERS
   add constraint USER_TO_USER foreign key (USER_SUPR_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table USERS
   add constraint UT_TO_USER foreign key (USER_TYP_CD)
      references USERS_TYPE (USER_TYP_CD)
      on delete restrict on update restrict;

alter table USERS_CUSTOMER_ACCESS_XREF
   add constraint CUST_TO_UCAX foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table USERS_CUSTOMER_ACCESS_XREF
   add constraint PTCPT_TO_UCAX foreign key (PTCP_TYP_CD)
      references PARTICIPATION_TYPE (PTCP_TYP_CD)
      on delete restrict on update restrict;

alter table USERS_CUSTOMER_ACCESS_XREF
   add constraint USER_TO_UCAX foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table USERS_CUSTOMER_ACCESS_XREF
   add constraint USER_TO_UCAX1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table USERS_CUSTOMER_ACCESS_XREF
   add constraint USER_TO_UCAX2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table USER_PREFERENCES
   add constraint USER_TO_UP foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table USER_PREFERENCES
   add constraint UPD_TO_UP foreign key (USER_PREF_DEFN_ID)
      references USER_PREFERENCE_DEFINITION (USER_PREF_DEFN_ID)
      on delete restrict on update restrict;


alter table WC_CLAIM
   add constraint CLM_TO_WCCLM foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table WC_CLAIM
   add constraint INJRT_TO_WCCLM foreign key (INJR_TYP_CD)
      references INJURY_TYPE (INJR_TYP_CD)
      on delete restrict on update restrict;

alter table WC_CLAIM
   add constraint USER_TO_WCCLM1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table WC_CLAIM
   add constraint USER_TO_WCCLM2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

--ECR 1007
alter table WC_CLAIM
   add constraint WWT_TO_WCCLM foreign key (WRK_WK_TYP_CD)
      references  WORK_WEEK_TYPE (WRK_WK_TYP_CD)
      on delete restrict on update restrict;       
      
alter table WC_CLAIM_HISTORY
   add constraint WCCLM_TO_WCCLMH foreign key (WC_CLM_ID)
      references WC_CLAIM (WC_CLM_ID)
      on delete restrict on update restrict;

alter table WC_CLAIM_HISTORY
   add constraint CLM_TO_WCCLMH foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table WC_CLAIM_HISTORY
   add constraint INJRT_TO_WCCLMH foreign key (INJR_TYP_CD)
      references INJURY_TYPE (INJR_TYP_CD)
      on delete restrict on update restrict;

alter table WC_CLAIM_HISTORY
   add constraint USER_TO_WCCLMH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table WC_CLAIM_HISTORY
   add constraint USER_TO_WCCLMH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

--ECR 1007
alter table WC_CLAIM_HISTORY
   add constraint WWT_TO_WCCLMH foreign key (WRK_WK_TYP_CD)
      references  WORK_WEEK_TYPE (WRK_WK_TYP_CD)
      on delete restrict on update restrict;      
      
alter table WC_CLAIM_CLASS_PRESUMPTION
   add constraint JT_TO_WCCPRSM foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table WC_CLASS
   add constraint ELPT_TO_WCC foreign key (EMPLR_LIAB_PGM_TYP_CD)
      references EMPLOYER_LIABILITY_PROGRAM_TYP (EMPLR_LIAB_PGM_TYP_CD)
      on delete restrict on update restrict;

alter table WC_CLASS
   add constraint HGT_TO_WCC foreign key (HZRD_GRP_TYP_CD)
      references HAZARD_GROUP_TYPE (HZRD_GRP_TYP_CD)
      on delete restrict on update restrict;

alter table WC_CLASS
   add constraint IGT_TO_WCC foreign key (INDST_GRP_TYP_CD)
      references INDUSTRY_GROUP_TYPE (INDST_GRP_TYP_CD)
      on delete restrict on update restrict;

alter table WC_CLASS
   add constraint JT_TO_WCC foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table WC_CLASS
   add constraint PBT_TO_WCC foreign key (PREM_BS_TYP_CD)
      references PREMIUM_BASIS_TYPE (PREM_BS_TYP_CD)
      on delete restrict on update restrict;

alter table WC_CLASS
   add constraint USER_TO_WCC1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table WC_CLASS
   add constraint USER_TO_WCC2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table WC_CLASS
   add constraint WCCT_TO_WCC foreign key (WC_CLS_TYP_CD)
      references WC_CLASS_TYPE (WC_CLS_TYP_CD)
      on delete restrict on update restrict;

alter table WC_CLASS_RATE_TIER
   add constraint INSCT_TO_WCCRTIER foreign key (INS_CMPY_TYP_ID)
      references INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID)
      on delete restrict on update restrict;

alter table WC_CLASS_RATE_TIER
   add constraint MT_TO_WCCRTIER foreign key (MRKT_TYP_CD)
      references MARKET_TYPE (MRKT_TYP_CD)
      on delete restrict on update restrict;

alter table WC_CLASS_RATE_TIER
   add constraint USER_TO_WCCRTIER1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table WC_CLASS_RATE_TIER
   add constraint USER_TO_WCCRTIER2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table WC_CLASS_RATE_TIER
   add constraint WCCRTT_TO_WCCRTR foreign key (WC_CLS_RT_TIER_TYP_CD)
      references WC_CLASS_RATE_TIER_TYPE (WC_CLS_RT_TIER_TYP_CD)
      on delete restrict on update restrict;

alter table WC_CLASS_RATE_TIER
   add constraint WCC_TO_WCCRTR foreign key (WC_CLS_ID)
      references WC_CLASS (WC_CLS_ID)
      on delete restrict on update restrict;

alter table WC_CLASS_RELATIONSHIP
   add constraint WCCRT_TO_WCCR foreign key (WC_CLS_RLT_TYP_CD)
      references WC_CLASS_RELATIONSHIP_TYPE (WC_CLS_RLT_TYP_CD)
      on delete restrict on update restrict;

alter table WC_CLASS_RELATIONSHIP
   add constraint WCC_TO_WCCR foreign key (WC_CLS_ID)
      references WC_CLASS (WC_CLS_ID)
      on delete restrict on update restrict;

alter table WC_CLASS_RELATIONSHIP
   add constraint USER_TO_WCCRT1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table WC_CLASS_RELATIONSHIP
   add constraint USER_TO_WCCRT2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table WC_CLASS_RELATIONSHIP
   add constraint WCCS_TO_WCCR1 foreign key (WC_CLS_SUFX_ID)
      references WC_CLASS_SUFFIX (WC_CLS_SUFX_ID)
      on delete restrict on update restrict; 

alter table WC_CLASS_RELATIONSHIP
   add constraint WCCS_TO_WCCR2 foreign key (WC_CLS_SUFX_ID_RLT)
      references WC_CLASS_SUFFIX (WC_CLS_SUFX_ID)
      on delete restrict on update restrict;   

alter table WC_CLASS_SCOPE
   add constraint USER_TO_WCCSCP1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table WC_CLASS_SCOPE
   add constraint USER_TO_WCCSCP2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table WC_CLASS_SCOPE
   add constraint WCCST_TO_WCCSCP foreign key (WC_CLS_SCP_TYP_CD)
      references WC_CLASS_SCOPE_TYPE (WC_CLS_SCP_TYP_CD)
      on delete restrict on update restrict;

alter table WC_CLASS_SCOPE
   add constraint WCCS_TO_WCCSCP foreign key (WC_CLS_SUFX_ID)
      references WC_CLASS_SUFFIX (WC_CLS_SUFX_ID)
      on delete restrict on update restrict;

alter table WC_CLASS_SCOPE_HISTORY
   add constraint USER_TO_WCCSCPH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table WC_CLASS_SCOPE_HISTORY
   add constraint USER_TO_WCCSCPH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table WC_CLASS_SCOPE_HISTORY
   add constraint USER_TO_WCCSCPH3 foreign key (AUDIT_USER_ID_HIST_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table WC_CLASS_SCOPE_HISTORY
   add constraint WCCSCP_TO_WCCSCPH foreign key (WC_CLS_SCP_ID)
      references WC_CLASS_SCOPE (WC_CLS_SCP_ID)
      on delete restrict on update restrict;

alter table WC_CLASS_SCOPE_HISTORY
   add constraint WCCST_TO_WCCSCPH foreign key (WC_CLS_SCP_TYP_CD)
      references WC_CLASS_SCOPE_TYPE (WC_CLS_SCP_TYP_CD)
      on delete restrict on update restrict;

alter table WC_CLASS_SUFFIX
   add constraint USER_TO_WCCS1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table WC_CLASS_SUFFIX
   add constraint USER_TO_WCCS2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table WC_CLASS_SUFFIX
   add constraint WCC_TO_WCCS foreign key (WC_CLS_ID)
      references WC_CLASS (WC_CLS_ID)
      on delete restrict on update restrict;

alter table WC_COVERAGE_PREMIUM
   add constraint PP_TO_WCCP foreign key (PREM_PRD_ID)
      references PREMIUM_PERIOD (PREM_PRD_ID)
      on delete restrict on update restrict;

alter table WC_COVERAGE_PREMIUM
   add constraint RCT_TO_WCCP foreign key (RT_CLS_TYP_CD)
      references RATING_CLASS_TYPE (RT_CLS_TYP_CD)
      on delete restrict on update restrict;

alter table WC_COVERAGE_PREMIUM
   add constraint RISK_TO_WCCP foreign key (RISK_ID)
      references RISK (RISK_ID)
      on delete restrict on update restrict;

alter table WC_COVERAGE_PREMIUM
   add constraint RTT_TO_WCCP foreign key (RT_TYP_CD)
      references RATING_TYPE (RT_TYP_CD)
      on delete restrict on update restrict;

alter table WC_COVERAGE_PREMIUM
   add constraint USER_TO_WCCP1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table WC_COVERAGE_PREMIUM
   add constraint USER_TO_WCCP2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table WC_COVERAGE_PREMIUM
   add constraint WCCS_TO_WCCP foreign key (WC_CLS_SUFX_ID)
      references WC_CLASS_SUFFIX (WC_CLS_SUFX_ID)
      on delete restrict on update restrict;
      
alter table WC_COVERAGE_PREMIUM
   add constraint PTCP_TO_WCCP foreign key (PTCP_ID_COV)
      references PARTICIPATION (PTCP_ID)
      on delete restrict on update restrict;

alter table WC_COVERAGE_PREMIUM_SHELL
   add constraint PP_TO_WCCPS foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table WC_COVERAGE_PREMIUM_SHELL
   add constraint USER_TO_WCCPS1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table WC_COVERAGE_PREMIUM_SHELL
   add constraint USER_TO_WCCPS2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table PERSON_DEGREE_PROF_DSGN
   add constraint PDPD_TO_PSRN foreign key (CUST_ID)
   	references PERSON (CUST_ID)
on delete restrict on update restrict;

alter table PERSON_DEGREE_PROF_DSGN
  add constraint PDPD_TO_DPDT foreign key (DPDT_CD)
references DEGREE_PROFESSIONAL_DSGN_TYP (DPDT_CD)
on delete restrict on update restrict;

alter table PERSON_DEGREE_PROF_DSGN
   add constraint USER_TO_PDPD1  foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table PERSON_DEGREE_PROF_DSGN
   add constraint USER_TO_PDPD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;





ALTER TABLE RATING_VARIABLE ADD CONSTRAINT rvt_to_rv FOREIGN KEY (rt_var_typ_cd) REFERENCES rating_variable_type (rt_var_typ_cd) on delete restrict on update restrict;
ALTER TABLE RATING_VARIABLE ADD CONSTRAINT rb_to_rv FOREIGN KEY (rt_blk_id) REFERENCES rating_block (rt_blk_id) on delete restrict on update restrict;

ALTER TABLE RATING_VARIABLE_RELATIONSHIP ADD CONSTRAINT rv_to_rvr FOREIGN KEY (rt_var_id) REFERENCES rating_variable (rt_var_id) on delete restrict on update restrict;
ALTER TABLE RATING_VARIABLE_RELATIONSHIP ADD CONSTRAINT rv_to_rvrrlt FOREIGN KEY (rt_var_id_rlt) REFERENCES rating_variable (rt_var_id) on delete restrict on update restrict;
ALTER TABLE RATING_VARIABLE_RELATIONSHIP ADD CONSTRAINT rvrt_to_rvr FOREIGN KEY (rt_var_rlt_typ_cd) REFERENCES rating_variable_rlt_typ (rt_var_rlt_typ_cd) on delete restrict on update restrict;

ALTER TABLE RATING_VARIABLE_BEHAVIOR ADD CONSTRAINT rvbt_to_rvb FOREIGN KEY (rt_var_bhvr_typ_cd) REFERENCES rating_variable_behavior_type (rt_var_bhvr_typ_cd) on delete restrict on update restrict;
ALTER TABLE RATING_VARIABLE_BEHAVIOR ADD CONSTRAINT rv_to_rvb FOREIGN KEY (rt_var_id) REFERENCES rating_variable (rt_var_id) on delete restrict on update restrict;

ALTER TABLE RATING_BLOCK ADD CONSTRAINT rbt_to_rb FOREIGN KEY (rt_blk_typ_cd) REFERENCES rating_block_type (rt_blk_typ_cd) on delete restrict on update restrict;

ALTER TABLE RATING_BLOCK_VERSION ADD CONSTRAINT rb_to_rbv FOREIGN KEY (rt_blk_id) REFERENCES rating_block (rt_blk_id) on delete restrict on update restrict;














ALTER TABLE RATING_BLOCK_EXPRESSION ADD CONSTRAINT rv7_to_rbe FOREIGN KEY (rt_var_id_arg7) REFERENCES rating_variable (rt_var_id) on delete restrict on update restrict;
ALTER TABLE RATING_BLOCK_EXPRESSION ADD CONSTRAINT rv15_to_rbe FOREIGN KEY (rt_var_id_arg15) REFERENCES rating_variable (rt_var_id) on delete restrict on update restrict;
ALTER TABLE RATING_BLOCK_EXPRESSION ADD CONSTRAINT rv17_to_rbe FOREIGN KEY (rt_var_id_arg17) REFERENCES rating_variable (rt_var_id) on delete restrict on update restrict;
ALTER TABLE RATING_BLOCK_EXPRESSION ADD CONSTRAINT rv9_to_rbe FOREIGN KEY (rt_var_id_arg9) REFERENCES rating_variable (rt_var_id) on delete restrict on update restrict;
ALTER TABLE RATING_BLOCK_EXPRESSION ADD CONSTRAINT ro_to_rbe FOREIGN KEY (rt_op_id) REFERENCES rating_operation (rt_op_id) on delete restrict on update restrict;
ALTER TABLE RATING_BLOCK_EXPRESSION ADD CONSTRAINT rv10_to_rbe FOREIGN KEY (rt_var_id_arg10) REFERENCES rating_variable (rt_var_id) on delete restrict on update restrict;
ALTER TABLE RATING_BLOCK_EXPRESSION ADD CONSTRAINT rbv_to_rbe FOREIGN KEY (rt_blk_ver_id) REFERENCES rating_block_version (rt_blk_ver_id) on delete restrict on update restrict;
ALTER TABLE RATING_BLOCK_EXPRESSION ADD CONSTRAINT rv18_to_rbe FOREIGN KEY (rt_var_id_arg18) REFERENCES rating_variable (rt_var_id) on delete restrict on update restrict;
ALTER TABLE RATING_BLOCK_EXPRESSION ADD CONSTRAINT rv4_to_rbe FOREIGN KEY (rt_var_id_arg4) REFERENCES rating_variable (rt_var_id) on delete restrict on update restrict;
ALTER TABLE RATING_BLOCK_EXPRESSION ADD CONSTRAINT rv13_to_rbe FOREIGN KEY (rt_var_id_arg13) REFERENCES rating_variable (rt_var_id) on delete restrict on update restrict;
ALTER TABLE RATING_BLOCK_EXPRESSION ADD CONSTRAINT rv5_to_rbe FOREIGN KEY (rt_var_id_arg5) REFERENCES rating_variable (rt_var_id) on delete restrict on update restrict;
ALTER TABLE RATING_BLOCK_EXPRESSION ADD CONSTRAINT rv14_to_rbe FOREIGN KEY (rt_var_id_arg14) REFERENCES rating_variable (rt_var_id) on delete restrict on update restrict;
ALTER TABLE RATING_BLOCK_EXPRESSION ADD CONSTRAINT rv1_to_rbe FOREIGN KEY (rt_var_id_arg1) REFERENCES rating_variable (rt_var_id) on delete restrict on update restrict;
ALTER TABLE RATING_BLOCK_EXPRESSION ADD CONSTRAINT rv2_to_rbe FOREIGN KEY (rt_var_id_arg2) REFERENCES rating_variable (rt_var_id) on delete restrict on update restrict;
ALTER TABLE RATING_BLOCK_EXPRESSION ADD CONSTRAINT rv11_to_rbe FOREIGN KEY (rt_var_id_arg11) REFERENCES rating_variable (rt_var_id) on delete restrict on update restrict;
ALTER TABLE RATING_BLOCK_EXPRESSION ADD CONSTRAINT rv6_to_rbe FOREIGN KEY (rt_var_id_arg6) REFERENCES rating_variable (rt_var_id) on delete restrict on update restrict;
ALTER TABLE RATING_BLOCK_EXPRESSION ADD CONSTRAINT rv16_to_rbe FOREIGN KEY (rt_var_id_arg16) REFERENCES rating_variable (rt_var_id) on delete restrict on update restrict;
ALTER TABLE RATING_BLOCK_EXPRESSION ADD CONSTRAINT rv3_to_rbe FOREIGN KEY (rt_var_id_arg3) REFERENCES rating_variable (rt_var_id) on delete restrict on update restrict;
ALTER TABLE RATING_BLOCK_EXPRESSION ADD CONSTRAINT rv19_to_rbe FOREIGN KEY (rt_var_id_arg19) REFERENCES rating_variable (rt_var_id) on delete restrict on update restrict;
ALTER TABLE RATING_BLOCK_EXPRESSION ADD CONSTRAINT rv8_to_rbe FOREIGN KEY (rt_var_id_arg8) REFERENCES rating_variable (rt_var_id) on delete restrict on update restrict;
ALTER TABLE RATING_BLOCK_EXPRESSION ADD CONSTRAINT rv12_to_rbe FOREIGN KEY (rt_var_id_arg12) REFERENCES rating_variable (rt_var_id) on delete restrict on update restrict;
ALTER TABLE RATING_BLOCK_EXPRESSION ADD CONSTRAINT rv20_to_rbe FOREIGN KEY (rt_var_id_arg20) REFERENCES rating_variable (rt_var_id) on delete restrict on update restrict;
ALTER TABLE RATING_BLOCK_EXPRESSION ADD CONSTRAINT rv_to_rbe FOREIGN KEY (rt_var_id_asgn) REFERENCES rating_variable (rt_var_id) on delete restrict on update restrict;


ALTER TABLE RATING_ASSEMBLY ADD CONSTRAINT lmicx_to_ra FOREIGN KEY (lmicx_id) REFERENCES lob_market_insurance_cmpy_xref (lmicx_id) on delete restrict on update restrict;
ALTER TABLE RATING_ASSEMBLY ADD CONSTRAINT jt_to_ra FOREIGN KEY (jur_typ_cd) REFERENCES jurisdiction_type (jur_typ_cd) on delete restrict on update restrict;
ALTER TABLE RATING_ASSEMBLY ADD CONSTRAINT at_to_ra FOREIGN KEY (agre_typ_cd) REFERENCES agreement_type (agre_typ_cd) on delete restrict on update restrict;

ALTER TABLE RATING_ASMBL_RT_ASMBL_VER_XREF ADD CONSTRAINT ra_to_raravx FOREIGN KEY (rt_asmbl_id) REFERENCES rating_assembly (rt_asmbl_id) on delete restrict on update restrict;
ALTER TABLE RATING_ASMBL_RT_ASMBL_VER_XREF ADD CONSTRAINT rav_to_raravx FOREIGN KEY (RT_ASMBL_VER_ID) REFERENCES RATING_ASSEMBLY_VERSION (RT_ASMBL_VER_ID) on delete restrict on update restrict;

ALTER TABLE RATING_ASSEMBLY_BLOCK ADD CONSTRAINT rav_to_rab FOREIGN KEY (rt_asmbl_ver_id) REFERENCES rating_assembly_version (rt_asmbl_ver_id) on delete restrict on update restrict;
ALTER TABLE RATING_ASSEMBLY_BLOCK ADD CONSTRAINT rb_to_rab FOREIGN KEY (rt_blk_id) REFERENCES rating_block (rt_blk_id) on delete restrict on update restrict;


alter table FEE_SCHEDULE
   add constraint LOBT_TO_FS foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;      
      
alter table FEE_SCHEDULE
   add constraint JT_TO_FS foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;  

alter table FEE_SCHEDULE
   add constraint CUST_TO_FS foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;    
      


alter table YMA_SECTION_TYPE
   add constraint CCTYP_TO_YST foreign key (CST_CNTR_TYP_CD)
	  references COST_CENTER_TYPE (CST_CNTR_TYP_CD)
      on delete restrict on update restrict;


alter table YMA
   add constraint YST_TO_YMA foreign key (yma_sctn_typ_cd)
	  references YMA_SECTION_TYPE (yma_sctn_typ_cd)
      on delete restrict on update restrict;
alter table HCPC_SECTION_TYPE
   add constraint CCTYP_TO_HCPCST foreign key (CST_CNTR_TYP_CD)
	  references COST_CENTER_TYPE (CST_CNTR_TYP_CD)
      on delete restrict on update restrict;

alter table CDT_SECTION_TYPE
   add constraint CCTYP_TO_CDTST foreign key (CST_CNTR_TYP_CD)
	  references COST_CENTER_TYPE (CST_CNTR_TYP_CD)
      on delete restrict on update restrict;

alter table CPT_SECTION_TYPE
   add constraint CCTYP_TO_CPTST foreign key (CST_CNTR_TYP_CD)
	  references COST_CENTER_TYPE (CST_CNTR_TYP_CD)
      on delete restrict on update restrict;

alter table SERVICE_CODE_COST_CENTER_XREF
   add constraint CCTYP_TO_SCCCX foreign key (CST_CNTR_TYP_CD)
	  references COST_CENTER_TYPE (CST_CNTR_TYP_CD)
      on delete restrict on update restrict;

alter table SERVICE_CODE_COST_CENTER_XREF
   add constraint BLICT_TO_SCCCX foreign key (bill_ln_item_cd_typ_cd)
	  references BILL_LINE_ITEM_CODE_TYPE (bill_ln_item_cd_typ_cd)
      on delete restrict on update restrict;

ALTER TABLE DRG ADD CONSTRAINT MDCT_TO_DRG FOREIGN KEY (mdc_typ_cd) REFERENCES MDC_TYPE (mdc_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE DRG	ADD CONSTRAINT DRGT_TO_DRG FOREIGN KEY (drg_typ_cd) REFERENCES DRG_TYPE (drg_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE HCPC ADD CONSTRAINT HCPCST_TO_HCPC FOREIGN KEY (hcpc_sctn_typ_cd) REFERENCES HCPC_SECTION_TYPE (hcpc_sctn_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CDT ADD CONSTRAINT CDTST_TO_CMNDT FOREIGN KEY (cdt_sctn_typ_cd) REFERENCES CDT_SECTION_TYPE (cdt_sctn_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CPT ADD CONSTRAINT CPTST_TO_CMNPT FOREIGN KEY (cpt_sctn_typ_cd) REFERENCES CPT_SECTION_TYPE (cpt_sctn_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE MODIFIER ADD CONSTRAINT BLICT_TO_MOD FOREIGN KEY (bill_ln_item_cd_typ_cd) REFERENCES BILL_LINE_ITEM_CODE_TYPE (bill_ln_item_cd_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL ADD CONSTRAINT AGRE_TO_BILL FOREIGN KEY (agre_id) REFERENCES AGREEMENT (AGRE_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL ADD CONSTRAINT BEST_TO_BILL FOREIGN KEY (BILL_EDI_SRC_TYP_CD) REFERENCES BILL_EDI_SOURCE_TYPE (BILL_EDI_SRC_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL ADD CONSTRAINT CUST_TO_BILL4 FOREIGN KEY (BILL_SECD_PAYE_CUST_ID) REFERENCES CUSTOMER (CUST_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL ADD CONSTRAINT CUST_TO_BILL3 FOREIGN KEY (cust_id_facil_prov) REFERENCES CUSTOMER (CUST_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL ADD CONSTRAINT CUST_TO_BILL2 FOREIGN KEY (cust_id_serv_prov) REFERENCES CUSTOMER (CUST_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL ADD CONSTRAINT CUST_TO_BILL1 FOREIGN KEY (cust_id_bill_prov) REFERENCES CUSTOMER (CUST_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL ADD CONSTRAINT USER_TO_BILL1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL ADD CONSTRAINT USER_TO_BILL2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_HISTORY ADD CONSTRAINT BILL_TO_BILLH FOREIGN KEY (BILL_ID) REFERENCES BILL (BILL_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_HISTORY ADD CONSTRAINT AGRE_TO_BILLH FOREIGN KEY (agre_id) REFERENCES AGREEMENT (AGRE_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_HISTORY ADD CONSTRAINT BEST_TO_BILLH FOREIGN KEY (BILL_EDI_SRC_TYP_CD) REFERENCES BILL_EDI_SOURCE_TYPE (BILL_EDI_SRC_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_HISTORY ADD CONSTRAINT CUST_TO_BILLH4 FOREIGN KEY (BILL_SECD_PAYE_CUST_ID) REFERENCES CUSTOMER (CUST_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_HISTORY ADD CONSTRAINT CUST_TO_BILLH3 FOREIGN KEY (cust_id_facil_prov) REFERENCES CUSTOMER (CUST_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_HISTORY ADD CONSTRAINT CUST_TO_BILLH2 FOREIGN KEY (cust_id_serv_prov) REFERENCES CUSTOMER (CUST_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_HISTORY ADD CONSTRAINT CUST_TO_BILLH1 FOREIGN KEY (cust_id_bill_prov) REFERENCES CUSTOMER (CUST_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_HISTORY ADD CONSTRAINT USER_TO_BILLH1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_HISTORY ADD CONSTRAINT USER_TO_BILLH2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_FORMAT_TYPE ADD CONSTRAINT BLIT_TO_BILLFT FOREIGN KEY (bill_ln_item_typ_cd_dflt) REFERENCES BILL_LINE_ITEM_TYPE (bill_ln_item_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE ADD CONSTRAINT BILL_TO_BC FOREIGN KEY (bill_id) REFERENCES BILL (bill_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE ADD CONSTRAINT PREQS_TO_BC FOREIGN KEY (pay_reqs_id) REFERENCES PAYMENT_REQUEST (pay_reqs_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE ADD CONSTRAINT BILLST_TO_BC FOREIGN KEY (bill_src_typ_cd) REFERENCES BILL_SOURCE_TYPE (bill_src_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE ADD CONSTRAINT BILLMT_TO_BC FOREIGN KEY (bill_meda_typ_cd) REFERENCES BILL_MEDIA_TYPE (bill_meda_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE ADD CONSTRAINT BILLFT_TO_BC FOREIGN KEY (bill_frmt_typ_cd) REFERENCES BILL_FORMAT_TYPE (bill_frmt_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE ADD CONSTRAINT BFTAT_TO_BC FOREIGN KEY (bill_fast_trk_actn_typ_cd) REFERENCES BILL_FAST_TRACK_ACTION_TYPE (bill_fast_trk_actn_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE ADD CONSTRAINT BFTART_TO_BC FOREIGN KEY (bftart_cd) REFERENCES BILL_FAST_TRACK_ACTION_RSN_TYP (bftart_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE ADD CONSTRAINT CCTYP_TO_BC FOREIGN KEY (cst_cntr_typ_cd) REFERENCES COST_CENTER_TYPE (cst_cntr_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE ADD CONSTRAINT PAYT_TO_BC FOREIGN KEY (pay_typ_cd) REFERENCES PAYMENT_TYPE (PAY_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE ADD CONSTRAINT USER_TO_BC1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE ADD CONSTRAINT USER_TO_BC2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_HISTORY ADD CONSTRAINT BC_TO_BCH FOREIGN KEY (BILL_CYC_ID) REFERENCES BILL_CYCLE (BILL_CYC_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_HISTORY ADD CONSTRAINT BILL_TO_BCH FOREIGN KEY (bill_id) REFERENCES BILL (bill_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_HISTORY ADD CONSTRAINT PREQS_TO_BCH FOREIGN KEY (pay_reqs_id) REFERENCES PAYMENT_REQUEST (pay_reqs_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_HISTORY ADD CONSTRAINT BILLST_TO_BCH FOREIGN KEY (bill_src_typ_cd) REFERENCES BILL_SOURCE_TYPE (bill_src_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_HISTORY ADD CONSTRAINT BILLMT_TO_BCH FOREIGN KEY (bill_meda_typ_cd) REFERENCES BILL_MEDIA_TYPE (bill_meda_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_HISTORY ADD CONSTRAINT BILLFT_TO_BCH FOREIGN KEY (bill_frmt_typ_cd) REFERENCES BILL_FORMAT_TYPE (bill_frmt_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_HISTORY ADD CONSTRAINT BFTAT_TO_BCH FOREIGN KEY (bill_fast_trk_actn_typ_cd) REFERENCES BILL_FAST_TRACK_ACTION_TYPE (bill_fast_trk_actn_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_HISTORY ADD CONSTRAINT BFTART_TO_BCH FOREIGN KEY (bftart_cd) REFERENCES BILL_FAST_TRACK_ACTION_RSN_TYP (bftart_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_HISTORY ADD CONSTRAINT CCTYP_TO_BCH FOREIGN KEY (cst_cntr_typ_cd) REFERENCES COST_CENTER_TYPE (cst_cntr_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_HISTORY ADD CONSTRAINT PAYT_TO_BCH FOREIGN KEY (pay_typ_cd) REFERENCES PAYMENT_TYPE (PAY_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_HISTORY ADD CONSTRAINT USER_TO_BCH1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_HISTORY ADD CONSTRAINT USER_TO_BCH2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_STATUS ADD CONSTRAINT BC_TO_BCSTS FOREIGN KEY (BILL_CYC_ID) REFERENCES BILL_CYCLE (BILL_CYC_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_STATUS ADD CONSTRAINT BSTST_TO_BCSTS FOREIGN KEY (bill_sts_typ_cd) REFERENCES BILL_STATUS_TYPE (bill_sts_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_STATUS ADD CONSTRAINT BSTTT_TO_BCSTS FOREIGN KEY (bill_stt_typ_cd) REFERENCES BILL_STATE_TYPE (bill_stt_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_STATUS ADD CONSTRAINT BTRT_TO_BCSTS FOREIGN KEY (bill_trans_rsn_typ_cd) REFERENCES BILL_TRANSITION_REASON_TYPE (bill_trans_rsn_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_STATUS ADD CONSTRAINT USER_TO_BCSTS1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_STATUS ADD CONSTRAINT USER_TO_BCSTS2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_STATUS_HISTORY ADD CONSTRAINT BC_TO_BCSTSH FOREIGN KEY (BILL_CYC_ID) REFERENCES BILL_CYCLE (BILL_CYC_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_STATUS_HISTORY ADD CONSTRAINT BSTST_TO_BCSTSH FOREIGN KEY (bill_sts_typ_cd) REFERENCES BILL_STATUS_TYPE (bill_sts_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_STATUS_HISTORY ADD CONSTRAINT BSTTT_TO_BCSTSH FOREIGN KEY (bill_stt_typ_cd) REFERENCES BILL_STATE_TYPE (bill_stt_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_STATUS_HISTORY ADD CONSTRAINT BTRT_TO_BCSTSH FOREIGN KEY (bill_trans_rsn_typ_cd) REFERENCES BILL_TRANSITION_REASON_TYPE (bill_trans_rsn_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_STATUS_HISTORY ADD CONSTRAINT USER_TO_BCSTSH1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_STATUS_HISTORY ADD CONSTRAINT USER_TO_BCSTSH2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_DIAGNOSIS ADD CONSTRAINT BC_TO_BILLD FOREIGN KEY (BILL_CYC_ID) REFERENCES BILL_CYCLE (BILL_CYC_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_DIAGNOSIS ADD CONSTRAINT USER_TO_BILLD2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_DIAGNOSIS ADD CONSTRAINT USER_TO_BILLD1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_DIAGNOSIS_HISTORY ADD CONSTRAINT BILLD_TO_BILLDH FOREIGN KEY (BILL_DIAG_ID) REFERENCES BILL_DIAGNOSIS (BILL_DIAG_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_DIAGNOSIS_HISTORY ADD CONSTRAINT BC_TO_BILLDH FOREIGN KEY (BILL_CYC_ID) REFERENCES BILL_CYCLE (BILL_CYC_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_DIAGNOSIS_HISTORY ADD CONSTRAINT USER_TO_BILLDH2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_DIAGNOSIS_HISTORY ADD CONSTRAINT USER_TO_BILLDH1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_PROCEDURE ADD CONSTRAINT PCT_TO_BP FOREIGN KEY (proc_cd_typ_cd) REFERENCES PROCEDURE_CODE_TYPE (proc_cd_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_PROCEDURE ADD CONSTRAINT BILLC_TO_BP FOREIGN KEY (bill_cyc_id) REFERENCES BILL_CYCLE (bill_cyc_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_PROCEDURE ADD CONSTRAINT USER_TO_BP2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_PROCEDURE ADD CONSTRAINT USER_TO_BP1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_PROCEDURE_HISTORY ADD CONSTRAINT BP_TO_BPH FOREIGN KEY (BILL_PROC_ID) REFERENCES BILL_PROCEDURE (BILL_PROC_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_PROCEDURE_HISTORY ADD CONSTRAINT PCT_TO_BPH FOREIGN KEY (proc_cd_typ_cd) REFERENCES PROCEDURE_CODE_TYPE (proc_cd_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_PROCEDURE_HISTORY ADD CONSTRAINT BILLC_TO_BPH FOREIGN KEY (bill_cyc_id) REFERENCES BILL_CYCLE (bill_cyc_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_PROCEDURE_HISTORY ADD CONSTRAINT USER_TO_BPH2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_PROCEDURE_HISTORY ADD CONSTRAINT USER_TO_BPH1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_ADJUSTMENT ADD CONSTRAINT BC_TO_BA FOREIGN KEY (bill_cyc_id) REFERENCES BILL_CYCLE (bill_cyc_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_ADJUSTMENT ADD CONSTRAINT BAT_TO_BA FOREIGN KEY (bill_adj_typ_cd) REFERENCES BILL_ADJUSTMENT_TYPE (bill_adj_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_ADJUSTMENT ADD CONSTRAINT USER_TO_BA2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_ADJUSTMENT ADD CONSTRAINT USER_TO_BA1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_ADJUSTMENT_LINE_ITEM ADD CONSTRAINT BLI_TO_BALITO FOREIGN KEY (bill_ln_item_id_to) REFERENCES BILL_LINE_ITEM (bill_ln_item_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_ADJUSTMENT_LINE_ITEM ADD CONSTRAINT BLI_TO_BALIFR FOREIGN KEY (bill_ln_item_id_fr) REFERENCES BILL_LINE_ITEM (bill_ln_item_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_ADJUSTMENT_LINE_ITEM ADD CONSTRAINT BA_TO_BALI FOREIGN KEY (bill_adj_id) REFERENCES BILL_ADJUSTMENT (bill_adj_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_ADJUSTMENT_LINE_ITEM ADD CONSTRAINT USER_TO_BALI1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_ADJUSTMENT_LINE_ITEM ADD CONSTRAINT USER_TO_BALI2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM ADD CONSTRAINT BLIT_TO_BLI1 FOREIGN KEY (bill_ln_item_typ_cd) REFERENCES BILL_LINE_ITEM_TYPE (bill_ln_item_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM ADD CONSTRAINT BLICT_TO_BLI2 FOREIGN KEY (bill_ln_item_cd_typ_cd_secd) REFERENCES BILL_LINE_ITEM_CODE_TYPE (bill_ln_item_cd_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM ADD CONSTRAINT BLICT_TO_BLI1 FOREIGN KEY (bill_ln_item_cd_typ_cd_pri) REFERENCES BILL_LINE_ITEM_CODE_TYPE (bill_ln_item_cd_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM ADD CONSTRAINT BC_TO_BLI FOREIGN KEY (bill_cyc_id) REFERENCES BILL_CYCLE (bill_cyc_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM ADD CONSTRAINT PAYT_TO_BLI FOREIGN KEY (pay_typ_cd) REFERENCES PAYMENT_TYPE (PAY_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM ADD CONSTRAINT PIT_TO_BLI FOREIGN KEY (prov_id_typ_cd) REFERENCES PROVIDER_IDENTIFIER_TYPE (prov_id_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM ADD CONSTRAINT CCTYP_TO_BLI FOREIGN KEY (cst_cntr_typ_cd) REFERENCES COST_CENTER_TYPE (cst_cntr_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM ADD CONSTRAINT USER_TO_BLI1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM ADD CONSTRAINT USER_TO_BLI2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_HISTORY ADD CONSTRAINT BLI_TO_BLIH FOREIGN KEY (BILL_LN_ITEM_ID) REFERENCES BILL_LINE_ITEM (BILL_LN_ITEM_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_HISTORY ADD CONSTRAINT BLIT_TO_BLIH1 FOREIGN KEY (bill_ln_item_typ_cd) REFERENCES BILL_LINE_ITEM_TYPE (bill_ln_item_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_HISTORY ADD CONSTRAINT BLICT_TO_BLIH2 FOREIGN KEY (bill_ln_item_cd_typ_cd_secd) REFERENCES BILL_LINE_ITEM_CODE_TYPE (bill_ln_item_cd_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_HISTORY ADD CONSTRAINT BLICT_TO_BLIH1 FOREIGN KEY (bill_ln_item_cd_typ_cd_pri) REFERENCES BILL_LINE_ITEM_CODE_TYPE (bill_ln_item_cd_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_HISTORY ADD CONSTRAINT BC_TO_BLIH FOREIGN KEY (bill_cyc_id) REFERENCES BILL_CYCLE (bill_cyc_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_HISTORY ADD CONSTRAINT PAYT_TO_BLIH FOREIGN KEY (pay_typ_cd) REFERENCES PAYMENT_TYPE (PAY_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_HISTORY ADD CONSTRAINT PIT_TO_BLIH FOREIGN KEY (prov_id_typ_cd) REFERENCES PROVIDER_IDENTIFIER_TYPE (prov_id_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_HISTORY ADD CONSTRAINT CCTYP_TO_BLIH FOREIGN KEY (cst_cntr_typ_cd) REFERENCES COST_CENTER_TYPE (cst_cntr_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_HISTORY ADD CONSTRAINT USER_TO_BLIH1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_HISTORY ADD CONSTRAINT USER_TO_BLIH2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_DIAGNOSIS ADD CONSTRAINT BLI_TO_BLID FOREIGN KEY (BILL_LN_ITEM_ID) REFERENCES BILL_LINE_ITEM (BILL_LN_ITEM_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_DIAGNOSIS ADD CONSTRAINT BILLD_TO_BLID FOREIGN KEY (BILL_DIAG_ID) REFERENCES BILL_DIAGNOSIS (BILL_DIAG_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_DIAGNOSIS ADD CONSTRAINT USER_TO_BLID1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_DIAGNOSIS ADD CONSTRAINT USER_TO_BLID2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_DIAGNOSIS_HIST ADD CONSTRAINT BLID_TO_BLIDH FOREIGN KEY (BILL_LN_ITEM_DIAG_ID) REFERENCES BILL_LINE_ITEM_DIAGNOSIS (BILL_LN_ITEM_DIAG_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_DIAGNOSIS_HIST ADD CONSTRAINT BLI_TO_BLIDH FOREIGN KEY (BILL_LN_ITEM_ID) REFERENCES BILL_LINE_ITEM (BILL_LN_ITEM_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_DIAGNOSIS_HIST ADD CONSTRAINT BILLD_TO_BLIDH FOREIGN KEY (BILL_DIAG_ID) REFERENCES BILL_DIAGNOSIS (BILL_DIAG_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_DIAGNOSIS_HIST ADD CONSTRAINT USER_TO_BLIDH1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_DIAGNOSIS_HIST ADD CONSTRAINT USER_TO_BLIDH2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE BILL_LINE_ITEM_MODIFIER_SECD ADD CONSTRAINT BLI_TO_BLIMS FOREIGN KEY (bill_ln_item_id) REFERENCES BILL_LINE_ITEM (bill_ln_item_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_MODIFIER_SECD ADD CONSTRAINT USER_TO_BLIMS2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_MODIFIER_SECD ADD CONSTRAINT USER_TO_BLIMS1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_MOD_SECD_HIST ADD CONSTRAINT BLIMS_TO_BLIMSH FOREIGN KEY (BILL_LN_ITEM_MOD_SECD_ID) REFERENCES BILL_LINE_ITEM_MODIFIER_SECD (BILL_LN_ITEM_MOD_SECD_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_MOD_SECD_HIST ADD CONSTRAINT BLI_TO_BLIMSH FOREIGN KEY (bill_ln_item_id) REFERENCES BILL_LINE_ITEM (bill_ln_item_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_MOD_SECD_HIST ADD CONSTRAINT USER_TO_BLIMSH2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_MOD_SECD_HIST ADD CONSTRAINT USER_TO_BLIMSH1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_MODIFIER_PRI ADD CONSTRAINT BLI_TO_BLIMP FOREIGN KEY (bill_ln_item_id) REFERENCES BILL_LINE_ITEM (bill_ln_item_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_MODIFIER_PRI ADD CONSTRAINT USER_TO_BLIMP1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_MODIFIER_PRI ADD CONSTRAINT USER_TO_BLIMP2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_MOD_PRI_HIST ADD CONSTRAINT BLIMP_TO_BLIMPH FOREIGN KEY (BILL_LN_ITEM_MOD_PRI_ID) REFERENCES BILL_LINE_ITEM_MODIFIER_PRI (BILL_LN_ITEM_MOD_PRI_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_MOD_PRI_HIST ADD CONSTRAINT BLI_TO_BLIMPH FOREIGN KEY (bill_ln_item_id) REFERENCES BILL_LINE_ITEM (bill_ln_item_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_MOD_PRI_HIST ADD CONSTRAINT USER_TO_BLIMPH1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_MOD_PRI_HIST ADD CONSTRAINT USER_TO_BLIMPH2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_EOB ADD CONSTRAINT BLI_TO_BLIE FOREIGN KEY (BILL_LN_ITEM_ID) REFERENCES BILL_LINE_ITEM (BILL_LN_ITEM_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_EOB ADD CONSTRAINT EGT_TO_BLIE FOREIGN KEY (EOB_GRP_TYP_CD) REFERENCES EOB_GROUP_TYPE (EOB_GRP_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_EOB ADD CONSTRAINT USER_TO_BLIE1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_EOB ADD CONSTRAINT USER_TO_BLIE2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_EOB_HISTORY ADD CONSTRAINT BLIE_TO_BLIEH FOREIGN KEY (BILL_LN_ITEM_EOB_ID) REFERENCES BILL_LINE_ITEM_EOB (BILL_LN_ITEM_EOB_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_EOB_HISTORY ADD CONSTRAINT BLI_TO_BLIEH FOREIGN KEY (BILL_LN_ITEM_ID) REFERENCES BILL_LINE_ITEM (BILL_LN_ITEM_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_EOB_HISTORY ADD CONSTRAINT EGT_TO_BLIEH FOREIGN KEY (EOB_GRP_TYP_CD) REFERENCES EOB_GROUP_TYPE (EOB_GRP_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_EOB_HISTORY ADD CONSTRAINT USER_TO_BLIEH1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_EOB_HISTORY ADD CONSTRAINT USER_TO_BLIEH2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_CODE_XREF ADD CONSTRAINT BLIT_TO_BLICX FOREIGN KEY (bill_ln_item_typ_cd) REFERENCES BILL_LINE_ITEM_TYPE (bill_ln_item_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_CODE_XREF ADD CONSTRAINT BLICT_TO_BLICX FOREIGN KEY (bill_ln_item_cd_typ_cd) REFERENCES BILL_LINE_ITEM_CODE_TYPE (bill_ln_item_cd_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE EOB ADD CONSTRAINT EGT_TO_EOB FOREIGN KEY (EOB_GRP_TYP_CD) REFERENCES EOB_GROUP_TYPE (eob_grp_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE EOB_GROUP_TYPE ADD CONSTRAINT ECT_TO_EGT FOREIGN KEY (EOB_CLS_TYP_CD) REFERENCES EOB_CLASSIFICATION_TYPE (EOB_CLS_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_STATUS_STATE_XREF ADD CONSTRAINT BSTST_TO_BSSX FOREIGN KEY (bill_sts_typ_cd) REFERENCES BILL_STATUS_TYPE (bill_sts_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_STATUS_STATE_XREF ADD CONSTRAINT BSTTT_TO_BSSX FOREIGN KEY (bill_stt_typ_cd) REFERENCES BILL_STATE_TYPE (bill_stt_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_STS_STT_ACTN_TRN_RSN_XREF ADD CONSTRAINT BSSAT_TO_BSSATRX FOREIGN KEY (bill_sts_stt_actn_typ_cd) REFERENCES BILL_STATUS_STATE_ACTION_TYPE (bill_sts_stt_actn_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_STS_STT_ACTN_TRN_RSN_XREF ADD CONSTRAINT BTRT_TO_BSSATRX FOREIGN KEY (bill_trans_rsn_typ_cd) REFERENCES BILL_TRANSITION_REASON_TYPE (bill_trans_rsn_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_STS_STT_ACTN_TRANS_XREF ADD CONSTRAINT BSSAT_TO_BSSATX FOREIGN KEY (bill_sts_stt_actn_typ_cd) REFERENCES BILL_STATUS_STATE_ACTION_TYPE (bill_sts_stt_actn_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_STS_STT_ACTN_TRANS_XREF ADD CONSTRAINT BSSX_TO_BSSATXTO FOREIGN KEY (bill_sts_stt_xref_id_to) REFERENCES BILL_STATUS_STATE_XREF (bill_sts_stt_xref_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_STS_STT_ACTN_TRANS_XREF ADD CONSTRAINT BSSX_TO_BSSATXFR FOREIGN KEY (bill_sts_stt_xref_id_fr) REFERENCES BILL_STATUS_STATE_XREF (bill_sts_stt_xref_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_STS_STT_ACTN_TRANS_XREF ADD CONSTRAINT BTRT_TO_BSSATX FOREIGN KEY (bill_trans_rsn_typ_cd_sys_dflt) REFERENCES BILL_TRANSITION_REASON_TYPE (bill_trans_rsn_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_CODE_TYPE ADD CONSTRAINT BLIT_TO_BLICT FOREIGN KEY (bill_ln_item_typ_cd_dflt) REFERENCES BILL_LINE_ITEM_TYPE (bill_ln_item_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
alter table BILL_LINE_ITEM_CODE_TYPE
   add constraint CCTYP_TO_blict foreign key (CST_CNTR_TYP_CD)
	  references COST_CENTER_TYPE (CST_CNTR_TYP_CD)
      on delete restrict on update restrict;
ALTER TABLE BILL_FAST_TRACK_ACTION_RSN_TYP ADD CONSTRAINT BFTAT_TO_BFTART FOREIGN KEY (bill_fast_trk_actn_typ_cd) REFERENCES BILL_FAST_TRACK_ACTION_TYPE (bill_fast_trk_actn_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_EOB_SUMMARY ADD CONSTRAINT BC_TO_BCES FOREIGN KEY (BILL_CYC_ID) REFERENCES BILL_CYCLE (BILL_CYC_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_EOB_SUMMARY ADD CONSTRAINT USER_TO_BCES2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_EOB_SUMMARY ADD CONSTRAINT USER_TO_BCES1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_EOB_SUMMARY ADD CONSTRAINT CCT_TO_BCES3 FOREIGN KEY(CST_CNTR_TYP_CD) REFERENCES COST_CENTER_TYPE(CST_CNTR_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_EOB_SUMMARY_HISTORY ADD CONSTRAINT BCES_TO_BCESH FOREIGN KEY (BILL_CYC_EOB_SUM_ID) REFERENCES BILL_CYCLE_EOB_SUMMARY (BILL_CYC_EOB_SUM_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_EOB_SUMMARY_HISTORY ADD CONSTRAINT BC_TO_BCESH FOREIGN KEY (BILL_CYC_ID) REFERENCES BILL_CYCLE (BILL_CYC_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_EOB_SUMMARY_HISTORY ADD CONSTRAINT USER_TO_BCESH2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_EOB_SUMMARY_HISTORY ADD CONSTRAINT USER_TO_BCESH1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_EOB_SUMMARY_HISTORY ADD CONSTRAINT CCT_TO_BCESH3 FOREIGN KEY(CST_CNTR_TYP_CD) REFERENCES COST_CENTER_TYPE(CST_CNTR_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_EOB ADD CONSTRAINT EGT_TO_BCE FOREIGN KEY (EOB_GRP_TYP_CD) REFERENCES EOB_GROUP_TYPE (EOB_GRP_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_EOB ADD CONSTRAINT BCEOBS_TO_BCE FOREIGN KEY (BILL_CYC_EOB_SUM_ID) REFERENCES BILL_CYCLE_EOB_SUMMARY (BILL_CYC_EOB_SUM_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_EOB ADD CONSTRAINT USER_TO_BCE2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_EOB ADD CONSTRAINT USER_TO_BCE1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_EOB_HIST ADD CONSTRAINT BCE_TO_BCEH FOREIGN KEY (BILL_CYC_EOB_ID) REFERENCES BILL_CYCLE_EOB (BILL_CYC_EOB_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_EOB_HIST ADD CONSTRAINT EGT_TO_BCEH FOREIGN KEY (EOB_GRP_TYP_CD) REFERENCES EOB_GROUP_TYPE (EOB_GRP_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_EOB_HIST ADD CONSTRAINT BCEOBS_TO_BCEH FOREIGN KEY (BILL_CYC_EOB_SUM_ID) REFERENCES BILL_CYCLE_EOB_SUMMARY (BILL_CYC_EOB_SUM_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_EOB_HIST ADD CONSTRAINT USER_TO_BCEH2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_CYCLE_EOB_HIST ADD CONSTRAINT USER_TO_BCEH1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;


alter table ROLE_AGENT_AGENCY
   add constraint AGYT_TO_RAA foreign key (AGY_TYP_CD)
      references AGENCY_TYPE (AGY_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_AGENT_AGENCY
   add constraint CR_TO_RAA foreign key (ROLE_ID)
      references CUSTOMER_ROLE (ROLE_ID)
      on delete restrict on update restrict;

alter table ROLE_AGENT_AGENCY
   add constraint REGT_TO_RAA foreign key (RGN_TYP_CD)
      references REGION_TYPE (RGN_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_AGENT_AGENCY
   add constraint USER_TO_RAA1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_AGENT_AGENCY
   add constraint USER_TO_RAA2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_AGENT_AGY_LOB
   add constraint RAAL_TO_RAAL foreign key (ROLE_AGNT_AGY_ID)
      references ROLE_AGENT_AGENCY (ROLE_AGNT_AGY_ID)
      on delete restrict on update restrict;

alter table ROLE_AGENT_AGY_LOB
   add constraint LOBT_TO_RAAL foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_AGENT_AGY_LOB
   add constraint AST_TO_RAAL foreign key (APNT_STS_TYP_CD)
      references APPOINTMENT_STATUS_TYPE (APNT_STS_TYP_CD)
      on delete restrict on update restrict;


alter table ROLE_AGENT_AGY_LOB
   add constraint ASRT_TO_RAAL foreign key (APNT_STS_RSN_TYP_CD)
      references APPOINTMENT_STATUS_REASON_TYPE (APNT_STS_RSN_TYP_CD)
      on delete restrict on update restrict;


alter table ROLE_AGENT_AGY_LOB
   add constraint USER_TO_RAAL1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_AGENT_AGY_LOB
   add constraint USER_TO_RAAL2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table ROLE_AGENT_LICENSE_INFORMATION
   add constraint RAAL_TO_RALI foreign key (RAAL_ID)
      references ROLE_AGENT_AGY_LOB (RAAL_ID)
      on delete restrict on update restrict;

alter table ROLE_AGENT_LICENSE_INFORMATION
   add constraint STT_TO_RALI foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table ROLE_AGENT_LICENSE_INFORMATION
   add constraint RSDNCT_TO_RALI foreign key (RSDNC_TYP_CD)
      references RESIDENCY_TYPE (RSDNC_TYP_CD)
      on delete restrict on update restrict;
      
alter table ROLE_AGENT_LICENSE_INFORMATION
   add constraint USER_TO_RALI1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_AGENT_LICENSE_INFORMATION
   add constraint USER_TO_RALI2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

ALTER TABLE FINANCIAL_TRANSACTION_CLASS
   ADD CONSTRAINT AGRET_TO_FTC FOREIGN KEY (AGRE_TYP_CD)
      REFERENCES AGREEMENT_TYPE (AGRE_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE FINANCIAL_TRANSACTION_FILTER
   ADD CONSTRAINT AGRET_TO_FTF FOREIGN KEY (AGRE_TYP_CD)
      REFERENCES AGREEMENT_TYPE (AGRE_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE FINANCIAL_TRANSACTION_FILTER
   ADD CONSTRAINT FTC_TO_FTF FOREIGN KEY (FNCL_TRAN_CLS_ID)
      REFERENCES FINANCIAL_TRANSACTION_CLASS (FNCL_TRAN_CLS_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE FINANCIAL_TRANSACTION_TYPE
   ADD CONSTRAINT AGRET_TO_FTT FOREIGN KEY (AGRE_TYP_CD)
      REFERENCES AGREEMENT_TYPE (AGRE_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE FINANCIAL_TRANSACTION_TYPE
   ADD CONSTRAINT GLAT_TO_FTT FOREIGN KEY (GNRL_LDGR_ACCT_TYP_CD)
      REFERENCES GENERAL_LEDGER_ACCOUNT_TYPE (GNRL_LDGR_ACCT_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE FINANCIAL_TRANSACTION_APP_TYP
   ADD CONSTRAINT AGRET_TO_FTAT FOREIGN KEY (AGRE_TYP_CD)
      REFERENCES AGREEMENT_TYPE (AGRE_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE FINANCIAL_TRAN_APP_TRAN_TYP
   ADD CONSTRAINT FTAT_TO_FTATT FOREIGN KEY (FTAT_ID)
      REFERENCES FINANCIAL_TRANSACTION_APP_TYP (FTAT_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE FINANCIAL_TRAN_APP_TRAN_TYP
   ADD CONSTRAINT AGRET_TO_FTATT FOREIGN KEY (AGRE_TYP_CD)
      REFERENCES AGREEMENT_TYPE (AGRE_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE FINANCIAL_TRAN_APP_TRAN_TYP
   ADD CONSTRAINT FTT_TO_FTATTFR FOREIGN KEY (FNCL_TRAN_TYP_ID_APLD_FR)
      REFERENCES FINANCIAL_TRANSACTION_TYPE (FNCL_TRAN_TYP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE FINANCIAL_TRAN_APP_TRAN_TYP
   ADD CONSTRAINT FTT_TO_FTATTTO FOREIGN KEY (FNCL_TRAN_TYP_ID_APLD_TO)
      REFERENCES FINANCIAL_TRANSACTION_TYPE (FNCL_TRAN_TYP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE FINANCIAL_TRAN_CLS_TRAN_TYP
   ADD CONSTRAINT FTC_TO_FTCTT FOREIGN KEY (FNCL_TRAN_CLS_ID)
      REFERENCES FINANCIAL_TRANSACTION_CLASS (FNCL_TRAN_CLS_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE FINANCIAL_TRAN_CLS_TRAN_TYP
   ADD CONSTRAINT FTT_TO_FTCTT FOREIGN KEY (FNCL_TRAN_TYP_ID)
      REFERENCES FINANCIAL_TRANSACTION_TYPE (FNCL_TRAN_TYP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE FINANCIAL_TRANSACTION_REVERSE
   ADD CONSTRAINT FTT_TO_FTR FOREIGN KEY (FNCL_TRAN_TYP_ID)
      REFERENCES FINANCIAL_TRANSACTION_TYPE (FNCL_TRAN_TYP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE FINANCIAL_TRANSACTION_REVERSE
   ADD CONSTRAINT FTT_TO_FTRRVRS FOREIGN KEY (FNCL_TRAN_TYP_ID_RVRS)
      REFERENCES FINANCIAL_TRANSACTION_TYPE (FNCL_TRAN_TYP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE POLICY_FINANCIAL_TRANSACTION
   ADD CONSTRAINT FTT_TO_PFT FOREIGN KEY (FNCL_TRAN_TYP_ID)
      REFERENCES FINANCIAL_TRANSACTION_TYPE (FNCL_TRAN_TYP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE POLICY_FINANCIAL_TRANSACTION
   ADD CONSTRAINT AGRE_TO_PFT FOREIGN KEY (AGRE_ID)
      REFERENCES AGREEMENT (AGRE_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE POLICY_FINANCIAL_TRANSACTION
   ADD CONSTRAINT PFT_TO_PFT FOREIGN KEY (PFT_ID_RVRS)
      REFERENCES POLICY_FINANCIAL_TRANSACTION (PFT_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE POLICY_FINANCIAL_TRANSACTION
   ADD CONSTRAINT CLTRLD_TO_PFT FOREIGN KEY (CLTRL_DRW_ID)
      REFERENCES COLLATERAL_DRAW(CLTRL_DRW_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE POLICY_FINANCIAL_TRANSACTION
   ADD CONSTRAINT CUST_TO_PFT FOREIGN KEY (CUST_ID)
      REFERENCES CUSTOMER (CUST_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE POLICY_FINANCIAL_TRANSACTION
   ADD CONSTRAINT PTCP_TO_PFT FOREIGN KEY (PTCP_ID)
      REFERENCES PARTICIPATION (PTCP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE POLICY_FINANCIAL_TRANSACTION
   ADD CONSTRAINT AGRET_TO_PFT FOREIGN KEY (AGRE_TYP_CD)
      REFERENCES AGREEMENT_TYPE (AGRE_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE POLICY_FINANCIAL_TRANSACTION
   ADD CONSTRAINT PLCYP_TO_PFT FOREIGN KEY (PLCY_PRD_ID)

      REFERENCES POLICY_PERIOD (PLCY_PRD_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE POLICY_FINANCIAL_TRANSACTION
   ADD CONSTRAINT PP_TO_PFT FOREIGN KEY (PREM_PRD_ID)
      REFERENCES PREMIUM_PERIOD (PREM_PRD_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE POLICY_FINANCIAL_TRANSACTION
   ADD CONSTRAINT PR_TO_PFT FOREIGN KEY (PYRL_RPT_ID)
      REFERENCES PAYROLL_REPORT (PYRL_RPT_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE POLICY_FINANCIAL_TRANSACTION
   ADD CONSTRAINT USER_TO_PFT1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE POLICY_FINANCIAL_TRANSACTION
   ADD CONSTRAINT USER_TO_PFT2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE POLICY_FINANCIAL_TRANSACTION
   ADD CONSTRAINT JT_TO_PFT foreign key (JUR_TYP_CD)
      REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE POLICY_FINANCIAL_TRANSACTION
	ADD CONSTRAINT PPG_TO_PFT FOREIGN KEY (PLCY_PRD_GRP_ID)
		REFERENCES POLICY_PERIOD_GROUP(PLCY_PRD_GRP_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE POLICY_FINANCIAL_TRAN_APP
   ADD CONSTRAINT FTAT_TO_PFTA FOREIGN KEY (FTAT_ID)
      REFERENCES FINANCIAL_TRANSACTION_APP_TYP (FTAT_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE POLICY_FINANCIAL_TRAN_APP
   ADD CONSTRAINT PFTFR_TO_PFTA FOREIGN KEY (PFT_ID_APLD_FR)
      REFERENCES POLICY_FINANCIAL_TRANSACTION (PFT_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE POLICY_FINANCIAL_TRAN_APP
   ADD CONSTRAINT PFTTO_TO_PFTA FOREIGN KEY (PFT_ID_APLD_TO)
      REFERENCES POLICY_FINANCIAL_TRANSACTION (PFT_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE POLICY_FINANCIAL_TRAN_APP
   ADD CONSTRAINT PFTRVRS_TO_PFTA FOREIGN KEY (PFT_ID_RVRS)
      REFERENCES POLICY_FINANCIAL_TRANSACTION (PFT_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE POLICY_FINANCIAL_TRAN_APP
   ADD CONSTRAINT USER_TO_PFTA1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE POLICY_FINANCIAL_TRAN_APP
   ADD CONSTRAINT USER_TO_PFTA2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE POLICY_FINANCIAL_TRAN_TRN
   ADD CONSTRAINT PFTFR_TO_PFTT FOREIGN KEY (PFT_ID_TRN_FR)
      REFERENCES POLICY_FINANCIAL_TRANSACTION (PFT_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE POLICY_FINANCIAL_TRAN_TRN
   ADD CONSTRAINT PFTTO_TO_PFTT FOREIGN KEY (PFT_ID_TRN_TO)
      REFERENCES POLICY_FINANCIAL_TRANSACTION (PFT_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CHECK_REQUEST
   ADD CONSTRAINT PAYT_TO_CHCKR FOREIGN KEY (PAY_TYP_CD)
      REFERENCES PAYMENT_TYPE (PAY_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CHECK_REQUEST
   ADD CONSTRAINT PMPT_TO_CHCKR FOREIGN KEY (PAY_MEDA_PREF_TYP_CD)
      REFERENCES PAYMENT_MEDIA_PREFERENCE_TYPE (PAY_MEDA_PREF_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CHECKS
   ADD CONSTRAINT PAYT_TO_CHCK FOREIGN KEY (PAY_TYP_CD)
      REFERENCES PAYMENT_TYPE (PAY_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CHECKS
   ADD CONSTRAINT PMPT_TO_CHCK FOREIGN KEY (PAY_MEDA_PREF_TYP_CD)
      REFERENCES PAYMENT_MEDIA_PREFERENCE_TYPE (PAY_MEDA_PREF_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CHECKS
   ADD CONSTRAINT AT_TO_CHCK FOREIGN KEY (ACCT_TYP_CD)
      REFERENCES ACCOUNT_TYPE (ACCT_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CHECK_PAYEE
   ADD CONSTRAINT CHCKR_TO_CHCKP FOREIGN KEY (CHCK_REQS_ID)
      REFERENCES CHECK_REQUEST (CHCK_REQS_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CHECK_PAYEE
   ADD CONSTRAINT PAYT_TO_CHCKP FOREIGN KEY (PAY_TYP_CD)
      REFERENCES PAYMENT_TYPE (PAY_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CHECK_PAYEE
   ADD CONSTRAINT CUST_TO_CHCKP FOREIGN KEY (CUST_ID)
      REFERENCES CUSTOMER (CUST_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CHECK_STATUS
   ADD CONSTRAINT CHCKR_TO_CHCKS FOREIGN KEY (CHCK_REQS_ID)
      REFERENCES CHECK_REQUEST (CHCK_REQS_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CHECK_STATUS
   ADD CONSTRAINT CHCKST_TO_CHCKS FOREIGN KEY (CHCK_STS_TYP_CD)
      REFERENCES CHECK_STATUS_TYPE (CHCK_STS_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CHECK_STATUS
   ADD CONSTRAINT USER_TO_CHCKS1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CHECK_STATUS
   ADD CONSTRAINT USER_TO_CHCKS2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CHECK_STATUS_HISTORY
   ADD CONSTRAINT CHCKS_TO_CSH FOREIGN KEY (CHCK_STS_ID)
      REFERENCES CHECK_STATUS (CHCK_STS_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CHECK_STATUS_HISTORY
   ADD CONSTRAINT CHCKR_TO_CSH FOREIGN KEY (CHCK_REQS_ID)
      REFERENCES CHECK_REQUEST (CHCK_REQS_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CHECK_STATUS_HISTORY
   ADD CONSTRAINT CHCKST_TO_CSH FOREIGN KEY (CHCK_STS_TYP_CD)
      REFERENCES CHECK_STATUS_TYPE (CHCK_STS_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CHECK_STATUS_HISTORY
   ADD CONSTRAINT USER_TO_CSH1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CHECK_STATUS_HISTORY
   ADD CONSTRAINT USER_TO_CSH2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table CUSTOMER_ROLE_CONTEXT_XREF
   add constraint RT_TO_CTRTX foreign key (CUST_ROLE_TYP_CD)
      references CUSTOMER_ROLE_TYPE (CUST_ROLE_TYP_CD)
      on delete restrict on update restrict;
alter table CUSTOMER_ROLE_CONTEXT_XREF
   add constraint CNTXT_TO_CTRTX foreign key (CNTX_TYP_CD)
      references CONTEXT_TYPE (CNTX_TYP_CD)
      on delete restrict on update restrict;

---------------------------------------------


ALTER TABLE indemnity_payment
	ADD CONSTRAINT clm_to_ip FOREIGN KEY (agre_id)
	REFERENCES claim (agre_id)
     ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE indemnity_payment
	ADD CONSTRAINT CALCR_TO_IP FOREIGN KEY (calc_rslt_id)
	REFERENCES calculation_result (calc_rslt_id)
     ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE indemnity_payment
	ADD CONSTRAINT caw_to_ip FOREIGN KEY (clm_avg_wg_id)
	REFERENCES claim_average_wage (clm_avg_wg_id)
     ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE indemnity_payment
	ADD  CONSTRAINT indmrt_to_ip FOREIGN KEY (indm_rsn_typ_cd)
	REFERENCES indemnity_reason_type (indm_rsn_typ_cd)
	     ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE indemnity_payment
	ADD CONSTRAINT bnftt_to_ip FOREIGN KEY (BNFT_TYP_CD)
	REFERENCES BENEFIT_TYPE (BNFT_TYP_CD)
	     ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE indemnity_payment
	ADD CONSTRAINT cec_to_ip FOREIGN KEY (clm_earn_cap_id)
	REFERENCES claim_earning_capacity (clm_earn_cap_id)
	     ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE INDEMNITY_PAYMENT
   ADD CONSTRAINT USER_TO_ip1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE INDEMNITY_PAYMENT
   ADD CONSTRAINT USER_TO_IP2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_PAYMENT_HISTORY
	ADD CONSTRAINT ip_to_iph FOREIGN KEY (indm_pay_id)
	REFERENCES INDEMNITY_PAYMENT (indm_pay_id)
     ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_PAYMENT_HISTORY
	ADD CONSTRAINT clm_to_iph FOREIGN KEY (agre_id)
	REFERENCES claim (agre_id)
     ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_PAYMENT_HISTORY
	ADD CONSTRAINT CALCR_TO_IPH FOREIGN KEY (calc_rslt_id)
	REFERENCES calculation_result (calc_rslt_id)
     ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE INDEMNITY_PAYMENT_HISTORY
	ADD CONSTRAINT caw_to_iph FOREIGN KEY (clm_avg_wg_id)
	REFERENCES claim_average_wage (clm_avg_wg_id)
     ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE INDEMNITY_PAYMENT_HISTORY
	ADD  CONSTRAINT indmrt_to_iph FOREIGN KEY (indm_rsn_typ_cd)
	REFERENCES indemnity_reason_type (indm_rsn_typ_cd)
	     ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_PAYMENT_HISTORY
	ADD CONSTRAINT bnftt_to_iph FOREIGN KEY (BNFT_TYP_CD)
	REFERENCES BENEFIT_TYPE (BNFT_TYP_CD)
	     ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_PAYMENT_HISTORY
	ADD CONSTRAINT cec_to_iph FOREIGN KEY (clm_earn_cap_id)
	REFERENCES claim_earning_capacity (clm_earn_cap_id)
	     ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_PAYMENT_HISTORY
   ADD CONSTRAINT USER_TO_ipH1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_PAYMENT_HISTORY
   ADD CONSTRAINT USER_TO_IPH2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE BENEFIT_TYPE
	ADD CONSTRAINT lobt_to_bnftt FOREIGN KEY (lob_typ_cd)
	REFERENCES line_of_business_type (lob_typ_cd)
	     ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE BENEFIT_TYPE
	ADD CONSTRAINT bnftct_to_bnftt FOREIGN KEY (bnft_cyc_typ_cd)
	REFERENCES benefit_cycle_type (bnft_cyc_typ_cd)
	     ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE BENEFIT_TYPE
	ADD CONSTRAINT bnftctgt_to_bnftt FOREIGN KEY (bnft_ctg_typ_cd)
	REFERENCES benefit_category_type (bnft_ctg_typ_cd)
	     ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE indemnity_schedule
	ADD CONSTRAINT ift_to_is FOREIGN KEY (indm_freq_typ_cd)
	REFERENCES indemnity_frequency_type (indm_freq_typ_cd	)
	     ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE indemnity_schedule
	ADD CONSTRAINT ip_to_is FOREIGN KEY (indm_pay_id)
	REFERENCES indemnity_payment (indm_pay_id)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;

alter table indemnity_schedule 
   add constraint AUTH_TO_IS foreign key (AUTH_ID)
      references AUTHORIZATIONS (AUTH_ID)
      on delete restrict on update restrict;

ALTER TABLE INDEMNITY_SCHEDULE
   ADD CONSTRAINT USER_TO_IS1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCHEDULE
   ADD CONSTRAINT USER_TO_IS2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE INDEMNITY_SCHEDULE_HISTORY
	ADD CONSTRAINT is_to_ish FOREIGN KEY (indm_sch_id)
	REFERENCES INDEMNITY_SCHEDULE (indm_sch_id)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCHEDULE_HISTORY
	ADD CONSTRAINT ip_to_ish FOREIGN KEY (indm_pay_id)
	REFERENCES indemnity_payment (indm_pay_id)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCHEDULE_HISTORY
	ADD CONSTRAINT ift_to_ish FOREIGN KEY (indm_freq_typ_cd)
	REFERENCES indemnity_frequency_type (indm_freq_typ_cd	)
	     ON DELETE RESTRICT ON UPDATE RESTRICT;


alter table INDEMNITY_SCHEDULE_HISTORY 
   add constraint AUTH_TO_ISH foreign key (AUTH_ID)
      references AUTHORIZATIONS (AUTH_ID)
      on delete restrict on update restrict;

ALTER TABLE INDEMNITY_SCHEDULE_HISTORY
   ADD CONSTRAINT USER_TO_ISH1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCHEDULE_HISTORY
   ADD CONSTRAINT USER_TO_ISH2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE indemnity_schedule_detail
	ADD  CONSTRAINT is_to_isd FOREIGN KEY (indm_sch_id)
	REFERENCES indemnity_schedule (indm_sch_id)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE indemnity_schedule_detail
	ADD CONSTRAINT isdst_to_isd FOREIGN KEY (indm_sch_dtl_sts_typ_cd)
	REFERENCES indemnity_sch_dtl_sts_typ (indm_sch_dtl_sts_typ_cd)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE INDEMNITY_SCHEDULE_DETAIL
	ADD CONSTRAINT LPRT_TO_ISD FOREIGN KEY (LTE_PAY_RSN_TYP_CD)
	REFERENCES LATE_PAYMENT_REASON_TYPE (LTE_PAY_RSN_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE INDEMNITY_SCHEDULE_DETAIL
   ADD CONSTRAINT USER_TO_ISD1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCHEDULE_DETAIL
   ADD CONSTRAINT USER_TO_ISD2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCHEDULE_DETAIL_HIST
	ADD  CONSTRAINT isd_to_isdh FOREIGN KEY (indm_sch_dtl_id)
	REFERENCES INDEMNITY_SCHEDULE_DETAIL (indm_sch_dtl_id)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE INDEMNITY_SCHEDULE_DETAIL_HIST
	ADD  CONSTRAINT is_to_isdh FOREIGN KEY (indm_sch_id)
	REFERENCES indemnity_schedule (indm_sch_id)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE INDEMNITY_SCHEDULE_DETAIL_HIST
	ADD CONSTRAINT isdst_to_isdh FOREIGN KEY (indm_sch_dtl_sts_typ_cd)
	REFERENCES indemnity_sch_dtl_sts_typ (indm_sch_dtl_sts_typ_cd)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE INDEMNITY_SCHEDULE_DETAIL_HIST
	ADD CONSTRAINT LPRT_TO_ISDH FOREIGN KEY (LTE_PAY_RSN_TYP_CD)
	REFERENCES LATE_PAYMENT_REASON_TYPE (LTE_PAY_RSN_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE INDEMNITY_SCHEDULE_DETAIL_HIST
   ADD CONSTRAINT USER_TO_ISDH1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCHEDULE_DETAIL_HIST
   ADD CONSTRAINT USER_TO_ISDH2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCHEDULE_DTL_AMT
	ADD CONSTRAINT isdat_to_isda FOREIGN KEY (INDM_SCH_DTL_AMT_TYP_CD)
	REFERENCES INDEMNITY_SCHEDULE_DTL_AMT_TYP (INDM_SCH_DTL_AMT_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE INDEMNITY_SCHEDULE_DTL_AMT
   ADD  CONSTRAINT ca_to_isda FOREIGN KEY (clm_adj_id)
	  REFERENCES claim_adjustment (clm_adj_id)
	  ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE indemnity_schedule_dtl_amt
	ADD CONSTRAINT bnftt_to_isda FOREIGN KEY (BNFT_TYP_CD)
	REFERENCES BENEFIT_TYPE (BNFT_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE indemnity_schedule_dtl_amt
	ADD  CONSTRAINT custcs_to_isda FOREIGN KEY (CUST_CHLD_SUPT_ID)
	REFERENCES customer_child_support (CUST_CHLD_SUPT_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE indemnity_schedule_dtl_amt
	ADD CONSTRAINT cust_to_isda FOREIGN KEY (cust_id)
	REFERENCES Customer (cust_id)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE indemnity_schedule_dtl_amt
	ADD  CONSTRAINT isd_to_isda FOREIGN KEY (indm_sch_dtl_id)
	REFERENCES indemnity_schedule_detail (indm_sch_dtl_id	)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE INDEMNITY_SCHEDULE_DTL_AMT
   ADD CONSTRAINT USER_TO_ISDA1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCHEDULE_DTL_AMT
   ADD CONSTRAINT USER_TO_ISDA2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE indemnity_schedule_dtl_amt
   ADD  CONSTRAINT cft_to_isda FOREIGN KEY (cft_id)
	  REFERENCES claim_financial_transaction (cft_id)
	  ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCHEDULE_DTL_AMT 
	ADD CONSTRAINT isdst_to_isda FOREIGN KEY (indm_sch_dtl_sts_typ_cd)
	REFERENCES indemnity_sch_dtl_sts_typ (indm_sch_dtl_sts_typ_cd)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCH_DTL_AMT_HIST
   ADD  CONSTRAINT isda_to_isdah FOREIGN KEY (indm_sch_dtl_amt_id)
	  REFERENCES INDEMNITY_SCHEDULE_DTL_AMT (indm_sch_dtl_amt_id)
	  ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCH_DTL_AMT_HIST
	ADD  CONSTRAINT isd_to_isdah FOREIGN KEY (indm_sch_dtl_id)
	REFERENCES indemnity_schedule_detail (indm_sch_dtl_id)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCH_DTL_AMT_HIST
	ADD CONSTRAINT isdat_to_isdah FOREIGN KEY (INDM_SCH_DTL_AMT_TYP_CD)
	REFERENCES INDEMNITY_SCHEDULE_DTL_AMT_TYP (INDM_SCH_DTL_AMT_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCH_DTL_AMT_HIST
   ADD  CONSTRAINT ca_to_isdah FOREIGN KEY (clm_adj_id)
	  REFERENCES claim_adjustment (clm_adj_id)
	  ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCH_DTL_AMT_HIST
	ADD CONSTRAINT bnftt_to_isdah FOREIGN KEY (BNFT_TYP_CD)
	REFERENCES BENEFIT_TYPE (BNFT_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCH_DTL_AMT_HIST
	ADD  CONSTRAINT custcs_to_isdah FOREIGN KEY (CUST_CHLD_SUPT_ID)
	REFERENCES customer_child_support (CUST_CHLD_SUPT_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCH_DTL_AMT_HIST
	ADD CONSTRAINT cust_to_isdah FOREIGN KEY (cust_id)
	REFERENCES Customer (cust_id)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCH_DTL_AMT_HIST
   ADD  CONSTRAINT cft_to_isdah FOREIGN KEY (cft_id)
	  REFERENCES claim_financial_transaction (cft_id)
	  ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCH_DTL_AMT_HIST
   ADD CONSTRAINT USER_TO_ISDAH1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCH_DTL_AMT_HIST
   ADD CONSTRAINT USER_TO_ISDAH2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCH_DTL_AMT_HIST 
	ADD CONSTRAINT isdst_to_isdah FOREIGN KEY (indm_sch_dtl_sts_typ_cd)
	REFERENCES indemnity_sch_dtl_sts_typ (indm_sch_dtl_sts_typ_cd)
	ON DELETE RESTRICT ON UPDATE RESTRICT;      

ALTER TABLE INDM_SCH_DTL_CHLD_SUPT
   ADD  CONSTRAINT ISDA_TO_ISDCS FOREIGN KEY (INDM_SCH_DTL_AMT_ID)
   REFERENCES INDEMNITY_SCHEDULE_DTL_AMT (INDM_SCH_DTL_AMT_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDM_SCH_DTL_CHLD_SUPT
 ADD  CONSTRAINT CUSTCS_TO_ISDCS FOREIGN KEY (CUST_CHLD_SUPT_ID)
 REFERENCES customer_child_support (CUST_CHLD_SUPT_ID)
 ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDM_SCH_DTL_CHLD_SUPT
   ADD CONSTRAINT USER_TO_ISDCS1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDM_SCH_DTL_CHLD_SUPT
   ADD CONSTRAINT USER_TO_ISDCS2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDM_SCH_DTL_CHLD_SUPT_HIST
   ADD  CONSTRAINT ISDCS_TO_ISDCSH FOREIGN KEY (INDM_SCH_DTL_CHLD_SUPT_ID)
   REFERENCES INDM_SCH_DTL_CHLD_SUPT (INDM_SCH_DTL_CHLD_SUPT_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE INDM_SCH_DTL_CHLD_SUPT_HIST
   ADD  CONSTRAINT ISDA_TO_ISDCSH FOREIGN KEY (INDM_SCH_DTL_AMT_ID)
   REFERENCES INDEMNITY_SCHEDULE_DTL_AMT (INDM_SCH_DTL_AMT_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE INDM_SCH_DTL_CHLD_SUPT_HIST
 ADD  CONSTRAINT CUSTCS_TO_ISDCSH FOREIGN KEY (CUST_CHLD_SUPT_ID)
 REFERENCES customer_child_support (CUST_CHLD_SUPT_ID)
 ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE INDM_SCH_DTL_CHLD_SUPT_HIST
   ADD CONSTRAINT USER_TO_ISDCSH1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDM_SCH_DTL_CHLD_SUPT_HIST
   ADD CONSTRAINT USER_TO_ISDCSH2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE claim_status_benefit_xref
	ADD CONSTRAINT clmstst_to_csbtx FOREIGN KEY (CLM_STS_TYP_CD)
	REFERENCES CLAIM_STATUS_TYPE (CLM_STS_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE claim_status_benefit_xref
	ADD CONSTRAINT bnftt_csbtx FOREIGN KEY (BNFT_TYP_CD)
	REFERENCES BENEFIT_TYPE (BNFT_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE CLAIM_STATUS_COST_CENTER_XREF
	ADD CONSTRAINT clmstst_to_csccx FOREIGN KEY (CLM_STS_TYP_CD)
	REFERENCES CLAIM_STATUS_TYPE (CLM_STS_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE CLAIM_STATUS_COST_CENTER_XREF
	ADD CONSTRAINT cct_to_csccx FOREIGN KEY (CST_CNTR_TYP_CD)
	REFERENCES COST_CENTER_TYPE (CST_CNTR_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE CLAIM_STATUS_COST_CENTER_XREF
	ADD CONSTRAINT payt_to_csccx FOREIGN KEY (PAY_TYP_CD)
	REFERENCES PAYMENT_TYPE (PAY_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE INDEMNITY_SCHEDULE_DETAIL_MSG
 ADD CONSTRAINT isdmt_to_isdm FOREIGN KEY (INDM_SCH_DTL_MSG_TYP_CD)
 REFERENCES INDEMNITY_SCHEDULE_DTL_MSG_TYP (INDM_SCH_DTL_MSG_TYP_CD)
 ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE INDEMNITY_SCHEDULE_DETAIL_MSG
	ADD CONSTRAINT isd_to_isdm FOREIGN KEY (indm_sch_dtl_id)
	REFERENCES indemnity_schedule_detail (indm_sch_dtl_id)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCHEDULE_DETAIL_MSG
   ADD CONSTRAINT USER_TO_ISDM1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCHEDULE_DETAIL_MSG
   ADD CONSTRAINT USER_TO_ISDM2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCH_DTL_MSG_HIST
	ADD CONSTRAINT isdm_to_isdmh FOREIGN KEY (indm_sch_dtl_msg_id)
	REFERENCES INDEMNITY_SCHEDULE_DETAIL_MSG (indm_sch_dtl_msg_id)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCH_DTL_MSG_HIST
	ADD CONSTRAINT isd_to_isdmh FOREIGN KEY (indm_sch_dtl_id)
	REFERENCES indemnity_schedule_detail (indm_sch_dtl_id)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCH_DTL_MSG_HIST
	ADD CONSTRAINT isdmt_to_isdmh FOREIGN KEY (indm_sch_dtl_msg_typ_cd)
	REFERENCES indemnity_schedule_dtl_msg_typ (indm_sch_dtl_msg_typ_cd)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCH_DTL_MSG_HIST
   ADD CONSTRAINT USER_TO_ISDMH1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDEMNITY_SCH_DTL_MSG_HIST
   ADD CONSTRAINT USER_TO_ISDMH2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE indemnity_sch_dtl_sts_trn_xref
	ADD  CONSTRAINT isdstfr_to_isdstx FOREIGN KEY (indm_sch_dtl_sts_typ_cd_fr)
	REFERENCES indemnity_sch_dtl_sts_typ (indm_sch_dtl_sts_typ_cd)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE indemnity_sch_dtl_sts_trn_xref
	ADD  CONSTRAINT isdstto_to_isdstx FOREIGN KEY (indm_sch_dtl_sts_typ_cd_to)
	REFERENCES indemnity_sch_dtl_sts_typ (indm_sch_dtl_sts_typ_cd)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE JURSIDICTION_BNFT_OVRLP_XREF
	ADD CONSTRAINT JT_TO_JBOX FOREIGN KEY (JUR_TYP_CD)
	REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE JURSIDICTION_BNFT_OVRLP_XREF
	ADD CONSTRAINT BNFTT_TO_JBOX FOREIGN KEY (BNFT_TYP_CD)
	REFERENCES BENEFIT_TYPE (BNFT_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE JURSIDICTION_BNFT_OVRLP_XREF
	ADD CONSTRAINT BNFTT_TO_JBOXO FOREIGN KEY (BNFT_TYP_CD_OVRLP)
	REFERENCES BENEFIT_TYPE (BNFT_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE JURSIDICTION_BNFT_WARN_XREF
	ADD CONSTRAINT JT_TO_JBWX FOREIGN KEY (JUR_TYP_CD)
	REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE JURSIDICTION_BNFT_WARN_XREF
	ADD CONSTRAINT BNFTT_TO_JBWX FOREIGN KEY (BNFT_TYP_CD)
	REFERENCES BENEFIT_TYPE (BNFT_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE JURSIDICTION_BNFT_WARN_XREF
	ADD CONSTRAINT BNFTT_TO_JBWXW FOREIGN KEY (BNFT_TYP_CD_WARN)
	REFERENCES BENEFIT_TYPE (BNFT_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE PC_TO_DES  
   ADD CONSTRAINT ACT_TO_PTD FOREIGN KEY (APP_CNTX_TYP_CD )
      REFERENCES APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD )
      ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE PC_TO_DES  
   ADD CONSTRAINT ASCT_TO_PTD FOREIGN KEY (APP_SUB_CNTX_TYP_CD )
      REFERENCES APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD )
       ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE PC_TO_DES  
   ADD CONSTRAINT AGRE_TO_PTD FOREIGN KEY (PRI_CONTEXT_ID)
      REFERENCES AGREEMENT (AGRE_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;



ALTER TABLE PC_TO_DES  
   ADD CONSTRAINT EVNTT_TO_PTD FOREIGN KEY (EVNT_TYP_CD)
      REFERENCES EVENT_TYPE (EVNT_TYP_CD)
     ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE PC_TO_DES
   ADD CONSTRAINT USER_TO_PTD1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE PC_TO_DES
   ADD CONSTRAINT USER_TO_PTD2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
     ON DELETE RESTRICT ON UPDATE RESTRICT;
     
ALTER TABLE CPT_CPT_SECTION_XREF
	ADD CONSTRAINT CPTST_TO_CCSTX FOREIGN KEY(CPT_SCTN_TYP_CD)
	REFERENCES CPT_SECTION_TYPE (CPT_SCTN_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_DOCUMENT_XREF ADD  CONSTRAINT DOCM_TO_CDX
 FOREIGN KEY (DOCM_ID) 
  REFERENCES DOCUMENT (DOCM_ID);

ALTER TABLE CLAIM_DOCUMENT_XREF ADD  CONSTRAINT CLM_TO_CDX
 FOREIGN KEY (AGRE_ID) 
  REFERENCES CLAIM (AGRE_ID);
  
ALTER TABLE CLAIM_DOCUMENT_XREF ADD CONSTRAINT CASE_TO_CDX
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CUSTOMER_DOCUMENT_XREF ADD  CONSTRAINT CUST_TO_CUSTDX
 FOREIGN KEY (CUST_ID) 
  REFERENCES CUSTOMER (CUST_ID);

ALTER TABLE CUSTOMER_DOCUMENT_XREF ADD  CONSTRAINT DOCM_TO_CUSTDX
 FOREIGN KEY (DOCM_ID) 
  REFERENCES DOCUMENT (DOCM_ID);

ALTER TABLE DOCM_ELEM_DOCM_ENUM_VAL_XREF ADD  CONSTRAINT DET_TO_DEDEVX
 FOREIGN KEY (DOCM_ELEM_TYP_CD) 
  REFERENCES DOCUMENT_ELEMENT_TYPE (DOCM_ELEM_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCM_ELEM_DOCM_ENUM_VAL_XREF ADD  CONSTRAINT DEVT_TO_DEDEVX
 FOREIGN KEY (DOCM_ENUM_VAL_TYP_CD) 
  REFERENCES DOCUMENT_ENUMERATION_VALUE_TYP (DOCM_ENUM_VAL_TYP_CD)  
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT ADD  CONSTRAINT DTV_TO_DOCM
 FOREIGN KEY (DOCM_TYP_VER_ID) 
  REFERENCES DOCUMENT_TYPE_VERSION (DOCM_TYP_VER_ID) 
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT ADD CONSTRAINT DDDT_TO_DOCM
 FOREIGN KEY (DOCM_DLVR_DVC_TYP_ID)
  REFERENCES DOCUMENT_DELIVERY_DEVICE_TYPE (DOCM_DLVR_DVC_TYP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT ADD  CONSTRAINT JT_TO_DOCM
FOREIGN KEY (JUR_TYP_CD) 
  REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT ADD  CONSTRAINT LOBT_TO_DOCM
FOREIGN KEY (LOB_TYP_CD) 
  REFERENCES LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT ADD  CONSTRAINT MT_TO_DOCM
FOREIGN KEY (MRKT_TYP_CD) 
  REFERENCES MARKET_TYPE (MRKT_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;	

ALTER TABLE DOCUMENT ADD  CONSTRAINT INSCT_TO_DOCM
FOREIGN KEY (INS_CMPY_TYP_ID)
  REFERENCES INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT ADD  CONSTRAINT DSTTT_TO_DOCM
 FOREIGN KEY (DOCM_STT_TYP_CD) 
  REFERENCES  DOCUMENT_STATE_TYPE (DOCM_STT_TYP_CD) 
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT ADD  CONSTRAINT DSTST_TO_DOCM
 FOREIGN KEY (DOCM_STS_TYP_CD) 
  REFERENCES DOCUMENT_STATUS_TYPE (DOCM_STS_TYP_CD) 
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT ADD  CONSTRAINT USER_TO_DOCM1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT ADD  CONSTRAINT USER_TO_DOCM2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_ELEMENT_TABLE_VALUE ADD  CONSTRAINT DEV_TO_DETV
 FOREIGN KEY (DOCM_ELEM_VAL_ID) 
  REFERENCES DOCUMENT_ELEMENT_VALUE (DOCM_ELEM_VAL_ID) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_ELEMENT_TABLE_VALUE ADD  CONSTRAINT DET_TO_DETV
 FOREIGN KEY (DOCM_ELEM_TYP_CD) 
  REFERENCES DOCUMENT_ELEMENT_TYPE (DOCM_ELEM_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_ELEMENT_TABLE_VALUE ADD  CONSTRAINT DET_TO_DETVCOL
 FOREIGN KEY (DOCM_ELEM_TYP_CD_COL) 
  REFERENCES DOCUMENT_ELEMENT_TYPE (DOCM_ELEM_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_ELEMENT_TYPE ADD  CONSTRAINT DFT_TO_DET
 FOREIGN KEY (DOCM_FRMT_TYP_CD) 
  REFERENCES DOCUMENT_FORMAT_TYPE (DOCM_FRMT_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_ELEMENT_TYPE ADD  CONSTRAINT DECT_TO_DET
 FOREIGN KEY (DOCM_ELEM_CLSFCTN_TYP_CD) 
  REFERENCES DOCUMENT_ELEMENT_CLSFCTN_TYP (DOCM_ELEM_CLSFCTN_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_ELEMENT_TYPE ADD  CONSTRAINT ADT_TO_DET
 FOREIGN KEY (APP_DATA_TYP_CD) 
  REFERENCES APPLICATION_DATA_TYPE (APP_DATA_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_ELEMENT_TYPE ADD  CONSTRAINT DT_TO_DET
 FOREIGN KEY (DATA_TYP_CD) 
  REFERENCES DATA_TYPE (DATA_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_ELEMENT_TYPE ADD CONSTRAINT XT_TO_DET
 FOREIGN KEY (XML_TYP_CD) 
  REFERENCES XML_TYPE (XML_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_ELEMENT_VALUE ADD  CONSTRAINT DET_TO_DEV
 FOREIGN KEY (DOCM_ELEM_TYP_CD) 
  REFERENCES DOCUMENT_ELEMENT_TYPE (DOCM_ELEM_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_ELEMENT_VALUE ADD  CONSTRAINT DOCM_TO_DEV
 FOREIGN KEY (DOCM_ID) 
  REFERENCES DOCUMENT (DOCM_ID) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_LMICX_JUR_XREF ADD  CONSTRAINT DOCMT_TO_DLJX
 FOREIGN KEY (DOCM_TYP_ID) 
  REFERENCES DOCUMENT_TYPE (DOCM_TYP_ID) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;
    
ALTER TABLE DOCUMENT_LMICX_JUR_XREF ADD  CONSTRAINT CEST_TO_DLJX
 FOREIGN KEY (CTL_ELEM_SUB_TYP_ID) 
  REFERENCES CONTROL_ELEMENT_SUB_TYPE (CTL_ELEM_SUB_TYP_ID) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_LMICX_JUR_XREF ADD  CONSTRAINT LMICX_TO_DLJX
 FOREIGN KEY (LMICX_ID) 
  REFERENCES LOB_MARKET_INSURANCE_CMPY_XREF (LMICX_ID) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_LMICX_JUR_XREF ADD  CONSTRAINT JT_TO_DLJX
 FOREIGN KEY (JUR_TYP_CD) 
  REFERENCES JURISDICTION_TYPE (JUR_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;
    
ALTER TABLE DOCUMENT_LMICX_JUR_XREF ADD  CONSTRAINT CT_TO_DLJX
 FOREIGN KEY (CASE_TYP_CD) 
  REFERENCES CASE_TYPE (CASE_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_RECIPIENT ADD  CONSTRAINT DRT_TO_DR 
 FOREIGN KEY (DOCM_RECIP_TYP_CD) 
  REFERENCES DOCUMENT_RECIPIENT_TYPE (DOCM_RECIP_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE DOCUMENT_RECIPIENT ADD  CONSTRAINT CAT_TO_DR
 FOREIGN KEY (CUST_ADDR_TYP_CD) 
  REFERENCES CUSTOMER_ADDRESS_TYPE (CUST_ADDR_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_RECIPIENT ADD  CONSTRAINT DDT_TO_DR
 FOREIGN KEY (DOCM_DLVR_TYP_CD)
  REFERENCES DOCUMENT_DELIVERY_TYPE (DOCM_DLVR_TYP_CD)
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_RECIPIENT ADD  CONSTRAINT STT_TO_DR
 FOREIGN KEY (STT_ID) 
  REFERENCES STATE (STT_ID) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_RECIPIENT ADD  CONSTRAINT CNTRY_TO_DR
 FOREIGN KEY (CNTRY_ID) 
  REFERENCES COUNTRY (CNTRY_ID) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_RECIPIENT ADD  CONSTRAINT DAT_TO_DR
 FOREIGN KEY (DOCM_ADDR_TYP_CD) 
  REFERENCES DOCUMENT_ADDRESS_TYPE (DOCM_ADDR_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_RECIPIENT ADD  CONSTRAINT DOCMRGT_TO_DR
 FOREIGN KEY (DRGT_CD) 
  REFERENCES DOCUMENT_RECIPIENT_GROUP_TYPE (DRGT_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_RECIPIENT ADD  CONSTRAINT DOCM_TO_DR
 FOREIGN KEY (DOCM_ID) 
  REFERENCES DOCUMENT (DOCM_ID) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_RECIPIENT ADD  CONSTRAINT CUST_TO_DR
 FOREIGN KEY (CUST_ID_CRES_RECIP) 
  REFERENCES CUSTOMER (CUST_ID) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_RECIPIENT ADD  CONSTRAINT PTCPTYP_TO_DR
 FOREIGN KEY (PTCP_TYP_CD) 
  REFERENCES PARTICIPATION_TYPE (PTCP_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_RECIPIENT ADD CONSTRAINT PNT_TO_DR 
 FOREIGN KEY (PHN_NO_TYP_CD)
  REFERENCES PHONE_NUMBER_TYPE (PHN_NO_TYP_CD)
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_RECIPIENT ADD CONSTRAINT CUSTRLT_TO_DR 
 FOREIGN KEY (CUST_ID_RLT)
  REFERENCES CUSTOMER (CUST_ID)
    ON DELETE RESTRICT ON UPDATE RESTRICT;  

ALTER TABLE DOCUMENT_RECIPIENT ADD  CONSTRAINT USER_TO_DR 
 FOREIGN KEY (USER_ID) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE DOCUMENT_RECIPIENT ADD  CONSTRAINT FR_TO_DR 
 FOREIGN KEY (FNCT_ROLE_ID) 
  REFERENCES FUNCTIONAL_ROLE (FNCT_ROLE_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT; 
    


ALTER TABLE DOCUMENT_RECIPIENT_GROUP_TYPE ADD CONSTRAINT DPCT_TO_DRGT 
 FOREIGN KEY (DOCM_PRNTR_CLS_TYP_CD)
  REFERENCES DOCUMENT_PRINTER_CLASS_TYPE (DOCM_PRNTR_CLS_TYP_CD)
    ON DELETE RESTRICT ON UPDATE RESTRICT;  
    
ALTER TABLE DOCUMENT_TYPE ADD  CONSTRAINT DOCMCT_TO_DOCMT
 FOREIGN KEY (DOCM_CTG_TYP_CD) 
  REFERENCES DOCUMENT_CATEGORY_TYPE (DOCM_CTG_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_TYPE ADD  CONSTRAINT DTST_TO_DOCMT
 FOREIGN KEY (DOCM_TYP_SRC_TYP_CD)
  REFERENCES DOCUMENT_TYPE_SOURCE_TYPE (DOCM_TYP_SRC_TYP_CD)
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_TYPE_VERSION ADD  CONSTRAINT DOT_TO_DTV
 FOREIGN KEY (DOCM_OCCR_TYP_CD) 
  REFERENCES DOCUMENT_OCCURRENCE_TYPE (DOCM_OCCR_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_TYPE_VERSION ADD  CONSTRAINT DOCMT_TO_DTV
 FOREIGN KEY (DOCM_TYP_ID) 
  REFERENCES DOCUMENT_TYPE (DOCM_TYP_ID) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_TYPE_VERSION ADD CONSTRAINT DDDT_TO_DTV
 FOREIGN KEY (DOCM_DLVR_DVC_TYP_ID)
  REFERENCES DOCUMENT_DELIVERY_DEVICE_TYPE (DOCM_DLVR_DVC_TYP_ID)
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_TYPE_VERSION ADD CONSTRAINT CDCDCX_TO_DTV
 FOREIGN KEY (CDCDCX_ID)
  REFERENCES CLAIM_DCSN_CLM_DCSN_CTG_XREF (CDCDCX_ID)
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_TYPE_VERSION ADD CONSTRAINT DPST_TO_DTV
 FOREIGN KEY (DOCM_PPR_STK_TYP_CD)
  REFERENCES DOCUMENT_PAPER_STOCK_TYPE (DOCM_PPR_STK_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_TYPE_VERSION ADD CONSTRAINT IDOCMT_TO_DTV
 FOREIGN KEY (INOW_DOCM_TYP_ID)
  REFERENCES INOW_DOCUMENT_TYPE (INOW_DOCM_TYP_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_TYPE_VERSION_ELEMENT ADD  CONSTRAINT DET_TO_DTVE
 FOREIGN KEY (DOCM_ELEM_TYP_CD) 
  REFERENCES DOCUMENT_ELEMENT_TYPE (DOCM_ELEM_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_TYPE_VERSION_ELEMENT ADD  CONSTRAINT DTV_TO_DTVE
 FOREIGN KEY (DOCM_TYP_VER_ID) 
  REFERENCES DOCUMENT_TYPE_VERSION (DOCM_TYP_VER_ID) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;
    
ALTER TABLE DOCUMENT_TYPE_VERSION_ELEMENT ADD  CONSTRAINT DEVT_TO_DTVE
 FOREIGN KEY (DOCM_ENUM_VAL_TYP_CD_PAR_VAL) 
  REFERENCES DOCUMENT_ENUMERATION_VALUE_TYP (DOCM_ENUM_VAL_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;    
      

ALTER TABLE DOCUMENT_ELEMENT_TABLE_COLUMN ADD  CONSTRAINT DET_TO_DETC
 FOREIGN KEY (DOCM_ELEM_TYP_CD)
  REFERENCES DOCUMENT_ELEMENT_TYPE (DOCM_ELEM_TYP_CD)
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_ELEMENT_TABLE_COLUMN ADD  CONSTRAINT DET_TO_DETCCOL
 FOREIGN KEY (DOCM_ELEM_TYP_CD_COL)
  REFERENCES DOCUMENT_ELEMENT_TYPE (DOCM_ELEM_TYP_CD)
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_TYPE_VERSION_RECIP ADD  CONSTRAINT DAT_TO_DTVR
 FOREIGN KEY (DOCM_ADDR_TYP_CD) 
  REFERENCES DOCUMENT_ADDRESS_TYPE (DOCM_ADDR_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_TYPE_VERSION_RECIP ADD  CONSTRAINT DOCMRGT_TO_DTVR
 FOREIGN KEY (DRGT_CD) 
  REFERENCES DOCUMENT_RECIPIENT_GROUP_TYPE (DRGT_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_TYPE_VERSION_RECIP ADD  CONSTRAINT DTV_TO_DTVR
 FOREIGN KEY (DOCM_TYP_VER_ID) 
  REFERENCES DOCUMENT_TYPE_VERSION (DOCM_TYP_VER_ID) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_TYPE_VERSION_RECIP ADD  CONSTRAINT PTCPTYP_TO_DTVR
 FOREIGN KEY (PTCP_TYP_CD) 
  REFERENCES PARTICIPATION_TYPE (PTCP_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_TYPE_VERSION_RECIP ADD  CONSTRAINT CUST_TO_DTVR
 FOREIGN KEY (CUST_ID_DFLT)
  REFERENCES CUSTOMER (CUST_ID)
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_TYPE_VERSION_RECIP ADD  CONSTRAINT DCRT_TO_DTVR 
 FOREIGN KEY (DOCM_COND_RECIP_TYP_CD) 
  REFERENCES DOCUMENT_CONDITION_RECIP_TYP (DOCM_COND_RECIP_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE DOCUMENT_TYPE_VERSION_RECIP ADD  CONSTRAINT RGLA_TO_DTVR
 FOREIGN KEY (RGL_AGY_ID)
  REFERENCES REGULATORY_AGENCY (RGL_AGY_ID)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
 
ALTER TABLE DOCUMENT_TYPE_VERSION_RECIP ADD CONSTRAINT FR_TO_DTVR
 FOREIGN KEY (FNCT_ROLE_ID) 
  REFERENCES FUNCTIONAL_ROLE (FNCT_ROLE_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE DOCUMENT_TYPE_VERSION_RECIP ADD CONSTRAINT DSHT_TO_DTVR
 FOREIGN KEY (DOCM_SPL_HNDL_TYP_CD) 
  REFERENCES DOCUMENT_SPECIAL_HANDLING_TYPE (DOCM_SPL_HNDL_TYP_CD) 
   ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE DOCUMENT_TYPE_VERSION_RECIP ADD CONSTRAINT CPTCPT_TO_DTVR
 FOREIGN KEY (CASE_PTCP_TYP_CD)
  REFERENCES CASE_PARTICIPATION_TYPE (CASE_PTCP_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_TYPE_VERSION_RECIP ADD CONSTRAINT CCDDGT_TO_DTVR
 FOREIGN KEY (CUST_CNTC_DOCM_DLVR_GRP_TYP_CD)
  REFERENCES CUSTOMER_CNTC_DOC_DLVR_GRP_TYP (CUST_CNTC_DOCM_DLVR_GRP_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_CONTROLS ADD CONSTRAINT ACT_TO_DC 
 FOREIGN KEY (APP_CNTX_TYP_CD)
  REFERENCES APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE DOCUMENT_CONTROLS ADD CONSTRAINT CASE_TO_DC 
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE POLICY_PERIOD_DOCUMENT_XREF ADD  CONSTRAINT DOCM_TO_PPDX
 FOREIGN KEY (DOCM_ID) 
  REFERENCES DOCUMENT (DOCM_ID) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE POLICY_PERIOD_DOCUMENT_XREF ADD  CONSTRAINT PLCYP_TO_PPDX
 FOREIGN KEY (PLCY_PRD_ID) 
  REFERENCES POLICY_PERIOD (PLCY_PRD_ID) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;
    
ALTER TABLE POLICY_PERIOD_DOCUMENT_XREF ADD CONSTRAINT CASE_TO_PPDX
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_ELEM_XML_SUB_CNTX_TYP
   ADD CONSTRAINT DEXCT_TO_DEXSCT FOREIGN KEY (DOCM_ELEM_XML_CNTX_TYP_CD)
      REFERENCES DOCUMENT_ELEM_XML_CNTX_TYP (DOCM_ELEM_XML_CNTX_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
  
    
ALTER TABLE DOCUMENT_ELEMENT_TYPE ADD CONSTRAINT DEXCT_TO_DET
 FOREIGN KEY (DOCM_ELEM_XML_CNTX_TYP_CD) 
  REFERENCES DOCUMENT_ELEM_XML_CNTX_TYP (DOCM_ELEM_XML_CNTX_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_ELEMENT_TYPE ADD CONSTRAINT DEXSCT_TO_DET
 FOREIGN KEY (DOCM_ELEM_XML_SUB_CNTX_TYP_CD) 
  REFERENCES DOCUMENT_ELEM_XML_SUB_CNTX_TYP (DOCM_ELEM_XML_SUB_CNTX_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE DOCUMENT_CNTX_GRP_SUB_GRP_XREF ADD  CONSTRAINT ACT_TO_DCGSGX
 FOREIGN KEY (APP_CNTX_TYP_CD) 
  REFERENCES APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_CNTX_GRP_SUB_GRP_XREF ADD  CONSTRAINT DGT_TO_DCGSGX
 FOREIGN KEY (DOCM_GRP_TYP_CD) 
  REFERENCES DOCUMENT_GROUP_TYPE (DOCM_GRP_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_CNTX_GRP_SUB_GRP_XREF ADD  CONSTRAINT DGT_TO_DCGSGXSUB  
 FOREIGN KEY (DOCM_GRP_TYP_CD_SUB) 
  REFERENCES DOCUMENT_GROUP_TYPE (DOCM_GRP_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_CONTEXT_GRP_CTG_XREF ADD CONSTRAINT  DGCT_TO_DCGCX
  FOREIGN KEY (DOCM_GRP_CTG_TYP_CD) 
    REFERENCES DOCUMENT_GROUP_CATEGORY_TYPE (DOCM_GRP_CTG_TYP_CD) 
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_CONTEXT_GRP_CTG_XREF ADD CONSTRAINT  ACT_TO_DCGCX
  FOREIGN KEY (APP_CNTX_TYP_CD) 
    REFERENCES APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD) 
      ON DELETE RESTRICT ON UPDATE RESTRICT;
      
ALTER TABLE DOCUMENT_EVENT_DATA
   ADD CONSTRAINT DOCM_TO_DED FOREIGN KEY (DOCM_ID)
      REFERENCES DOCUMENT (DOCM_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
      
ALTER TABLE DOCUMENT_EVENT_DATA
   ADD CONSTRAINT DT_TO_DED FOREIGN KEY (DATA_TYP_CD)
      REFERENCES DATA_TYPE (DATA_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INSURANCE_COMPANY_DOCM_ATTR  
   ADD CONSTRAINT INSCT_TO_ICDA FOREIGN KEY (INS_CMPY_TYP_ID)  
      REFERENCES INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID)  
      ON DELETE RESTRICT ON UPDATE RESTRICT;  

alter table LOB_MRKT_INS_CMPY_RTSP_XRF
   add constraint LMICRX_TO_RRPT foreign key (RRPT_ID)
      references RETROSPECTIVE_RATING_PROG_TYP (RRPT_ID)
      on delete restrict on update restrict;
      
alter table LOB_MRKT_INS_CMPY_RTSP_XRF
   add constraint LMICRX_TO_LMICX foreign key (LMICX_ID)
      references LOB_MARKET_INSURANCE_CMPY_XREF (LMICX_ID)
      on delete restrict on update restrict;

alter table RTSP_RATE_PROGRAM_YEAR_XREF
   add constraint RRPTYX_TO_RRPT foreign key (RRPT_ID)
      references RETROSPECTIVE_RATING_PROG_TYP (RRPT_ID)
      on delete restrict on update restrict;
      
alter table RTSP_RATE_PROGRAM_YEAR_XREF
   add constraint RRPTYX_TO_RRPYT foreign key (RRPYT_ID)
      references RETROSPECTIVE_RT_PROG_YR_TYP (RRPYT_ID)
      on delete restrict on update restrict;
      
alter table RETROSPECTIVE_STATUS_RSN_TYP
   add constraint RST_TO_RSRT foreign key (RTSP_STS_TYP_CD)
      references RETROSPECTIVE_STATUS_TYPE (RTSP_STS_TYP_CD)
      on delete restrict on update restrict;
      
alter table RETROSPECTIVE_RATING_PROG_DTL
   add constraint RRPD_TO_RRPT foreign key (RRPT_ID)
      references RETROSPECTIVE_RATING_PROG_TYP (RRPT_ID)
      on delete restrict on update restrict;
      
alter table RETROSPECTIVE_RATING_PROG_DTL
   add constraint RRPD_TO_RST foreign key (RTSP_STS_TYP_CD)
      references RETROSPECTIVE_STATUS_TYPE (RTSP_STS_TYP_CD)
      on delete restrict on update restrict;
      
alter table RETROSPECTIVE_RATING_PROG_DTL
   add constraint RRPD_TO_RSRT foreign key (RTSP_STS_RSN_TYP_CD)
      references RETROSPECTIVE_STATUS_RSN_TYP (RTSP_STS_RSN_TYP_CD)
      on delete restrict on update restrict;
      
alter table POLICY_PERIOD_RTSP_INTRPL_DTL
   add constraint PPRID_TO_RRPD foreign key (RRPD_ID)
      references RETROSPECTIVE_RATING_PROG_DTL (RRPD_ID)
      on delete restrict on update restrict;  
      
alter table RETROSPECTIVE_RATING_PROG_DTL
   add constraint RRPYT_TO_RRPD foreign key (RRPYT_ID)
      references RETROSPECTIVE_RT_PROG_YR_TYP (RRPYT_ID)
      on delete restrict on update restrict; 
      
alter table POLICY_PERIOD_RTSP_INTRPL_DTL
   add constraint PPRID_TO_PP foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict; 
      
alter table RETROSPECTIVE_RT_INTER_JUR_DTL
   add constraint RRIJD_TO_PPRID foreign key (PPRID_ID)
      references POLICY_PERIOD_RTSP_INTRPL_DTL (PPRID_ID)
      on delete restrict on update restrict;      

alter table RETROSPECTIVE_RATING_PROG_DTL
   add constraint USER_TO_RRPD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table RETROSPECTIVE_RATING_PROG_DTL
   add constraint USER_TO_RRPD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table RETRO_RATING_PROG_DTL_HIST
   add constraint RRPDH_TO_RRPT foreign key (RRPT_ID)
      references RETROSPECTIVE_RATING_PROG_TYP (RRPT_ID)
      on delete restrict on update restrict;
      
alter table RETRO_RATING_PROG_DTL_HIST
   add constraint RRPDH_TO_RST foreign key (RTSP_STS_TYP_CD)
      references RETROSPECTIVE_STATUS_TYPE (RTSP_STS_TYP_CD)
      on delete restrict on update restrict;
      
alter table RETRO_RATING_PROG_DTL_HIST
   add constraint RRPDH_TO_RSRT foreign key (RTSP_STS_RSN_TYP_CD)
      references RETROSPECTIVE_STATUS_RSN_TYP (RTSP_STS_RSN_TYP_CD)
      on delete restrict on update restrict;

alter table RETRO_RATING_PROG_DTL_HIST
   add constraint RRPYT_TO_RRPDH foreign key (RRPYT_ID)
      references RETROSPECTIVE_RT_PROG_YR_TYP (RRPYT_ID)
      on delete restrict on update restrict; 
	  
alter table RETRO_RATING_PROG_DTL_HIST
   add constraint USER_TO_RRPDH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table RETRO_RATING_PROG_DTL_HIST
   add constraint USER_TO_RRPDH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table RETRO_RATING_PROG_DTL_HIST
   add constraint RRPDH_TO_RRPD foreign key (RRPD_ID)
      references RETROSPECTIVE_RATING_PROG_DTL (RRPD_ID)
      on delete restrict on update restrict;
      
alter table POLICY_PERIOD_RTSP_INTRPL_DTL
   add constraint USER_TO_RRPY1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table POLICY_PERIOD_RTSP_INTRPL_DTL
   add constraint USER_TO_RRPY2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table PLCY_PRD_RTSP_INTRPL_DTL_HIST
   add constraint PPRIDH_TO_RRPD foreign key (RRPD_ID)
      references RETROSPECTIVE_RATING_PROG_DTL (RRPD_ID)
      on delete restrict on update restrict; 
	  
alter table PLCY_PRD_RTSP_INTRPL_DTL_HIST
   add constraint PPRIDH_TO_PP foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table PLCY_PRD_RTSP_INTRPL_DTL_HIST
   add constraint USER_TO_RRPYH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table PLCY_PRD_RTSP_INTRPL_DTL_HIST
   add constraint USER_TO_RRPYH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
    
alter table PLCY_PRD_RTSP_INTRPL_DTL_HIST
   add constraint PPRIDH_TO_PPRID foreign key (PPRID_ID)
      references POLICY_PERIOD_RTSP_INTRPL_DTL (PPRID_ID)
      on delete restrict on update restrict;
      
alter table RETROSPECTIVE_RT_INTER_JUR_DTL
   add constraint USER_TO_RRIJD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table RETROSPECTIVE_RT_INTER_JUR_DTL
   add constraint USER_TO_RRIJD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table RETRO_RT_INTER_JUR_DTL_HIST
   add constraint RRIJDH_TO_PPRID foreign key (PPRID_ID)
      references POLICY_PERIOD_RTSP_INTRPL_DTL (PPRID_ID)
      on delete restrict on update restrict; 

alter table RETRO_RT_INTER_JUR_DTL_HIST
   add constraint USER_TO_RRIJDH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table RETRO_RT_INTER_JUR_DTL_HIST
   add constraint USER_TO_RRIJDH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
	  
alter table RETRO_RT_INTER_JUR_DTL_HIST
   add constraint RRIJDH_TO_RRIJD foreign key (RRIJD_ID)
      references RETROSPECTIVE_RT_INTER_JUR_DTL (RRIJD_ID)
      on delete restrict on update restrict;
      
alter table CASH_RECEIPT_UNID_LN_ITEM_DTL
    add constraint CRULIST_TO_CRULID foreign key (CRULIST_CD)
        references CASH_RECT_UNID_LN_ITEM_STS_TYP (CRULIST_CD) 
        on delete restrict on update restrict;

alter table CASH_RECEIPT_UNID_LN_ITEM_DTL 
    add constraint CRLID_TO_CRULID foreign key (CRLID_ID) 
        references CASH_RECEIPT_LINE_ITEM_DETAIL (CRLID_ID) 
        on delete restrict on update restrict;

alter table CASH_RECEIPT_UNID_LN_ITEM_DTL
    add constraint USER_TO_CRULID1 foreign key (AUDIT_USER_ID_CREA) 
        references USERS (USER_ID) 
        on delete restrict on update restrict;

alter table CASH_RECEIPT_UNID_LN_ITEM_DTL
    add constraint USER_TO_CRULID2 foreign key (AUDIT_USER_ID_UPDT) 
        references USERS (USER_ID) 
        on delete restrict on update restrict;



alter table CASH_RECEIPT_LINE_ITEM_DETAIL 
    add constraint CASHRT_TO_CRLID foreign key (CASH_RECT_TYP_CD) 
        references CASH_RECEIPT_TYPE (CASH_RECT_TYP_CD) 
        on delete restrict on update restrict;

alter table CASH_RECEIPT_LINE_ITEM_DETAIL 
    add constraint CASHRCT_TO_CRLID foreign key (CASH_RECT_CNTX_TYP_CD) 
        references CASH_RECEIPT_CONTEXT_TYPE (CASH_RECT_CNTX_TYP_CD) 
        on delete restrict on update restrict;

alter table CASH_RECEIPT_LINE_ITEM_DETAIL
    add constraint USER_TO_CRLID1 foreign key (AUDIT_USER_ID_CREA) 
        references USERS (USER_ID) 
        on delete restrict on update restrict;

alter table CASH_RECEIPT_LINE_ITEM_DETAIL
    add constraint USER_TO_CRLID2 foreign key (AUDIT_USER_ID_UPDT) 
        references USERS (USER_ID) 
        on delete restrict on update restrict;

alter table CASH_RECEIPT_LINE_ITEM_DETAIL
    add constraint PPG_TO_CRLID foreign key (PLCY_PRD_GRP_ID)
        references POLICY_PERIOD_GROUP (PLCY_PRD_GRP_ID)
        on delete restrict on update restrict;

alter table CASH_RECEIPT_LINE_ITEM_DETAIL
    add constraint PP_TO_CRLID foreign key (PLCY_PRD_ID)
        references POLICY_PERIOD (PLCY_PRD_ID)
        on delete restrict on update restrict;



alter table CASH_RECEIPT_HEADER 
    add constraint CRNS_TO_CASHRH foreign key (CASH_RECT_NONCUST_SRC_ID) 
        references CASH_RECEIPT_NONCUSTOMER_SRC (CASH_RECT_NONCUST_SRC_ID) 
        on delete restrict on update restrict;

alter table CASH_RECEIPT_HEADER 
    add constraint CUST_TO_CASHRH foreign key (CUST_ID) 
        references CUSTOMER (CUST_ID) 
        on delete restrict on update restrict;

alter table CASH_RECEIPT_HEADER 
    add constraint CRMT_TO_CASHRH foreign key (CASH_RECT_MEDA_TYP_CD) 
        references CASH_RECEIPT_MEDIA_TYPE (CASH_RECT_MEDA_TYP_CD) 
        on delete restrict on update restrict;

alter table CASH_RECEIPT_HEADER
    add constraint USER_TO_CASHRH1 foreign key (AUDIT_USER_ID_CREA) 
        references USERS (USER_ID) 
        on delete restrict on update restrict;

alter table CASH_RECEIPT_HEADER
    add constraint USER_TO_CASHRH2 foreign key (AUDIT_USER_ID_UPDT) 
        references USERS (USER_ID) 
        on delete restrict on update restrict;



alter table CASH_RECEIPT_BATCH_HEADER 
    add constraint CRBST_TO_CRBH foreign key (CASH_RECT_BTCH_STS_TYP_CD) 
        references CASH_RECEIPT_BATCH_STATUS_TYPE (CASH_RECT_BTCH_STS_TYP_CD) 
        on delete restrict on update restrict;
alter table CASH_RECEIPT_BATCH_HEADER 
    add constraint CRBH_TO_CRCT foreign key (CRBH_BTCH_CNTX_TYP_CD) 
        references CASH_RECEIPT_CONTEXT_TYPE (CASH_RECT_CNTX_TYP_CD) 
        on delete restrict on update restrict;
        
alter table CASH_RECEIPT_BATCH_HEADER
    add constraint USER_TO_CRBH1 foreign key (AUDIT_USER_ID_CREA) 
        references USERS (USER_ID) 
        on delete restrict on update restrict;

alter table CASH_RECEIPT_BATCH_HEADER
    add constraint USER_TO_CRBH2 foreign key (AUDIT_USER_ID_UPDT) 
        references USERS (USER_ID) 
        on delete restrict on update restrict;



alter table CASH_RECEIPT_NONCUSTOMER_SRC
    add constraint USER_TO_CRNS1 foreign key (AUDIT_USER_ID_CREA) 
        references USERS (USER_ID) 
        on delete restrict on update restrict;

alter table CASH_RECEIPT_NONCUSTOMER_SRC
    add constraint USER_TO_CRNS2 foreign key (AUDIT_USER_ID_UPDT) 
        references USERS (USER_ID)
        on delete restrict on update restrict;

alter table CASH_RECEIPT_HEADER
    add constraint CRBH_TO_CASHRH foreign key (CRBH_ID) 
        references CASH_RECEIPT_BATCH_HEADER (CRBH_ID) 
        on delete restrict on update restrict;
 
alter table CASH_RECEIPT_LINE_ITEM_DETAIL
    add constraint CASHRH_TO_CRLID foreign key (CASH_RECT_HDR_ID) 
        references CASH_RECEIPT_HEADER  (CASH_RECT_HDR_ID) 
        on delete restrict on update restrict;
        
alter table CASH_RECEIPT_TYPE
	add constraint CASHRCT_TO_CASHRT foreign key (CASH_RECT_CNTX_TYP_CD)
		references CASH_RECEIPT_CONTEXT_TYPE (CASH_RECT_CNTX_TYP_CD)
		on delete restrict on update restrict;

alter table POLICY_PERIOD_COST_OF_SERVICE
   add constraint PPCOS_TO_PPP foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_COST_OF_SERVICE
   add constraint PPCOS_TO_COST foreign key (CST_OF_SERV_TYP_CD)
      references COST_OF_SERVICE_TYPE (CST_OF_SERV_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_COST_OF_SERVICE
   add constraint USER_TO_PPCOS1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table POLICY_PERIOD_COST_OF_SERVICE
   add constraint USER_TO_PPCOS2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table BATCH_CLASS_RATE_TIER
   add constraint BTCHC_TO_BCRT foreign key (BTCH_CLS_ID)
      references BATCH_CLASS (BTCH_CLS_ID)
      on delete restrict on update restrict;



alter table BATCH_CLASS_RELATIONSHIP
   add constraint BTCHC_TO_BCR foreign key (BTCH_CLS_ID)
      references BATCH_CLASS (BTCH_CLS_ID)
      on delete restrict on update restrict;
alter table BATCH_CLASS_RELATIONSHIP
    add constraint BTCHC_TO_BCR2 foreign key (BTCH_CLS_ID_RLT)
   references BATCH_CLASS (BTCH_CLS_ID)
   on delete restrict on update restrict;



      
      
alter table BATCH_CLASS_SUFFIX
   add constraint BTCHC_TO_BCS foreign key (BTCH_CLS_ID)
      references BATCH_CLASS (BTCH_CLS_ID)
      on delete restrict on update restrict;


      
alter table BATCH_CLASS
   add constraint IGT_TO_BTCHC foreign key (INDST_GRP_TYP_CD)
      references INDUSTRY_GROUP_TYPE (INDST_GRP_TYP_CD)
      on delete restrict on update restrict;

alter table BATCH_CLASS
   add constraint JT_TO_BTCHC foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table BATCH_CLASS
   add constraint PBT_TO_BTCHC foreign key (PREM_BS_TYP_CD)
      references PREMIUM_BASIS_TYPE (PREM_BS_TYP_CD)
      on delete restrict on update restrict;



alter table BATCH_CLASS
   add constraint ELPT_TO_BTCHC foreign key (EMPLR_LIAB_PGM_TYP_CD)
      references EMPLOYER_LIABILITY_PROGRAM_TYP (EMPLR_LIAB_PGM_TYP_CD)
      on delete restrict on update restrict;

alter table BATCH_CLASS
   add constraint HGT_TO_BTCHC foreign key (HZRD_GRP_TYP_CD)
      references HAZARD_GROUP_TYPE (HZRD_GRP_TYP_CD)
      on delete restrict on update restrict;

alter table BATCH_CLASS_RELATIONSHIP
   add constraint WCCRT_TO_BCR foreign key (WC_CLS_RLT_TYP_CD)
      references WC_CLASS_RELATIONSHIP_TYPE (WC_CLS_RLT_TYP_CD)
      on delete restrict on update restrict;


alter table BATCH_CLASS
   add constraint WCCT_TO_BTCHC foreign key (WC_CLS_TYP_CD)
      references WC_CLASS_TYPE (WC_CLS_TYP_CD)
      on delete restrict on update restrict;

alter table BATCH_CLASS
   add constraint WC_TO_BTCHC foreign key (WC_CLS_ID)
      references WC_CLASS (WC_CLS_ID)
      on delete restrict on update restrict;


alter table BATCH_CLASS_RATE_TIER
   add constraint MT_TO_BCRT foreign key (MRKT_TYP_CD)
      references MARKET_TYPE (MRKT_TYP_CD)
      on delete restrict on update restrict;
      
      
alter table CALCULATION_RESULT
	add constraint CALCRT_TO_CALCR foreign key (CALC_RSLT_TYP_CD)
	references CALCULATION_RESULT_TYPE (CALC_RSLT_TYP_CD)
	on delete restrict on update restrict;

alter table CALCULATION_RESULT_ATTR_GRP
	add constraint CALCR_TO_CRAG foreign key (CALC_RSLT_ID)
	references CALCULATION_RESULT (CALC_RSLT_ID)
	on delete restrict on update restrict;

alter table CALCULATION_RESULT_ATTR_GRP
	add constraint CRAGT_TO_CRAG foreign key (CALC_RSLT_ATTR_GRP_TYP_CD)
	references CALCULATION_RSLT_ATTR_GRP_TYP (CALC_RSLT_ATTR_GRP_TYP_CD)
	on delete restrict on update restrict;

alter table CALCULATION_RESULT_ATTRIBUTE
	add constraint CRAT_TO_CRA foreign key (CALC_RSLT_ATTR_TYP_CD)
	references CALCULATION_RESULT_ATTR_TYP (CALC_RSLT_ATTR_TYP_CD)
	on delete restrict on update restrict;

alter table CALCULATION_RESULT_ATTRIBUTE
	add constraint CRAG_TO_CRA foreign key (CALC_RSLT_ATTR_GRP_ID, CALC_RSLT_ATTR_GRP_SEQ_NO)
	references CALCULATION_RESULT_ATTR_GRP (CALC_RSLT_ATTR_GRP_ID, CALC_RSLT_ATTR_GRP_SEQ_NO)
	on delete restrict on update restrict;

alter table CALCULATION_RSLT_ATTR_GRP_TYP
	add constraint CALCRT_TO_CRAGT foreign key (CALC_RSLT_TYP_CD)
	references CALCULATION_RESULT_TYPE (CALC_RSLT_TYP_CD)
	on delete restrict on update restrict;

alter table CALCULATION_RESULT_ATTR_TYP
	add constraint CRAGT_TO_CRAT foreign key (CALC_RSLT_ATTR_GRP_TYP_CD)
	references CALCULATION_RSLT_ATTR_GRP_TYP (CALC_RSLT_ATTR_GRP_TYP_CD)
	on delete restrict on update restrict;

alter table CALCULATION_RESULT_ATTR_TYP
	add constraint DT_TO_CRAT foreign key (DATA_TYP_CD)
	references DATA_TYPE (DATA_TYP_CD)
	on delete restrict on update restrict;

alter table CALCULATION_RESULT_ATTR_TYP
	add constraint FRMTT_TO_CRAT foreign key (FRMT_TYP_CD)
	references FORMAT_TYPE (FRMT_TYP_CD)
	on delete restrict on update restrict;

alter table JURISDICTION_RULE
	add constraint JT_TO_JR foreign key (JUR_TYP_CD)
	references JURISDICTION_TYPE (JUR_TYP_CD)
	on delete restrict on update restrict;

alter table JURISDICTION_RULE
	add constraint JURRT_TO_JR foreign key (JUR_RL_TYP_CD)
	references JURISDICTION_RULE_TYPE (JUR_RL_TYP_CD)
	on delete restrict on update restrict;

alter table JURISDICTION_RULE_TYPE
	add constraint DT_TO_JURRT foreign key (DATA_TYP_CD)
	references DATA_TYPE (DATA_TYP_CD)
	on delete restrict on update restrict;

alter table JURISDICTION_RULE_TYPE
	add constraint FRMTT_TO_JURRT foreign key (FRMT_TYP_CD)
	references FORMAT_TYPE (FRMT_TYP_CD)
	on delete restrict on update restrict;

alter table JURISDICTION_BENEFIT_RULE_TYPE
	add constraint DT_TO_JBRT foreign key (DATA_TYP_CD)
	references DATA_TYPE (DATA_TYP_CD)
	on delete restrict on update restrict;

alter table JURISDICTION_BENEFIT_RULE_TYPE
	add constraint FRMTT_TO_JBRT foreign key (FRMT_TYP_CD)
	references FORMAT_TYPE (FRMT_TYP_CD)
	on delete restrict on update restrict;

alter table JURISDICTION_BENEFIT_RULE
	add constraint JBRT_TO_JBR foreign key (JUR_BNFT_RL_TYP_CD)
	references JURISDICTION_BENEFIT_RULE_TYPE (JUR_BNFT_RL_TYP_CD)
	on delete restrict on update restrict;

alter table JURISDICTION_BENEFIT_RULE
	add constraint JBT_TO_JBR foreign key (JUR_BNFT_TYP_ID)
	references JURISDICTION_BENEFIT_TYPE (JUR_BNFT_TYP_ID)
	on delete restrict on update restrict;

alter table JURISDICTION_BENEFIT_TYPE
	add constraint BNFTT_TO_JBT foreign key (BNFT_TYP_CD)
	references BENEFIT_TYPE (BNFT_TYP_CD)
	on delete restrict on update restrict;

alter table JURISDICTION_BENEFIT_TYPE
	add constraint JT_TO_JBT foreign key (JUR_TYP_CD)
	references JURISDICTION_TYPE (JUR_TYP_CD)
	on delete restrict on update restrict;

alter table JURS_BNFT_VAR_CALC_ATTR
	add constraint JBT_TO_JBVCA foreign key (JUR_BNFT_TYP_ID)
	references JURISDICTION_BENEFIT_TYPE (JUR_BNFT_TYP_ID)
	on delete restrict on update restrict;

alter table JURS_BNFT_VAR_CALC_ATTR
	add constraint VCAT_TO_JBVCA foreign key (VAR_CALC_ATTR_TYP_CD)
	references VARIABLE_CALCULATION_ATTR_TYP (VAR_CALC_ATTR_TYP_CD)
	on delete restrict on update restrict;

alter table JURS_BNFT_VAR_CALC_ATTR
	add constraint VCLT_TO_JBVCA foreign key (VAR_CALC_LVL_TYP_CD)
	references VARIABLE_CALCULATION_LEVEL_TYP (VAR_CALC_LVL_TYP_CD)
	on delete restrict on update restrict;

alter table VARIABLE_CALCULATION_ATTR_TYP
	add constraint DT_TO_VCAT foreign key (DATA_TYP_CD)
	references DATA_TYPE (DATA_TYP_CD)
	on delete restrict on update restrict;

alter table VARIABLE_CALCULATION_ATTR_TYP
	add constraint FRMTT_TO_VCAT foreign key (FRMT_TYP_CD)
	references FORMAT_TYPE (FRMT_TYP_CD)
	on delete restrict on update restrict;

alter table VCAT_VCASVT_XREF
	add constraint VCAT_TO_VVX foreign key (VAR_CALC_ATTR_TYP_CD)
	references VARIABLE_CALCULATION_ATTR_TYP (VAR_CALC_ATTR_TYP_CD)
	on delete restrict on update restrict;

alter table VCAT_VCASVT_XREF
	add constraint VCASVT_TO_VVX foreign key (VAR_CALC_ATTR_SEL_VAL_TYP_CD)
	references VAR_CALC_ATTR_SEL_VAL_TYP (VAR_CALC_ATTR_SEL_VAL_TYP_CD)
	on delete restrict on update restrict;

alter table JURS_SCHEDULED_IMPR_AWARD_BNFT
    add constraint JT_TO_JSIAB foreign key (JUR_TYP_CD)
    references JURISDICTION_TYPE (JUR_TYP_CD)
    on delete restrict on update restrict;

alter table JURS_SCHEDULED_IMPR_AWARD_BNFT
    add constraint JBT_TO_JSIAB foreign key (JUR_BNFT_TYP_ID)
    references JURISDICTION_BENEFIT_TYPE (JUR_BNFT_TYP_ID)
    on delete restrict on update restrict;

alter table JURS_SCHEDULED_IMPR_AWARD_BNFT
    add constraint SIAIT_TO_JSIAB foreign key (SCHD_IMPR_AWARD_INJR_TYP_CD)
    references SCHEDULED_IMPR_AWARD_INJR_TYP (SCHD_IMPR_AWARD_INJR_TYP_CD)
    on delete restrict on update restrict;

alter table JURISDICTION_BENEFIT_OFFSET_RL
	add constraint OFSTT_TO_JBOR foreign key (OFST_TYP_CD)
	references OFFSET_TYPE (OFST_TYP_CD)
	on delete restrict on update restrict;

alter table JURISDICTION_BENEFIT_OFFSET_RL
	add constraint JBT_TO_JBOR foreign key (JUR_BNFT_TYP_ID)
	references JURISDICTION_BENEFIT_TYPE (JUR_BNFT_TYP_ID)
	on delete restrict on update restrict;

alter table JURISDICTION_BENEFIT_OFFSET_RL
	add constraint OCT_TO_JBOR foreign key (OFST_CTG_TYP_CD)
	references OFFSET_CATEGORY_TYPE (OFST_CTG_TYP_CD)
	on delete restrict on update restrict;

alter table JURISDICTION_BENEFIT_ADDON_RL
	add constraint ADDT_TO_JBAR foreign key (ADD_TYP_CD)
	references ADDON_TYPE (ADD_TYP_CD)
	on delete restrict on update restrict;

alter table JURISDICTION_BENEFIT_ADDON_RL
	add constraint JBT_TO_JBAR foreign key (JUR_BNFT_TYP_ID)
	references JURISDICTION_BENEFIT_TYPE (JUR_BNFT_TYP_ID)
	on delete restrict on update restrict;

alter table JURISDICTION_BENEFIT_ADDON_RL
	add constraint ADDCT_TO_JBAR foreign key (ADD_CTG_TYP_CD)
	references ADDON_CATEGORY_TYPE (ADD_CTG_TYP_CD)
	on delete restrict on update restrict;

alter table TASK_DOCUMENT_KEY
	add constraint TASK_TO_TDK foreign key (TASK_ID)
	references TASK (TASK_ID)
	on delete restrict on update restrict;            

alter table TASK_DOCUMENT_KEY
	add constraint TDK_TO_IDK foreign key (INOW_DOCM_KY_ID)
	references INOW_DOCUMENT_KEY (INOW_DOCM_KY_ID)
	on delete restrict on update restrict;	


-- CONSTRAINTS FOR WORKSHEET_RATING_ADJUSTMENT

ALTER TABLE WORKSHEET_RATING_ADJUSTMENT ADD 
  CONSTRAINT WS_TO_WRA  FOREIGN KEY (WKSHT_ID) 
    REFERENCES WORKSHEET (WKSHT_ID) 
      ON DELETE RESTRICT ON UPDATE RESTRICT;
      
ALTER TABLE WORKSHEET_RATING_ADJUSTMENT ADD 
  CONSTRAINT RASF_TO_WRA FOREIGN KEY (RT_ADJ_SCH_FCTR_ID) 
    REFERENCES RATING_ADJUSTMENT_SCH_FCTR (RT_ADJ_SCH_FCTR_ID) 
      ON DELETE RESTRICT ON UPDATE RESTRICT;    
      
--  CONSTRAINTS FOR RATING_ADJUSTMENT_SCH_FCTR     
ALTER TABLE RATING_ADJUSTMENT_SCH_FCTR ADD 
  CONSTRAINT RAST_TO_RASF FOREIGN KEY (RT_ADJ_SCH_TYP_CD) 
    REFERENCES RATING_ADJUSTMENT_SCHEDULE_TYP (RT_ADJ_SCH_TYP_CD) 
      ON DELETE RESTRICT ON UPDATE RESTRICT;        
     
ALTER TABLE RATING_ADJUSTMENT_SCH_FCTR ADD 
  CONSTRAINT RAFT_TO_RASF FOREIGN KEY (RT_ADJ_FCTR_TYP_CD) 
    REFERENCES RATING_ADJUSTMENT_FACTOR_TYPE (RT_ADJ_FCTR_TYP_CD) 
      ON DELETE RESTRICT ON UPDATE RESTRICT;
      
ALTER TABLE RATING_ADJUSTMENT_SCH_FCTR ADD 
  CONSTRAINT RET_TO_RASF FOREIGN KEY (RT_ELEM_TYP_CD) 
    REFERENCES RATING_ELEMENT_TYPE (RT_ELEM_TYP_CD) 
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE RATING_ADJUSTMENT_SCH_FCTR ADD 
  CONSTRAINT LMICJX_TO_RASF FOREIGN KEY (LMICJX_ID) 
    REFERENCES LOB_MRKT_INS_CMPY_JUR_XREF (LMICJX_ID) 
      ON DELETE RESTRICT ON UPDATE RESTRICT;      

ALTER TABLE DOCUMENT_STATUS_STATE_XREF 
  ADD CONSTRAINT DSTST_TO_DSSX FOREIGN KEY (DOCM_STS_TYP_CD) 
    REFERENCES DOCUMENT_STATUS_TYPE (DOCM_STS_TYP_CD) 
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_STATUS_STATE_XREF ADD 
  CONSTRAINT DSTTT_TO_DSSX FOREIGN KEY (DOCM_STT_TYP_CD) 
    REFERENCES DOCUMENT_STATE_TYPE (DOCM_STT_TYP_CD) 
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCM_STS_STT_ACTN_TRANS_XREF ADD 
  CONSTRAINT DSSAT_TO_DSSATX FOREIGN KEY (DOCM_STS_STT_ACTN_TYP_CD) 
    REFERENCES DOCUMENT_STATUS_STT_ACTN_TYP (DOCM_STS_STT_ACTN_TYP_CD) 
      ON DELETE RESTRICT ON UPDATE RESTRICT;
      
ALTER TABLE DOCM_STS_STT_ACTN_TRANS_XREF ADD 
  CONSTRAINT DSSX_TO_DSSATX2 FOREIGN KEY (DOCM_STS_STT_XREF_ID_TO) 
    REFERENCES DOCUMENT_STATUS_STATE_XREF (DOCM_STS_STT_XREF_ID) 
      ON DELETE RESTRICT ON UPDATE RESTRICT;
      
ALTER TABLE DOCM_STS_STT_ACTN_TRANS_XREF ADD 
  CONSTRAINT DSSX_TO_DSSATX1 FOREIGN KEY (DOCM_STS_STT_XREF_ID_FR) 
    REFERENCES DOCUMENT_STATUS_STATE_XREF (DOCM_STS_STT_XREF_ID) 
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_TYPE_VERSION_TARND ADD
  CONSTRAINT DTV_TO_DTVT FOREIGN KEY (DOCM_TYP_VER_ID)
    REFERENCES DOCUMENT_TYPE_VERSION (DOCM_TYP_VER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_TYPE_VERSION ADD CONSTRAINT DFCSGT_TO_DTV
 FOREIGN KEY (DOCM_FLAT_CANC_SYS_GEN_TYP_CD) 
  REFERENCES DOCUMENT_FLAT_CANC_SYS_GEN_TYP (DOCM_FLAT_CANC_SYS_GEN_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;   

ALTER TABLE DOCUMENT_TYPE_VERSION_TARND ADD
  CONSTRAINT DTT_TO_DTVT FOREIGN KEY (DOCM_TARND_TYP_ID)
    REFERENCES DOCUMENT_TURNAROUND_TYPE (DOCM_TARND_TYP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_DELIVERY_DEVICE_TYPE ADD
  CONSTRAINT DDT_TO_DDDT FOREIGN KEY (DOCM_DLVR_TYP_CD)
    REFERENCES DOCUMENT_DELIVERY_TYPE (DOCM_DLVR_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_CTG_TYP_CNTX_XREF ADD
 CONSTRAINT DOCMCT_TO_DCTCX FOREIGN KEY (DOCM_CTG_TYP_CD)
  REFERENCES DOCUMENT_CATEGORY_TYPE (DOCM_CTG_TYP_CD)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
  
ALTER TABLE DOCUMENT_CTG_TYP_CNTX_XREF ADD  
 CONSTRAINT ACT_TO_DCTCX FOREIGN KEY (APP_CNTX_TYP_CD)
  REFERENCES APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_CTG_TYP_CNTX_XREF ADD  
 CONSTRAINT ASCT_TO_DCTCX FOREIGN KEY (APP_SUB_CNTX_TYP_CD)
  REFERENCES APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
    
ALTER TABLE DOCUMENT_TYPE_VERSION_SEL_RL ADD CONSTRAINT DTVSRT_TO_DTVSR
  FOREIGN KEY (DOCM_TYP_VER_SEL_RL_TYP_CD)
    REFERENCES DOCUMENT_TYPE_VER_SEL_RL_TYP (DOCM_TYP_VER_SEL_RL_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_TYPE_VERSION_SEL_RL ADD CONSTRAINT DCTCX_TO_DTVSR
  FOREIGN KEY (DCTCX_ID)
    REFERENCES DOCUMENT_CTG_TYP_CNTX_XREF (DCTCX_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table INOW_DOCUMENT_TYPE
	add constraint EVNTT_TO_IDOCMT foreign key (EVNT_TYP_CD)
	references EVENT_TYPE (EVNT_TYP_CD)
	on delete restrict on update restrict;      

ALTER TABLE CANCELLATION_METH_STS_RSN_XREF ADD CONSTRAINT CMT_TO_CMSRX
  FOREIGN KEY (CANC_METH_TYP_CD)
    REFERENCES CANCELLATION_METHOD_TYPE (CANC_METH_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;	
      
ALTER TABLE CANCELLATION_METH_STS_RSN_XREF ADD CONSTRAINT PST_TO_CMSRX
  FOREIGN KEY (PLCY_STS_TYP_CD)
    REFERENCES POLICY_STATUS_TYPE (PLCY_STS_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;	      
      
ALTER TABLE CANCELLATION_METH_STS_RSN_XREF ADD CONSTRAINT PSRT_TO_CMSRX
  FOREIGN KEY (PLCY_STS_RSN_TYP_CD)
    REFERENCES POLICY_STATUS_REASON_TYPE (PLCY_STS_RSN_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;	
ALTER TABLE WCPOLS_EVENT_INTERFACE  
   ADD CONSTRAINT PLCYP_TO_WEI FOREIGN KEY (PLCY_PRD_ID)
      REFERENCES POLICY_PERIOD (PLCY_PRD_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE WCPOLS_EVENT_INTERFACE  
   ADD CONSTRAINT EVNTT_TO_WEI FOREIGN KEY (EVNT_TYP_CD)
      REFERENCES EVENT_TYPE (EVNT_TYP_CD)
     ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE WCPOLS_EVENT_INTERFACE
   ADD CONSTRAINT USER_TO_WEI1 FOREIGN KEY (AUDIT_USER_ID_CREA )
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE WCPOLS_EVENT_INTERFACE
   ADD CONSTRAINT USER_TO_WEI2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
     ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table ADDON_RULE_TYPE
	add constraint DT_TO_ADDRT foreign key (DATA_TYP_CD)
	references DATA_TYPE (DATA_TYP_CD)
	on delete restrict on update restrict;

alter table ADDON_RULE_TYPE
	add constraint FRMTT_TO_ADDRT foreign key (FRMT_TYP_CD)
	references FORMAT_TYPE (FRMT_TYP_CD)
	on delete restrict on update restrict;

alter table OFFSET_RULE_TYPE
	add constraint DT_TO_OFSTRT foreign key (DATA_TYP_CD)
	references DATA_TYPE (DATA_TYP_CD)
	on delete restrict on update restrict;

alter table OFFSET_RULE_TYPE
	add constraint FRMTT_TO_OFSTRT foreign key (FRMT_TYP_CD)
	references FORMAT_TYPE (FRMT_TYP_CD)
	on delete restrict on update restrict;

alter table JURISDICTION_BENEFIT_ADDON_RL
	add constraint ADDRT_TO_JBAR foreign key (ADD_RL_TYP_CD)
	references ADDON_RULE_TYPE (ADD_RL_TYP_CD)
	on delete restrict on update restrict;

alter table JURISDICTION_BENEFIT_OFFSET_RL
	add constraint OFSTRT_TO_JBOR foreign key (OFST_RL_TYP_CD)
	references OFFSET_RULE_TYPE (OFST_RL_TYP_CD)
	on delete restrict on update restrict;

ALTER TABLE JURISDICTION_ADJUSTMENT_RL_TYP
    ADD CONSTRAINT FRMTT_TO_JART
    FOREIGN KEY(FRMT_TYP_CD)
    REFERENCES FORMAT_TYPE(FRMT_TYP_CD)
      on delete restrict on update restrict;      

ALTER TABLE JURISDICTION_ADJUSTMENT_RL_TYP
    ADD CONSTRAINT DT_TO_JART
    FOREIGN KEY(DATA_TYP_CD)
    REFERENCES DATA_TYPE(DATA_TYP_CD)
     on delete restrict on update restrict;      

ALTER TABLE JURISDICTION_ADJUSTMENT_RULE
    ADD CONSTRAINT JAT_TO_JAR
    FOREIGN KEY(JUR_ADJ_TYP_ID)
    REFERENCES JURISDICTION_ADJUSTMENT_TYPE(JUR_ADJ_TYP_ID)
      on delete restrict on update restrict;

alter table JURISDICTION_ADJUSTMENT_RULE
   add constraint JART_TO_JAR foreign key (JUR_ADJ_RL_TYP_CD)
      references JURISDICTION_ADJUSTMENT_RL_TYP (JUR_ADJ_RL_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE JURISDICTION_ADJUSTMENT_TYPE
    ADD CONSTRAINT ADDCT_TO_JAT
    FOREIGN KEY(ADD_CTG_TYP_CD)
    REFERENCES ADDON_CATEGORY_TYPE(ADD_CTG_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE JURISDICTION_ADJUSTMENT_TYPE
    ADD CONSTRAINT ADDT_TO_JAT
    FOREIGN KEY(ADD_TYP_CD)
    REFERENCES ADDON_TYPE(ADD_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE JURISDICTION_ADJUSTMENT_TYPE
    ADD CONSTRAINT OFSTT_TO_JAT
    FOREIGN KEY(OFST_TYP_CD)
    REFERENCES OFFSET_TYPE(OFST_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE JURISDICTION_ADJUSTMENT_TYPE
    ADD CONSTRAINT JT_TO_JAT
    FOREIGN KEY(JUR_TYP_CD)
    REFERENCES JURISDICTION_TYPE(JUR_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE JURISDICTION_ADJUSTMENT_TYPE
    ADD CONSTRAINT LOBT_TO_JAT
    FOREIGN KEY(LOB_TYP_CD)
    REFERENCES LINE_OF_BUSINESS_TYPE(LOB_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE JURISDICTION_ADJUSTMENT_TYPE
    ADD CONSTRAINT OCT_TO_JAT
    FOREIGN KEY(OFST_CTG_TYP_CD)
    REFERENCES OFFSET_CATEGORY_TYPE(OFST_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_ADJUSTMENT
   add constraint USER_TO_CA1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_ADJUSTMENT
   add constraint USER_TO_CA2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

ALTER TABLE CLAIM_ADJUSTMENT
    ADD CONSTRAINT JAT_TO_CA
    FOREIGN KEY(JUR_ADJ_TYP_ID)
    REFERENCES JURISDICTION_ADJUSTMENT_TYPE(JUR_ADJ_TYP_ID)
      on delete restrict on update restrict;

ALTER TABLE CLAIM_ADJUSTMENT
    ADD CONSTRAINT CLM_TO_CA
    FOREIGN KEY(AGRE_ID)
    REFERENCES CLAIM(AGRE_ID)
      on delete restrict on update restrict;

ALTER TABLE CLAIM_ADJUSTMENT_HISTORY
    ADD CONSTRAINT CA_TO_CLMAH    FOREIGN KEY(CLM_ADJ_ID)
    REFERENCES CLAIM_ADJUSTMENT(CLM_ADJ_ID)
      on delete restrict on update restrict;
 
ALTER TABLE CLAIM_ADJUSTMENT_HISTORY
    ADD CONSTRAINT CLM_TO_CLMAH    FOREIGN KEY(AGRE_ID)
    REFERENCES CLAIM(AGRE_ID)
      on delete restrict on update restrict;
 
ALTER TABLE CLAIM_ADJUSTMENT_HISTORY
    ADD CONSTRAINT JAT_TO_CLMAH    FOREIGN KEY(JUR_ADJ_TYP_ID)
    REFERENCES JURISDICTION_ADJUSTMENT_TYPE(JUR_ADJ_TYP_ID)
      on delete restrict on update restrict;
 
alter table CLAIM_ADJUSTMENT_HISTORY
   add constraint USER_TO_CLMAH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
 
alter table CLAIM_ADJUSTMENT_HISTORY
   add constraint USER_TO_CLMAH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict; 

 
alter table  CORESUITE_RESERVE_STAGING
   add constraint CLM_TO_CRS foreign key (AGRE_ID)
   references CLAIM (AGRE_ID)
   on delete restrict on update restrict;


alter table  CORESUITE_RESERVE_STAGING
   add constraint CLMSTST_TO_CRS foreign key (CLM_STS_TYP_CD)
   references CLAIM_STATUS_TYPE (CLM_STS_TYP_CD)
   on delete restrict on update restrict;

alter table CORESUITE_RESERVE_STAGING
   add constraint USER_TO_CRS1 foreign key (AUDIT_USER_ID_CREA)
   references USERS (USER_ID)
   on delete restrict on update restrict;

alter table CORESUITE_RESERVE_STAGING
   add constraint USER_TO_CRS2 foreign key (AUDIT_USER_ID_UPDT)
   references USERS (USER_ID)
   on delete restrict on update restrict;


ALTER TABLE WCPOLS_EVENT_INTERFACE 
ADD CONSTRAINT WBP_TO_WEI FOREIGN KEY (WCPOLS_BTCH_PRCS_ID)
REFERENCES WCPOLS_BATCH_PROCESS (WCPOLS_BTCH_PRCS_ID)
ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table RATING_ASSEMBLY_JUR_BNFT_XREF
	add constraint RA_TO_RAJBX foreign key (RT_ASMBL_ID)
	references RATING_ASSEMBLY (RT_ASMBL_ID)
	on delete restrict on update restrict;

alter table RATING_ASSEMBLY_JUR_BNFT_XREF
	add constraint JBT_TO_RAJBX foreign key (JUR_BNFT_TYP_ID)
	references JURISDICTION_BENEFIT_TYPE (JUR_BNFT_TYP_ID)
	on delete restrict on update restrict;
    

ALTER TABLE POLICY_BLOCK_HISTORY
    ADD CONSTRAINT PLCY_TO_PBH
    FOREIGN KEY(AGRE_ID)
    REFERENCES POLICY(AGRE_ID)
      on delete restrict on update restrict;
ALTER TABLE POLICY_BLOCK_HISTORY
    ADD CONSTRAINT PP_TO_PBH
    FOREIGN KEY(PLCY_PRD_ID)    
	REFERENCES POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

ALTER TABLE WC_CLASS_RELATIONSHIP
    ADD CONSTRAINT WCC_TO_WCCRRLT
    FOREIGN KEY(WC_CLS_ID_RLT)
    REFERENCES WC_CLASS(WC_CLS_ID)
      on delete restrict on update restrict;

ALTER TABLE POLICY_PERIOD_RATING_ELEM_HIST
    ADD CONSTRAINT RELT_TO_PPREH
    FOREIGN KEY(RT_ELEM_LMCJ_TYP_ID)
    REFERENCES RATING_ELEMENT_LMCJ_TYPE(RT_ELEM_LMCJ_TYP_ID)
      on delete restrict on update restrict;

ALTER TABLE POLICY_STATUS_RSN_CLS_RSN_TYP
    ADD CONSTRAINT PSRT_TO_PSRCRT
    FOREIGN KEY(PLCY_STS_RSN_TYP_CD)
    REFERENCES POLICY_STATUS_REASON_TYPE(PLCY_STS_RSN_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE ROLE_GROUP_INDUSTRY_CODE 
    ADD CONSTRAINT RG_TO_RGINDSTC
    FOREIGN KEY(ROLE_GRP_ID)
    REFERENCES ROLE_GROUP(ROLE_GRP_ID)
      on delete restrict on update restrict;

alter table ROLE_GROUP_INDUSTRY_CODE
   add constraint ST_TO_RGINDSTC foreign key (SIC_TYP_CD)
      references SIC_TYPE (SIC_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_GROUP_INDUSTRY_CODE
   add constraint NT_TO_RGINDSTC foreign key (NAICS_TYP_CD)
      references NAICS_TYPE (NAICS_TYP_CD)
      on delete restrict on update restrict;
      
alter table ROLE_GROUP_INDUSTRY_CODE
  add constraint USER_TO_RGINDSTC1 
   foreign key (AUDIT_USER_ID_CREA)references USERS (USER_ID)
   on delete restrict on update restrict;
 
alter table ROLE_GROUP_INDUSTRY_CODE 
  add constraint USER_TO_RGINDSTC2 
   foreign key (AUDIT_USER_ID_UPDT)references USERS (USER_ID)
   on delete restrict on update restrict;
   

alter table ROLE_GROUP_INDUSTRY_CODE_HIST
    add constraint RGIC_TO_RGINDSTCH foreign key (ROLE_GRP_INDST_CD_ID)
       references ROLE_GROUP_INDUSTRY_CODE(ROLE_GRP_INDST_CD_ID)
      on delete restrict on update restrict;


ALTER TABLE ROLE_GROUP_INDUSTRY_CODE_HIST
    ADD CONSTRAINT RG_TO_RGINDSTCH
    FOREIGN KEY(ROLE_GRP_ID)
    REFERENCES ROLE_GROUP(ROLE_GRP_ID)
      on delete restrict on update restrict;
      
alter table ROLE_GROUP_INDUSTRY_CODE_HIST
   add constraint ST_TO_RGINDSTCH foreign key (SIC_TYP_CD)
      references SIC_TYPE (SIC_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_GROUP_INDUSTRY_CODE_HIST
   add constraint NT_TO_RGINDSTCH foreign key (NAICS_TYP_CD)
      references NAICS_TYPE (NAICS_TYP_CD)
      on delete restrict on update restrict;
      
alter table ROLE_GROUP_INDUSTRY_CODE_HIST
  add constraint USER_TO_RGINDSTCH1 
   foreign key (AUDIT_USER_ID_CREA)references USERS (USER_ID)
   on delete restrict on update restrict;
 
alter table ROLE_GROUP_INDUSTRY_CODE_HIST 
  add constraint USER_TO_RGINDSTCH2 
   foreign key (AUDIT_USER_ID_UPDT)references USERS (USER_ID)
   on delete restrict on update restrict;
   
ALTER TABLE POLICY_PERIOD_RATING_ELEM_HIST
    ADD CONSTRAINT REDEDT_TO_PPREH
    FOREIGN KEY(RT_ELEM_DED_TYP_ID)
    REFERENCES RATING_ELEMENT_DEDUCTIBLE_TYPE(RT_ELEM_DED_TYP_ID)
      on delete restrict on update restrict;

ALTER TABLE POLICY_PERIOD_RATING_ELEM_HIST
    ADD CONSTRAINT LDD_TO_PPREH
    FOREIGN KEY(LDD_ID)
    REFERENCES LARGE_DEDUCTIBLE_DETAIL(LDD_ID)
      on delete restrict on update restrict;

ALTER TABLE POLICY_CONTROL_ELEMENT_HISTORY
    ADD CONSTRAINT CEST_TO_PCEH
    FOREIGN KEY(CTL_ELEM_SUB_TYP_ID)
    REFERENCES CONTROL_ELEMENT_SUB_TYPE(CTL_ELEM_SUB_TYP_ID)
      on delete restrict on update restrict;

ALTER TABLE WC_CLASS
    ADD CONSTRAINT IST_TO_WCC
    FOREIGN KEY(INDST_SCH_TYP_CD)
    REFERENCES INDUSTRY_SCHEDULE_TYPE(INDST_SCH_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE BLOCK_TYPE
    ADD CONSTRAINT APPT_TO_BT
    FOREIGN KEY(APP_TYP_CD)
    REFERENCES APPLICATION_TYPE(APP_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE BLOCK_HISTORY
    ADD CONSTRAINT BT_TO_BLKH
    FOREIGN KEY(BLK_TYP_CD)
    REFERENCES BLOCK_TYPE(BLK_TYP_CD)
      on delete restrict on update restrict;
      
ALTER TABLE OUTBOUND_EXTERNAL_INTERFACE
ADD CONSTRAINT IT_TO_OEI FOREIGN KEY (INTFC_TYP_CD)
      REFERENCES INTERFACE_TYPE (INTFC_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE OUTBOUND_EXTERNAL_INTERFACE
ADD CONSTRAINT ACT_TO_OEI FOREIGN KEY (APP_CNTX_TYP_CD)
      REFERENCES APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
      
ALTER TABLE OUTBOUND_EXTERNAL_INTERFACE
ADD CONSTRAINT ASCT_TO_OEI FOREIGN KEY (APP_SUB_CNTX_TYP_CD)
      REFERENCES APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE OUTBOUND_EXTERNAL_INTERFACE
ADD CONSTRAINT EVNTT_TO_OEI FOREIGN KEY (EVNT_TYP_CD)
      REFERENCES EVENT_TYPE (EVNT_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE OUTBOUND_EXTERNAL_INTERFACE
ADD CONSTRAINT USER_TO_OEI1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE OUTBOUND_EXTERNAL_INTERFACE
   	ADD CONSTRAINT USER_TO_OEI2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
      
ALTER TABLE OUTBOUND_EXTERNAL_INTFC_HIST
	ADD CONSTRAINT IT_TO_OEIH FOREIGN KEY
	(INTFC_TYP_CD)
	REFERENCES INTERFACE_TYPE (INTFC_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE OUTBOUND_EXTERNAL_INTFC_HIST
	ADD CONSTRAINT ACT_TO_OEIH FOREIGN KEY (APP_CNTX_TYP_CD)
	REFERENCES APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE OUTBOUND_EXTERNAL_INTFC_HIST  
	ADD CONSTRAINT ASCT_TO_OEIH FOREIGN KEY (APP_SUB_CNTX_TYP_CD)
	REFERENCES APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
	
ALTER TABLE OUTBOUND_EXTERNAL_INTFC_HIST
	ADD CONSTRAINT EVNTT_TO_OEIH FOREIGN KEY (EVNT_TYP_CD)
	REFERENCES EVENT_TYPE (EVNT_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
	
ALTER TABLE OUTBOUND_EXTERNAL_INTFC_HIST
	ADD CONSTRAINT USER_TO_OEIH1 FOREIGN KEY (AUDIT_USER_ID_CREA)
	REFERENCES USERS (USER_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE OUTBOUND_EXTERNAL_INTFC_HIST
	ADD CONSTRAINT USER_TO_OEIH2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
	REFERENCES USERS (USER_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;  

--  CONSTRAINTS FOR EXPERIENCE_MODIFIER_INTFC_00   
       
      alter table EXPERIENCE_MODIFIER_INTFC_00
         add constraint USER_TO_EMI001 foreign key (AUDIT_USER_ID_CREA)
            references USERS (USER_ID)
            on delete restrict on update restrict;
 
 
      alter table EXPERIENCE_MODIFIER_INTFC_00
         add constraint USER_TO_EMI002 foreign key (AUDIT_USER_ID_UPDT)
            references USERS (USER_ID)
            on delete restrict on update restrict;
 
 
 --  CONSTRAINTS FOR EXPERIENCE_MODIFIER_INTFC_01   
 
	 alter table EXPERIENCE_MODIFIER_INTFC_01
	   add constraint EMI00_TO_EMI01 foreign key (EMI00_ID)
	      references EXPERIENCE_MODIFIER_INTFC_00 (EMI00_ID)
	      on delete restrict on update restrict;
	      
          	 
      alter table EXPERIENCE_MODIFIER_INTFC_01
         add constraint USER_TO_EMI011 foreign key (AUDIT_USER_ID_CREA)
            references USERS (USER_ID)
            on delete restrict on update restrict;
 
 
      alter table EXPERIENCE_MODIFIER_INTFC_01
         add constraint USER_TO_EMI012 foreign key (AUDIT_USER_ID_UPDT)
            references USERS (USER_ID)
            on delete restrict on update restrict;
            
 
 --  CONSTRAINTS FOR EXPERIENCE_MODIFIER_INTFC_A1   
 
 	 alter table EXPERIENCE_MODIFIER_INTFC_A1
	   add constraint EMI01_TO_EMIA1 foreign key (EMI01_ID)
	      references EXPERIENCE_MODIFIER_INTFC_01 (EMI01_ID)
	      on delete restrict on update restrict;
 
      alter table EXPERIENCE_MODIFIER_INTFC_A1
         add constraint USER_TO_EMIA11 foreign key (AUDIT_USER_ID_CREA)
            references USERS (USER_ID)
            on delete restrict on update restrict;
      
      alter table EXPERIENCE_MODIFIER_INTFC_A1
         add constraint USER_TO_EMIA12 foreign key (AUDIT_USER_ID_UPDT)
            references USERS (USER_ID)
            on delete restrict on update restrict;
            
            
 --  CONSTRAINTS FOR EXPERIENCE_MODIFIER_INTFC_02   
      
 	 alter table EXPERIENCE_MODIFIER_INTFC_02
	   add constraint EMI01_TO_EMI02 foreign key (EMI01_ID)
	      references EXPERIENCE_MODIFIER_INTFC_01 (EMI01_ID)
	      on delete restrict on update restrict;
 
	      
      alter table EXPERIENCE_MODIFIER_INTFC_02
         add constraint USER_TO_EMI021 foreign key (AUDIT_USER_ID_CREA)
            references USERS (USER_ID)
            on delete restrict on update restrict;
      
      alter table EXPERIENCE_MODIFIER_INTFC_02
         add constraint USER_TO_EMI022 foreign key (AUDIT_USER_ID_UPDT)
            references USERS (USER_ID)
            on delete restrict on update restrict;
      
      
 --  CONSTRAINTS FOR EXPERIENCE_MODIFIER_INTFC_03   
 
    alter table EXPERIENCE_MODIFIER_INTFC_03
	   add constraint EMI02_TO_EMI03 foreign key (EMI02_ID)
	      references EXPERIENCE_MODIFIER_INTFC_02 (EMI02_ID)
	      on delete restrict on update restrict;
	      
      alter table EXPERIENCE_MODIFIER_INTFC_03
         add constraint USER_TO_EMI031 foreign key (AUDIT_USER_ID_CREA)
            references USERS (USER_ID)
            on delete restrict on update restrict;
      
      alter table EXPERIENCE_MODIFIER_INTFC_03
         add constraint USER_TO_EMI032 foreign key (AUDIT_USER_ID_UPDT)
            references USERS (USER_ID)
      on delete restrict on update restrict;
      
      
--  CONSTRAINTS FOR EXPERIENCE_MODIFIER_INTFC_04   
      
	alter table EXPERIENCE_MODIFIER_INTFC_04
	   add constraint EMI01_TO_EMI04 foreign key (EMI01_ID)
	      references EXPERIENCE_MODIFIER_INTFC_01 (EMI01_ID)
	      on delete restrict on update restrict;
	      
      alter table EXPERIENCE_MODIFIER_INTFC_04
         add constraint USER_TO_EMI041 foreign key (AUDIT_USER_ID_CREA)
            references USERS (USER_ID)
            on delete restrict on update restrict;
      
      alter table EXPERIENCE_MODIFIER_INTFC_04
         add constraint USER_TO_EMI042 foreign key (AUDIT_USER_ID_UPDT)
            references USERS (USER_ID)
            on delete restrict on update restrict;
            
            
            
--  CONSTRAINTS FOR EXPERIENCE_MODIFIER_INTFC_05   

	alter table EXPERIENCE_MODIFIER_INTFC_05
	   add constraint EMI01_TO_EMI05 foreign key (EMI01_ID)
	      references EXPERIENCE_MODIFIER_INTFC_01 (EMI01_ID)
	      on delete restrict on update restrict;
            
	alter table EXPERIENCE_MODIFIER_INTFC_05
	   add constraint USER_TO_EMI051 foreign key (AUDIT_USER_ID_CREA)
	      references USERS (USER_ID)
	      on delete restrict on update restrict;

	alter table EXPERIENCE_MODIFIER_INTFC_05
	   add constraint USER_TO_EMI052 foreign key (AUDIT_USER_ID_UPDT)
	      references USERS (USER_ID)
	      on delete restrict on update restrict;


--  CONSTRAINTS FOR EXPERIENCE_MODIFIER_INTFC_06   

	alter table EXPERIENCE_MODIFIER_INTFC_06
	   add constraint EMI01_TO_EMI06 foreign key (EMI01_ID)
	      references EXPERIENCE_MODIFIER_INTFC_01 (EMI01_ID)
	      on delete restrict on update restrict;
            
	      
	alter table EXPERIENCE_MODIFIER_INTFC_06
	   add constraint USER_TO_EMI061 foreign key (AUDIT_USER_ID_CREA)
	      references USERS (USER_ID)
	      on delete restrict on update restrict;

	alter table EXPERIENCE_MODIFIER_INTFC_06
	   add constraint USER_TO_EMI062 foreign key (AUDIT_USER_ID_UPDT)
	      references USERS (USER_ID)
	      on delete restrict on update restrict;
      
--  CONSTRAINTS FOR EXPERIENCE_MODIFIER_INTFC_07   

	alter table EXPERIENCE_MODIFIER_INTFC_07
	   add constraint EMI01_TO_EMI07 foreign key (EMI01_ID)
	      references EXPERIENCE_MODIFIER_INTFC_01 (EMI01_ID)
	      on delete restrict on update restrict;
           

	alter table EXPERIENCE_MODIFIER_INTFC_07
	   add constraint USER_TO_EMI071 foreign key (AUDIT_USER_ID_CREA)
	      references USERS (USER_ID)
	      on delete restrict on update restrict;

	alter table EXPERIENCE_MODIFIER_INTFC_07
	   add constraint USER_TO_EMI072 foreign key (AUDIT_USER_ID_UPDT)
	      references USERS (USER_ID)
	      on delete restrict on update restrict;

--  CONSTRAINTS FOR EXPERIENCE_MODIFIER_INTFC_A3

	alter table EXPERIENCE_MODIFIER_INTFC_A3
	   add constraint EMI01_TO_EMIA3 foreign key (EMI01_ID)
	      references EXPERIENCE_MODIFIER_INTFC_01 (EMI01_ID)
	      on delete restrict on update restrict;
	      
	      
	alter table EXPERIENCE_MODIFIER_INTFC_A3
	   add constraint USER_TO_EMIA31 foreign key (AUDIT_USER_ID_CREA)
	      references USERS (USER_ID)
	      on delete restrict on update restrict;

	alter table EXPERIENCE_MODIFIER_INTFC_A3
	   add constraint USER_TO_EMIA32 foreign key (AUDIT_USER_ID_UPDT)
	      references USERS (USER_ID)
	      on delete restrict on update restrict;



--  Begin CONSTRAINTS FOR EXPERIENCE_MODIFIER_INTFC_99  

	alter table EXPERIENCE_MODIFIER_INTFC_99
	   add constraint EMI00_TO_EMI99 foreign key (EMI00_ID)
	      references EXPERIENCE_MODIFIER_INTFC_00 (EMI00_ID)
	      on delete restrict on update restrict;

	alter table EXPERIENCE_MODIFIER_INTFC_99
	   add constraint USER_TO_EMI991 foreign key (AUDIT_USER_ID_CREA)
	      references USERS (USER_ID)
	      on delete restrict on update restrict;

	alter table EXPERIENCE_MODIFIER_INTFC_99
	   add constraint USER_TO_EMI992 foreign key (AUDIT_USER_ID_UPDT)
	      references USERS (USER_ID)
	      on delete restrict on update restrict;

--  End CONSTRAINTS FOR EXPERIENCE_MODIFIER_INTFC_99


-- Begin of MODIFIER_CHANGE_DAYS

	ALTER TABLE MODIFIER_CHANGE_DAYS
	ADD CONSTRAINT STT_TO_MCD FOREIGN KEY (STT_ID)
	REFERENCES STATE (STT_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT; 

-- End of MODIFIER_CHANGE_DAYS

alter table CUSTOMER_ROLE_HISTORY
   add constraint CR_TO_CUSTRH foreign key (ROLE_ID)
      references CUSTOMER_ROLE (ROLE_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_ROLE_HISTORY
   add constraint CRT_TO_CUSTRH foreign key (ROLE_TYP_CD)
      references CUSTOMER_ROLE_TYPE (CUST_ROLE_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_ROLE_HISTORY
   add constraint USER_TO_CUSTRH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_ROLE_HISTORY
   add constraint USER_TO_CUSTRH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table ROLE_AGENT_AGENCY_HISTORY
   add constraint RAA_TO_RAAH foreign key (ROLE_AGNT_AGY_ID)
      references ROLE_AGENT_AGENCY (ROLE_AGNT_AGY_ID)
      on delete restrict on update restrict;

alter table ROLE_AGENT_AGENCY_HISTORY
   add constraint AGYT_TO_RAAH foreign key (AGY_TYP_CD)
      references AGENCY_TYPE (AGY_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_AGENT_AGENCY_HISTORY
   add constraint REGT_TO_RAAH foreign key (RGN_TYP_CD)
      references REGION_TYPE (RGN_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_AGENT_AGENCY_HISTORY
   add constraint USER_TO_RAAH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_AGENT_AGENCY_HISTORY
   add constraint USER_TO_RAAH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table ROLE_AGENT_AGY_LOB_HIST
   add constraint RAAL_TO_RAALH foreign key (RAAL_ID)
      references ROLE_AGENT_AGY_LOB (RAAL_ID)
      on delete restrict on update restrict;


alter table ROLE_AGENT_AGY_LOB_HIST
   add constraint RAA_TO_RAALH foreign key (ROLE_AGNT_AGY_ID)
      references ROLE_AGENT_AGENCY (ROLE_AGNT_AGY_ID)
      on delete restrict on update restrict;

alter table ROLE_AGENT_AGY_LOB_HIST
   add constraint LOBT_TO_RAALH foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;


alter table ROLE_AGENT_AGY_LOB_HIST
   add constraint AST_TO_RAALH foreign key (APNT_STS_TYP_CD)
      references APPOINTMENT_STATUS_TYPE (APNT_STS_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_AGENT_AGY_LOB_HIST
   add constraint ASRT_TO_RAALH foreign key (APNT_STS_RSN_TYP_CD)
      references APPOINTMENT_STATUS_REASON_TYPE (APNT_STS_RSN_TYP_CD)
      on delete restrict on update restrict;

alter table APPOINTMENT_STS_STS_RSN_XREF
   add constraint ASRT_TO_ASSRX foreign key (APNT_STS_RSN_TYP_CD)
      references APPOINTMENT_STATUS_REASON_TYPE (APNT_STS_RSN_TYP_CD)
      on delete restrict on update restrict;
      
alter table APPOINTMENT_STS_STS_RSN_XREF
   add constraint AST_TO_ASSRX foreign key (APNT_STS_TYP_CD)
      references APPOINTMENT_STATUS_TYPE (APNT_STS_TYP_CD)
      on delete restrict on update restrict;




alter table ROLE_AGENT_AGY_LOB_HIST
   add constraint USER_TO_RAALH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_AGENT_AGY_LOB_HIST
   add constraint USER_TO_RAALH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
alter table ROLE_AGENT_LICENSE_INFO_HIST
   add constraint RALI_TO_RALIH foreign key (RALI_ID)
      references ROLE_AGENT_LICENSE_INFORMATION (RALI_ID)
      on delete restrict on update restrict;



alter table ROLE_AGENT_LICENSE_INFO_HIST
   add constraint RAAL_TO_RALIH foreign key (RAAL_ID)
      references ROLE_AGENT_AGY_LOB (RAAL_ID)
      on delete restrict on update restrict;

alter table ROLE_AGENT_LICENSE_INFO_HIST
   add constraint STT_TO_RALIH foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table ROLE_AGENT_LICENSE_INFO_HIST
   add constraint RSDNCT_TO_RALIH foreign key (RSDNC_TYP_CD)
      references RESIDENCY_TYPE (RSDNC_TYP_CD)
      on delete restrict on update restrict;
      
alter table ROLE_AGENT_LICENSE_INFO_HIST
   add constraint USER_TO_RALIH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_AGENT_LICENSE_INFO_HIST
   add constraint USER_TO_RALIH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table ROLE_INSURED_OWNERSHIP_HIST
   add constraint RIO_TO_RIOH foreign key (ROLE_INS_OWNSHP_ID)
      references ROLE_INSURED_OWNERSHIP (ROLE_INS_OWNSHP_ID)
         on delete restrict on update restrict;      


alter table ROLE_INSURED_OWNERSHIP_HIST
   add constraint CR_TO_RIOH foreign key (ROLE_ID)
      references CUSTOMER_ROLE (ROLE_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURED_OWNERSHIP_HIST
   add constraint OWNSHPT_TO_RIOH foreign key (OWNSHP_TYP_CD)
      references OWNERSHIP_TYPE (OWNSHP_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSURED_OWNERSHIP_HIST
   add constraint USER_TO_RIOH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURED_OWNERSHIP_HIST
   add constraint USER_TO_RIOH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table ROLE_INSURED_STATE_ID_HIST
   add constraint RISI_TO_RISIH foreign key (ROLE_INS_STT_ID_ID)
      references ROLE_INSURED_STATE_IDENTIFIER (ROLE_INS_STT_ID_ID)
         on delete restrict on update restrict;      

alter table ROLE_INSURED_STATE_ID_HIST
   add constraint CR_TO_RISIH foreign key (ROLE_ID)
      references CUSTOMER_ROLE (ROLE_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURED_STATE_ID_HIST
   add constraint IIT_TO_RISIH foreign key (INS_ID_TYP_CD)
      references INSURED_IDENTIFIER_TYPE (INS_ID_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSURED_STATE_ID_HIST
   add constraint LOBT_TO_RISIH foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSURED_STATE_ID_HIST
   add constraint STT_TO_RISIH foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURED_STATE_ID_HIST
   add constraint USER_TO_RISIH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURED_STATE_ID_HIST
   add constraint USER_TO_RISIH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

     
    
    
-- Begin constraints for POLICY_INVOICE_TYPE
ALTER TABLE POLICY_INVOICE
  ADD CONSTRAINT CUST_TO_PI FOREIGN KEY (CUST_ID_PYR)
  REFERENCES CUSTOMER (CUST_ID)
  ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE POLICY_INVOICE
  ADD CONSTRAINT PLCY_TO_PI FOREIGN KEY (AGRE_ID)
  REFERENCES POLICY (AGRE_ID)
  ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE POLICY_INVOICE
  ADD CONSTRAINT PLCYIT_TO_PI FOREIGN KEY (PLCY_INVC_TYP_CD)
  REFERENCES POLICY_INVOICE_TYPE (PLCY_INVC_TYP_CD)
  ON DELETE RESTRICT ON UPDATE RESTRICT;


 ALTER TABLE POLICY_INVOICE
  ADD CONSTRAINT USER_TO_PI1 FOREIGN KEY (AUDIT_USER_ID_CREA)
  REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE POLICY_INVOICE
  ADD CONSTRAINT USER_TO_PI2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
  REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
      
ALTER TABLE POLICY_INVOICE
  ADD CONSTRAINT PPG_TO_PI FOREIGN KEY (PLCY_PRD_GRP_ID)
  REFERENCES POLICY_PERIOD_GROUP(PLCY_PRD_GRP_ID)
  ON DELETE RESTRICT ON UPDATE RESTRICT;


-- End constraints for POLICY_INVOICE

alter table PERSON_DEGREE_PROF_DSGN_HIST
    add constraint PDPD_TO_PDPDH foreign key(PRSN_DEGR_PROF_DSGN_ID)
    references PERSON_DEGREE_PROF_DSGN(PRSN_DEGR_PROF_DSGN_ID)
    on delete restrict on update restrict;   
    
       
alter table PERSON_DEGREE_PROF_DSGN_HIST
   add constraint PSRN_TO_PDPDH foreign key(CUST_ID)
   references PERSON(CUST_ID)
   	on delete restrict on update restrict;


alter table PERSON_DEGREE_PROF_DSGN_HIST
  add constraint DPDT_TO_PDPH foreign key(DPDT_CD)
  references DEGREE_PROFESSIONAL_DSGN_TYP(DPDT_CD)
 	on delete restrict on update restrict;

alter table PERSON_DEGREE_PROF_DSGN_HIST
   add constraint USER_TO_PDPDH1 foreign key(AUDIT_USER_ID_CREA)
   references USERS(USER_ID)
	on delete restrict on update restrict;



alter table PERSON_DEGREE_PROF_DSGN_HIST
   add constraint USER_TO_PDPDH2 foreign key(AUDIT_USER_ID_UPDT)
   references USERS(USER_ID)
	on delete restrict on update restrict;  
	
ALTER TABLE OPERATION
        ADD CONSTRAINT EXPNRHS_TO_OPRHS
        FOREIGN KEY(EXPRSN_ID_RHS)
        REFERENCES EXPRESSION (EXPRSN_ID);


ALTER TABLE OPERATION
        ADD CONSTRAINT EXPNLHS_TO_OPLHS
        FOREIGN KEY(EXPRSN_ID_LHS)
        REFERENCES EXPRESSION(EXPRSN_ID);
        
--constraints for MSC interface

alter table POWERCOMP_MSC_INTERFACE
   add constraint CLM_TO_PMI foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;  

alter table POWERCOMP_MSC_INTERFACE
   add constraint CLMST_TO_PMI foreign key (CLM_STT_TYP_CD)
      references CLAIM_STATE_TYPE (CLM_STT_TYP_CD)
      on delete restrict on update restrict;

alter table POWERCOMP_MSC_INTERFACE
   add constraint USER_TO_PMI1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POWERCOMP_MSC_INTERFACE
   add constraint USER_TO_PMI2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POWERCOMP_MSC_INTERFACE_HIST
   add constraint PMI_TO_PMIH foreign key (PWRCMP_MSC_INTFC_ID)
      references POWERCOMP_MSC_INTERFACE (PWRCMP_MSC_INTFC_ID)
      on delete restrict on update restrict;

alter table POWERCOMP_MSC_INTERFACE_HIST
   add constraint CLMST_TO_PMIH foreign key (CLM_STT_TYP_CD)
      references CLAIM_STATE_TYPE (CLM_STT_TYP_CD)
      on delete restrict on update restrict;

alter table POWERCOMP_MSC_INTERFACE_HIST
   add constraint CLM_TO_PMIH foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict; 

 alter table POWERCOMP_MSC_INTERFACE_HIST
   add constraint USER_TO_PMIH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POWERCOMP_MSC_INTERFACE_HIST
   add constraint USER_TO_PMIH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
     

alter table INSURANCE_COMPANY_TYPE_DTL 
   add constraint INSCT_TO_INSCTD foreign key (INS_CMPY_TYP_ID)
      references INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID)
      on delete restrict on update restrict;

alter table INSURANCE_COMPANY_TYPE_DTL 
   add constraint STT_TO_INSCTDPHY foreign key (STT_ID_PHY)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table INSURANCE_COMPANY_TYPE_DTL 
   add constraint STT_TO_INSCTDPHS foreign key (STT_ID_PHS)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table INSURANCE_COMPANY_TYPE_DTL 
   add constraint STT_TO_INSCTDBILL foreign key (STT_ID_BILL)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table INSURANCE_COMPANY_TYPE_DTL 
   add constraint STT_TO_INSCTDCLM foreign key (STT_ID_CLM)
      references STATE (STT_ID)
      on delete restrict on update restrict;
	

alter table COMMISSION_SCH_TYPE_DTL_RT
   add constraint CST_TO_CSTDR foreign key (COMS_SCH_TYP_CD)
      references COMMISSION_SCHEDULE_TYPE (COMS_SCH_TYP_CD)
      on delete restrict on update restrict;
      
alter table ROLE_INSURED_BANKRUPTCY
   add constraint CR_TO_RIB foreign key (ROLE_ID)
      references CUSTOMER_ROLE (ROLE_ID)
      on delete restrict on update restrict;


alter table ROLE_INSURED_BANKRUPTCY
   add constraint BTYP_TO_RIB foreign key (BNKRPT_TYP_CD)
      references BANKRUPTCY_TYPE (BNKRPT_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSURED_BANKRUPTCY
   add constraint USER_TO_RIB1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURED_BANKRUPTCY
   add constraint USER_TO_RIB2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table ROLE_INSURED_BANKRUPTCY_HIST
   add constraint RIB_TO_RIBH foreign key (ROLE_INS_BNKRPT_ID)
      references ROLE_INSURED_BANKRUPTCY (ROLE_INS_BNKRPT_ID)
         on delete restrict on update restrict;      


alter table ROLE_INSURED_BANKRUPTCY_HIST
   add constraint BTYP_TO_RIBH foreign key (BNKRPT_TYP_CD)
      references BANKRUPTCY_TYPE (BNKRPT_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSURED_BANKRUPTCY_HIST
   add constraint CR_TO_RIBH foreign key (ROLE_ID)
      references CUSTOMER_ROLE (ROLE_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURED_BANKRUPTCY_HIST
   add constraint USER_TO_RIBH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURED_BANKRUPTCY_HIST
   add constraint USER_TO_RIBH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
	  
-- BEGIN: WY ECR 2257 (Gap 157), Base ECR 108542
alter table ROLE_INSURED_BANKRUPTCY
   add constraint BSTTYP_TO_RIB foreign key (BNKRPT_STS_TYP_CD)
      references BANKRUPTCY_STATUS_TYPE (BNKRPT_STS_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSURED_BANKRUPTCY
   add constraint CUST_TO_RIB1 foreign key (ROLE_INS_BNKRPT_ATTY_CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURED_BANKRUPTCY
   add constraint CUST_TO_RIB2 foreign key (ROLE_INS_BNKRPT_TRST_CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURED_BANKRUPTCY_HIST
   add constraint BSTTYP_TO_RIBH foreign key (BNKRPT_STS_TYP_CD)
      references BANKRUPTCY_STATUS_TYPE (BNKRPT_STS_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSURED_BANKRUPTCY_HIST
   add constraint CUST_TO_RIBH1 foreign key (ROLE_INS_BNKRPT_ATTY_CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURED_BANKRUPTCY_HIST
   add constraint CUST_TO_RIBH2 foreign key (ROLE_INS_BNKRPT_TRST_CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;
-- END: WY ECR 2257 (Gap 157), Base ECR 108542
	 
alter table MSC_POWERCOMP_CLMT_SERV_ACPT 
       add constraint AGRE_TO_MPCSA foreign key (AGRE_ID)
          references AGREEMENT (AGRE_ID)
          on delete restrict on update restrict;

alter table PAYMENT_REQUEST
   add constraint PMPT_TO_PREQS foreign key (PAY_MEDA_PREF_TYP_CD)
      references PAYMENT_MEDIA_PREFERENCE_TYPE (PAY_MEDA_PREF_TYP_CD) on delete restrict on update restrict;

alter table PAYMENT_REQUEST
   add constraint CUST_TO_PREQSPAYE foreign key (CUST_ID_PAYE)
      references CUSTOMER (CUST_ID) on delete restrict on update restrict;

alter table PAYMENT_REQUEST
   add constraint PRTYP_TO_PREQS foreign key (PAY_REQS_TYP_CD)
      references PAYMENT_REQUEST_TYPE (PAY_REQS_TYP_CD) on delete restrict on update restrict;

alter table PAYMENT_REQUEST
   add constraint USER_TO_PREQS1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID) on delete restrict on update restrict;

alter table PAYMENT_REQUEST
   add constraint USER_TO_PREQS2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID) on delete restrict on update restrict;

alter table PAYMENT_REQUEST
   add constraint CUST_TO_PREQSINCO foreign key (CUST_ID_INCO)
      references CUSTOMER (CUST_ID) on delete restrict on update restrict;

ALTER TABLE PAYMENT_REQUEST
   add constraint DMT_TO_PR foreign key (DISTR_METH)
       references DISTRIBUTION_METHOD_TYPE (DISTR_METH_TYP_CD)
       on delete restrict on update restrict;

alter table PAYMENT_REQUEST_STATUS_TYPE
   add constraint PRSTTT_TO_PRSTST foreign key (PAY_REQS_STT_TYP_CD)
      references PAYMENT_REQUEST_STATE_TYPE (PAY_REQS_STT_TYP_CD) on delete restrict on update restrict;

alter table PAY_REQS_STS_STS_ACTN_XREF
   add constraint PRSTST_TO_PRSSAXFR foreign key (PAY_REQS_STS_TYP_CD_FR)
      references PAYMENT_REQUEST_STATUS_TYPE (PAY_REQS_STS_TYP_CD) on delete restrict on update restrict;

alter table PAY_REQS_STS_STS_ACTN_XREF
   add constraint PRSTST_TO_PRSSAXTO foreign key (PAY_REQS_STS_TYP_CD_TO)
      references PAYMENT_REQUEST_STATUS_TYPE (PAY_REQS_STS_TYP_CD) on delete restrict on update restrict;

alter table PAY_REQS_STS_STS_ACTN_XREF
   add constraint PRAT_TO_PRSSAX foreign key (PAY_REQS_ACTN_TYP_CD)
      references PAYMENT_REQUEST_ACTION_TYPE (PAY_REQS_ACTN_TYP_CD) on delete restrict on update restrict;

alter table CHECK_SET_NUMBER_PAYMENT_XREF
   add constraint CSN_TO_CSNPX foreign key (CHCK_SET_NO_ID)
      references CHECK_SET_NUMBER (CHCK_SET_NO_ID) on delete restrict on update restrict;

alter table CHECK_SET_NUMBER_PAYMENT_XREF
   add constraint JT_TO_CSNPX foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD) on delete restrict on update restrict;

alter table CHECK_SET_NUMBER_PAYMENT_XREF
   add constraint PRTYP_TO_CSNPX foreign key (PAY_REQS_TYP_CD)
      references PAYMENT_REQUEST_TYPE (PAY_REQS_TYP_CD) on delete restrict on update restrict;

alter table CHECK_SET_NUMBER_PAYMENT_XREF
   add constraint LOBT_TO_CSNPX foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD) on delete restrict on update restrict;

alter table CHECK_SET_NUMBER_PAYMENT_XREF
   add constraint MT_TO_CSNPX foreign key (MRKT_TYP_CD)
      references MARKET_TYPE (MRKT_TYP_CD) on delete restrict on update restrict;

alter table CHECK_SET_NUMBER_PAYMENT_XREF
   add constraint INSCT_TO_CSNPX foreign key (INS_CMPY_TYP_ID)
      references INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID) on delete restrict on update restrict;
      
--CLM28- CR73542 - added a new constraint for customer ID

ALTER TABLE CHECK_SET_NUMBER_PAYMENT_XREF
    ADD CONSTRAINT CUST_TO_CSNPX FOREIGN KEY(CUST_ID_INSRD)
	REFERENCES CUSTOMER(CUST_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

--CR#76080/ INT 8 / Mount Sinai change for COI
ALTER TABLE CHECK_SET_NUMBER_PAYMENT_XREF
 	ADD CONSTRAINT CTT_TO_CSNPX foreign key (CHCK_TMPL_TYP_CD)
      references CHECK_TEMPLATE_TYPE (CHCK_TMPL_TYP_CD)
      on delete restrict on update restrict;


alter table PAYMENT_REQUEST_STATUS
   add constraint PRSTST_TO_PRS foreign key (PAY_REQS_STS_TYP_CD)
      references PAYMENT_REQUEST_STATUS_TYPE (PAY_REQS_STS_TYP_CD) on delete restrict on update restrict;

alter table PAYMENT_REQUEST_STATUS
   add constraint PREQS_TO_PRS foreign key (PAY_REQS_ID)
      references PAYMENT_REQUEST (PAY_REQS_ID) on delete restrict on update restrict;

ALTER TABLE PAYMENT_REQUEST_STATUS
    ADD CONSTRAINT PRSRT_TO_PRS FOREIGN KEY(PAY_REQS_STS_RSN_TYP_CD)
    REFERENCES PAYMENT_REQUEST_STATUS_RSN_TYP(PAY_REQS_STS_RSN_TYP_CD) on delete restrict on update restrict;

alter table PAYMENT_REQUEST_STATUS
   add constraint USER_TO_PRS1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID) on delete restrict on update restrict;

alter table PAYMENT_REQUEST_STATUS
   add constraint USER_TO_PRS2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID) on delete restrict on update restrict;

alter table CHECK_SET_NUMBER
   add constraint CSN_TO_AT foreign key (ACCT_TYP_CD)
      references ACCOUNT_TYPE (ACCT_TYP_CD) on delete restrict on update restrict;

alter table PAY_REQS_STS_STS_RSN_XREF
   add constraint PRSTST_TO_PAYRSSRX foreign key (PAY_REQS_STS_TYP_CD)
      references PAYMENT_REQUEST_STATUS_TYPE (PAY_REQS_STS_TYP_CD) on delete restrict on update restrict;

alter table PAY_REQS_STS_STS_RSN_XREF
   add constraint PRSRTYP_T_PAYRSSRX foreign key (PAY_REQS_STS_RSN_TYP_CD)
      references PAYMENT_REQUEST_STATUS_RSN_TYP (PAY_REQS_STS_RSN_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_OVERPAYMENT_RCVR_CTL
   add constraint CLM_TO_CLMORC foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_OVERPAYMENT_RCVR_CTL
   add constraint USER_TO_CLMORC1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_OVERPAYMENT_RCVR_CTL
   add constraint USER_TO_CLMORC2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_OVRPY_RCVR_PAY_CTG_CTL
   add constraint CLMORC_TO_CLMORPCC foreign key (CLM_OVRPY_RCVR_CTL_ID)
      references CLAIM_OVERPAYMENT_RCVR_CTL (CLM_OVRPY_RCVR_CTL_ID)
      on delete restrict on update restrict;

alter table CLAIM_OVRPY_RCVR_PAY_CTG_CTL
   add constraint PAYT_TO_CLMORPCC foreign key (PAY_TYP_CD)
      references PAYMENT_TYPE (PAY_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_OVRPY_RCVR_PAY_CTG_CTL
   add constraint USER_TO_CLMORPCC1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_OVRPY_RCVR_PAY_CTG_CTL
   add constraint USER_TO_CLMORPCC2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_OVERPAYMENT_RCVR_METH
   add constraint CLM_TO_CLMORM foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_OVERPAYMENT_RCVR_METH
   add constraint CUST_TO_CLMORM foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CLAIM_OVERPAYMENT_RCVR_METH
   add constraint PAYT_TO_CLMORM foreign key (PAY_TYP_CD)
      references PAYMENT_TYPE (PAY_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_OVERPAYMENT_RCVR_METH
   add constraint CCTYP_TO_CLMORM foreign key (CST_CNTR_TYP_CD)
      references COST_CENTER_TYPE (CST_CNTR_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_OVERPAYMENT_RCVR_METH
   add constraint BNFTT_TO_CLMORM foreign key (BNFT_TYP_CD)
      references BENEFIT_TYPE (BNFT_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_OVERPAYMENT_RCVR_METH
   add constraint ORPT_TO_CLMORM foreign key (OVRPY_RCVR_PRD_TYP_CD)
      references OVERPAYMENT_RECOVERY_PRD_TYP (OVRPY_RCVR_PRD_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_OVERPAYMENT_RCVR_METH
   add constraint ORATT_TO_CLMORM foreign key (OVRPY_RCVR_APPLY_TO_TYP_CD)
      references OVERPAYMENT_RCVR_APPLY_TO_TYP (OVRPY_RCVR_APPLY_TO_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_OVERPAYMENT_RCVR_METH
   add constraint ORMT_TO_CLMORM foreign key (OVRPY_RCVR_METH_TYP_CD)
      references OVERPAYMENT_RECOVERY_METH_TYP (OVRPY_RCVR_METH_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_OVERPAYMENT_RCVR_METH
   add constraint USER_TO_CLMORM1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_OVERPAYMENT_RCVR_METH
   add constraint USER_TO_CLMORM2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
     
alter table CLAIM_OVRPY_RCVR_METH_HIST
   add constraint CLMORM_TO_CLMORMH foreign key (CLM_OVRPY_RCVR_METH_ID)
      references CLAIM_OVERPAYMENT_RCVR_METH (CLM_OVRPY_RCVR_METH_ID)
      on delete restrict on update restrict;
alter table CLAIM_OVRPY_RCVR_METH_HIST
   add constraint CLM_TO_CLMORMH foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_OVRPY_RCVR_METH_HIST
   add constraint CUST_TO_CLMORMH foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CLAIM_OVRPY_RCVR_METH_HIST
   add constraint PAYT_TO_CLMORMH foreign key (PAY_TYP_CD)
      references PAYMENT_TYPE (PAY_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_OVRPY_RCVR_METH_HIST
   add constraint CCTYP_TO_CLMORMH foreign key (CST_CNTR_TYP_CD)
      references COST_CENTER_TYPE (CST_CNTR_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_OVRPY_RCVR_METH_HIST
   add constraint BNFTT_TO_CLMORMH foreign key (BNFT_TYP_CD)
      references BENEFIT_TYPE (BNFT_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_OVRPY_RCVR_METH_HIST
   add constraint ORPT_TO_CLMORMH foreign key (OVRPY_RCVR_PRD_TYP_CD)
      references OVERPAYMENT_RECOVERY_PRD_TYP (OVRPY_RCVR_PRD_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_OVRPY_RCVR_METH_HIST
   add constraint ORATT_TO_CLMORMH foreign key (OVRPY_RCVR_APPLY_TO_TYP_CD)
      references OVERPAYMENT_RCVR_APPLY_TO_TYP (OVRPY_RCVR_APPLY_TO_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_OVRPY_RCVR_METH_HIST
   add constraint ORMT_TO_CLMORMH foreign key (OVRPY_RCVR_METH_TYP_CD)
      references OVERPAYMENT_RECOVERY_METH_TYP (OVRPY_RCVR_METH_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_OVRPY_RCVR_METH_HIST
   add constraint USER_TO_CLMORMH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_OVRPY_RCVR_METH_HIST
   add constraint USER_TO_CLMORMH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table OVERPAYMENT_RECOVERY_DFLT
   add constraint JT_TO_ORD foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table OVERPAYMENT_RECOVERY_DFLT
   add constraint LOBT_TO_ORD foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table OVERPAYMENT_RECOVERY_DFLT
   add constraint CCTYP_TO_ORD foreign key (CST_CNTR_TYP_CD)
      references COST_CENTER_TYPE (CST_CNTR_TYP_CD)
      on delete restrict on update restrict;

alter table OVERPAYMENT_RECOVERY_DFLT
   add constraint BNFTT_ORD foreign key (BNFT_TYP_CD)
      references BENEFIT_TYPE (BNFT_TYP_CD)
      on delete restrict on update restrict;

alter table OVERPAYMENT_RECOVERY_DFLT
   add constraint ACT_TO_ORD foreign key (APP_CNTX_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table OVERPAYMENT_RECOVERY_DFLT
   add constraint PAYT_TO_ORD foreign key (PAY_TYP_CD)
      references PAYMENT_TYPE (PAY_TYP_CD)
      on delete restrict on update restrict;

alter table OVERPAYMENT_RECOVERY_DFLT
   add constraint OROT_TO_ORD foreign key (OVRPY_RCVR_OPT_TYP_CD)
      references OVERPAYMENT_RECOVERY_OPT_TYP  (OVRPY_RCVR_OPT_TYP_CD)
      on delete restrict on update restrict;

alter table OVERPAYMENT_RECOVERY_DFLT
   add constraint ORT_TO_ORD foreign key (OVRPY_RL_TYP_CD)
      references OVERPAYMENT_RULE_TYPE (OVRPY_RL_TYP_CD)
      on delete restrict on update restrict;

alter table OVERPAYMENT_RECOVERY_DFLT
   add constraint OCRT_TO_ORD foreign key (OVRPY_CTG_RL_TYP_CD)
      references OVERPAYMENT_CATEGORY_RL_TYP  (OVRPY_CTG_RL_TYP_CD)
      on delete restrict on update restrict;

alter table OVERPAYMENT_RCVR_ALW_SUB_CTG
   add constraint BNFTT_TO_ORASC foreign key (BNFT_TYP_CD)
      references BENEFIT_TYPE (BNFT_TYP_CD)
      on delete restrict on update restrict;

alter table OVERPAYMENT_RCVR_ALW_SUB_CTG
   add constraint CCTYP_TO_ORASC foreign key (CST_CNTR_TYP_CD)
      references COST_CENTER_TYPE (CST_CNTR_TYP_CD)
      on delete restrict on update restrict;

alter table OVERPAYMENT_RCVR_ALW_SUB_CTG
   add constraint ORD_TO_ORASC foreign key (OVRPY_RCVR_DFLT_ID)
      references OVERPAYMENT_RECOVERY_DFLT (OVRPY_RCVR_DFLT_ID)
      on delete restrict on update restrict;

alter table OVERPAYMENT_RCVR_DFLT_ALW_CTG
   add constraint ORD_TO_ORDAC foreign key (OVRPY_RCVR_DFLT_ID)
      references OVERPAYMENT_RECOVERY_DFLT (OVRPY_RCVR_DFLT_ID)
      on delete restrict on update restrict;

alter table OVERPAYMENT_RCVR_DFLT_ALW_CTG
   add constraint PAYT_TO_ORDAC foreign key (PAY_TYP_CD)
      references PAYMENT_TYPE (PAY_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_OVERPAYMENT_RCVR_CTL
   add constraint CUST_TO_CORC foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_OVERPAYMENT_RCVR_CTL
   add constraint USER_TO_CORC1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_OVERPAYMENT_RCVR_CTL
   add constraint USER_TO_CORC2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
     
alter table CUSTOMER_OVRPY_RCVR_CTL_HIST
   add constraint CORC_TO_CORCH foreign key (CUST_ID)
      references CUSTOMER_OVERPAYMENT_RCVR_CTL (CUST_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_OVRPY_RCVR_CTL_HIST
   add constraint USER_TO_CORCH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_OVRPY_RCVR_CTL_HIST
   add constraint USER_TO_CORCH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUST_OVRPY_RCVR_PAY_CTG_CTL
   add constraint CORC_TO_CORPCC foreign key (CUST_ID)
      references CUSTOMER_OVERPAYMENT_RCVR_CTL (CUST_ID)
      on delete restrict on update restrict;

alter table CUST_OVRPY_RCVR_PAY_CTG_CTL
   add constraint ACT_TO_CORPCC foreign key (APP_CNTX_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table CUST_OVRPY_RCVR_PAY_CTG_CTL
   add constraint LOBT_TO_CORPCC foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table CUST_OVRPY_RCVR_PAY_CTG_CTL
   add constraint PAYT_TO_CORPCC foreign key (PAY_TYP_CD)
      references PAYMENT_TYPE (PAY_TYP_CD)
      on delete restrict on update restrict;

alter table CUST_OVRPY_RCVR_PAY_CTG_CTL
   add constraint USER_TO_CORPCC1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUST_OVRPY_RCVR_PAY_CTG_CTL
   add constraint USER_TO_CORPCC2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
     
alter table CUST_OVR_RCVR_PAY_CTG_CTL_HIST
   add constraint CORPCC_TO_CORPCCH foreign key (CORPCC_ID)
      references CUST_OVRPY_RCVR_PAY_CTG_CTL (CORPCC_ID)
      on delete restrict on update restrict;

alter table CUST_OVR_RCVR_PAY_CTG_CTL_HIST
   add constraint CORC_TO_CORPCCH foreign key (CUST_ID)
      references CUSTOMER_OVERPAYMENT_RCVR_CTL (CUST_ID)
      on delete restrict on update restrict;

alter table CUST_OVR_RCVR_PAY_CTG_CTL_HIST
   add constraint ACT_TO_CORPCCH foreign key (APP_CNTX_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table CUST_OVR_RCVR_PAY_CTG_CTL_HIST
   add constraint LOBT_TO_CORPCCH foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table CUST_OVR_RCVR_PAY_CTG_CTL_HIST
   add constraint PAYT_TO_CORPCCH foreign key (PAY_TYP_CD)
      references PAYMENT_TYPE (PAY_TYP_CD)
      on delete restrict on update restrict;

alter table CUST_OVR_RCVR_PAY_CTG_CTL_HIST
   add constraint USER_TO_CORPCCH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUST_OVR_RCVR_PAY_CTG_CTL_HIST
   add constraint USER_TO_CORPCCH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_OVERPAYMENT_RCVR_METH
   add constraint CUST_TO_CORM foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_OVERPAYMENT_RCVR_METH
   add constraint CORCT_TO_CORM foreign key (CUST_OVRPY_RCVR_CNTX_TYP_CD)
      references CUSTOMER_OVRPY_RCVR_CNTX_TYP (CUST_OVRPY_RCVR_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_OVERPAYMENT_RCVR_METH
   add constraint LOBT_TO_CORM foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_OVERPAYMENT_RCVR_METH
   add constraint JT_TO_CORM foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_OVERPAYMENT_RCVR_METH
   add constraint PAYT_TO_CORM foreign key (PAY_TYP_CD)
      references PAYMENT_TYPE (PAY_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_OVERPAYMENT_RCVR_METH
   add constraint CCTYP_TO_CORM foreign key (CST_CNTR_TYP_CD)
      references COST_CENTER_TYPE (CST_CNTR_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_OVERPAYMENT_RCVR_METH
   add constraint BNFTT_TO_CORM foreign key (BNFT_TYP_CD)
      references BENEFIT_TYPE (BNFT_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_OVERPAYMENT_RCVR_METH
   add constraint ORPT_TO_CORM foreign key (OVRPY_RCVR_PRD_TYP_CD)
      references OVERPAYMENT_RECOVERY_PRD_TYP (OVRPY_RCVR_PRD_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_OVERPAYMENT_RCVR_METH
   add constraint ORMT_TO_CORM foreign key (OVRPY_RCVR_METH_TYP_CD)
      references OVERPAYMENT_RECOVERY_METH_TYP (OVRPY_RCVR_METH_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_OVERPAYMENT_RCVR_METH
   add constraint USER_TO_CORM1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_OVERPAYMENT_RCVR_METH
   add constraint USER_TO_CORM2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
     
alter table CUSTOMER_OVRPY_RCVR_METH_HIST
   add constraint CORM_TO_CORMH foreign key (CUST_OVRPY_RCVR_METH_ID)
      references CUSTOMER_OVERPAYMENT_RCVR_METH (CUST_OVRPY_RCVR_METH_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_OVRPY_RCVR_METH_HIST
   add constraint CUST_TO_CORMH foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_OVRPY_RCVR_METH_HIST
   add constraint CORCT_TO_CORMH foreign key (CUST_OVRPY_RCVR_CNTX_TYP_CD)
      references CUSTOMER_OVRPY_RCVR_CNTX_TYP (CUST_OVRPY_RCVR_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_OVRPY_RCVR_METH_HIST
   add constraint LOBT_TO_CORMH foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_OVRPY_RCVR_METH_HIST
   add constraint JT_TO_CORMH foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_OVRPY_RCVR_METH_HIST
   add constraint PAYT_TO_CORMH foreign key (PAY_TYP_CD)
      references PAYMENT_TYPE (PAY_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_OVRPY_RCVR_METH_HIST
   add constraint CCTYP_TO_CORMH foreign key (CST_CNTR_TYP_CD)
      references COST_CENTER_TYPE (CST_CNTR_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_OVRPY_RCVR_METH_HIST
   add constraint BNFTT_TO_CORMH foreign key (BNFT_TYP_CD)
      references BENEFIT_TYPE (BNFT_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_OVRPY_RCVR_METH_HIST
   add constraint ORPT_TO_CORMH foreign key (OVRPY_RCVR_PRD_TYP_CD)
      references OVERPAYMENT_RECOVERY_PRD_TYP (OVRPY_RCVR_PRD_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_OVRPY_RCVR_METH_HIST
   add constraint ORMT_TO_CORMH foreign key (OVRPY_RCVR_METH_TYP_CD)
      references OVERPAYMENT_RECOVERY_METH_TYP (OVRPY_RCVR_METH_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_OVRPY_RCVR_METH_HIST
   add constraint USER_TO_CORMH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_OVRPY_RCVR_METH_HIST
   add constraint USER_TO_CORMH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_CST_OF_SERV_HIST
   add constraint PLCYP_TO_PPCSH foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_CST_OF_SERV_HIST
   add constraint COST_TO_PPCSH foreign key (CST_OF_SERV_TYP_CD)
      references COST_OF_SERVICE_TYPE (CST_OF_SERV_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_CST_OF_SERV_HIST
   add constraint USER_TO_PPCSH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table POLICY_PERIOD_CST_OF_SERV_HIST
   add constraint USER_TO_PPCSH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table POLICY_COVERAGE_PART_3_HISTORY
   add constraint MS_TO_PCP3H foreign key (META_STT_ID)
      references META_STATE (META_STT_ID)
      on delete restrict on update restrict;

alter table POLICY_COVERAGE_PART_3_HISTORY
   add constraint PLCYP_TO_PCP3H foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_COVERAGE_PART_3_HISTORY
   add constraint USER_TO_PCP3H1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_COVERAGE_PART_3_HISTORY
   add constraint USER_TO_PCP3H2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_COVERAGE_PART_3_HISTORY
   add constraint JT_TO_PCP3H foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_REQD_DEPS_HIST
add constraint PLCYP_TO_PPRDH foreign key (PLCY_PRD_ID)
   references POLICY_PERIOD (PLCY_PRD_ID)
   on delete restrict on update restrict;

alter table POLICY_PERIOD_REQD_DEPS_HIST
add constraint USER_TO_PPRDH1 foreign key (AUDIT_USER_ID_CREA)
   references USERS (USER_ID)
   on delete restrict on update restrict;

alter table POLICY_PERIOD_REQD_DEPS_HIST
add constraint USER_TO_PPRDH2 foreign key (AUDIT_USER_ID_UPDT)
   references USERS (USER_ID)
   on delete restrict on update restrict;

alter table POLICY_NON_RN_RSN_JUR_XREF
      add constraint JT_TO_PNRRJX foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_NON_RN_RSN_JUR_XREF
      add constraint PNRRT_TO_PNRRJX foreign key (PLCY_NRN_RSN_TYP_CD)
      references POLICY_NON_RENEWAL_REASON_TYPE (PLCY_NRN_RSN_TYP_CD)
      on delete restrict on update restrict;

alter table PREMIUM_PERIOD_HISTORY
   add constraint PP_TO_PPH foreign key (PREM_PRD_ID)
      references PREMIUM_PERIOD (PREM_PRD_ID)
      on delete restrict on update restrict;

alter table PREMIUM_PERIOD_HISTORY
   add constraint JT_TO_PPH foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table PREMIUM_PERIOD_HISTORY
   add constraint LMICJX_TO_PPH foreign key (LMICJX_ID)
      references LOB_MRKT_INS_CMPY_JUR_XREF (LMICJX_ID)
      on delete restrict on update restrict;

alter table PREMIUM_PERIOD_HISTORY
   add constraint PLCYP_TO_PPH foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table PREMIUM_PERIOD_HISTORY
   add constraint PREMT_TO_PPH foreign key (PREM_TYP_CD)
      references PREMIUM_TYPE (PREM_TYP_CD)
      on delete restrict on update restrict;
      
alter table PREMIUM_PERIOD_HISTORY
   add constraint USER_TO_PPH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table PREMIUM_PERIOD_HISTORY
   add constraint USER_TO_PPH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict; 

alter table PAYROLL_REPORT_HISTORY
   add constraint PR_TO_PRH foreign key (PYRL_RPT_ID)
      references PAYROLL_REPORT (PYRL_RPT_ID)
      on delete restrict on update restrict;

alter table PAYROLL_REPORT_HISTORY
   add constraint PRSRT_TO_PRH foreign key (PYRL_RPT_STS_RSN_TYP_CD)
      references PAYROLL_REPORT_STATUS_RSN_TYP (PYRL_RPT_STS_RSN_TYP_CD)
      on delete restrict on update restrict;

alter table PAYROLL_REPORT_HISTORY
   add constraint PRST_TO_PRH foreign key (PYRL_RPT_STS_TYP_CD)
      references PAYROLL_REPORT_STATUS_TYPE (PYRL_RPT_STS_TYP_CD)
      on delete restrict on update restrict;

alter table PAYROLL_REPORT_HISTORY
   add constraint PRT_TO_PRH foreign key (PYRL_RPT_TYP_CD)
      references PAYROLL_REPORT_TYPE (PYRL_RPT_TYP_CD)
      on delete restrict on update restrict;

alter table PAYROLL_REPORT_HISTORY
   add constraint USER_TO_PRH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table PAYROLL_REPORT_HISTORY
   add constraint USER_TO_PRH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_EARNED_PREM
   add constraint PLCYP_TO_PPEP foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

ALTER TABLE POLICY_PERIOD_EARNED_PREM
   ADD CONSTRAINT USER_TO_PPEP1 FOREIGN KEY (AUDIT_USER_ID_CREA )
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE POLICY_PERIOD_EARNED_PREM
   ADD CONSTRAINT USER_TO_PPEP2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
     ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE POLICY_PERIOD_EARNED_PREM
   ADD CONSTRAINT JT_TO_PPEP foreign key (JUR_TYP_CD)
      REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table POLICY_PERIOD_AUDIT_DETAIL
   add constraint USER_TO_PPAD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
alter table POLICY_PERIOD_AUDIT_DETAIL
   add constraint USER_TO_PPAD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
alter table POLICY_PERIOD_AUDIT_DETAIL
   add constraint USER_TO_PPAD foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;      
alter table POLICY_PERIOD_AUDIT_DETAIL
   add constraint PAAT_TO_PPAD foreign key (PLCY_AUDT_ACUR_TYP_CD)
      references POLICY_AUDIT_ACCURACY_TYPE (PLCY_AUDT_ACUR_TYP_CD)
      on delete restrict on update restrict;
alter table POLICY_PERIOD_AUDIT_DETAIL
   add constraint PLCYAST_TO_PPAD foreign key (PLCY_AUDT_SRC_TYP_ID)
      references POLICY_AUDIT_SOURCE_TYPE (PLCY_AUDT_SRC_TYP_ID)
      on delete restrict on update restrict;      
alter table POLICY_PERIOD_AUDIT_DETAIL
   add constraint PAT_TO_PPAD foreign key (PLCY_AUDT_TYP_CD)
      references POLICY_AUDIT_TYPE (PLCY_AUDT_TYP_CD)
      on delete restrict on update restrict;    
alter table POLICY_PERIOD_AUDIT_DETAIL
   add constraint PLCYP_TO_PPAD foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;    
alter table POLICY_PERIOD_AUDIT_DETAIL
   add constraint PAUAST_TO_PPAD foreign key (PAUAST_CD)
      references PLCY_AUDT_UNDRWT_ALRT_STS_TYP (PAUAST_CD)
      on delete restrict on update restrict;
alter table POLICY_PERIOD_AUDIT_DETAIL
   add constraint APT_TO_PPAD foreign key (AUDT_PRCS_TYP_CD)
      references AUDIT_PROCESS_TYPE (AUDT_PRCS_TYP_CD)
      on delete restrict on update restrict;
      
alter table POLICY_PERIOD_AUDIT_DTL_HIST
   add constraint USER_TO_PPADH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
alter table POLICY_PERIOD_AUDIT_DTL_HIST
   add constraint USER_TO_PPADH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
alter table POLICY_PERIOD_AUDIT_DTL_HIST
   add constraint USER_TO_PPADH foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;      
alter table POLICY_PERIOD_AUDIT_DTL_HIST
   add constraint PAAT_TO_PPADH foreign key (PLCY_AUDT_ACUR_TYP_CD)
      references POLICY_AUDIT_ACCURACY_TYPE (PLCY_AUDT_ACUR_TYP_CD)
      on delete restrict on update restrict;
alter table POLICY_PERIOD_AUDIT_DTL_HIST
   add constraint PLCYAST_TO_PPADH foreign key (PLCY_AUDT_SRC_TYP_ID)
      references POLICY_AUDIT_SOURCE_TYPE (PLCY_AUDT_SRC_TYP_ID)
      on delete restrict on update restrict;      
alter table POLICY_PERIOD_AUDIT_DTL_HIST
   add constraint PAT_TO_PPADH foreign key (PLCY_AUDT_TYP_CD)
      references POLICY_AUDIT_TYPE (PLCY_AUDT_TYP_CD)
      on delete restrict on update restrict;    
alter table POLICY_PERIOD_AUDIT_DTL_HIST
   add constraint PLCYP_TO_PPADH foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;    

alter table POLICY_PERIOD_AUDIT_DTL_HIST
   add constraint PPAD_TO_PPADH foreign key (PLCY_PRD_AUDT_DTL_ID)
      references POLICY_PERIOD_AUDIT_DETAIL (PLCY_PRD_AUDT_DTL_ID)
      on delete restrict on update restrict;       
      
alter table POLICY_PERIOD_AUDIT_DTL_HIST
   add constraint PAUAST_TO_PPADH foreign key (PAUAST_CD)
      references PLCY_AUDT_UNDRWT_ALRT_STS_TYP (PAUAST_CD)
      on delete restrict on update restrict;
alter table POLICY_PERIOD_AUDIT_DTL_HIST
   add constraint APT_TO_PPADH foreign key (AUDT_PRCS_TYP_CD)
      references AUDIT_PROCESS_TYPE (AUDT_PRCS_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_AUDIT_STATUS
   add constraint PPAD_TO_PPAS foreign key (PLCY_PRD_AUDT_DTL_ID)
      references POLICY_PERIOD_AUDIT_DETAIL (PLCY_PRD_AUDT_DTL_ID)
      on delete restrict on update restrict;  
alter table POLICY_PERIOD_AUDIT_STATUS
   add constraint PAST_TO_PPAS foreign key (PLCY_AUDT_STS_TYP_CD)
      references POLICY_AUDIT_STATUS_TYPE (PLCY_AUDT_STS_TYP_CD)
      on delete restrict on update restrict;   
alter table POLICY_PERIOD_AUDIT_STATUS
   add constraint PASRT_TO_PPAS foreign key (PLCY_AUDT_STS_RSN_TYP_CD)
      references POLICY_AUDIT_STATUS_REASON_TYP (PLCY_AUDT_STS_RSN_TYP_CD)
      on delete restrict on update restrict;             
alter table POLICY_PERIOD_AUDIT_STATUS
   add constraint USER_TO_PPAS2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
alter table POLICY_PERIOD_AUDIT_STATUS
   add constraint USER_TO_PPAS1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
alter table POLICY_PERIOD_AUDIT_STS_HIST
   add constraint PPAD_TO_PPASH foreign key (PLCY_PRD_AUDT_DTL_ID)
      references POLICY_PERIOD_AUDIT_DETAIL (PLCY_PRD_AUDT_DTL_ID)
      on delete restrict on update restrict;  
alter table POLICY_PERIOD_AUDIT_STS_HIST
   add constraint PAST_TO_PPASH foreign key (PLCY_AUDT_STS_TYP_CD)
      references POLICY_AUDIT_STATUS_TYPE (PLCY_AUDT_STS_TYP_CD)
      on delete restrict on update restrict;   
alter table POLICY_PERIOD_AUDIT_STS_HIST
   add constraint PASRT_TO_PPASH foreign key (PLCY_AUDT_STS_RSN_TYP_CD)
      references POLICY_AUDIT_STATUS_REASON_TYP (PLCY_AUDT_STS_RSN_TYP_CD)
      on delete restrict on update restrict;             
alter table POLICY_PERIOD_AUDIT_STS_HIST
   add constraint USER_TO_PPASH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
alter table POLICY_PERIOD_AUDIT_STS_HIST
   add constraint USER_TO_PPASH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table POLICY_PRD_AUDT_DTL_DOCM_ATTCH
   add constraint PPAD_TO_PPADDA foreign key (PLCY_PRD_AUDT_DTL_ID)
      references POLICY_PERIOD_AUDIT_DETAIL (PLCY_PRD_AUDT_DTL_ID)
      on delete restrict on update restrict;  
      
alter table POLICY_PERIOD_AUDIT_ASSIGNMENT
   add constraint USER_TO_PPAAORG foreign key (USER_ID_ORG)
      references USERS (USER_ID)
      on delete restrict on update restrict; 

alter table POLICY_PERIOD_AUDIT_ASSIGNMENT
   add constraint USER_TO_PPAACUR foreign key (USER_ID_CUR)
      references USERS (USER_ID)
      on delete restrict on update restrict; 

alter table POLICY_PERIOD_AUDIT_ASSIGNMENT
   add constraint USER_TO_PPAA1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;      

alter table POLICY_PERIOD_AUDIT_ASSIGNMENT
   add constraint USER_TO_PPAA2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_AUDIT_ASSIGNMENT
   add constraint PPAD_TO_PPAA foreign key (PLCY_PRD_AUDT_DTL_ID)
      references POLICY_PERIOD_AUDIT_DETAIL (PLCY_PRD_AUDT_DTL_ID)
      on delete restrict on update restrict; 
alter table POLICY_PERIOD_AUDIT_ASSIGNMENT
   add constraint CUST_TO_PPAA foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict; 
      
alter table POLICY_PERIOD_AUDIT_ASGN_HIST
   add constraint USER_TO_PPAAHORG foreign key (USER_ID_ORG)
      references USERS (USER_ID)
      on delete restrict on update restrict; 

alter table POLICY_PERIOD_AUDIT_ASGN_HIST
   add constraint USER_TO_PPAAHCUR foreign key (USER_ID_CUR)
      references USERS (USER_ID)
      on delete restrict on update restrict; 

alter table POLICY_PERIOD_AUDIT_ASGN_HIST
   add constraint USER_TO_PPAAH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;      

alter table POLICY_PERIOD_AUDIT_ASGN_HIST
   add constraint USER_TO_PPAAH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table POLICY_PERIOD_AUDIT_ASGN_HIST
   add constraint PPAA_TO_PPAAH foreign key (PLCY_PRD_AUDT_ASGN_ID)
      references POLICY_PERIOD_AUDIT_ASSIGNMENT (PLCY_PRD_AUDT_ASGN_ID)
      on delete restrict on update restrict;     
alter table POLICY_PERIOD_AUDIT_ASGN_HIST
   add constraint PPAD_TO_PPAAH foreign key (PLCY_PRD_AUDT_DTL_ID)
      references POLICY_PERIOD_AUDIT_DETAIL (PLCY_PRD_AUDT_DTL_ID)
      on delete restrict on update restrict;         
      

alter table POLICY_PERIOD_AUDIT_STS_HIST
   add constraint PPAS_TO_PPASH foreign key (PLCY_PRD_AUDT_STS_ID)
      references POLICY_PERIOD_AUDIT_STATUS (PLCY_PRD_AUDT_STS_ID)
      on delete restrict on update restrict;
      
alter table POLICY_PERIOD_AUDIT_ASGN_HIST
   add constraint CUST_TO_PPAAH foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict; 

      
alter table POLICY_AUDT_STS_RSN_TRANS_TYP
   add constraint PAST_TO_PASRTTFR foreign key (PLCY_AUDT_STS_TYP_CD_FR)
      references POLICY_AUDIT_STATUS_TYPE (PLCY_AUDT_STS_TYP_CD)
      on delete restrict on update restrict;   
alter table POLICY_AUDT_STS_RSN_TRANS_TYP
   add constraint PAST_TO_PASRTTTO foreign key (PLCY_AUDT_STS_TYP_CD_TO)
      references POLICY_AUDIT_STATUS_TYPE (PLCY_AUDT_STS_TYP_CD)
      on delete restrict on update restrict;
alter table POLICY_AUDT_STS_RSN_TRANS_TYP
   add constraint PASRT_TO_PASRTT foreign key (PLCY_AUDT_STS_RSN_TYP_CD)
      references POLICY_AUDIT_STATUS_REASON_TYP (PLCY_AUDT_STS_RSN_TYP_CD)
      on delete restrict on update restrict;        
alter table POLICY_AUDT_CTL_ELEM_SUB_XREF
   add constraint CEST_TO_PACESX foreign key (CTL_ELEM_SUB_TYP_ID)
      references CONTROL_ELEMENT_SUB_TYPE (CTL_ELEM_SUB_TYP_ID)
      on delete restrict on update restrict;
alter table POLICY_AUDT_CTL_ELEM_SUB_XREF
   add constraint PAT_TO_PACESX foreign key (PLCY_AUDT_TYP_CD)
      references POLICY_AUDIT_TYPE (PLCY_AUDT_TYP_CD)
      on delete restrict on update restrict;   
alter table POLICY_AUDIT_ASSIGNMENT
   add constraint MT_TO_PAA foreign key (MRKT_TYP_CD)
      references MARKET_TYPE (MRKT_TYP_CD)
      on delete restrict on update restrict;
alter table POLICY_AUDIT_ASSIGNMENT
   add constraint FROUX_TO_PAA foreign key (FROUX_ID)
      references FUNCTIONAL_ROLE_ORG_UNT_XREF (FROUX_ID)
        on delete restrict on update restrict;  

alter table POLICY_AUDIT_ASSIGNMENT
   add constraint STT_TO_PAA foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table POLICY_AUDIT_ASSIGNMENT
add constraint CNTRY_TO_PAA foreign key (CNTRY_ID)
      references COUNTRY (CNTRY_ID)
      on delete restrict on update restrict;
      
alter table POLICY_AUDIT_USER_OVERRIDE_DT
   add constraint USER_TO_PAUOD foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;
	  
ALTER TABLE CLAIM_FINANCIAL_TRAN_PAY_REQS
    ADD CONSTRAINT CFT_TO_CFTPR FOREIGN KEY(CFT_ID)
    REFERENCES CLAIM_FINANCIAL_TRANSACTION(CFT_ID) 
	on delete restrict on update restrict;

ALTER TABLE CLAIM_FINANCIAL_TRAN_PAY_REQS
    ADD CONSTRAINT PREQS_TO_CFTPR
    FOREIGN KEY(PAY_REQS_ID) REFERENCES PAYMENT_REQUEST(PAY_REQS_ID) 
	on delete restrict on update restrict;

ALTER TABLE CLAIM_FINANCIAL_TRAN_PAY_REQS
    ADD CONSTRAINT USER_TO_CFTPR2
    FOREIGN KEY(AUDIT_USER_ID_UPDT) REFERENCES USERS(USER_ID) 
	on delete restrict on update restrict;

ALTER TABLE CLAIM_FINANCIAL_TRAN_PAY_REQS
    ADD CONSTRAINT USER_TO_CFTPR1
    FOREIGN KEY(AUDIT_USER_ID_CREA) REFERENCES USERS(USER_ID) 
	on delete restrict on update restrict;	
	
ALTER TABLE POLICY_FINANCIAL_TRAN_PAY_REQS
    ADD CONSTRAINT PREQS_TO_PFTPR
    FOREIGN KEY(PAY_REQS_ID) REFERENCES PAYMENT_REQUEST(PAY_REQS_ID)
	on delete restrict on update restrict;

ALTER TABLE POLICY_FINANCIAL_TRAN_PAY_REQS
    ADD CONSTRAINT USER_TO_PFTPR1
    FOREIGN KEY(AUDIT_USER_ID_CREA) REFERENCES USERS(USER_ID)
	on delete restrict on update restrict;

ALTER TABLE POLICY_FINANCIAL_TRAN_PAY_REQS
    ADD CONSTRAINT PFT_TO_PFTPR
    FOREIGN KEY(PFT_ID) REFERENCES POLICY_FINANCIAL_TRANSACTION(PFT_ID)
	on delete restrict on update restrict;

ALTER TABLE POLICY_FINANCIAL_TRAN_PAY_REQS
    ADD CONSTRAINT USER_TO_PFTPR2
    FOREIGN KEY(AUDIT_USER_ID_UPDT) REFERENCES USERS(USER_ID)
	on delete restrict on update restrict;		  
alter table POLICY_AUDIT_USER_MAX_WRKLD
   add constraint USER_TO_PAUMW foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;

ALTER TABLE POLICY_PERIOD_EARNED_PAYROLL
    ADD CONSTRAINT PLCYP_TO_PPEPYRL
    FOREIGN KEY (PLCY_PRD_ID) REFERENCES POLICY_PERIOD(PLCY_PRD_ID)
    ON DELETE RESTRICT ON UPDATE RESTRICT;		  

ALTER TABLE POLICY_PERIOD_EARNED_PAYROLL
    ADD CONSTRAINT WCCS_TO_PPEPYRL
    FOREIGN KEY (WC_CLS_SUFX_ID) REFERENCES WC_CLASS_SUFFIX(WC_CLS_SUFX_ID)
    ON DELETE RESTRICT ON UPDATE RESTRICT;		  

ALTER TABLE POLICY_PERIOD_EARNED_PAYROLL
    ADD CONSTRAINT RCT_TO_PPEPYRL
    FOREIGN KEY (RT_CLS_TYP_CD) REFERENCES RATING_CLASS_TYPE(RT_CLS_TYP_CD)
    ON DELETE RESTRICT ON UPDATE RESTRICT;		  

ALTER TABLE POLICY_PERIOD_EARNED_PAYROLL
    ADD CONSTRAINT RTT_TO_PPEPYRL
    FOREIGN KEY (RT_TYP_CD) REFERENCES RATING_TYPE(RT_TYP_CD)
    ON DELETE RESTRICT ON UPDATE RESTRICT;		  

ALTER TABLE POLICY_PERIOD_EARNED_PAYROLL
    ADD CONSTRAINT JT_TO_PPEPYRL
    FOREIGN KEY (JUR_TYP_CD) REFERENCES JURISDICTION_TYPE(JUR_TYP_CD)
    ON DELETE RESTRICT ON UPDATE RESTRICT;		  

ALTER TABLE POLICY_PERIOD_EARNED_PAYROLL
    ADD CONSTRAINT USER_TO_PPEPYRL1
    FOREIGN KEY(AUDIT_USER_ID_CREA) REFERENCES USERS(USER_ID)
    ON DELETE RESTRICT ON UPDATE RESTRICT;		  

ALTER TABLE POLICY_PERIOD_EARNED_PAYROLL
    ADD CONSTRAINT USER_TO_PPEPYRL2
    FOREIGN KEY(AUDIT_USER_ID_UPDT) REFERENCES USERS(USER_ID)
    ON DELETE RESTRICT ON UPDATE RESTRICT;		  
      
alter table JURISDICTION_RATE_ELEMENT_XREF     
   add constraint RET_TO_JREX foreign key (RT_ELEM_TYP_CD)
      references RATING_ELEMENT_TYPE (RT_ELEM_TYP_CD)
      on delete restrict on update restrict;  

alter table JURISDICTION_RATE_ELEMENT_XREF     
   add constraint JT_TO_JREX foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;  
      
alter table SCHEDULE_AMOUNT_FNCL_TRAN_XREF
   add constraint SAT_TO_SAFTX foreign key (SCH_AMT_TYP_CD)
      references SCHEDULE_AMOUNT_TYPE (SCH_AMT_TYP_CD)
      on delete restrict on update restrict;


ALTER TABLE CLCT_SCH_AMT_FNCL_TRAN_XREF
    ADD CONSTRAINT CLCTSAT_TO_CSAFTX FOREIGN KEY(CLCT_SCH_AMT_TYP_CD)
    REFERENCES COLLECTION_SCHEDULE_AMT_TYP(CLCT_SCH_AMT_TYP_CD)
    ON DELETE RESTRICT ON UPDATE RESTRICT;












ALTER TABLE CASE_INCL_CLM_PLCY_QUOT ADD CONSTRAINT CASE_TO_CICPQ
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_INCL_CLM_PLCY_QUOT ADD CONSTRAINT AGRE_TO_CICPQ
 FOREIGN KEY (AGRE_ID)
  REFERENCES AGREEMENT (AGRE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_INCL_CLM_PLCY_QUOT ADD CONSTRAINT PLCYP_TO_CICPQ
 FOREIGN KEY (PLCY_PRD_ID)
  REFERENCES POLICY_PERIOD (PLCY_PRD_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_INCL_CLM_PLCY_QUOT ADD CONSTRAINT USER_TO_CICPQ1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_INCL_CLM_PLCY_QUOT ADD CONSTRAINT USER_TO_CICPQ2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PROFILE ADD CONSTRAINT CASE_TO_CASEP
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PROFILE ADD CONSTRAINT CASEPCT_TO_CASEP
 FOREIGN KEY (CASE_PRFL_CTG_TYP_CD)
  REFERENCES CASE_PROFILE_CATEGORY_TYPE (CASE_PRFL_CTG_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PROFILE ADD CONSTRAINT PRFLS_TO_CASEP
 FOREIGN KEY (PRFL_STMT_ID)
  REFERENCES PROFILE_STATEMENT (PRFL_STMT_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PROFILE ADD CONSTRAINT CE_TO_CASEP
 FOREIGN KEY (CASE_EVNT_ID)
  REFERENCES CASE_EVENT (CASE_EVNT_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table CASE_PROFILE
   add constraint PSSN_TO_CASEPRFL foreign key (PRFL_STMT_SEL_NEST_ID)
      references PROFILE_STATEMENT_SEL_NEST (PRFL_STMT_SEL_NEST_ID)
      on delete restrict on update restrict;
 
alter table CASE_PROFILE
   add constraint PSVT_TO_CASEPRFL foreign key (PRFL_SEL_VAL_TYP_CD)
      references PROFILE_SELECTION_VALUE_TYPE (PRFL_SEL_VAL_TYP_CD)
      on delete restrict on update restrict;


ALTER TABLE CASE_CASE_PROFILE_CTG_XREF ADD CONSTRAINT CASET_TO_CCPCX
 FOREIGN KEY (CASE_TYP_CD)
  REFERENCES CASE_TYPE (CASE_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE  CASE_CASE_PROFILE_CTG_XREF  ADD CONSTRAINT CASEPCT_TO_CCPCX
 FOREIGN KEY ( CASE_PRFL_CTG_TYP_CD )
  REFERENCES CASE_PROFILE_CATEGORY_TYPE(CASE_PRFL_CTG_TYP_CD )
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE CASE_PROFILE ADD CONSTRAINT USER_TO_CASEP1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PROFILE ADD CONSTRAINT USER_TO_CASEP2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PROFILE_STATEMENT ADD CONSTRAINT CCEX_TO_CASEPS
 FOREIGN KEY (CCEX_ID)
  REFERENCES CASE_CASE_EVENT_XREF (CCEX_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PROFILE_STATEMENT ADD CONSTRAINT CASEPCT_TO_CASEPS
 FOREIGN KEY (CASE_PRFL_CTG_TYP_CD)
  REFERENCES CASE_PROFILE_CATEGORY_TYPE (CASE_PRFL_CTG_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PROFILE_STATEMENT ADD CONSTRAINT PRFLS_TO_CASEPS
 FOREIGN KEY (PRFL_STMT_ID)
  REFERENCES PROFILE_STATEMENT (PRFL_STMT_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CASE_CONTACT_XREF ADD CONSTRAINT CASET_TO_CCCX
 FOREIGN KEY (CASE_TYP_CD)
  REFERENCES CASE_TYPE (CASE_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CASE_CONTACT_XREF ADD CONSTRAINT CCNTCT_TO_CCCX
 FOREIGN KEY (CASE_CNTC_TYP_CD)
  REFERENCES CASE_CONTACT_TYPE (CASE_CNTC_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CONTEXT_STS_ACTN_RSN_XREF ADD CONSTRAINT CACX_TO_CCSARX
 FOREIGN KEY (CACX_ID)
  REFERENCES CASE_APPLICATION_CONTEXT_XREF (CACX_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CONTEXT_STS_ACTN_RSN_XREF ADD CONSTRAINT CSAT_TO_CCSARX
 FOREIGN KEY (CASE_STS_ACTN_TYP_CD)
  REFERENCES CASE_STATUS_ACTION_TYPE (CASE_STS_ACTN_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CONTEXT_STS_ACTN_RSN_XREF ADD CONSTRAINT CSRT_TO_CCSARX
 FOREIGN KEY (CASE_STS_RSN_TYP_CD)
  REFERENCES CASE_STATUS_REASON_TYPE (CASE_STS_RSN_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CONTEXT_STT_STS_ACTN_XREF ADD CONSTRAINT CACX_TO_CCSSAX
 FOREIGN KEY (CACX_ID)
  REFERENCES CASE_APPLICATION_CONTEXT_XREF (CACX_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CONTEXT_STT_STS_ACTN_XREF ADD CONSTRAINT CSSX_TO_CCSSAXFR
 FOREIGN KEY (CASE_STT_STS_XREF_ID_FR)
  REFERENCES CASE_STATE_STATUS_XREF (CASE_STT_STS_XREF_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CONTEXT_STT_STS_ACTN_XREF ADD CONSTRAINT CSSX_TO_CCSSAXTO
 FOREIGN KEY (CASE_STT_STS_XREF_ID_TO)
  REFERENCES CASE_STATE_STATUS_XREF (CASE_STT_STS_XREF_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CONTEXT_STT_STS_ACTN_XREF ADD CONSTRAINT CSAT_TO_CCSSAX
 FOREIGN KEY (CASE_STS_ACTN_TYP_CD)
  REFERENCES CASE_STATUS_ACTION_TYPE (CASE_STS_ACTN_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CONTEXT_STT_STS_ACTN_XREF ADD CONSTRAINT CSRT_TO_CCSSAX
 FOREIGN KEY (CASE_STS_RSN_TYP_CD_DFLT)
  REFERENCES CASE_STATUS_REASON_TYPE (CASE_STS_RSN_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_STATE_STATUS_XREF ADD CONSTRAINT CASESTTT_TO_CSSX
 FOREIGN KEY (CASE_STT_TYP_CD)
  REFERENCES CASE_STATE_TYPE (CASE_STT_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE CASE_STATE_STATUS_XREF ADD CONSTRAINT CASESTST_TO_CSSX
 FOREIGN KEY (CASE_STS_TYP_CD)
  REFERENCES CASE_STATUS_TYPE (CASE_STS_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_RATING_SCALE_SET_XREF ADD CONSTRAINT CRSST_TO_CRSSX
 FOREIGN KEY (CASE_RT_SCL_SET_TYP_CD)
  REFERENCES CASE_RATING_SCALE_SET_TYPE (CASE_RT_SCL_SET_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_RATING_SCALE_SET_XREF ADD CONSTRAINT CASERST_TO_CRSSX
 FOREIGN KEY (CASE_RT_SCL_TYP_CD)
  REFERENCES CASE_RATING_SCALE_TYPE (CASE_RT_SCL_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CASE_SCORECARD_CTG_XREF ADD CONSTRAINT CASET_TO_CCSCX
 FOREIGN KEY (CASE_TYP_CD)
  REFERENCES CASE_TYPE (CASE_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CASE_SCORECARD_CTG_XREF ADD CONSTRAINT CSCT_TO_CCSCX
 FOREIGN KEY (CASE_SCRCRD_CTG_TYP_CD)
  REFERENCES CASE_SCORECARD_CATEGORY_TYPE (CASE_SCRCRD_CTG_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CTG_SCRCRD_RT_ATTR_XREF ADD CONSTRAINT CCSCX_TO_CCSRAX
 FOREIGN KEY(CCSCX_ID)
  REFERENCES CASE_CASE_SCORECARD_CTG_XREF (CCSCX_ID)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
    
ALTER TABLE CASE_CTG_SCRCRD_RT_ATTR_XREF ADD CONSTRAINT CASERST_TO_CCSRAX
 FOREIGN KEY(CASE_RT_ATTR_TYP_CD)
  REFERENCES CASE_RATING_ATTRIBUTE_TYPE (CASE_RT_ATTR_TYP_CD)
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CTG_SCRCRD_RT_ATTR_XREF ADD CONSTRAINT CRSST_TO_CCSRAX
 FOREIGN KEY(CASE_RT_SCL_SET_TYP_CD)
  REFERENCES CASE_RATING_SCALE_SET_TYPE (CASE_RT_SCL_SET_TYP_CD)
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CASE_TIME_TRACKING_XREF ADD CONSTRAINT CASET_TO_CCTTX
 FOREIGN KEY (CASE_TYP_CD)
  REFERENCES CASE_TYPE (CASE_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE CASE_CASE_TIME_TRACKING_XREF ADD CONSTRAINT CTTTT_TO_CCTTX
 FOREIGN KEY (CASE_TIME_TRK_TASK_TYP_CD)
  REFERENCES CASE_TIME_TRACKING_TASK_TYPE (CASE_TIME_TRK_TASK_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CASE_EVENT_XREF ADD CONSTRAINT CASET_TO_CCEX
 FOREIGN KEY (CASE_TYP_CD)
  REFERENCES CASE_TYPE (CASE_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CASE_EVENT_XREF ADD CONSTRAINT CASEET_TO_CCEX
 FOREIGN KEY (CASE_EVNT_TYP_CD)
  REFERENCES CASE_EVENT_TYPE (CASE_EVNT_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CASE_EVENT_XREF ADD CONSTRAINT CEDCDT_TO_CCEX
 FOREIGN KEY (CEDCDT_CD)
  REFERENCES CASE_EVENT_DUE_CALC_DT_TYP (CEDCDT_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CASE_EVENT_XREF ADD CONSTRAINT CIT_TO_CCEX
 FOREIGN KEY (CASE_ISS_TYP_CD)
  REFERENCES CASE_ISSUE_TYPE (CASE_ISS_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CASE_PTCP_XREF ADD CONSTRAINT CASET_TO_CCPX
 FOREIGN KEY (CASE_TYP_CD)
  REFERENCES CASE_TYPE (CASE_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE CASE_CASE_PTCP_XREF ADD CONSTRAINT CPTCPT_TO_CCPX
 FOREIGN KEY (CASE_PTCP_TYP_CD)
  REFERENCES CASE_PARTICIPATION_TYPE (CASE_PTCP_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CASE_ISSUE_STATUS_XREF ADD CONSTRAINT CASET_TO_CCISX
 FOREIGN KEY (CASE_TYP_CD)
  REFERENCES CASE_TYPE (CASE_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE CASE_CASE_ISSUE_STATUS_XREF ADD CONSTRAINT CIST_TO_CCISX
 FOREIGN KEY (CASE_ISS_STS_TYP_CD)
  REFERENCES CASE_ISSUE_STATUS_TYPE (CASE_ISS_STS_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CASE_RESOLUTION_XREF ADD CONSTRAINT CASET_TO_CASECRX
 FOREIGN KEY (CASE_TYP_CD) 
  REFERENCES CASE_TYPE (CASE_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CASE_RESOLUTION_XREF ADD CONSTRAINT CASERT_TO_CASECRX
 FOREIGN KEY (CASE_RSOL_TYP_CD) 
  REFERENCES CASE_RESOLUTION_TYPE (CASE_RSOL_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_APPLICATION_CONTEXT_XREF ADD CONSTRAINT CASECT_TO_CACX 
 FOREIGN KEY (CASE_TYP_CD)
  REFERENCES CASE_TYPE (CASE_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_APPLICATION_CONTEXT_XREF ADD CONSTRAINT ACT_TO_CACX 
 FOREIGN KEY (APP_CNTX_TYP_CD)
  REFERENCES APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CASE_ISSUE_APP_CNTX_XREF ADD CONSTRAINT CACX_TO_CCIACX
 FOREIGN KEY (CACX_ID) 
  REFERENCES CASE_APPLICATION_CONTEXT_XREF (CACX_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CASE_ISSUE_APP_CNTX_XREF ADD CONSTRAINT CIT_TO_CCIACX
 FOREIGN KEY (CASE_ISS_TYP_CD) 
  REFERENCES CASE_ISSUE_TYPE (CASE_ISS_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CATEGORY_APP_CNTX_XREF ADD CONSTRAINT CASECT_TO_CCACX 
 FOREIGN KEY (CASE_CTG_TYP_CD)
  REFERENCES CASE_CATEGORY_TYPE (CASE_CTG_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CATEGORY_APP_CNTX_XREF ADD CONSTRAINT ACT_TO_CCACX 
 FOREIGN KEY (APP_CNTX_TYP_CD)
  REFERENCES APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CASE_CTG_APP_CNTX_XREF ADD CONSTRAINT CASET_TO_CCCACX 
 FOREIGN KEY (CASE_TYP_CD)
  REFERENCES CASE_TYPE (CASE_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CASE_CTG_APP_CNTX_XREF ADD CONSTRAINT CASECT_TO_CCCACX 
 FOREIGN KEY (CASE_CTG_APP_CNTX_XREF_ID)
  REFERENCES CASE_CATEGORY_APP_CNTX_XREF (CASE_CTG_APP_CNTX_XREF_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CTG_FNCT_ROLE_XREF ADD CONSTRAINT CTCTCX_TO_CCFRX 
 FOREIGN KEY (CCCACX_ID)
  REFERENCES CASE_CASE_CTG_APP_CNTX_XREF (CCCACX_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CTG_FNCT_ROLE_XREF ADD CONSTRAINT FR_TO_CCFRX 
 FOREIGN KEY (FNCT_ROLE_ID)
  REFERENCES FUNCTIONAL_ROLE (FNCT_ROLE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASES ADD CONSTRAINT ACT_TO_CASE
 FOREIGN KEY (APP_CNTX_TYP_CD)
  REFERENCES APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASES ADD CONSTRAINT CSRCT_TO_CASE
 FOREIGN KEY (CASE_SRC_TYP_CD)
  REFERENCES CASE_SOURCE_TYPE (CASE_SRC_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASES ADD CONSTRAINT CASECT_TO_CASE
 FOREIGN KEY (CASE_CTG_TYP_CD)
  REFERENCES CASE_CATEGORY_TYPE (CASE_CTG_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASES ADD CONSTRAINT CASET_TO_CASE 
 FOREIGN KEY (CASE_TYP_CD)
  REFERENCES CASE_TYPE (CASE_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASES ADD CONSTRAINT CASEPT_TO_CASE
 FOREIGN KEY (CASE_PRTY_TYP_CD)
  REFERENCES CASE_PRIORITY_TYPE (CASE_PRTY_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASES ADD CONSTRAINT CASERT_TO_CASE
 FOREIGN KEY (CASE_RSOL_TYP_CD) 
  REFERENCES CASE_RESOLUTION_TYPE (CASE_RSOL_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASES ADD CONSTRAINT USER_TO_CASE1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASES ADD CONSTRAINT USER_TO_CASE2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_ISSUE ADD CONSTRAINT CASE_TO_CI
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE CASE_ISSUE ADD CONSTRAINT  CIT_TO_CI
 FOREIGN KEY (CASE_ISS_TYP_CD)
  REFERENCES CASE_ISSUE_TYPE (CASE_ISS_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE CASE_ISSUE ADD CONSTRAINT CIST_TO_CI
 FOREIGN KEY (CASE_ISS_STS_TYP_CD)
  REFERENCES CASE_ISSUE_STATUS_TYPE (CASE_ISS_STS_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_ISSUE ADD CONSTRAINT USER_TO_CI1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_ISSUE ADD CONSTRAINT USER_TO_CI2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PARTICIPANT ADD CONSTRAINT CASE_TO_CASEPTCP
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PARTICIPANT ADD CONSTRAINT CPTCPT_TO_CASEPTCP
 FOREIGN KEY (CASE_PTCP_TYP_CD)
  REFERENCES CASE_PARTICIPATION_TYPE (CASE_PTCP_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PARTICIPANT ADD CONSTRAINT CUST_TO_CASEPTCP
 FOREIGN KEY (CUST_ID)
  REFERENCES CUSTOMER (CUST_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PARTICIPANT ADD CONSTRAINT PTCP_TO_CASEPTCP  
 FOREIGN KEY (PTCP_ID) 
  REFERENCES PARTICIPATION (PTCP_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE CASE_PARTICIPANT ADD CONSTRAINT USER_TO_CASEPTCP
 FOREIGN KEY (USER_ID)
  REFERENCES USERS (USER_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PARTICIPANT ADD CONSTRAINT USER_TO_CASEPTCP1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PARTICIPANT ADD CONSTRAINT USER_TO_CASEPTCP2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_ASSOCIATED_PARTICIPANT ADD CONSTRAINT CASEPTCP_TO_CAP
 FOREIGN KEY (CASE_PTCP_ID)
  REFERENCES CASE_PARTICIPANT (CASE_PTCP_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_ASSOCIATED_PARTICIPANT ADD CONSTRAINT USER_TO_CAP1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_ASSOCIATED_PARTICIPANT ADD CONSTRAINT USER_TO_CAP2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_ASSOCIATED_PARTICIPANT ADD CONSTRAINT CASEPTCP_TO_CAPASS
 FOREIGN KEY (CASE_PTCP_ID_ASSC)
  REFERENCES CASE_PARTICIPANT (CASE_PTCP_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE CASE_EVENT ADD CONSTRAINT CASE_TO_CE
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_EVENT ADD CONSTRAINT CASEET_TO_CE
 FOREIGN KEY (CASE_EVNT_TYP_CD)
  REFERENCES CASE_EVENT_TYPE (CASE_EVNT_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_EVENT ADD CONSTRAINT USER_TO_CE
 FOREIGN KEY (USER_ID)
  REFERENCES USERS (USER_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_EVENT ADD CONSTRAINT CASEPTCP_TO_CE
 FOREIGN KEY (CASE_PTCP_ID)
  REFERENCES CASE_PARTICIPANT (CASE_PTCP_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_EVENT ADD CONSTRAINT USER_TO_CE1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_EVENT ADD CONSTRAINT USER_TO_CE2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_EVENT ADD CONSTRAINT ORG_UNT_TO_CE
FOREIGN KEY (ORG_UNT_ID)
  REFERENCES ORGANIZATIONAL_UNIT (ORG_UNT_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;  

ALTER TABLE CASE_EVENT_TASK_REMINDER_RECIP ADD CONSTRAINT ORG_UNT_TO_CETRR
FOREIGN KEY (ORG_UNT_ID)
  REFERENCES ORGANIZATIONAL_UNIT (ORG_UNT_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;  

ALTER TABLE CASE_EVENT_TASK_REMINDER_RECIP ADD CONSTRAINT CE_TO_CETRR
 FOREIGN KEY (CASE_EVNT_ID)
  REFERENCES CASE_EVENT (CASE_EVNT_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_EVENT_TASK_REMINDER_RECIP ADD CONSTRAINT USER_TO_CETRR
 FOREIGN KEY (USER_ID)
  REFERENCES USERS (USER_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_EVENT_TASK_REMINDER_RECIP ADD CONSTRAINT USER_TO_CETRR1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_EVENT_TASK_REMINDER_RECIP ADD CONSTRAINT USER_TO_CETRR2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SERVICE ADD CONSTRAINT CASE_TO_CASES
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SERVICE ADD CONSTRAINT CASEP_TO_CASES
 FOREIGN KEY (CASE_PTCP_ID)
  REFERENCES CASE_PARTICIPANT (CASE_PTCP_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SERVICE ADD CONSTRAINT CASEST_TO_CASES
 FOREIGN KEY (CASE_SERV_TYP_CD)
  REFERENCES CASE_SERVICE_TYPE (CASE_SERV_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SERVICE ADD CONSTRAINT CASESST_TO_CASES
 FOREIGN KEY (CASE_SERV_STS_TYP_CD)
  REFERENCES CASE_SERVICE_STATUS_TYPE (CASE_SERV_STS_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SERVICE ADD CONSTRAINT USER_TO_CASES1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SERVICE ADD CONSTRAINT USER_TO_CASES2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SERVICE_DETAIL ADD CONSTRAINT CASES_TO_CSD
 FOREIGN KEY (CASE_SERV_ID)
  REFERENCES CASE_SERVICE (CASE_SERV_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE CASE_SERVICE_DETAIL ADD CONSTRAINT USER_TO_CSD1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SERVICE_DETAIL ADD CONSTRAINT USER_TO_CSD2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_TIME_TRACKING_DETAIL ADD CONSTRAINT CASE_TO_CTTD
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_TIME_TRACKING_DETAIL ADD CONSTRAINT CTTTT_TO_CTTD
 FOREIGN KEY (CASE_TIME_TRK_TASK_TYP_CD)
  REFERENCES CASE_TIME_TRACKING_TASK_TYPE (CASE_TIME_TRK_TASK_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_TIME_TRACKING_DETAIL ADD CONSTRAINT CASEP_TO_CTTD
 FOREIGN KEY (CASE_PTCP_ID)
  REFERENCES CASE_PARTICIPANT (CASE_PTCP_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_TIME_TRACKING_DETAIL ADD CONSTRAINT CUST_TO_CTTD
 FOREIGN KEY (CUST_ID)
  REFERENCES CUSTOMER (CUST_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_TIME_TRACKING_DETAIL ADD CONSTRAINT USER_TO_CTTD
 FOREIGN KEY (USER_ID)
  REFERENCES USERS (USER_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_TIME_TRACKING_DETAIL ADD CONSTRAINT USER_TO_CTTD1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_TIME_TRACKING_DETAIL ADD CONSTRAINT USER_TO_CTTD2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_RELATED ADD CONSTRAINT CASE_TO_CASER
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE CASE_RELATED ADD CONSTRAINT CASE_TO_CASERRLT
 FOREIGN KEY (CASE_RLT_CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_RELATED ADD CONSTRAINT USER_TO_CASER1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_RELATED ADD CONSTRAINT USER_TO_CASER2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCORECARD ADD CONSTRAINT CASE_TO_CS
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCORECARD ADD CONSTRAINT CSCT_TO_CS
 FOREIGN KEY (CASE_SCRCRD_CTG_TYP_CD)
  REFERENCES CASE_SCORECARD_CATEGORY_TYPE (CASE_SCRCRD_CTG_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCORECARD ADD CONSTRAINT USER_TO_CS1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCORECARD ADD CONSTRAINT USER_TO_CS2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCORECARD_RATING_ATTR_SCR ADD CONSTRAINT CS_TO_CSRAS
 FOREIGN KEY (CS_ID)
  REFERENCES CASE_SCORECARD (CS_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCORECARD_RATING_ATTR_SCR ADD CONSTRAINT CASERAT_TO_CSRAS
 FOREIGN KEY (CASE_RT_ATTR_TYP_CD)
  REFERENCES CASE_RATING_ATTRIBUTE_TYPE (CASE_RT_ATTR_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCORECARD_RATING_ATTR_SCR ADD CONSTRAINT CASERST_TO_CSRAS
 FOREIGN KEY (CASE_RT_SCL_TYP_CD_SCR)
  REFERENCES CASE_RATING_SCALE_TYPE (CASE_RT_SCL_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCORECARD_RATING_ATTR_SCR ADD CONSTRAINT CASERST_TO_CSRASR
 FOREIGN KEY (CASE_RT_SCL_TYP_CD_RSOL_SCR)
  REFERENCES CASE_RATING_SCALE_TYPE (CASE_RT_SCL_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCORECARD_RATING_ATTR_SCR ADD CONSTRAINT USER_TO_CSRAS1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCORECARD_RATING_ATTR_SCR ADD CONSTRAINT USER_TO_CSRAS2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PARTICIPANT_CONTACT ADD CONSTRAINT CASEP_TO_CPC
 FOREIGN KEY (CASE_PTCP_ID)
  REFERENCES CASE_PARTICIPANT (CASE_PTCP_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PARTICIPANT_CONTACT ADD CONSTRAINT CCNTCT_TO_CPC
 FOREIGN KEY (CASE_CNTC_TYP_CD)
  REFERENCES CASE_CONTACT_TYPE (CASE_CNTC_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PARTICIPANT_CONTACT ADD CONSTRAINT USER_TO_CPC1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PARTICIPANT_CONTACT ADD CONSTRAINT USER_TO_CPC2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_COMMUNICATION_LOG ADD CONSTRAINT CASE_TO_CCL
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE CASE_COMMUNICATION_LOG ADD CONSTRAINT CCMT_TO_CCL
 FOREIGN KEY (CASE_COMM_MDM_TYP_CD)
  REFERENCES CASE_COMMUNICATION_MEDIUM_TYPE (CASE_COMM_MDM_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE CASE_COMMUNICATION_LOG ADD CONSTRAINT CASEP_TO_CCL
 FOREIGN KEY (CASE_PTCP_ID)
  REFERENCES CASE_PARTICIPANT (CASE_PTCP_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE CASE_COMMUNICATION_LOG ADD CONSTRAINT CPC_TO_CCL
 FOREIGN KEY (CASE_PTCP_CNTC_ID)
  REFERENCES CASE_PARTICIPANT_CONTACT (CASE_PTCP_CNTC_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_COMMUNICATION_LOG ADD CONSTRAINT USER_TO_CCL1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_COMMUNICATION_LOG ADD CONSTRAINT USER_TO_CCL2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CASE_SERVICE_XREF ADD CONSTRAINT CASET_TO_CASECSX
 FOREIGN KEY (CASE_TYP_CD)
  REFERENCES CASE_TYPE (CASE_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CASE_SERVICE_XREF ADD CONSTRAINT CASEST_TO_CASECSX
 FOREIGN KEY (CASE_SERV_TYP_CD)
  REFERENCES CASE_SERVICE_TYPE (CASE_SERV_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE NCCI_EMOD_EXCEPTION_REPORT ADD CONSTRAINT PSTYP_TO_NEER 
  FOREIGN KEY (PLCY_STS_TYP_CD)
     REFERENCES POLICY_STATUS_TYPE (PLCY_STS_TYP_CD)
       ON DELETE RESTRICT ON UPDATE RESTRICT;



 
alter table ICA_REPORT 
   add constraint AGRE_TO_IRPT foreign key (AGRE_ID) 
      references AGREEMENT (AGRE_ID) 
      on delete restrict on update restrict; 

-- DML's for Role Of Audit Vendor

alter table ROLE_VENDOR
   add constraint CR_TO_ROLEV foreign key (ROLE_ID)
      references CUSTOMER_ROLE (ROLE_ID)
      on delete restrict on update restrict;

alter table ROLE_VENDOR
   add constraint USER_TO_ROLEV1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_VENDOR
   add constraint USER_TO_ROLEV2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table ROLE_VENDOR_HISTORY
   add constraint ROLEV_TO_RVH foreign key (ROLE_VEND_ID)
      references ROLE_VENDOR (ROLE_VEND_ID)
      	on delete restrict on update restrict;

alter table ROLE_VENDOR_HISTORY
   add constraint CR_TO_RVH foreign key (ROLE_ID)
      references CUSTOMER_ROLE (ROLE_ID)
      on delete restrict on update restrict;

alter table ROLE_VENDOR_HISTORY
   add constraint USER_TO_RVH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_VENDOR_HISTORY
   add constraint USER_TO_RVH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_VENDOR_EFFECTIVE_PERIOD
   add constraint ROLEV_TO_RVEP foreign key (ROLE_VEND_ID)
      references ROLE_VENDOR (ROLE_VEND_ID)
      on delete restrict on update restrict;

alter table ROLE_VENDOR_EFFECTIVE_PERIOD
   add constraint USER_TO_RVEP1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_VENDOR_EFFECTIVE_PERIOD
   add constraint USER_TO_RVEP2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table ROLE_VENDOR_EFF_PRD_HIST
   add constraint RVEP_TO_RVEPH foreign key (ROLE_VEND_EFF_PRD_ID)
      references ROLE_VENDOR_EFFECTIVE_PERIOD (ROLE_VEND_EFF_PRD_ID)
      on delete restrict on update restrict;

alter table ROLE_VENDOR_EFF_PRD_HIST
   add constraint ROLEV_TO_RVEPH foreign key (ROLE_VEND_ID)
      references ROLE_VENDOR (ROLE_VEND_ID)
      	on delete restrict on update restrict;

alter table ROLE_VENDOR_EFF_PRD_HIST
   add constraint USER_TO_RVEPH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table ROLE_VENDOR_EFF_PRD_HIST
   add constraint USER_TO_RVEPH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
             
ALTER TABLE DOCM_COND_RECIP_PTCP_CNTX_XREF 
  ADD CONSTRAINT DCRT_TO_DCRPCX FOREIGN KEY (DOCM_COND_RECIP_TYP_CD) 
    REFERENCES DOCUMENT_CONDITION_RECIP_TYP (DOCM_COND_RECIP_TYP_CD) 
      ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE DOCM_COND_RECIP_PTCP_CNTX_XREF 
  ADD CONSTRAINT PTCPT_TO_DCRPCX FOREIGN KEY (PTCP_TYP_CD) 
    REFERENCES PARTICIPATION_TYPE (PTCP_TYP_CD) 
      ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE DOCM_COND_RECIP_PTCP_CNTX_XREF 
  ADD CONSTRAINT ACT_TO_DCRPCX FOREIGN KEY (APP_CNTX_TYP_CD) 
    REFERENCES APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD) 
      ON DELETE RESTRICT ON UPDATE RESTRICT; 
      

alter table ACTV_NM_ACTV_NM_CTG_XREF 
   add constraint ANCT_TO_ANANCX foreign key (ACTV_NM_CTG_TYP_CD) 
      references  ACTIVITY_NAME_CATEGORY_TYPE (ACTV_NM_CTG_TYP_CD) 
      on delete restrict on update restrict; 
      
alter table ACTV_NM_ACTV_NM_CTG_XREF 
   add constraint ANT_TO_ANANCX foreign key (ACTV_NM_TYP_CD) 
      references  ACTIVITY_NAME_TYPE (ACTV_NM_TYP_CD) 
      on delete restrict on update restrict; 
	  
alter table ACTV_NM_ACTV_NM_CTG_XREF 
   add constraint AAT_TO_ANANCX foreign key (ACTV_ACTN_TYP_CD)
      references ACTIVITY_ACTION_TYPE (ACTV_ACTN_TYP_CD)
      on delete restrict on update restrict; 

alter table ACTV_NM_ACTV_NM_CTG_XREF 
   add constraint PTCPT_TO_ANANCX foreign key (PTCP_TYP_CD)
      references PARTICIPATION_TYPE (PTCP_TYP_CD)
      on delete restrict on update restrict; 

alter table PAYMENT_PAYMENT_REQS_AGRE_XREF
   add constraint PAYT_TO_PPRAX foreign key (PAY_TYP_CD)
      references PAYMENT_TYPE (PAY_TYP_CD)
      on delete restrict on update restrict;

alter table PAYMENT_PAYMENT_REQS_AGRE_XREF
   add constraint PRTYP_TO_PPRAX foreign key (PAY_REQS_TYP_CD)
      references PAYMENT_REQUEST_TYPE (PAY_REQS_TYP_CD)
      on delete restrict on update restrict;

alter table PAYMENT_PAYMENT_REQS_AGRE_XREF
   add constraint AGRET_TO_PPRAX foreign key (AGRE_TYP_CD)
      references AGREEMENT_TYPE (AGRE_TYP_CD)
      on delete restrict on update restrict;	  

 alter table LIEN_REST_LIEN_REST_STS_XREF
   add constraint LRSTST_TO_LRLRSX foreign key (LIEN_REST_STS_TYP_CD)
      references LIEN_RESTRICTION_STATUS_TYPE (LIEN_REST_STS_TYP_CD)
      on delete restrict on update restrict;
 
alter table LIEN_REST_LIEN_REST_STS_XREF
   add constraint LRT_TO_LRLRSX foreign key (LIEN_REST_TYP_CD)
      references LIEN_RESTRICTION_TYPE (LIEN_REST_TYP_CD)
      on delete restrict on update restrict;
 
 
 
alter table PAYMENT_RECOVERY_PERIOD_XREF
   add constraint PAYT_TO_PRPX foreign key (PAY_TYP_CD)
      references PAYMENT_TYPE (PAY_TYP_CD)
      on delete restrict on update restrict;
 
alter table PAYMENT_RECOVERY_PERIOD_XREF
   add constraint RPRDT_TO_PRPX foreign key (RCVR_PRD_TYP_CD)
      references RECOVERY_PERIOD_TYPE (RCVR_PRD_TYP_CD)
      on delete restrict on update restrict;
 

alter table RECOVERY_METHOD_RCVR_PRD_XREF
   add constraint RMTYP_TO_RMRPX foreign key (RCVR_METH_TYP_CD)
      references CHARGE_METHOD_TYPE (CHR_METH_TYP_CD)
      on delete restrict on update restrict;
 
alter table RECOVERY_METHOD_RCVR_PRD_XREF
   add constraint RPRDT_TO_RMRPX foreign key (RCVR_PRD_TYP_CD)
      references RECOVERY_PERIOD_TYPE (RCVR_PRD_TYP_CD)
      on delete restrict on update restrict;
 

alter table PAYMENT_RECOVERY_PRD_METH_XREF
   add constraint RMRPX_TO_PRPMX foreign key (RCVR_METH_RCVR_PRD_XREF_ID)
      references RECOVERY_METHOD_RCVR_PRD_XREF (RCVR_METH_RCVR_PRD_XREF_ID)
      on delete restrict on update restrict;
 

alter table PAYMENT_RECOVERY_PRD_METH_XREF
   add constraint PRPX_TO_PRPMX foreign key (PAY_RCVR_PRD_XREF_ID)
      references PAYMENT_RECOVERY_PERIOD_XREF (PAY_RCVR_PRD_XREF_ID)
      on delete restrict on update restrict;
 
alter table CUSTOMER_LIEN_RESTRICTION
   add constraint CUST_TO_CLR foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;
 

alter table CUSTOMER_LIEN_RESTRICTION
   add constraint LRT_TO_CLR foreign key (LIEN_REST_TYP_CD)
      references LIEN_RESTRICTION_TYPE (LIEN_REST_TYP_CD)
      on delete restrict on update restrict;
 

alter table CUSTOMER_LIEN_RESTRICTION
   add constraint LRSRCT_TO_CLR foreign key (LIEN_REST_SRC_TYP_CD)
      references LIEN_RESTRICTION_SOURCE_TYPE (LIEN_REST_SRC_TYP_CD)
      on delete restrict on update restrict;
 

alter table CUSTOMER_LIEN_RESTRICTION
   add constraint LRSTST_TO_CLR foreign key (LIEN_REST_STS_TYP_CD)
      references LIEN_RESTRICTION_STATUS_TYPE (LIEN_REST_STS_TYP_CD)
      on delete restrict on update restrict;
 

alter table CUSTOMER_LIEN_RESTRICTION
   add constraint CUST_TO_CLRIENHLD foreign key (CUST_ID_LIEN_HLDR)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict; 
  
alter table CUSTOMER_LIEN_RESTRICTION
   add constraint USER_TO_CLR1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
 
alter table CUSTOMER_LIEN_RESTRICTION
   add constraint USER_TO_CLR2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
 

alter table CUSTOMER_LIEN_RESTRICTION_HIST
   add constraint CLR_TO_CLRH foreign key (CUST_LIEN_REST_ID)
      references CUSTOMER_LIEN_RESTRICTION (CUST_LIEN_REST_ID)
      on delete restrict on update restrict; 
 
alter table CUSTOMER_LIEN_RESTRICTION_HIST
   add constraint CUST_TO_CLRH foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;
 

alter table CUSTOMER_LIEN_RESTRICTION_HIST
   add constraint LRT_TO_CLRH foreign key (LIEN_REST_TYP_CD)
      references LIEN_RESTRICTION_TYPE (LIEN_REST_TYP_CD)
      on delete restrict on update restrict;
 
alter table CUSTOMER_LIEN_RESTRICTION_HIST
   add constraint LRSRCT_TO_CLRH foreign key (LIEN_REST_SRC_TYP_CD)
      references LIEN_RESTRICTION_SOURCE_TYPE (LIEN_REST_SRC_TYP_CD)
      on delete restrict on update restrict;
 

alter table CUSTOMER_LIEN_RESTRICTION_HIST
   add constraint LRSTST_TO_CLRH foreign key (LIEN_REST_STS_TYP_CD)
      references LIEN_RESTRICTION_STATUS_TYPE (LIEN_REST_STS_TYP_CD)
      on delete restrict on update restrict;
 
alter table CUSTOMER_LIEN_RESTRICTION_HIST
   add constraint CUST_TO_CLRHLINHLD foreign key (CUST_ID_LIEN_HLDR)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;
  
alter table CUSTOMER_LIEN_RESTRICTION_HIST
   add constraint USER_TO_CLRH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
 
alter table CUSTOMER_LIEN_RESTRICTION_HIST
   add constraint USER_TO_CLRH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
 
alter table CUSTOMER_LIEN_PAYMENT_DETAIL
   add constraint CUSTLR_TO_CLPD foreign key (CUST_LIEN_REST_ID)
      references CUSTOMER_LIEN_RESTRICTION (CUST_LIEN_REST_ID)
      on delete restrict on update restrict;
 

alter table CUSTOMER_LIEN_PAYMENT_DETAIL
   add constraint ACT_TO_CLPD foreign key (APP_CNTX_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;
 

alter table CUSTOMER_LIEN_PAYMENT_DETAIL
   add constraint PAYT_TO_CLPD foreign key (PAY_TYP_CD)
      references PAYMENT_TYPE (PAY_TYP_CD)
      on delete restrict on update restrict;
 

alter table CUSTOMER_LIEN_PAYMENT_DETAIL
   add constraint RMTYP_TO_CLPD foreign key (RCVR_METH_TYP_CD)
      references CHARGE_METHOD_TYPE (CHR_METH_TYP_CD)
      on delete restrict on update restrict;
 

alter table CUSTOMER_LIEN_PAYMENT_DETAIL
   add constraint RPRDT_TO_CLPD foreign key (RCVR_PRD_TYP_CD)
      references RECOVERY_PERIOD_TYPE (RCVR_PRD_TYP_CD)
      on delete restrict on update restrict;
 
  
alter table CUSTOMER_LIEN_PAYMENT_DETAIL
   add constraint USER_TO_CLPD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
 

alter table CUSTOMER_LIEN_PAYMENT_DETAIL
   add constraint USER_TO_CLPD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
 

alter table CUSTOMER_LIEN_PAYMENT_DTL_HIST
   add constraint CLPD_TO_CLPDH foreign key (CLPD_ID)
      references CUSTOMER_LIEN_PAYMENT_DETAIL (CLPD_ID)
      on delete restrict on update restrict;
 

alter table CUSTOMER_LIEN_PAYMENT_DTL_HIST
   add constraint CLR_TO_CLPDH foreign key (CUST_LIEN_REST_ID)
      references CUSTOMER_LIEN_RESTRICTION (CUST_LIEN_REST_ID)
      on delete restrict on update restrict;
 

alter table CUSTOMER_LIEN_PAYMENT_DTL_HIST
   add constraint ACT_TO_CLPDH foreign key (APP_CNTX_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;
 
alter table CUSTOMER_LIEN_PAYMENT_DTL_HIST
   add constraint PAYT_TO_CLPDH foreign key (PAY_TYP_CD)
      references PAYMENT_TYPE (PAY_TYP_CD)
      on delete restrict on update restrict;
 

alter table CUSTOMER_LIEN_PAYMENT_DTL_HIST
   add constraint RMTYP_TO_CLPDH foreign key (RCVR_METH_TYP_CD)
      references CHARGE_METHOD_TYPE (CHR_METH_TYP_CD)
      on delete restrict on update restrict;
 

alter table CUSTOMER_LIEN_PAYMENT_DTL_HIST
   add constraint RPRDT_TO_CLPDH foreign key (RCVR_PRD_TYP_CD)
      references RECOVERY_PERIOD_TYPE (RCVR_PRD_TYP_CD)
      on delete restrict on update restrict;
 

alter table CUSTOMER_LIEN_PAYMENT_DTL_HIST
   add constraint USER_TO_CLPDH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
 
alter table CUSTOMER_LIEN_PAYMENT_DTL_HIST
   add constraint USER_TO_CLPDH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

ALTER TABLE CASE_DETAIL_SUBROGATION
   ADD CONSTRAINT CASE_TO_CDS FOREIGN KEY (CASE_ID)
      REFERENCES CASES (CASE_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_SUBROGATION
   ADD CONSTRAINT CST_TO_CDS FOREIGN KEY (CASE_SRGT_SRC_TYP_CD)
      REFERENCES CASE_SUBROGATION_SOURCE_TYPE (CASE_SRGT_SRC_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_SUBROGATION
   ADD CONSTRAINT USER_TO_CDS1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_SUBROGATION
   ADD CONSTRAINT USER_TO_CDS2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_MEDICAL_MANAGEMENT ADD CONSTRAINT CMMERT_TO_CDMM 
FOREIGN KEY (CMMERT_CD)
REFERENCES CASE_MED_MANG_EXTRNL_RVW_TYP (CMMERT_CD)
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_MEDICAL_MANAGEMENT ADD CONSTRAINT CASE_TO_CDMM 
FOREIGN KEY (CASE_ID)
REFERENCES CASES (CASE_ID)
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_MEDICAL_MANAGEMENT ADD CONSTRAINT USER_TO_CDMM1 
FOREIGN KEY (AUDIT_USER_ID_CREA)
REFERENCES USERS (USER_ID)
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_MEDICAL_MANAGEMENT ADD CONSTRAINT USER_TO_CDMM2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
   
ALTER TABLE CASE_DETAIL_UTILIZATION_REVIEW ADD CONSTRAINT CASE_TO_CDUR
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_UTILIZATION_REVIEW ADD CONSTRAINT USER_TO_CDUR1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_UTILIZATION_REVIEW ADD CONSTRAINT USER_TO_CDUR2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_STATE_STATUS ADD CONSTRAINT CASE_TO_CSS
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_STATE_STATUS ADD CONSTRAINT CASESTST_TO_CSS
 FOREIGN KEY (CASE_STS_TYP_CD)
  REFERENCES CASE_STATUS_TYPE (CASE_STS_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_STATE_STATUS ADD CONSTRAINT CASESTTT_TO_CSS
 FOREIGN KEY (CASE_STT_TYP_CD)
  REFERENCES CASE_STATE_TYPE (CASE_STT_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_STATE_STATUS ADD CONSTRAINT CSRT_TO_CSS
 FOREIGN KEY (CASE_STS_RSN_TYP_CD)
  REFERENCES CASE_STATUS_REASON_TYPE (CASE_STS_RSN_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_STATE_STATUS ADD CONSTRAINT USER_TO_CSS1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_STATE_STATUS ADD CONSTRAINT USER_TO_CSS2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_STATE_STATUS_HISTORY ADD CONSTRAINT CASE_TO_CSSH
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_STATE_STATUS_HISTORY ADD CONSTRAINT CASESTST_TO_CSSH
 FOREIGN KEY (CASE_STS_TYP_CD)
  REFERENCES CASE_STATUS_TYPE (CASE_STS_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_STATE_STATUS_HISTORY ADD CONSTRAINT CASESTTT_TO_CSSH
 FOREIGN KEY (CASE_STT_TYP_CD)
  REFERENCES CASE_STATE_TYPE (CASE_STT_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_STATE_STATUS_HISTORY ADD CONSTRAINT CSRT_TO_CSSH
 FOREIGN KEY (CASE_STS_RSN_TYP_CD)
  REFERENCES CASE_STATUS_REASON_TYPE (CASE_STS_RSN_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_STATE_STATUS_HISTORY ADD CONSTRAINT USER_TO_CSSH1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_STATE_STATUS_HISTORY ADD CONSTRAINT USER_TO_CSSH2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE CASE_STATE_STATUS_HISTORY ADD CONSTRAINT CSS_TO_CSSH
 FOREIGN KEY (CASE_STT_STS_ID) 
  REFERENCES CASE_STATE_STATUS (CASE_STT_STS_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
alter table CLAIM_ACP_PKG_ACP_PRCS_XREF
   add constraint CAPRCST_TO_CAPAPX foreign key (CLM_ACP_PRCS_TYP_CD)
      references CLAIM_ACP_PROCESS_TYPE (CLM_ACP_PRCS_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_ACP_PKG_ACP_PRCS_XREF
   add constraint CAPKGT_TO_CAPAPX foreign key (CLM_ACP_PKG_TYP_CD)
      references CLAIM_ACP_PACKAGE_TYPE (CLM_ACP_PKG_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_ACP_PACKAGE_RULE_XREF
   add constraint CAPKGT_TO_CAPRX foreign key (CLM_ACP_PKG_TYP_CD)
      references CLAIM_ACP_PACKAGE_TYPE (CLM_ACP_PKG_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_ACP_PACKAGE_RULE_XREF
   add constraint RULE_TO_CAPRX foreign key (RL_ID)
      references RULES (RL_ID)
      on delete restrict on update restrict;

alter table CLAIM_ACP_PACKAGE_RULE_XREF
   add constraint LOBT_TO_CAPRX foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_ACP_PACKAGE_RULE_XREF
   add constraint JT_TO_CAPRX foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_ACP_PACKAGE_RULE_XREF
   add constraint CARCT_TO_CAPRX foreign key (CLM_ACP_RL_CTG_TYP_CD)
      references CLAIM_ACP_RULE_CATEGORY_TYPE (CLM_ACP_RL_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_SUPPORT_CARE_DETAIL
   add constraint USER_TO_CSCD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID) on delete restrict on update restrict;

alter table CLAIM_SUPPORT_CARE_DETAIL
   add constraint USER_TO_CSCD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID) on delete restrict on update restrict;

alter table CLAIM_SUPPORT_CARE_DETAIL
   add constraint CLM_TO_CSCD foreign key (AGRE_ID)
      references CLAIM (AGRE_ID) on delete restrict on update restrict;

alter table CLAIM_ACP_RESERVE_RULE
   add constraint CAPKGT_TO_CARR foreign key (CLM_ACP_PKG_TYP_CD)
      references CLAIM_ACP_PACKAGE_TYPE (CLM_ACP_PKG_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_ACP_RESERVE_RULE
   add constraint CLMRST_TO_CARR foreign key (CLM_RSRV_STS_TYP_CD)
      references CLAIM_RESERVE_STATUS_TYPE (CLM_RSRV_STS_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_ACP_RESERVE_RULE
   add constraint CLMRSRT_TO_CARR foreign key (CLM_RSRV_STS_RSN_TYP_CD)
      references CLAIM_RESERVE_STATUS_RSN_TYP (CLM_RSRV_STS_RSN_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_SUPPORT_CARE_DTL_HIST
   add constraint CLM_TO_CSCDH foreign key (AGRE_ID)
      references CLAIM (AGRE_ID) on delete restrict on update restrict;

alter table CLAIM_SUPPORT_CARE_DTL_HIST
   add constraint CSCD_TO_CSCDH foreign key (CLM_SUPT_CARE_DTL_ID)
      references CLAIM_SUPPORT_CARE_DETAIL (CLM_SUPT_CARE_DTL_ID) on delete restrict on update restrict;

alter table CLAIM_SUPPORT_CARE_DTL_HIST
   add constraint USER_TO_CSCDH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID) on delete restrict on update restrict;

alter table CLAIM_SUPPORT_CARE_DTL_HIST
   add constraint USER_TO_CSCDH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID) on delete restrict on update restrict;

alter table CLAIM_ACP_CLAIM_STS_TRANS_RL
   add constraint CAPKGT_TO_CACSTR foreign key (CLM_ACP_PKG_TYP_CD)
      references CLAIM_ACP_PACKAGE_TYPE (CLM_ACP_PKG_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_ACP_CLAIM_STS_TRANS_RL
   add constraint CTRT_TO_CACSTR foreign key (CLM_TRANS_RSN_TYP_CD)
      references CLAIM_TRANSITION_REASON_TYPE (CLM_TRANS_RSN_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_ACP_CLAIM_STS_TRANS_RL
   add constraint CSSAT_TO_CACSTR foreign key (CLM_STS_STT_ACTN_TYP_CD)
      references CLAIM_STATUS_STATE_ACTION_TYPE (CLM_STS_STT_ACTN_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_ACP_RESERVE_DETAIL_RULE
   add constraint CCCTYP_TO_CARDR foreign key (CST_CNTR_CTG_TYP_CD)
      references COST_CENTER_CATEGORY_TYPE (CST_CNTR_CTG_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_ACP_RESERVE_DETAIL_RULE
   add constraint CARR_TO_CARDR foreign key (CLM_ACP_PKG_TYP_CD)
      references CLAIM_ACP_RESERVE_RULE (CLM_ACP_PKG_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_ACP_COVERAGE_VRF_RL
   add constraint CAPKGT_TO_CACVR foreign key (CLM_ACP_PKG_TYP_CD)
      references CLAIM_ACP_PACKAGE_TYPE (CLM_ACP_PKG_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_ACP_COVERAGE_VRF_RL
   add constraint CCOT_TO_CACVRPLCY foreign key (CLM_COV_OVRRD_TYP_CD_NO_PLCY)
      references CLAIM_COVERAGE_OVERRIDE_TYPE (CLM_COV_OVRRD_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_ACP_COVERAGE_VRF_RL
   add constraint CCOT_TO_CACVRINDV foreign key (CLM_COV_OVRRD_TYP_CD_EXCL_INDV)
      references CLAIM_COVERAGE_OVERRIDE_TYPE (CLM_COV_OVRRD_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_ACP_COVERAGE_VRF_RL
   add constraint CCST_TO_CACV foreign key (CLM_COV_STS_TYP_CD)
      references CLAIM_COVERAGE_STATUS_TYPE (CLM_COV_STS_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_ACP_COVERAGE_VRF_RL
   add constraint CCST_TO_CACVRINDV foreign key (CLM_COV_STS_TYP_CD_EXCL_INDV)
      references CLAIM_COVERAGE_STATUS_TYPE (CLM_COV_STS_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_ACP_PAYEE_STATUS_RULE
   add constraint CAPKGT_TO_CAPSR foreign key (CLM_ACP_PKG_TYP_CD)
      references CLAIM_ACP_PACKAGE_TYPE (CLM_ACP_PKG_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_ACP_PROCESS_STATUS_RULE
   add constraint CAPKGT_TO_CLMAPSR foreign key (CLM_ACP_PKG_TYP_CD)
      references CLAIM_ACP_PACKAGE_TYPE (CLM_ACP_PKG_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_ACP_PROCESS_STATUS_RULE
   add constraint CAPSRT_TO_CLMAPSR foreign key (CLM_ACP_PRCS_STS_RSN_TYP_CD)
      references CLAIM_ACP_PROCESS_STS_RSN_TYP (CLM_ACP_PRCS_STS_RSN_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_ACP_CLAIM_TYPE_RULE
   add constraint CLMT_TO_CACTR foreign key (CLM_TYP_CD)
      references CLAIM_TYPE (CLM_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_ACP_CLAIM_TYPE_RULE
   add constraint CAPKGT_TO_CACTR foreign key (CLM_ACP_PKG_TYP_CD)
      references CLAIM_ACP_PACKAGE_TYPE (CLM_ACP_PKG_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_ACP_BILL_ACTION_RULE
   add constraint CAPKGT_TO_CABAR foreign key (CLM_ACP_PKG_TYP_CD)
      references CLAIM_ACP_PACKAGE_TYPE (CLM_ACP_PKG_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_ACP_BILL_ACTION_RULE
   add constraint BSSAT_TO_CABAR foreign key (BILL_STS_STT_ACTN_TYP_CD)
      references BILL_STATUS_STATE_ACTION_TYPE (BILL_STS_STT_ACTN_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_ACP_BILL_ACTION_RULE
   add constraint BTRT_TO_CABAR foreign key (BILL_TRANS_RSN_TYP_CD)
      references BILL_TRANSITION_REASON_TYPE (BILL_TRANS_RSN_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_ACP_STATUS
   add constraint CLM_TO_CAS foreign key (AGRE_ID)
      references CLAIM (AGRE_ID) on delete restrict on update restrict;

alter table CLAIM_ACP_STATUS
   add constraint CAPSRT_TO_CAS foreign key (CLM_ACP_PRCS_STS_RSN_TYP_CD)
      references CLAIM_ACP_PROCESS_STS_RSN_TYP (CLM_ACP_PRCS_STS_RSN_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_ACP_STATUS
   add constraint USER_TO_CAS1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID) on delete restrict on update restrict;

alter table CLAIM_ACP_STATUS
   add constraint USER_TO_CAS2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID) on delete restrict on update restrict;

alter table CLAIM_ACP_STATUS_HISTORY
   add constraint CAS_TO_CASH foreign key (CLM_ACP_STS_ID)
      references CLAIM_ACP_STATUS (CLM_ACP_STS_ID) on delete restrict on update restrict;

alter table CLAIM_ACP_STATUS_HISTORY
   add constraint CLM_TO_CASH foreign key (AGRE_ID)
      references CLAIM (AGRE_ID) on delete restrict on update restrict;

alter table CLAIM_ACP_STATUS_HISTORY
   add constraint CAPSRT_TO_CASH foreign key (CLM_ACP_PRCS_STS_RSN_TYP_CD)
      references CLAIM_ACP_PROCESS_STS_RSN_TYP (CLM_ACP_PRCS_STS_RSN_TYP_CD) on delete restrict on update restrict;

alter table CLAIM_ACP_STATUS_HISTORY
   add constraint USER_TO_CASH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID) on delete restrict on update restrict;
      
alter table CLAIM_ACP_STATUS_HISTORY
   add constraint USER_TO_CASH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID) on delete restrict on update restrict;

alter table CLAIM_RULE_OUTCOME
   add constraint CLM_TO_CRO foreign key (AGRE_ID)
      references CLAIM (AGRE_ID) on delete restrict on update restrict;
      
alter table CLAIM_RULE_OUTCOME
   add constraint CAPT_TO_CRO foreign key (CLM_ACP_PKG_TYP_CD)
      references CLAIM_ACP_PACKAGE_TYPE (CLM_ACP_PKG_TYP_CD) on delete restrict on update restrict;
      
alter table CLAIM_RULE_OUTCOME
   add constraint RULES_TO_CRO foreign key (RL_ID)
      references RULES (RL_ID) on delete restrict on update restrict;

alter table CLAIM_RULE_OUTCOME
   add constraint USER_TO_CRO1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID) on delete restrict on update restrict;

alter table CLAIM_RULE_OUTCOME
   add constraint USER_TO_CRO2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID) on delete restrict on update restrict;

alter table CLAIM_RULE_OUTCOME_HISTORY
   add constraint CLM_TO_CROH foreign key (AGRE_ID)
      references CLAIM (AGRE_ID) on delete restrict on update restrict;
      
alter table CLAIM_RULE_OUTCOME_HISTORY
   add constraint CAPT_TO_CROH foreign key (CLM_ACP_PKG_TYP_CD)
      references CLAIM_ACP_PACKAGE_TYPE (CLM_ACP_PKG_TYP_CD) on delete restrict on update restrict;
      
alter table CLAIM_RULE_OUTCOME_HISTORY
   add constraint RULES_TO_CROH foreign key (RL_ID)
      references RULES (RL_ID) on delete restrict on update restrict;

alter table CLAIM_RULE_OUTCOME_HISTORY
   add constraint USER_TO_CROH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID) on delete restrict on update restrict;

alter table CLAIM_RULE_OUTCOME_HISTORY
   add constraint USER_TO_CROH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID) on delete restrict on update restrict;

ALTER TABLE PROVIDER_CACHE
	ADD CONSTRAINT CUST_TO_PROVC FOREIGN KEY (CUST_ID)
	REFERENCES CUSTOMER (CUST_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
	
ALTER TABLE PROVIDER_CACHE
	ADD CONSTRAINT CUSTT_TO_PROVC FOREIGN KEY (CUST_TYP_CD)
	REFERENCES CUSTOMER_TYPE (CUST_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
	
ALTER TABLE PROVIDER_CACHE
	ADD CONSTRAINT RP_TO_PROVC FOREIGN KEY (ROLE_PROV_ID)
	REFERENCES ROLE_PROVIDER (ROLE_PROV_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PROVIDER_CACHE_SERV_LOC_XREF
	ADD CONSTRAINT RP_TO_PCSLX FOREIGN KEY (ROLE_PROV_ID)
	REFERENCES ROLE_PROVIDER (ROLE_PROV_ID)	
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PROVIDER_CACHE_SERV_LOC_XREF
	ADD CONSTRAINT RP_TO_PCSLXSVCLOC FOREIGN KEY (ROLE_PROV_ID_SVC_LOC)
	REFERENCES ROLE_PROVIDER (ROLE_PROV_ID)	
	ON DELETE RESTRICT ON UPDATE RESTRICT;


alter table POLICY_PERIOD_ACCOUNTING_TRAN
   add constraint ATT_TO_PPAT foreign key (ACCT_TRAN_TYP_CD)
      references ACCOUNTING_TRANSACTION_TYPE (ACCT_TRAN_TYP_CD)
      on delete restrict on update restrict; 
      
alter table POLICY_PERIOD_ACCOUNTING_TRAN 
   add constraint PLCYP_TO_PPAT foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;  
      
alter table POLICY_PERIOD_ACCOUNTING_TRAN
   add constraint USER_TO_PPAT1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table POLICY_PERIOD_ACCOUNTING_TRAN
   add constraint USER_TO_PPAT2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;    
      

ALTER TABLE POLICY_PERIOD_ACCOUNTING_TRAN
ADD CONSTRAINT JT_TO_PPAT
 FOREIGN KEY (JUR_TYP_CD)
  REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;            
      

alter table BATCH_URS_UNIT
   add constraint BU_TO_BUU foreign key (BTCH_URS_ID)
      references BATCH_URS (BTCH_URS_ID)
      on delete restrict on update restrict;      

alter table BATCH_URS_ADDRESS
   add constraint BUU_TO_BUA foreign key (BUU_ID)
      references BATCH_URS_UNIT (BUU_ID)
      on delete restrict on update restrict;      

alter table BATCH_URS_EXPOSURE
   add constraint BUU_TO_BUE foreign key (BUU_ID)
      references BATCH_URS_UNIT (BUU_ID)
      on delete restrict on update restrict;      

alter table BATCH_URS_LOSS
   add constraint BUU_TO_BUL foreign key (BUU_ID)
      references BATCH_URS_UNIT (BUU_ID)
      on delete restrict on update restrict;      

alter table BATCH_URS_NAME
   add constraint BUU_TO_BUN foreign key (BUU_ID)
      references BATCH_URS_UNIT (BUU_ID)
      on delete restrict on update restrict;  





-- ROLE INSURED OTHER CARRIER POLICY related DDLs



alter table ROLE_INSURED_OTHER_CAR_PLCY
   add constraint CR_TO_RIOCP foreign key (ROLE_ID)
      references CUSTOMER_ROLE (ROLE_ID)
      on delete restrict on update restrict;


alter table ROLE_INSURED_OTHER_CAR_PLCY
   add constraint PDST_TO_RIOCP foreign key (PLCY_DATA_SRC_TYP_CD)
      references POLICY_DATA_SOURCE_TYPE (PLCY_DATA_SRC_TYP_CD)
      on delete restrict on update restrict;


alter table ROLE_INSURED_OTHER_CAR_PLCY
   add constraint PT_TO_RIOCP foreign key (PLCY_TYP_CD)
      references POLICY_TYPE (PLCY_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSURED_OTHER_CAR_PLCY
   add constraint LOBT_TO_RIOCP foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSURED_OTHER_CAR_PLCY
   add constraint ST_TO_RIOCP foreign key (SIC_TYP_CD)
      references SIC_TYPE (SIC_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSURED_OTHER_CAR_PLCY
   add constraint CUST_TO_RIOCP foreign key (CUST_ID)
	  references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURED_OTHER_CAR_PLCY
   add constraint USER_TO_RIOCP1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
     
alter table ROLE_INSURED_OTHER_CAR_PLCY
   add constraint USER_TO_RIOCP2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table ROLE_INSURED_OTHER_CAR_PLCY
   add constraint NT_TO_RIOCP foreign key (NAICS_TYP_CD)
      references NAICS_TYPE (NAICS_TYP_CD)
      on delete restrict on update restrict;      


alter table ROLE_INSRD_OTHR_CAR_PLCY_CLS
   add constraint RIOCP_TO_RIOCPC foreign key (RIOCP_ID)
      references ROLE_INSURED_OTHER_CAR_PLCY (RIOCP_ID)
      on delete restrict on update restrict;


alter table ROLE_INSRD_OTHR_CAR_PLCY_CLS
   add constraint USER_TO_RIOCPCLS1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
     
alter table ROLE_INSRD_OTHR_CAR_PLCY_CLS
   add constraint USER_TO_RIOCPCLS2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_INSRD_OTHR_CAR_PLCY_LOC
   add constraint RIOCP_TO_RIOCPL foreign key (RIOCP_ID)
      references ROLE_INSURED_OTHER_CAR_PLCY (RIOCP_ID)
      on delete restrict on update restrict;

alter table ROLE_INSRD_OTHR_CAR_PLCY_LOC
   add constraint USER_TO_RIOCPL1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
     
alter table ROLE_INSRD_OTHR_CAR_PLCY_LOC
   add constraint USER_TO_RIOCPL2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_INSRD_OTHR_CAR_PLCY_LOC
   add constraint STT_TO_RIOCPL foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table ROLE_INSRD_OTHR_CAR_PLCY_LOC
add constraint CNTRY_TO_RIOCPL foreign key (CNTRY_ID)
      references COUNTRY (CNTRY_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURED_OC_POLICY_HIST
   add constraint RIOCP_TO_RIOCPH foreign key (RIOCP_ID)
      references ROLE_INSURED_OTHER_CAR_PLCY (RIOCP_ID)
         on delete restrict on update restrict;

alter table ROLE_INSURED_OC_POLICY_HIST
   add constraint CR_TO_RIOCPH foreign key (ROLE_ID)
      references CUSTOMER_ROLE (ROLE_ID)
      on delete restrict on update restrict;


alter table ROLE_INSURED_OC_POLICY_HIST
   add constraint PDST_TO_RIOCPH foreign key (PLCY_DATA_SRC_TYP_CD)
      references POLICY_DATA_SOURCE_TYPE (PLCY_DATA_SRC_TYP_CD)
      on delete restrict on update restrict;


alter table ROLE_INSURED_OC_POLICY_HIST
   add constraint PT_TO_RIOCPH foreign key (PLCY_TYP_CD)
      references POLICY_TYPE (PLCY_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSURED_OC_POLICY_HIST
   add constraint LOBT_TO_RIOCPH foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSURED_OC_POLICY_HIST
   add constraint ST_TO_RIOCPH foreign key (SIC_TYP_CD)
      references SIC_TYPE (SIC_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSURED_OC_POLICY_HIST
   add constraint CUST_TO_RIOCPH foreign key (CUST_ID)
	  references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURED_OC_POLICY_HIST
   add constraint USER_TO_RIOCPH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
     
alter table ROLE_INSURED_OC_POLICY_HIST
   add constraint USER_TO_RIOCPH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURED_OC_POLICY_HIST
   add constraint NT_TO_RIOCPH foreign key (NAICS_TYP_CD)
      references NAICS_TYPE (NAICS_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSURED_OC_PLCY_CLS_HIST
   add constraint RIOCPC_TO_RIOCPCH foreign key (RIOCPC_ID)
      references ROLE_INSRD_OTHR_CAR_PLCY_CLS (RIOCPC_ID)
         on delete restrict on update restrict;

alter table ROLE_INSURED_OC_PLCY_CLS_HIST
   add constraint RIOCP_TO_RIOCPCH foreign key (RIOCP_ID)
      references ROLE_INSURED_OTHER_CAR_PLCY (RIOCP_ID)
      on delete restrict on update restrict;


alter table ROLE_INSURED_OC_PLCY_CLS_HIST
   add constraint USER_TO_RIOCPCH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
     
alter table ROLE_INSURED_OC_PLCY_CLS_HIST
   add constraint USER_TO_RIOCPCH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;



alter table ROLE_INSURED_OC_PLCY_LOC_HIST
   add constraint RIOCPL_TO_RIOCPLH foreign key (RIOCPL_ID)
      references ROLE_INSRD_OTHR_CAR_PLCY_LOC (RIOCPL_ID)
         on delete restrict on update restrict;
         
alter table ROLE_INSURED_OC_PLCY_LOC_HIST
   add constraint RIOCP_TO_RIOCPLH foreign key (RIOCP_ID)
      references ROLE_INSURED_OTHER_CAR_PLCY (RIOCP_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURED_OC_PLCY_LOC_HIST
   add constraint USER_TO_RIOCPLH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
     
alter table ROLE_INSURED_OC_PLCY_LOC_HIST
   add constraint USER_TO_RIOCPLH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURED_OC_PLCY_LOC_HIST
   add constraint STT_TO_RIOCPLH foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table ROLE_INSURED_OC_PLCY_LOC_HIST
add constraint CNTRY_TO_RIOCPLH foreign key (CNTRY_ID)
      references COUNTRY (CNTRY_ID)
      on delete restrict on update restrict;

-- End of ROLE INSURED OTHER CARRIER POLICY related DDLs



ALTER TABLE CONTRACT_CATEGORY_PTCP_XREF
	ADD CONSTRAINT PTCPT_TO_CONTTCPX FOREIGN KEY (PTCP_TYP_CD)
	REFERENCES PARTICIPATION_TYPE (PTCP_TYP_CD)
        on delete restrict on update restrict;


ALTER TABLE CONTRACT_CATEGORY_PTCP_XREF
	ADD CONSTRAINT CCTGT_TO_CONTTCPX FOREIGN KEY (CONTT_CTG_TYP_CD)
	REFERENCES CONTRACT_CATEGORY_TYPE (CONTT_CTG_TYP_CD)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_AMENDMENT
	ADD CONSTRAINT AGRE_TO_CAMND FOREIGN KEY (AGRE_ID)
	REFERENCES AGREEMENT (AGRE_ID)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_AMENDMENT
	ADD CONSTRAINT CSUBT_TO_CAMND FOREIGN KEY (CONTT_SUB_TYP_CD)
	REFERENCES CONTRACT_SUB_TYPE (CONTT_SUB_TYP_CD)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_AMENDMENT
	ADD CONSTRAINT CSTST_TO_CAMND FOREIGN KEY (CONTT_STS_TYP_CD)
	REFERENCES CONTRACT_STATUS_TYPE (CONTT_STS_TYP_CD)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_AMENDMENT
	ADD CONSTRAINT CSTTT_TO_CAMND FOREIGN KEY (CONTT_STT_TYP_CD)
	REFERENCES CONTRACT_STATE_TYPE (CONTT_STT_TYP_CD)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_AMENDMENT
	ADD CONSTRAINT CTYP_TO_CAMND FOREIGN KEY (CONTT_TYP_CD)
	REFERENCES CONTRACT_TYPE (CONTT_TYP_CD)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_AMENDMENT
	ADD CONSTRAINT CCTGT_TO_CAMND FOREIGN KEY (CONTT_CTG_TYP_CD)
	REFERENCES CONTRACT_CATEGORY_TYPE (CONTT_CTG_TYP_CD)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_AMENDMENT
	ADD CONSTRAINT CTRSNT_TO_CAMND FOREIGN KEY (CONTT_TRANS_RSN_TYP_CD)
	REFERENCES CONTRACT_TRANSITION_REASON_TYP (CONTT_TRANS_RSN_TYP_CD)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_TYPE
	ADD CONSTRAINT CCTGT_TO_CTYP FOREIGN KEY (CONTT_CTG_TYP_CD)
	REFERENCES CONTRACT_CATEGORY_TYPE (CONTT_CTG_TYP_CD)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_PARTICIPATION
	ADD CONSTRAINT CAMND_TO_CONTTP FOREIGN KEY (CONTT_AMND_ID)
	REFERENCES CONTRACT_AMENDMENT (CONTT_AMND_ID)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_PARTICIPATION
	ADD CONSTRAINT CUST_TO_CONTTP FOREIGN KEY (CUST_ID)
	REFERENCES CUSTOMER (CUST_ID)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_PARTICIPATION
	ADD CONSTRAINT PTCPT_TO_CONTTP FOREIGN KEY (PTCP_TYP_CD)
	REFERENCES PARTICIPATION_TYPE (PTCP_TYP_CD)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_PARTICIPATION_RECV
	ADD CONSTRAINT CONTTP_TO_CPR FOREIGN KEY (CONTT_PTCP_ID)
	REFERENCES CONTRACT_PARTICIPATION (CONTT_PTCP_ID)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_PARTICIPATION_RECV
	ADD CONSTRAINT CRLT_TO_CPR FOREIGN KEY (CNTX_RL_TYP_CD)
	REFERENCES CONTEXT_RULE_TYPE (CNTX_RL_TYP_CD)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_PARTICIPATION_RECV
	ADD CONSTRAINT RFT_TO_CPR FOREIGN KEY (RECV_FREQ_TYP_CD)
	REFERENCES RECEIVERSHIP_FREQUENCY_TYPE (RECV_FREQ_TYP_CD)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_PARTICIPATION_PROV
	ADD CONSTRAINT CONTTP_TO_CPTCPP FOREIGN KEY (CONTT_PTCP_ID)
	REFERENCES CONTRACT_PARTICIPATION (CONTT_PTCP_ID)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_DOCM_VER_SENT_TO_PTCP
	ADD CONSTRAINT CONTTP_TO_CDVSTP FOREIGN KEY (CONTT_PTCP_ID)
	REFERENCES CONTRACT_PARTICIPATION (CONTT_PTCP_ID)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_DOCM_VER_SENT_TO_PTCP
	ADD CONSTRAINT CDV_TO_CDVSTP FOREIGN KEY (CONTT_DOCM_VER_ID)
	REFERENCES CONTRACT_DOCUMENT_VERSION (CONTT_DOCM_VER_ID)
        on delete restrict on update restrict;

ALTER TABLE CONTEXT_EXCEPTION
	ADD CONSTRAINT ACT_TO_CEXCP FOREIGN KEY (APP_CNTX_TYP_CD)
	REFERENCES APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
        on delete restrict on update restrict;

ALTER TABLE CONTEXT_EXCEPTION
	ADD CONSTRAINT AGRE_TO_CEXCP FOREIGN KEY (AGRE_ID)
	REFERENCES AGREEMENT (AGRE_ID)
        on delete restrict on update restrict;

ALTER TABLE CONTEXT_EXCEPTION
	ADD CONSTRAINT RIOCP_TO_CEXCP FOREIGN KEY (RIOCP_ID)
	REFERENCES ROLE_INSURED_OTHER_CAR_PLCY (RIOCP_ID)
        on delete restrict on update restrict;

ALTER TABLE CONTEXT_EXCEPTION
	ADD CONSTRAINT CPR_TO_CEXCP FOREIGN KEY (CONTT_PTCP_RECV_ID)
	REFERENCES  CONTRACT_PARTICIPATION_RECV (CONTT_PTCP_RECV_ID)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_SUB_TYPE
	ADD CONSTRAINT CTYP_TO_CSUBT FOREIGN KEY (CONTT_TYP_CD)
	REFERENCES CONTRACT_TYPE (CONTT_TYP_CD)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_DOCUMENT_VERSION
	ADD CONSTRAINT CDVSTT_TO_CDV FOREIGN KEY (CONTT_DOCM_VER_SENT_TYP_CD)
	REFERENCES CONTRACT_DOCM_VER_SENT_TO_TYP (CONTT_DOCM_VER_SENT_TYP_CD)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_DOCUMENT_VERSION
	ADD CONSTRAINT CDVT_TO_CDV FOREIGN KEY (CONTT_DOCM_VER_TYP_CD)
	REFERENCES CONTRACT_DOCUMENT_VERSION_TYPE (CONTT_DOCM_VER_TYP_CD)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_DOCUMENT_VERSION
	ADD CONSTRAINT CAMND_TO_CDV FOREIGN KEY (CONTT_AMND_ID)
	REFERENCES CONTRACT_AMENDMENT (CONTT_AMND_ID)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_STATUS_STATE_XREF
	ADD CONSTRAINT CSTTT_TO_CSSTTX FOREIGN KEY (CONTT_STT_TYP_CD)
	REFERENCES CONTRACT_STATE_TYPE (CONTT_STT_TYP_CD)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_STATUS_STATE_XREF
	ADD CONSTRAINT CSTST_TO_CSSTTX FOREIGN KEY (CONTT_STS_TYP_CD)
	REFERENCES CONTRACT_STATUS_TYPE (CONTT_STS_TYP_CD)
        on delete restrict on update restrict;

ALTER TABLE CONTT_STS_STT_ACTN_TRN_XREF
	ADD CONSTRAINT CSSATYP_T_CSTTSATX FOREIGN KEY (CONTT_STS_STT_ACTN_TYP_CD)
	REFERENCES CONTRACT_STATUS_STATE_ACTN_TYP (CONTT_STS_STT_ACTN_TYP_CD)
        on delete restrict on update restrict;

ALTER TABLE CONTT_STS_STT_ACTN_TRN_XREF
	ADD CONSTRAINT CSSTTX_T_CSTTSATXF FOREIGN KEY (CONTT_STS_STT_XREF_ID_FR)
	REFERENCES CONTRACT_STATUS_STATE_XREF (CONTT_STS_STT_XREF_ID)
        on delete restrict on update restrict;

ALTER TABLE CONTT_STS_STT_ACTN_TRN_XREF
	ADD CONSTRAINT CSSTTX_T_CSTTSATXT FOREIGN KEY (CONTT_STS_STT_XREF_ID_TO)
	REFERENCES CONTRACT_STATUS_STATE_XREF (CONTT_STS_STT_XREF_ID)
        on delete restrict on update restrict;

ALTER TABLE CONTT_STS_STT_ACTN_TRN_XREF 
        ADD CONSTRAINT CTRSNT_T_CSTTSATX FOREIGN KEY (CONTT_TRN_RSN_TYP_CD_SYS_DFLT) 
        REFERENCES CONTRACT_TRANSITION_REASON_TYP (CONTT_TRANS_RSN_TYP_CD) 
        ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CONTT_STS_STT_ACTN_TRN_RSN_XRF
	ADD CONSTRAINT CSSATYP_TO_CSSATRX FOREIGN KEY (CONTT_STS_STT_ACTN_TYP_CD)
	REFERENCES CONTRACT_STATUS_STATE_ACTN_TYP (CONTT_STS_STT_ACTN_TYP_CD)
        on delete restrict on update restrict;

ALTER TABLE CONTT_STS_STT_ACTN_TRN_RSN_XRF
	ADD CONSTRAINT CTRSNT_TO_CSSATRX FOREIGN KEY (CONTT_TRANS_RSN_TYP_CD)
	REFERENCES CONTRACT_TRANSITION_REASON_TYP (CONTT_TRANS_RSN_TYP_CD)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_AMENDMENT_STATUS
	ADD CONSTRAINT CAMND_TO_CONTTAS FOREIGN KEY (CONTT_AMND_ID)
	REFERENCES CONTRACT_AMENDMENT (CONTT_AMND_ID)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_AMENDMENT_STATUS
	ADD CONSTRAINT CSTST_TO_CONTTAS FOREIGN KEY (CONTT_STS_TYP_CD)
	REFERENCES CONTRACT_STATUS_TYPE (CONTT_STS_TYP_CD)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_AMENDMENT_STATUS
	ADD CONSTRAINT CSTTT_TO_CONTTAS FOREIGN KEY (CONTT_STT_TYP_CD)
	REFERENCES CONTRACT_STATE_TYPE (CONTT_STT_TYP_CD)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_AMENDMENT_STATUS
	ADD CONSTRAINT CTRSNT_TO_CONTTAS FOREIGN KEY (CONTT_TRANS_RSN_TYP_CD)
	REFERENCES CONTRACT_TRANSITION_REASON_TYP (CONTT_TRANS_RSN_TYP_CD)
        on delete restrict on update restrict;


ALTER TABLE CONTRACT_AMENDMENT
	ADD CONSTRAINT USER_TO_CAMND1 FOREIGN KEY (USER_ID_FNL_BY)
	REFERENCES USERS (USER_ID)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_AMENDMENT
	ADD CONSTRAINT USER_TO_CAMND2 FOREIGN KEY (USER_ID_OWNR)
	REFERENCES USERS (USER_ID)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_AMENDMENT
	ADD CONSTRAINT USER_TO_CAMND3 FOREIGN KEY (USER_ID_INT_BY)
	REFERENCES USERS (USER_ID)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_AMENDMENT
	ADD CONSTRAINT USER_TO_CAMND4 FOREIGN KEY (AUDIT_USER_ID_CREA)
	REFERENCES USERS (USER_ID)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_AMENDMENT
	ADD CONSTRAINT USER_TO_CAMND5 FOREIGN KEY (AUDIT_USER_ID_UPDT)
	REFERENCES USERS (USER_ID)
        on delete restrict on update restrict;


ALTER TABLE CONTRACT_PARTICIPATION
	ADD CONSTRAINT USER_TO_CONTTP1 FOREIGN KEY (AUDIT_USER_ID_CREA)
	REFERENCES USERS (USER_ID)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_PARTICIPATION
	ADD CONSTRAINT USER_TO_CONTTP2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
	REFERENCES USERS (USER_ID)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_AMENDMENT_STATUS
	ADD CONSTRAINT USER_TO_CONTTAS1 FOREIGN KEY (AUDIT_USER_ID_CREA)
	REFERENCES USERS (USER_ID)
        on delete restrict on update restrict;

ALTER TABLE CONTRACT_AMENDMENT_STATUS
	ADD CONSTRAINT USER_TO_CONTTAS2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
	REFERENCES USERS (USER_ID)
        on delete restrict on update restrict;

alter table CLAIM_ACP_PACKAGE_TYPE
   add constraint PRFLS_TO_CAPKGT foreign key (PRFL_STMT_ID)
      references PROFILE_STATEMENT (PRFL_STMT_ID) on delete restrict on update restrict;

alter table CLAIM_ACP_PROCESS_TYPE
   add constraint PRFLS_TO_CAPRST foreign key (PRFL_STMT_ID)
      references PROFILE_STATEMENT (PRFL_STMT_ID) on delete restrict on update restrict;


alter table ROLE_PROVIDER_CREDENTIAL
   add constraint RP_TO_RPCRDNTL foreign key (ROLE_PROV_ID)
      references ROLE_PROVIDER (ROLE_PROV_ID)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER_CREDENTIAL
   add constraint CUST_TO_RPCRDNTL foreign key (CUST_ID)
	  references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER_CREDENTIAL
   add constraint USER_TO_RPCRDNTL1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
     
alter table ROLE_PROVIDER_CREDENTIAL
   add constraint USER_TO_RPCRDNTL2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      

alter table POLICY_PERIOD_PTCP_BUSN_OWNSHP
   add constraint PPP_TO_PPPBO foreign key (PTCP_ID)
      references POLICY_PERIOD_PARTICIPATION (PTCP_ID)
      on delete restrict on update restrict;
	  
alter table PLCY_PRD_PTCP_BUSN_OWNSHP_HIST
   add constraint PPPH_TO_PPPBOH foreign key (HIST_ID)
      references POLICY_PERIOD_PTCP_HIST (HIST_ID)
      on delete restrict on update restrict;


---alter table OTHER_CARRIER_CLAIM START-----
 
alter table OTHER_CARRIER_CLAIM
   add constraint CUST_TO_OCC foreign key (CUST_ID)
	  references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table OTHER_CARRIER_CLAIM
   add constraint CDSRCT_TO_OCC foreign key (CLM_DATA_SRC_TYP_CD)
	  references CLAIM_DATA_SOURCE_TYPE (CLM_DATA_SRC_TYP_CD)
      on delete restrict on update restrict;

alter table OTHER_CARRIER_CLAIM
   add constraint LOBT_TO_OCC foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table OTHER_CARRIER_CLAIM
   add constraint USER_TO_OCC1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
     
alter table OTHER_CARRIER_CLAIM
   add constraint USER_TO_OCC2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;      

---alter table OTHER_CARRIER_CLAIM END-----

---alter table OTHER_CARRIER_CLAIM_POB START-----

alter table OTHER_CARRIER_CLAIM_POB
   add constraint OCC_TO_OCCP foreign key (OTHR_CAR_CLM_ID)
      references OTHER_CARRIER_CLAIM (OTHR_CAR_CLM_ID)
      on delete restrict on update restrict;

alter table OTHER_CARRIER_CLAIM_POB
   add constraint POBT_TO_OCCP foreign key (POB_TYP_CD)
      references PART_OF_BODY_TYPE (POB_TYP_CD)
      on delete restrict on update restrict;

alter table OTHER_CARRIER_CLAIM_POB
   add constraint POBLT_TO_OCCP foreign key (POB_LOC_TYP_CD)
      references PART_OF_BODY_LOCATION_TYPE (POB_LOC_TYP_CD)
      on delete restrict on update restrict;

alter table OTHER_CARRIER_CLAIM_POB
   add constraint USER_TO_OCCP1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table OTHER_CARRIER_CLAIM_POB
   add constraint USER_TO_OCCP2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
 ---alter table OTHER_CARRIER_CLAIM_POB END-----
 
alter table CLAIM_INVOICE
   add constraint CUST_TO_CINVCRECV foreign key (CUST_ID_RECV)
      references CUSTOMER (CUST_ID) on delete restrict on update restrict;

alter table CLAIM_INVOICE
   add constraint CUST_TO_CINVCIC foreign key (CUST_ID_INSLV_CAR)
      references CUSTOMER (CUST_ID) on delete restrict on update restrict;

alter table CLAIM_INVOICE
   add constraint DOCM_TO_CINVC FOREIGN KEY (DOCM_ID) 
       REFERENCES DOCUMENT (DOCM_ID) 
       ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table CLAIM_INVOICE
   add constraint USER_TO_CINVC1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID) on delete restrict on update restrict;

alter table CLAIM_INVOICE
   add constraint USER_TO_CINVC2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID) on delete restrict on update restrict;

alter table CLAIM_INVOICE_DETAIL
   add constraint CFT_TO_CID foreign key (CFT_ID)
      references CLAIM_FINANCIAL_TRANSACTION (CFT_ID) on delete restrict on update restrict;

alter table CLAIM_INVOICE_DETAIL
   add constraint CINVC_TO_CID foreign key (CLM_INVC_ID)
      references CLAIM_INVOICE (CLM_INVC_ID) on delete restrict on update restrict;

alter table CLAIM_INVOICE_DETAIL
   add constraint USER_TO_CID1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID) on delete restrict on update restrict;

alter table CLAIM_INVOICE_DETAIL
   add constraint USER_TO_CID2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID) on delete restrict on update restrict;

alter table CLAIM_INVOICE_SOURCE
   add constraint CINVC_TO_CINVCS foreign key (CLM_INVC_ID)
      references CLAIM_INVOICE (CLM_INVC_ID) on delete restrict on update restrict;

alter table CLAIM_INVOICE_SOURCE
   add constraint CFTA_TO_CINVCS foreign key (CFTA_ID)
      references CLAIM_FINANCIAL_TRAN_APP (CFTA_ID) on delete restrict on update restrict;

alter table CLAIM_INVOICE_SOURCE
   add constraint USER_TO_CINVCS1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID) on delete restrict on update restrict;

alter table CLAIM_INVOICE_SOURCE
   add constraint USER_TO_CINVCS2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID) on delete restrict on update restrict;

alter table REGULATORY_AGENCY
   add constraint STT_TO_RGLA foreign key (STT_ID)
	  references STATE (STT_ID)
      on delete restrict on update restrict;
      
alter table CUSTOMER_INSOLVENT_CARRIER
   add constraint CUST_TO_CIC foreign key (CUST_ID)
	  references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_INSOLVENT_CARRIER
   add constraint RGLA_TO_CIC foreign key (RGL_AGY_ID)
      references REGULATORY_AGENCY (RGL_AGY_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_INSOLVENT_CARRIER
   add constraint USER_TO_CIC1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
     
alter table CUSTOMER_INSOLVENT_CARRIER
   add constraint USER_TO_CIC2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table CUSTOMER_INSOLVENT_CARRIER
   add constraint STT_TO_CIC foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;     

alter table CUSTOMER_BOND_DETAIL
   add constraint CUST_TO_CBD foreign key (CUST_ID)
	  references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_BOND_DETAIL
   add constraint BONDT_TO_CBD foreign key (BOND_TYP_CD)
      references BOND_TYPE (BOND_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_BOND_DETAIL
   add constraint USER_TO_CBD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
     
alter table CUSTOMER_BOND_DETAIL
   add constraint USER_TO_CBD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_STATUS_POLICY_AUDT_XREF
   add constraint PSTYP_TO_PSPAX foreign key (PLCY_STS_TYP_CD)
      references POLICY_STATUS_TYPE (PLCY_STS_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_STATUS_POLICY_AUDT_XREF
   add constraint PAT_TO_PSPAX foreign key (PLCY_AUDT_TYP_CD)
      references POLICY_AUDIT_TYPE (PLCY_AUDT_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE WEB_PAYMENT_STATUS
	ADD CONSTRAINT WPST_TO_WPS FOREIGN KEY (WEB_PYMT_STS_TYP_CD)
	REFERENCES WEB_PAYMENT_STATUS_TYPE (WEB_PYMT_STS_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE WEB_PAYMENT_STATUS
	ADD CONSTRAINT WCPMT_TO_WPS FOREIGN KEY (WEB_CMPNT_PYMT_METH_TYP_CD)
	REFERENCES WEB_COMPONENT_PAYMENT_METH_TYP (WEB_CMPNT_PYMT_METH_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table WEB_PAYMENT_STATUS
   add constraint USER_TO_WPS1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table WEB_PAYMENT_STATUS
   add constraint USER_TO_WPS2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
ALTER TABLE POLICY_STS_PLCY_AUDT_SRC_XREF
   ADD CONSTRAINT PSTYP_TO_PSPASX FOREIGN KEY (PLCY_STS_TYP_CD)
      REFERENCES POLICY_STATUS_TYPE (PLCY_STS_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE POLICY_STS_PLCY_AUDT_SRC_XREF
   ADD CONSTRAINT PLCYAST_TO_PSPASX FOREIGN KEY (PLCY_AUDT_SRC_TYP_ID)
      REFERENCES POLICY_AUDIT_SOURCE_TYPE (PLCY_AUDT_SRC_TYP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;     

ALTER TABLE VERISIGN_RESPONSE_ACTION_TYPE
	ADD CONSTRAINT WPST_TO_VRAT FOREIGN KEY (WEB_PYMT_STS_TYP_CD)
	REFERENCES WEB_PAYMENT_STATUS_TYPE (WEB_PYMT_STS_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
	
ALTER TABLE VERISIGN_RESPONSE_ACTION_TYPE
	ADD CONSTRAINT VFT_TO_VRAT FOREIGN KEY (VRSGN_FLD_TYP_CD)
	REFERENCES VERISIGN_FIELD_TYPE (VRSGN_FLD_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
	
	
	-- PC TO GL
	
	
	ALTER TABLE GNRL_LDGR_ACCT_FNCL_TRAN_XREF 
	  ADD CONSTRAINT FTST_TO_GLAFTX  FOREIGN KEY (FNCL_TRAN_SRC_TYP_CD)
	    REFERENCES FINANCIAL_TRANSACTION_SRC_TYP (FNCL_TRAN_SRC_TYP_CD)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;
	
	ALTER TABLE GNRL_LDGR_ACCT_FNCL_TRAN_XREF 
	  ADD CONSTRAINT AGRET_TO_GLAFTX  FOREIGN KEY (AGRE_TYP_CD)
	    REFERENCES AGREEMENT_TYPE (AGRE_TYP_CD)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;
	
	ALTER TABLE GNRL_LDGR_ACCT_FNCL_TRAN_XREF 
	  ADD CONSTRAINT GLRRT_TO_GLAFTX  FOREIGN KEY (GNRL_LDGR_RPT_RL_TYP_CD) 
	    REFERENCES GENERAL_LEDGER_RPT_RL_TYP (GNRL_LDGR_RPT_RL_TYP_CD)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;
	      
	ALTER TABLE GNRL_LDGR_ACCT_FNCL_TRAN_XREF 
	  ADD CONSTRAINT FNCLTT_TO_GLAFTX  FOREIGN KEY (FNCL_TRAN_TYP_ID) 
	    REFERENCES FINANCIAL_TRANSACTION_TYPE (FNCL_TRAN_TYP_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;
	
	ALTER TABLE GNRL_LDGR_ACCT_FNCL_TRAN_XREF 
	  ADD CONSTRAINT ATT_TO_GLAFTX  FOREIGN KEY (ACCT_TRAN_TYP_CD) 
	    REFERENCES ACCOUNTING_TRANSACTION_TYPE (ACCT_TRAN_TYP_CD)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;
	
--	ALTER TABLE GNRL_LDGR_ACCT_FNCL_TRAN_XREF 
--	  ADD CONSTRAINT FTAT_TO_GLAFTX  FOREIGN KEY (FTAT_ID)
--	    REFERENCES FINANCIAL_TRANSACTION_APP_TYP (FTAT_ID)
--	      ON DELETE RESTRICT ON UPDATE RESTRICT;
	
	ALTER TABLE GNRL_LDGR_ACCT_FNCL_TRAN_XREF 
	  ADD CONSTRAINT CRULIST_TO_GLAFTX  FOREIGN KEY (CRULIST_CD)
	    REFERENCES CASH_RECT_UNID_LN_ITEM_STS_TYP (CRULIST_CD)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;
	
	ALTER TABLE GNRL_LDGR_ACCT_FNCL_TRAN_XREF 
	  ADD CONSTRAINT GLAT_TO_GLAFTX  FOREIGN KEY (GNRL_LDGR_ACCT_TYP_CD)
	    REFERENCES GENERAL_LEDGER_ACCOUNT_TYPE (GNRL_LDGR_ACCT_TYP_CD)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;
	
--	ALTER TABLE GNRL_LDGR_ACCT_FNCL_TRAN_XREF 
--	  ADD CONSTRAINT GLCOAT_TO_GLAFTXDR  FOREIGN KEY (GLCOAT_TYP_CD_DR)
--	    REFERENCES GNRL_LDGR_CHRT_OF_ACCT_TYP (GLCOAT_TYP_CD)
--	      ON DELETE RESTRICT ON UPDATE RESTRICT;
	
--	ALTER TABLE GNRL_LDGR_ACCT_FNCL_TRAN_XREF 
--	  ADD CONSTRAINT GLCOAT_TO_GLAFTXCR  FOREIGN KEY (GLCOAT_TYP_CD_CR)
--	    REFERENCES GNRL_LDGR_CHRT_OF_ACCT_TYP (GLCOAT_TYP_CD)
--	      ON DELETE RESTRICT ON UPDATE RESTRICT;
	      	      

	ALTER TABLE GNRL_LDGR_ACCT_FNCL_TRAN_XREF
	ADD CONSTRAINT JT_TO_GLAFTX
	 FOREIGN KEY (JUR_TYP_CD)
	  REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
	   ON DELETE RESTRICT ON UPDATE RESTRICT;
	   

	ALTER TABLE GNRL_LDGR_ACCT_FNCL_TRAN_XREF
	ADD CONSTRAINT JT_TO_GLAFTXFR
	 FOREIGN KEY (JUR_TYP_CD_APLD_FR)
	  REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
	   ON DELETE RESTRICT ON UPDATE RESTRICT; 	   
   

	ALTER TABLE GNRL_LDGR_ACCT_FNCL_TRAN_XREF
	ADD CONSTRAINT JT_TO_GLAFTXTO
	 FOREIGN KEY (JUR_TYP_CD_APLD_TO)
	  REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
	   ON DELETE RESTRICT ON UPDATE RESTRICT;   
	
	ALTER TABLE GENERAL_LEDGER_FNCL_TRAN_DTL 
	  ADD CONSTRAINT AFT_TO_GLFTD  FOREIGN KEY (AFT_ID) 
	    REFERENCES AGENT_FINANCIAL_TRANSACTION(AFT_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;

	ALTER TABLE GENERAL_LEDGER_FNCL_TRAN_DTL 
	  ADD CONSTRAINT PLCYAT_TO_GLFTD  FOREIGN KEY (PLCY_ACCT_TRAN_ID) 
	    REFERENCES POLICY_ACCOUNTING_TRANSACTION(PLCY_ACCT_TRAN_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;

	ALTER TABLE GENERAL_LEDGER_FNCL_TRAN_DTL 
	  ADD CONSTRAINT AFTA_TO_GLFTD  FOREIGN KEY (AFTA_ID) 
	    REFERENCES AGENT_FINANCIAL_TRAN_APP (AFTA_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;	
	
	ALTER TABLE GENERAL_LEDGER_FNCL_TRAN_DTL 
	  ADD CONSTRAINT ACT_TO_GLFTD  FOREIGN KEY (APP_CNTX_TYP_CD) 
	    REFERENCES APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;
	
	ALTER TABLE GENERAL_LEDGER_FNCL_TRAN_DTL 
	  ADD CONSTRAINT FTST_TO_GLFTD  FOREIGN KEY (FNCL_TRAN_SRC_TYP_CD) 
	    REFERENCES FINANCIAL_TRANSACTION_SRC_TYP (FNCL_TRAN_SRC_TYP_CD)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;
	
	ALTER TABLE GENERAL_LEDGER_FNCL_TRAN_DTL 
	  ADD CONSTRAINT PFT_TO_GLFTD  FOREIGN KEY (PFT_ID) 
	    REFERENCES POLICY_FINANCIAL_TRANSACTION (PFT_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;
	
	ALTER TABLE GENERAL_LEDGER_FNCL_TRAN_DTL 
	  ADD CONSTRAINT PFTA_TO_GLFTD  FOREIGN KEY (PFTA_ID) 
	    REFERENCES POLICY_FINANCIAL_TRAN_APP (PFTA_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;
	
	ALTER TABLE GENERAL_LEDGER_FNCL_TRAN_DTL 
	  ADD CONSTRAINT CFT_TO_GLFTD  FOREIGN KEY (CFT_ID) 
	    REFERENCES CLAIM_FINANCIAL_TRANSACTION (CFT_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;
	
	ALTER TABLE GENERAL_LEDGER_FNCL_TRAN_DTL 
	  ADD CONSTRAINT CFTA_TO_GLFTD  FOREIGN KEY (CFTA_ID) 
	    REFERENCES CLAIM_FINANCIAL_TRAN_APP (CFTA_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;
	
	ALTER TABLE GENERAL_LEDGER_FNCL_TRAN_DTL 
	  ADD CONSTRAINT PPAT_TO_GLFTD  FOREIGN KEY (PLCY_PRD_ACCT_TRAN_ID) 
	    REFERENCES POLICY_PERIOD_ACCOUNTING_TRAN (PLCY_PRD_ACCT_TRAN_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;
	
	ALTER TABLE GENERAL_LEDGER_FNCL_TRAN_DTL 
	  ADD CONSTRAINT CRULID_TO_GLFTD  FOREIGN KEY (CRULID_ID) 
	    REFERENCES CASH_RECEIPT_UNID_LN_ITEM_DTL (CRULID_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;
	
	ALTER TABLE GENERAL_LEDGER_FNCL_TRAN_DTL 
	  ADD CONSTRAINT FNCLTT_TO_GLFTD  FOREIGN KEY (FNCL_TRAN_TYP_ID) 
	    REFERENCES FINANCIAL_TRANSACTION_TYPE (FNCL_TRAN_TYP_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;
	
	ALTER TABLE GENERAL_LEDGER_FNCL_TRAN_DTL 
	  ADD CONSTRAINT FTAT_TO_GLFTD  FOREIGN KEY (FTAT_ID) 
	    REFERENCES FINANCIAL_TRANSACTION_APP_TYP (FTAT_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;
	
	ALTER TABLE GENERAL_LEDGER_FNCL_TRAN_DTL 
	  ADD CONSTRAINT GLCOAT_TO_GLFTD  FOREIGN KEY (GLCOAT_TYP_CD) 
	    REFERENCES GNRL_LDGR_CHRT_OF_ACCT_TYP (GLCOAT_TYP_CD)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;
	ALTER TABLE GENERAL_LEDGER_FNCL_TRAN_DTL 
      ADD CONSTRAINT JT_TO_GLFTDFR  FOREIGN KEY (JUR_TYP_CD_FR) 
        REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
          ON DELETE RESTRICT ON UPDATE RESTRICT;

    ALTER TABLE GENERAL_LEDGER_FNCL_TRAN_DTL 
      ADD CONSTRAINT JT_TO_GLFTDTO  FOREIGN KEY (JUR_TYP_CD_TO) 
        REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
          ON DELETE RESTRICT ON UPDATE RESTRICT;          
          
    ALTER TABLE GENERAL_LEDGER_FNCL_TRAN_DTL 
      ADD CONSTRAINT JT_TO_GLFTD  FOREIGN KEY (JUR_TYP_CD) 
        REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
          ON DELETE RESTRICT ON UPDATE RESTRICT;            
	
	ALTER TABLE GENERAL_LEDGER_FNCL_TRAN_DTL 
	   ADD CONSTRAINT USER_TO_GLFTD1 FOREIGN KEY (AUDIT_USER_ID_CREA)
	      REFERENCES USERS (USER_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;
	
	ALTER TABLE GENERAL_LEDGER_FNCL_TRAN_DTL 
	   ADD CONSTRAINT USER_TO_GLFTD2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
	      REFERENCES USERS (USER_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;
	      
	ALTER TABLE BENEFIT_FIC_XREF 
	    ADD CONSTRAINT BNFTT_TO_BFX FOREIGN KEY (BNFT_TYP_CD)
	       REFERENCES BENEFIT_TYPE (BNFT_TYP_CD)
	       ON DELETE RESTRICT ON UPDATE RESTRICT;
	  
	ALTER TABLE BENEFIT_FIC_XREF 
	    ADD CONSTRAINT FTYP_TO_BFX FOREIGN KEY (FIC_TYP_CD)
	       REFERENCES FIC_TYPE (FIC_TYP_CD)
	       ON DELETE RESTRICT ON UPDATE RESTRICT;
	  
	ALTER TABLE COST_CENTER_FIC_XREF 
	    ADD CONSTRAINT  CCTYP_TO_CCFX FOREIGN KEY (CST_CNTR_TYP_CD)
	       REFERENCES COST_CENTER_TYPE (CST_CNTR_TYP_CD)
	       ON DELETE RESTRICT ON UPDATE RESTRICT;
	  
	ALTER TABLE COST_CENTER_FIC_XREF 
	    ADD CONSTRAINT FTYP_TO_CCFX   FOREIGN KEY (FIC_TYP_CD)
	       REFERENCES FIC_TYPE (FIC_TYP_CD)
	       ON DELETE RESTRICT ON UPDATE RESTRICT;
	
	
	--START PCToNCCI
	
	
	 alter table CLAIM_NCCI_INTERFACE
	   add constraint CLM_TO_CNI foreign key (AGRE_ID)
	      references CLAIM (AGRE_ID)
	      on delete restrict on update restrict;
 
	alter table CLAIM_NCCI_INTERFACE
	   add constraint CLMST_TO_CNI foreign key (CLM_STT_TYP_CD)
	      references CLAIM_STATE_TYPE (CLM_STT_TYP_CD)
	      on delete restrict on update restrict;
 
	alter table CLAIM_NCCI_INTERFACE
	   add constraint STT_TO_CNI foreign key (STT_ID)
	      references STATE (STT_ID)
	      on delete restrict on update restrict;   

	---END PCToNCCI

	 
ALTER TABLE DOCUMENT_TYPE
   ADD CONSTRAINT DOCMT_TO_DFEC FOREIGN KEY (DOCM_FOR_EACH_CNFG_CD)
      REFERENCES DOCUMENT_FOR_EACH_CNFG (DOCM_FOR_EACH_CNFG_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE AZSCF_NCCI_DOCUMENT_XREF
    ADD CONSTRAINT DOCMT_TO_ANDX
    FOREIGN KEY(DOCM_TYP_ID)
    REFERENCES DOCUMENT_TYPE(DOCM_TYP_ID)
      on delete restrict on update restrict;

ALTER TABLE CLAIM_CLAIM_RESERVE_CTG_XREF
    ADD CONSTRAINT LOBT_TO_CCRCX
    FOREIGN KEY(LOB_TYP_CD)
    REFERENCES LINE_OF_BUSINESS_TYPE(LOB_TYP_CD)
      on delete restrict on update restrict;
ALTER TABLE CLAIM_CLAIM_RESERVE_CTG_XREF
    ADD CONSTRAINT CLMT_TO_CCRCX
    FOREIGN KEY(CLM_TYP_CD)
    REFERENCES CLAIM_TYPE(CLM_TYP_CD)
      on delete restrict on update restrict;
 
ALTER TABLE CLAIM_CLAIM_RESERVE_CTG_XREF
    ADD CONSTRAINT CLMRCT_TO_CCRCX
    FOREIGN KEY(CLM_RSRV_CTG_TYP_CD)
    REFERENCES CLAIM_RESERVE_CATEGORY_TYPE(CLM_RSRV_CTG_TYP_CD)
      on delete restrict on update restrict;
      
      
ALTER TABLE EVENT_CASCADE_XREF
 add constraint EVNTT_TO_ECXSRC foreign key (EVNT_TYP_CD_SRC)
      references EVENT_TYPE (EVNT_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE EVENT_CASCADE_XREF
 add constraint EVNTT_TO_ECXCSCD foreign key (EVNT_TYP_CD_CSCD)
      references EVENT_TYPE (EVNT_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE EVENT_CASCADE_XREF
 add constraint ACT_TO_ECXSRC foreign key (APP_CNTX_TYP_CD_SRC)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE EVENT_CASCADE_XREF
 add constraint ACT_TO_ECXCSCD foreign key (APP_CNTX_TYP_CD_CSCD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;
      
ALTER TABLE EVENT_CASCADE_XREF
 add constraint ASCT_TO_ECXSRC foreign key (APP_SUB_CNTX_TYP_CD_SRC)
      references APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE EVENT_CASCADE_XREF
 add constraint ASCT_TO_ECXCSCD foreign key (APP_SUB_CNTX_TYP_CD_CSCD)
      references APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD)
      on delete restrict on update restrict;
      
ALTER TABLE EVENT_CASCADE_XREF
 add constraint ADT_TO_EVNTCX foreign key (APP_DATA_TYP_CD)
      references APPLICATION_DATA_TYPE (APP_DATA_TYP_CD)
      on delete restrict on update restrict;            
      
ALTER TABLE WEB_PAYMENT_STATUS_PFT_XREF
 add constraint WPS_TO_WPSPX foreign key (WEB_PYMT_STS_ID)
      references WEB_PAYMENT_STATUS (WEB_PYMT_STS_ID)
      on delete restrict on update restrict;            
      
ALTER TABLE WEB_PAYMENT_STATUS_PFT_XREF
 add constraint PFT_TO_WPSPX foreign key (PFT_ID)
      references POLICY_FINANCIAL_TRANSACTION (PFT_ID)
      on delete restrict on update restrict;        
      
ALTER TABLE APPLICATION_CONTEXT_PTCP_XREF 
 add constraint ACTC_TO_ACPX foreign key (APP_CNTX_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE APPLICATION_CONTEXT_PTCP_XREF
 add constraint PTCPT_TO_ACPX foreign key (PTCP_TYP_CD)
      references PARTICIPATION_TYPE (PTCP_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE APPLICATION_CONTEXT_PTCP_XREF
 add constraint CPTYP_TO_ACPX foreign key (CASE_PTCP_TYP_CD)
      references CASE_PARTICIPATION_TYPE (CASE_PTCP_TYP_CD)
      on delete restrict on update restrict;

-- Start Case Legal Scripts


ALTER TABLE CASE_DETAIL_LEGAL
   ADD CONSTRAINT CASE_TO_CDL FOREIGN KEY (CASE_ID)
      REFERENCES CASES (CASE_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_LEGAL
   ADD CONSTRAINT CJT_TO_CDL FOREIGN KEY (CASE_JUR_TYP_CD)
      REFERENCES CASE_JURISDICTION_TYPE (CASE_JUR_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_LEGAL
   ADD CONSTRAINT CVT_TO_CDL FOREIGN KEY (CASE_VENU_TYP_CD)
      REFERENCES CASE_VENUE_TYPE (CASE_VENU_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_LEGAL
   ADD CONSTRAINT CVLT_TO_CDL FOREIGN KEY (CASE_VENU_LOC_TYP_CD)
      REFERENCES CASE_VENUE_LOCATION_TYPE (CASE_VENU_LOC_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_LEGAL
   ADD CONSTRAINT USER_TO_CDL1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_LEGAL
   ADD CONSTRAINT USER_TO_CDL2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
      
ALTER TABLE LEGAL_PROCEEDING
   ADD CONSTRAINT CDL_TO_LP FOREIGN KEY (CDL_ID)
      REFERENCES CASE_DETAIL_LEGAL (CDL_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE LEGAL_PROCEEDING
   ADD CONSTRAINT CPRCDT_TO_LP FOREIGN KEY (CASE_PRCD_TYP_CD)
      REFERENCES CASE_PROCEEDING_TYPE (CASE_PRCD_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE LEGAL_PROCEEDING
   ADD CONSTRAINT USER_TO_LP1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE LEGAL_PROCEEDING
   ADD CONSTRAINT USER_TO_LP2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CASE_PROCEEDING_XREF 
ADD CONSTRAINT CASET_TO_CASECPX
 FOREIGN KEY (CASE_TYP_CD)
  REFERENCES CASE_TYPE (CASE_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_CASE_PROCEEDING_XREF
ADD CONSTRAINT CPRCDT_TO_CASECPX
 FOREIGN KEY (CASE_PRCD_TYP_CD)
  REFERENCES CASE_PROCEEDING_TYPE (CASE_PRCD_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE JUR_CASE_CASE_VENUE_XREF 
ADD CONSTRAINT CVT_TO_JCCVX
 FOREIGN KEY (CASE_VENU_TYP_CD)
  REFERENCES CASE_VENUE_TYPE (CASE_VENU_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE JUR_CASE_CASE_VENUE_XREF
ADD CONSTRAINT CASET_TO_JCCVX
 FOREIGN KEY (CASE_TYP_CD)
  REFERENCES CASE_TYPE (CASE_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE JUR_CASE_CASE_VENUE_XREF
ADD CONSTRAINT JT_TO_JCCVX
 FOREIGN KEY (JUR_TYP_CD)
  REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE JUR_CASE_VENU_VENU_LOC_XREF 
ADD CONSTRAINT JCCVX_TO_JCVVLX
 FOREIGN KEY (JCVX_ID)
  REFERENCES JUR_CASE_CASE_VENUE_XREF(JCVX_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE JUR_CASE_VENU_VENU_LOC_XREF
ADD CONSTRAINT CVLT_TO_JCVVLX
 FOREIGN KEY (CASE_VENU_LOC_TYP_CD)
  REFERENCES CASE_VENUE_LOCATION_TYPE (CASE_VENU_LOC_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

   
-- End Case Legal Scripts


ALTER TABLE CASE_DTL_ACCT_MANG_LOSS_PRVN
   ADD CONSTRAINT CASE_TO_CDAMLP FOREIGN KEY (CASE_ID)
      REFERENCES CASES (CASE_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DTL_ACCT_MANG_LOSS_PRVN
   ADD CONSTRAINT USER_TO_CDAMLP1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DTL_ACCT_MANG_LOSS_PRVN
   ADD CONSTRAINT USER_TO_CDAMLP2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ACCOUNT_MANG_LOSS_PRVN_EXP
   ADD CONSTRAINT CDAMLP_TO_AMLPE FOREIGN KEY (CDAMLP_ID)
      REFERENCES CASE_DTL_ACCT_MANG_LOSS_PRVN (CDAMLP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ACCOUNT_MANG_LOSS_PRVN_EXP
   ADD CONSTRAINT EXPT_TO_AMLPE FOREIGN KEY (EXP_TYP_CD)
      REFERENCES EXPENSE_TYPE (EXP_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ACCOUNT_MANG_LOSS_PRVN_EXP
   ADD CONSTRAINT USER_TO_AMLPE1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ACCOUNT_MANG_LOSS_PRVN_EXP
   ADD CONSTRAINT USER_TO_AMLPE2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
      
ALTER TABLE LOSS_PREVENTION_RECOMMENDATION
   ADD CONSTRAINT CDSSLP_TO_LPR FOREIGN KEY (CDAMLP_ID)
      REFERENCES CASE_DTL_ACCT_MANG_LOSS_PRVN (CDAMLP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE LOSS_PREVENTION_RECOMMENDATION
   ADD CONSTRAINT CRECMST_TO_SSLPE FOREIGN KEY (CASE_RECM_STS_TYP_CD)
      REFERENCES CASE_RECOMMENDATION_STS_TYP (CASE_RECM_STS_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE LOSS_PREVENTION_RECOMMENDATION
   ADD CONSTRAINT USER_TO_LPR1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE LOSS_PREVENTION_RECOMMENDATION
   ADD CONSTRAINT USER_TO_LPR2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE CASE_DETAIL_PREAUDIT_SURVEY
   ADD CONSTRAINT CASE_TO_CDPS FOREIGN KEY (CASE_ID)
      REFERENCES CASES (CASE_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE CASE_DETAIL_PREAUDIT_SURVEY
   ADD CONSTRAINT USER_TO_CDPS1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_PREAUDIT_SURVEY
   ADD CONSTRAINT USER_TO_CDPS2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PREAUDIT_SURVEY_CLASS_CODES
   ADD CONSTRAINT CDPS_TO_PSCC FOREIGN KEY (CDPS_ID)
      REFERENCES CASE_DETAIL_PREAUDIT_SURVEY (CDPS_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE PREAUDIT_SURVEY_CLASS_CODES
   ADD CONSTRAINT USER_TO_PSCC1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE PREAUDIT_SURVEY_CLASS_CODES
   ADD CONSTRAINT USER_TO_PSCC2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

      
alter table AGENT_COMMISSION_STATEMENT
    add constraint USER_TO_ACS1 foreign key (audit_user_id_crea)
    references USERS (user_id)
    on delete restrict on update restrict;

alter table AGENT_COMMISSION_STATEMENT
    add constraint USER_TO_ACS2 foreign key (audit_user_id_updt)
    references USERS (user_id)
    on delete restrict on update restrict;

alter table AGENT_COMMISSION_STATEMENT
    add constraint CUST_TO_ACS foreign key (cust_id)
    references CUSTOMER (cust_id)
    on delete restrict on update restrict;
    
alter table AGENT_FINANCIAL_TRANSACTION
    add constraint ACS_TO_AFT foreign key (acs_id)
    references AGENT_COMMISSION_STATEMENT (acs_id)
    on delete restrict on update restrict;

alter table AGENT_FINANCIAL_TRANSACTION
    add constraint CUST_TO_AFT foreign key (cust_id)
    references CUSTOMER (cust_id)
    on delete restrict on update restrict;

alter table AGENT_FINANCIAL_TRANSACTION
    add constraint PLCYP_TO_AFT foreign key (plcy_prd_id)
    references POLICY_PERIOD (plcy_prd_id)
    on delete restrict on update restrict;

alter table AGENT_FINANCIAL_TRANSACTION
    add constraint FTT_TO_AFT foreign key (fncl_tran_typ_id)
    references FINANCIAL_TRANSACTION_TYPE (fncl_tran_typ_id)
    on delete restrict on update restrict;

alter table AGENT_FINANCIAL_TRANSACTION
    add constraint AFT_TO_AFT foreign key (aft_id_rvrs)
    references AGENT_FINANCIAL_TRANSACTION (aft_id)
    on delete restrict on update restrict;

alter table AGENT_FINANCIAL_TRANSACTION
    add constraint PFT_TO_AFT foreign key (pft_id)
    references POLICY_FINANCIAL_TRANSACTION (pft_id)
    on delete restrict on update restrict;

alter table AGENT_FINANCIAL_TRANSACTION
    add constraint USER_TO_AFT1 foreign key (audit_user_id_crea)
    references USERS (user_id)
    on delete restrict on update restrict;

alter table AGENT_FINANCIAL_TRANSACTION
    add constraint USER_TO_AFT2 foreign key (audit_user_id_updt)
    references USERS (user_id)
    on delete restrict on update restrict;

ALTER TABLE AGENT_FINANCIAL_TRANSACTION
   ADD CONSTRAINT JT_TO_AFT foreign key (JUR_TYP_CD)
      REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE AGENT_FINANCIAL_TRANSACTION
   ADD CONSTRAINT RAALC_TO_AFT foreign key (RAALC_ID)
       REFERENCES ROLE_AGENT_AGENCY_LOB_COMS (RAALC_ID)
       ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE AGENT_FINANCIAL_TRANSACTION
   ADD CONSTRAINT CARC_TO_AFT foreign key (CAR_COMS_ID)
        REFERENCES CARRIER_COMMISSION (CAR_COMS_ID)
        ON DELETE RESTRICT ON UPDATE RESTRICT;
      

alter table AGENT_FINANCIAL_TRAN_APP
    add constraint FTAT_TO_AFTA foreign key (ftat_id)
    references FINANCIAL_TRANSACTION_APP_TYP (ftat_id)
    on delete restrict on update restrict;

alter table AGENT_FINANCIAL_TRAN_APP
    add constraint AFT_TO_AFTAFR foreign key (aft_id_apld_fr)
    references AGENT_FINANCIAL_TRANSACTION (aft_id)
    on delete restrict on update restrict;

alter table AGENT_FINANCIAL_TRAN_APP
    add constraint AFT_TO_AFTATO foreign key (aft_id_apld_to)
    references AGENT_FINANCIAL_TRANSACTION (aft_id)
    on delete restrict on update restrict;

alter table AGENT_FINANCIAL_TRAN_APP
    add constraint AFT_TO_AFTARVRS foreign key (aft_id_rvrs)
    references AGENT_FINANCIAL_TRANSACTION (aft_id)
    on delete restrict on update restrict;

alter table AGENT_FINANCIAL_TRAN_APP
    add constraint USER_TO_AFTA1 foreign key (audit_user_id_crea)
    references USERS (user_id)
    on delete restrict on update restrict;

alter table AGENT_FINANCIAL_TRAN_APP
    add constraint USER_TO_AFTA2 foreign key (audit_user_id_updt)
    references USERS (user_id)
    on delete restrict on update restrict;

alter table AGENT_FINANCIAL_TRAN_PAY_REQS
    add constraint AFT_TO_AFTPR foreign key (aft_id)
    references AGENT_FINANCIAL_TRANSACTION (aft_id)
    on delete restrict on update restrict;

alter table AGENT_FINANCIAL_TRAN_PAY_REQS
    add constraint PREQS_TO_AFTPR foreign key (pay_reqs_id)
    references PAYMENT_REQUEST (pay_reqs_id)
    on delete restrict on update restrict;

alter table AGENT_FINANCIAL_TRAN_PAY_REQS
    add constraint USER_TO_AFTPR1 foreign key (audit_user_id_crea)
    references USERS (user_id)
    on delete restrict on update restrict;

alter table AGENT_FINANCIAL_TRAN_PAY_REQS
    add constraint USER_TO_AFTPR2 foreign key (audit_user_id_updt)
    references USERS (user_id)
    on delete restrict on update restrict;
     
ALTER TABLE AGENT_FINANCIAL_TRAN_TRN
   ADD CONSTRAINT AFT_TO_AFTTFR FOREIGN KEY (AFT_ID_TRN_FR)
      REFERENCES AGENT_FINANCIAL_TRANSACTION (AFT_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE AGENT_FINANCIAL_TRAN_TRN
   ADD CONSTRAINT AFT_TO_AFTTTO FOREIGN KEY (AFT_ID_TRN_TO)
      REFERENCES AGENT_FINANCIAL_TRANSACTION (AFT_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
      
       
alter table CASE_DETAIL_FIELD_FRAUD_INVSTG
   add constraint INVSTGRT_TO_CDFFI foreign key (INVSTG_RESP_TYP_CD)
      references INVESTIGATION_RESP_TYP (INVSTG_RESP_TYP_CD)
on delete restrict on update restrict;

alter table CASE_DETAIL_FIELD_FRAUD_INVSTG
   add constraint USER_TO_CDFFI1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CASE_DETAIL_FIELD_FRAUD_INVSTG
   add constraint USER_TO_CDFFI2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table CASE_DETAIL_FIELD_FRAUD_INVSTG
   add constraint CASE_TO_CDFFI foreign key (CASE_ID)
      references CASES (CASE_ID)
      on delete restrict on update restrict;       

alter table CASE_PARTICIPANT_PHYSICAL_DESC
   add constraint USER_TO_CPPD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CASE_PARTICIPANT_PHYSICAL_DESC
   add constraint USER_TO_CPPD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CASE_PARTICIPANT_PHYSICAL_DESC
   add constraint GNDR_TO_CPPD foreign key (GNDR_TYP_CD)
      references GENDER_TYPE (GNDR_TYP_CD)
      on delete restrict on update restrict;

alter table CASE_PARTICIPANT_PHYSICAL_DESC
   add constraint CDFFI_TO_CPPD foreign key (CDFFI_ID)
      references CASE_DETAIL_FIELD_FRAUD_INVSTG (CDFFI_ID)
      on delete restrict on update restrict;

ALTER TABLE CASE_PARTICIPANT_PHYSICAL_DESC 
	ADD CONSTRAINT CASEP_TO_CPPD FOREIGN KEY (CASE_PTCP_ID)
  	REFERENCES CASE_PARTICIPANT (CASE_PTCP_ID)
   	ON DELETE RESTRICT ON UPDATE RESTRICT;    
   	

ALTER TABLE CASE_DETAIL_VOCATIONAL_REHAB
   ADD CONSTRAINT CASE_TO_CDVR  FOREIGN KEY (CASE_ID)
      REFERENCES CASES (CASE_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE CASE_DETAIL_VOCATIONAL_REHAB
   ADD CONSTRAINT USER_TO_CDVR1 
      FOREIGN KEY (AUDIT_USER_ID_CREA) REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE CASE_DETAIL_VOCATIONAL_REHAB
   ADD CONSTRAINT USER_TO_CDVR2
      FOREIGN KEY (AUDIT_USER_ID_UPDT) REFERENCES USERS (USER_ID) 
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE BTCH_URS_EXP_COR_EVNT_INTFC 
  ADD CONSTRAINT BU_TO_BUECEI FOREIGN KEY(BTCH_URS_ID) 
     REFERENCES BATCH_URS(BTCH_URS_ID)
     ON DELETE RESTRICT ON UPDATE RESTRICT ;

ALTER TABLE BTCH_URS_EXP_COR_EVNT_INTFC
  ADD CONSTRAINT USER_TO_BUECEI1 FOREIGN KEY(AUDIT_USER_ID_CREA)
	 REFERENCES USERS(USER_ID)
	 ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE BTCH_URS_EXP_COR_EVNT_INTFC
  ADD CONSTRAINT USER_TO_BUECEI2 FOREIGN KEY(AUDIT_USER_ID_UPDT)
	 REFERENCES USERS(USER_ID)
	 ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE BTCH_URS_EXP_COR_EVNT_INTFC
   ADD CONSTRAINT PLCYP_TO_BUECEI FOREIGN KEY(PLCY_PRD_ID)
	  REFERENCES POLICY_PERIOD(PLCY_PRD_ID)
	  ON DELETE RESTRICT ON UPDATE RESTRICT;
	
ALTER TABLE BTCH_URS_EXP_COR_EVNT_INTFC 
   ADD CONSTRAINT EVNTT_TO_BUECEI FOREIGN KEY(EVNT_TYP_CD) 
      REFERENCES EVENT_TYPE(EVNT_TYP_CD) 
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE BATCH_URS
   ADD CONSTRAINT BJT_TO_BU FOREIGN KEY (BTCH_JOB_TYP_CD)
      REFERENCES BATCH_JOB_TYPE (BTCH_JOB_TYP_CD)
       ON DELETE RESTRICT ON UPDATE RESTRICT;
alter table ROLE_MGA_BRKR
   add constraint MBT_TO_RAA foreign key (MGA_BRKR_TYP_CD)
      references MGA_BROKER_TYPE (MGA_BRKR_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_MGA_BRKR
   add constraint CR_TO_RMB foreign key (ROLE_ID)
      references CUSTOMER_ROLE (ROLE_ID)
      on delete restrict on update restrict;


alter table ROLE_MGA_BRKR
   add constraint USER_TO_RMB1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_MGA_BRKR
   add constraint USER_TO_RMB2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_MGA_BRKR_HISTORY
   add constraint RMB_TO_RMBH foreign key (ROLE_MGA_BRKR_ID)
      references ROLE_MGA_BRKR (ROLE_MGA_BRKR_ID)
      on delete restrict on update restrict;

alter table ROLE_MGA_BRKR_HISTORY
   add constraint MBT_TO_RAAH foreign key (MGA_BRKR_TYP_CD)
      references MGA_BROKER_TYPE (MGA_BRKR_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_MGA_BRKR_HISTORY
   add constraint USER_TO_RMBH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_MGA_BRKR_HISTORY
   add constraint USER_TO_RMBH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_MGA_BRKR_LOB
   add constraint RMB_TO_RMBL foreign key (ROLE_MGA_BRKR_ID)
      references ROLE_MGA_BRKR (ROLE_MGA_BRKR_ID)
      on delete restrict on update restrict;

alter table ROLE_MGA_BRKR_LOB
   add constraint LOBT_TO_RMBL foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_MGA_BRKR_LOB
   add constraint USER_TO_RMBL1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_MGA_BRKR_LOB
   add constraint USER_TO_RMBL2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_MGA_BRKR_LOB_HISTORY
   add constraint RMBL_TO_RMBLH foreign key (RMBL_ID)
      references ROLE_MGA_BRKR_LOB (RMBL_ID)
      on delete restrict on update restrict;

alter table ROLE_MGA_BRKR_LOB_HISTORY
   add constraint RMB_TO_RMBLH foreign key (ROLE_MGA_BRKR_ID)
      references ROLE_MGA_BRKR (ROLE_MGA_BRKR_ID)
      on delete restrict on update restrict;

alter table ROLE_MGA_BRKR_LOB_HISTORY
   add constraint LOBT_TO_RMBLH foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_MGA_BRKR_LOB_HISTORY
   add constraint USER_TO_RMBLH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_MGA_BRKR_LOB_HISTORY
   add constraint USER_TO_RMBLH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table POLICY_PERIOD_PTCP_MGA
    add constraint CST_TO_PPPM foreign key (COMS_SCH_TYP_CD)
    references COMMISSION_SCHEDULE_TYPE(COMS_SCH_TYP_CD)
    on delete restrict on update restrict;
    
alter table POLICY_PERIOD_PTCP_MGA
    add constraint PPP_TO_PPPM foreign key (PTCP_ID)    
    references POLICY_PERIOD_PARTICIPATION(PTCP_ID)
    on delete restrict on update restrict;
    
alter table POLICY_PERIOD_PTCP_MGA_HIST
    add constraint CST_TO_PPPMH foreign key (COMS_SCH_TYP_CD)
    references COMMISSION_SCHEDULE_TYPE(COMS_SCH_TYP_CD)
    on delete restrict on update restrict;   

alter table POLICY_PERIOD_PTCP_MGA_HIST
   add constraint PPPH_TO_PPPMH foreign key (HIST_ID)
      references POLICY_PERIOD_PTCP_HIST (HIST_ID)
      on delete restrict on update restrict;	
 
ALTER TABLE QUOTE_NUMBER_DETAIL 
	ADD CONSTRAINT LMICX_TO_QND FOREIGN KEY (LMICX_ID) 
	REFERENCES LOB_MARKET_INSURANCE_CMPY_XREF (LMICX_ID)  
	ON DELETE RESTRICT ON UPDATE RESTRICT;
	
	
alter table WC_COVERAGE_PREMIUM
   add constraint PRR_TO_WCCP foreign key (PYRL_RPT_ID)
      references PAYROLL_REPORT (PYRL_RPT_ID)
      on delete restrict on update restrict;

ALTER TABLE QUOTE_NUMBER_DETAIL
  ADD CONSTRAINT SK_TO_QND
  FOREIGN KEY(SURGT_KY_NM)
  REFERENCES SURROGATE_KEY(SURGT_KY_NM);
  
  

alter table CLAIM_REPORT_DATE
  add constraint CLM_TO_CRD foreign key (AGRE_ID)
  references CLAIM (AGRE_ID)
  on delete restrict on update restrict;

alter table CLAIM_REPORT_DATE
  add constraint CRDT_TO_CRD foreign key (CLM_RPT_DT_TYP_CD)
  references CLAIM_REPORT_DATE_TYPE (CLM_RPT_DT_TYP_CD)
  on delete restrict on update restrict;

ALTER TABLE CLAIM_REPORT_DATE 
  ADD CONSTRAINT USER_TO_CRD1 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
  ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_REPORT_DATE 
  ADD CONSTRAINT USER_TO_CRD2 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
  ON DELETE RESTRICT ON UPDATE RESTRICT;
  

ALTER TABLE CLAIM_REPORT_DATE_HIST 
  ADD CONSTRAINT CRD_TO_CRDH FOREIGN KEY (CLM_RPT_DT_ID) 
  REFERENCES CLAIM_REPORT_DATE (CLM_RPT_DT_ID) 
  ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table CLAIM_REPORT_DATE_HIST
  add constraint CLM_TO_CRDH foreign key (AGRE_ID)
  references CLAIM (AGRE_ID)
  on delete restrict on update restrict;

alter table CLAIM_REPORT_DATE_HIST
  add constraint CRDT_TO_CRDH foreign key (CLM_RPT_DT_TYP_CD)
  references CLAIM_REPORT_DATE_TYPE (CLM_RPT_DT_TYP_CD)
  on delete restrict on update restrict;

ALTER TABLE CLAIM_REPORT_DATE_HIST 
  ADD CONSTRAINT USER_TO_CRDH1 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
  ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_REPORT_DATE_HIST 
  ADD CONSTRAINT USER_TO_CRDH2 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
  ON DELETE RESTRICT ON UPDATE RESTRICT;


alter table CLAIM_REPORT_DATE_LOB_JUR_XREF
   add constraint CRDT_TO_CRDLJX foreign key (CLM_RPT_DT_TYP_CD)
      references CLAIM_REPORT_DATE_TYPE (CLM_RPT_DT_TYP_CD)
      on delete restrict on update restrict;
alter table CLAIM_REPORT_DATE_LOB_JUR_XREF
   add constraint JT_TO_CRDLJX foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;
alter table CLAIM_REPORT_DATE_LOB_JUR_XREF
   add constraint LOBT_TO_CRDLJX foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table OCCURRENCE_SOURCE_TYPE
   add constraint CRDT_TO_OST foreign key (CLM_RPT_DT_TYP_CD)
      references CLAIM_REPORT_DATE_TYPE (CLM_RPT_DT_TYP_CD)
      on delete restrict on update restrict;

alter table POSTAL_CA
   add constraint PCRT_TO_POSTCA foreign key (POST_CA_REC_TYP_CD)
      references POSTAL_CA_RECORD_TYPE (POST_CA_REC_TYP_CD)
      on delete restrict on update restrict;

alter table POSTAL_CA
   add constraint STT_TO_POSTCA foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table POSTAL_CA
   add constraint PCST_TO_POSTCA foreign key (POST_CA_STR_TYP_CD)
      references POSTAL_CA_STREET_TYPE (POST_CA_STR_TYP_CD)
      on delete restrict on update restrict;

alter table POSTAL_CA
   add constraint PCSDT_TO_POSTCA foreign key (POST_CA_STR_DIR_TYP_CD)
      references POSTAL_CA_STREET_DIRECTION_TYP (POST_CA_STR_DIR_TYP_CD)
      on delete restrict on update restrict;

alter table POSTAL_CA_STREET_ALIAS
   add constraint STT_TO_PCSA foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table POSTAL_CA_STREET_ALIAS
   add constraint PCST_TO_PCSAALT foreign key (POST_CA_STR_TYP_CD_ALT)
      references POSTAL_CA_STREET_TYPE (POST_CA_STR_TYP_CD)
      on delete restrict on update restrict;

alter table POSTAL_CA_STREET_ALIAS
   add constraint PCSDT_TO_PCSAALT foreign key (POST_CA_STR_DIR_TYP_CD_ALT)
      references POSTAL_CA_STREET_DIRECTION_TYP (POST_CA_STR_DIR_TYP_CD)
      on delete restrict on update restrict;

alter table POSTAL_CA_STREET_ALIAS
   add constraint PCST_TO_PCSA foreign key (POST_CA_STR_TYP_CD)
      references POSTAL_CA_STREET_TYPE (POST_CA_STR_TYP_CD)
      on delete restrict on update restrict;

alter table POSTAL_CA_STREET_ALIAS
   add constraint PCSDT_TO_PCSA foreign key (POST_CA_STR_DIR_TYP_CD)
      references POSTAL_CA_STREET_DIRECTION_TYP (POST_CA_STR_DIR_TYP_CD)
      on delete restrict on update restrict;

alter table POSTAL_US
   add constraint STT_TO_POSTUS foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table STATE
   add constraint CNTRY_TO_STT foreign key (CNTRY_ID)
      references COUNTRY (CNTRY_ID)
      on delete restrict on update restrict;

alter table POLICY_SUMMARY_DETAIL
  add constraint CUST_TO_PSD foreign key (PLCY_SUM_DTL_CUST_ID_ACCT_HLDR)
  references CUSTOMER (CUST_ID)
  on delete restrict on update restrict;

alter table POLICY_SUMMARY_DETAIL
  add constraint LOBT_TO_PSD foreign key (LOB_TYP_CD)
  references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
  on delete restrict on update restrict;

alter table POLICY_SUMMARY_DETAIL
  add constraint MT_TO_PSD foreign key (MRKT_TYP_CD)
  references MARKET_TYPE (MRKT_TYP_CD)
  on delete restrict on update restrict;

alter table POLICY_SUMMARY_DETAIL
  add constraint INSCT_TO_PSD foreign key (INS_CMPY_TYP_ID)
  references INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID)
  on delete restrict on update restrict;

alter table POLICY_SUMMARY_INSURED_DETAIL
  add constraint PSD_TO_PSID foreign key (PLCY_SUM_DTL_ID)
  references POLICY_SUMMARY_DETAIL (PLCY_SUM_DTL_ID);

alter table POLICY_SUMMARY_INSURED_DETAIL
  add constraint CUST_TO_PSID foreign key (CUST_ID)
  references CUSTOMER (CUST_ID)
  on delete restrict on update restrict;

alter table POLICY_SUMMARY_INDIVIDUAL
  add constraint PSD_TO_PSI foreign key (PLCY_SUM_DTL_ID)
  references POLICY_SUMMARY_DETAIL (PLCY_SUM_DTL_ID);

alter table POLICY_SUMMARY_INDIVIDUAL
  add constraint CUST_TO_PSI foreign key (CUST_ID)
  references CUSTOMER (CUST_ID);

alter table POLICY_SUMMARY_INDIVIDUAL
  add constraint STT_TO_PSI foreign key (STT_ID)
  references STATE (STT_ID);

alter table POLICY_SUMMARY_RISK_LOCATION
  add constraint CUSTA_TO_PSRL foreign key (CUST_ADDR_ID)
  references CUSTOMER_ADDRESS (CUST_ADDR_ID)
  on delete restrict on update restrict;

alter table POLICY_SUMMARY_RISK_LOCATION
  add constraint PLCYSD_TO_PSRL foreign key (PLCY_SUM_DTL_ID)
  references POLICY_SUMMARY_DETAIL (PLCY_SUM_DTL_ID)
  on delete restrict on update restrict;

alter table POLICY_SUMMARY_RISK_LOCATION
  add constraint JT_TO_PSRL foreign key (JUR_TYP_CD)
  references JURISDICTION_TYPE (JUR_TYP_CD)
  on delete restrict on update restrict;

 alter table POLICY_SUMMARY_RISK_LOCATION
  add constraint CUSTGRP_TO_PSRL foreign key (CUST_GRP_ID)
  references CUSTOMER_GROUP (CUST_GRP_ID)
  on delete restrict on update restrict;

alter table POLICY_SUMMARY_COVERAGE
  add constraint PSD_TO_PSC foreign key (PLCY_SUM_DTL_ID)
  references POLICY_SUMMARY_DETAIL (PLCY_SUM_DTL_ID)
  on delete restrict on update restrict;

alter table POLICY_SUMMARY_COVERAGE
  add constraint RCT_TO_PSC foreign key (RT_CLS_TYP_CD)
  references RATING_CLASS_TYPE (RT_CLS_TYP_CD)
  on delete restrict on update restrict;

alter table POLICY_SUMMARY_COVERAGE
  add constraint RTT_TO_PSC foreign key (RT_TYP_CD)
  references RATING_TYPE (RT_TYP_CD)
  on delete restrict on update restrict;

alter table POLICY_SUMMARY_COVERAGE
  add constraint PLCYSRL_TO_PSC foreign key (PSRL_ID)
  references POLICY_SUMMARY_RISK_LOCATION (PSRL_ID)
  on delete restrict on update restrict;
  
alter table POLICY_SUMMARY_COVERAGE
   add constraint PBT_TO_PSC foreign key (PREM_BS_TYP_CD)
      references PREMIUM_BASIS_TYPE (PREM_BS_TYP_CD)
      on delete restrict on update restrict;
  
alter table claim_coverage
  add constraint PSD_TO_CLMCOV foreign key (PLCY_SUM_DTL_ID)
  references POLICY_SUMMARY_DETAIL (PLCY_SUM_DTL_ID)
  on delete restrict on update restrict;

alter table claim_coverage
  add constraint PSRL_TO_CLMCOV foreign key (PSRL_ID)
  references POLICY_SUMMARY_RISK_LOCATION (PSRL_ID)
  on delete restrict on update restrict;

alter table claim_coverage
  add constraint PSC_TO_CLMCOV foreign key (PLCY_SUM_COV_ID)
  references POLICY_SUMMARY_COVERAGE (PLCY_SUM_COV_ID)
  on delete restrict on update restrict;

alter table claim_coverage_history
  add constraint PSD_TO_CCOVH foreign key (PLCY_SUM_DTL_ID)
  references POLICY_SUMMARY_DETAIL (PLCY_SUM_DTL_ID)
  on delete restrict on update restrict;

alter table claim_coverage_history
  add constraint PSRL_TO_CCOVH foreign key (PSRL_ID)
  references POLICY_SUMMARY_RISK_LOCATION (PSRL_ID)
  on delete restrict on update restrict;

alter table claim_coverage_history
  add constraint PSC_TO_CCOVH foreign key (PLCY_SUM_COV_ID)
  references POLICY_SUMMARY_COVERAGE (PLCY_SUM_COV_ID)
  on delete restrict on update restrict;

alter table IDENTIFIER_TYPE
   add constraint CNTRY_TO_ITYP foreign key (CNTRY_ID)
      references COUNTRY (CNTRY_ID)
      on delete restrict on update restrict;



alter table CLAIM_ANTY_ELIG_STS_RSN_XREF
            add constraint CAEST_TO_CAESRX foreign key (CLM_ANTY_ELIG_STS_TYP_CD)
            references CLAIM_ANNUITY_ELIG_STS_TYP (CLM_ANTY_ELIG_STS_TYP_CD)
            on delete restrict on update restrict;
            
alter table CLAIM_ANTY_ELIG_STS_RSN_XREF
            add constraint CAERT_TO_CAESRX foreign key (CLM_ANTY_ELIG_RSN_TYP_CD)
            references CLAIM_ANNUITY_ELIG_RSN_TYP (CLM_ANTY_ELIG_RSN_TYP_CD)
            on delete restrict on update restrict;

alter table CLAIM_ANNUITY_RULE
            add constraint JT_TO_CAR foreign key (JUR_TYP_CD)
            references JURISDICTION_TYPE (JUR_TYP_CD)
            on delete restrict on update restrict;

alter table CLAIM_ANNUITY_RULE
            add constraint CAERT_TO_CAR foreign key (CLM_ANTY_ELIG_RL_TYP_CD)
            references CLAIM_ANNUITY_ELIG_RL_TYP (CLM_ANTY_ELIG_RL_TYP_CD)
            on delete restrict on update restrict;

alter table CLAIM_ANNUITY_RULE
            add constraint CADRT_TO_CAR foreign key (CLM_ANTY_DT_RL_TYP_CD)
            references CLAIM_ANNUITY_DATE_RULE_TYPE (CLM_ANTY_DT_RL_TYP_CD)
            on delete restrict on update restrict;

alter table CLAIM_ANNUITY_RULE
            add constraint CAIMT_TO_CAR foreign key (CLM_ANTY_INTE_METH_TYP_CD)
            references CLAIM_ANNUITY_INTE_METH_TYP (CLM_ANTY_INTE_METH_TYP_CD)
            on delete restrict on update restrict;

alter table CLAIM_ANNUITY_ELIGIBILITY_RULE
            add constraint CAERT_TO_CAER foreign key (CLM_ANTY_ELIG_RL_TYP_CD) 
            references CLAIM_ANNUITY_ELIG_RL_TYP (CLM_ANTY_ELIG_RL_TYP_CD)
            on delete restrict on update restrict;

alter table CLAIM_ANNUITY_ELIGIBILITY_RULE
            add constraint CAECT_TO_CAER foreign key (CLM_ANTY_ELIG_CNT_TYP_CD)
            references CLAIM_ANNUITY_ELIG_CNT_TYP (CLM_ANTY_ELIG_CNT_TYP_CD)
            on delete restrict on update restrict;

alter table CLAIM_ANNUITY_ELIGIBILITY_RULE
            add constraint CAEMT_TO_CAER foreign key (CLM_ANTY_ELIG_MEAS_TYP_CD)
            references CLAIM_ANNUITY_ELIG_MEAS_TYP (CLM_ANTY_ELIG_MEAS_TYP_CD)
            on delete restrict on update restrict;
            
alter table CLAIM_ANNUITY_ELIGIBILITY_CALC
            add constraint AGRE_TO_CAEC foreign key (AGRE_ID)
            references AGREEMENT (AGRE_ID)
            on delete restrict on update restrict;

alter table CLAIM_ANNUITY_ELIGIBILITY_CALC
            add constraint CAER_TO_CAEC foreign key (CAER_ID)
            references CLAIM_ANNUITY_ELIGIBILITY_RULE (CAER_ID)
            on delete restrict on update restrict;

alter table CLAIM_ANNUITY_ELIGIBILITY_CALC
            add constraint CAR_TO_CAEC foreign key (CLM_ANTY_RL_ID)
            references CLAIM_ANNUITY_RULE (CLM_ANTY_RL_ID)
            on delete restrict on update restrict;

alter table CLAIM_ANNUITY_ELIGIBILITY_CALC
            add constraint ISD_TO_CAEC foreign key (INDM_SCH_DTL_ID)
            references INDEMNITY_SCHEDULE_DETAIL (INDM_SCH_DTL_ID)
            on delete restrict on update restrict;

alter table CLAIM_ANNUITY_ELIGIBILITY_CALC
            add constraint CAEST_TO_CAEC foreign key (CLM_ANTY_ELIG_STS_TYP_CD)
            references CLAIM_ANNUITY_ELIG_STS_TYP (CLM_ANTY_ELIG_STS_TYP_CD)
            on delete restrict on update restrict;

alter table CLAIM_ANNUITY_ELIGIBILITY_CALC
            add constraint CAERT_TO_CAEC foreign key (CLM_ANTY_ELIG_RSN_TYP_CD)  
            references CLAIM_ANNUITY_ELIG_RSN_TYP (CLM_ANTY_ELIG_RSN_TYP_CD)
            on delete restrict on update restrict;

alter table CLAIM_ANNUITY_ELIGIBILITY_CALC
            add constraint CAECT_TO_CAEC foreign key (CLM_ANTY_ELIG_CNT_TYP_CD)
            references CLAIM_ANNUITY_ELIG_CNT_TYP (CLM_ANTY_ELIG_CNT_TYP_CD)
            on delete restrict on update restrict;

alter table CLAIM_ANNUITY_ELIGIBILITY_CALC
            add constraint CAEMT_TO_CAEC foreign key (CLM_ANTY_ELIG_MEAS_TYP_CD)
            references CLAIM_ANNUITY_ELIG_MEAS_TYP (CLM_ANTY_ELIG_MEAS_TYP_CD)
            on delete restrict on update restrict;

alter table CLAIM_ANNUITY_ELIGIBILITY_CALC
   		add constraint USER_TO_CAEC1 foreign key (AUDIT_USER_ID_CREA)
      	references USERS (USER_ID)
      	on delete restrict on update restrict;

alter table CLAIM_ANNUITY_ELIGIBILITY_CALC
   		add constraint USER_TO_CAEC2 foreign key (AUDIT_USER_ID_UPDT)
      	references USERS (USER_ID)
      	on delete restrict on update restrict;

alter table CLAIM_ANNUITY_ELIG_OVRRD
            add constraint AGRE_TO_CAEO foreign key (AGRE_ID)
            references AGREEMENT (AGRE_ID)
            on delete restrict on update restrict;

alter table CLAIM_ANNUITY_ELIG_OVRRD
            add constraint CAEST_TO_CAEO foreign key (CLM_ANTY_ELIG_STS_TYP_CD)
            references CLAIM_ANNUITY_ELIG_STS_TYP (CLM_ANTY_ELIG_STS_TYP_CD)
            on delete restrict on update restrict;

alter table CLAIM_ANNUITY_ELIG_OVRRD
            add constraint CAERT_TO_CAEO foreign key (CLM_ANTY_ELIG_RSN_TYP_CD) 
            references CLAIM_ANNUITY_ELIG_RSN_TYP (CLM_ANTY_ELIG_RSN_TYP_CD)
            on delete restrict on update restrict;          

alter table CLAIM_ANNUITY_ELIG_OVRRD
   		add constraint USER_TO_CAEO1 foreign key (AUDIT_USER_ID_CREA)
      	references USERS (USER_ID)
      	on delete restrict on update restrict;

alter table CLAIM_ANNUITY_ELIG_OVRRD
   		add constraint USER_TO_CAEO2 foreign key (AUDIT_USER_ID_UPDT)
      	references USERS (USER_ID)
      	on delete restrict on update restrict;

alter table CLAIM_ANNUITY_ELIG_OVRRD_HIST
            add constraint CAEO_TO_CAEOH foreign key (CAEO_ID)
            references CLAIM_ANNUITY_ELIG_OVRRD(CAEO_ID)
            on delete restrict on update restrict;

alter table CLAIM_ANNUITY_ELIG_OVRRD_HIST
            add constraint AGRE_TO_CAEOH foreign key (AGRE_ID)
            references AGREEMENT (AGRE_ID)
            on delete restrict on update restrict;

alter table CLAIM_ANNUITY_ELIG_OVRRD_HIST
            add constraint CAEST_TO_CAEOH foreign key (CLM_ANTY_ELIG_STS_TYP_CD)
            references CLAIM_ANNUITY_ELIG_STS_TYP (CLM_ANTY_ELIG_STS_TYP_CD)
            on delete restrict on update restrict;

alter table CLAIM_ANNUITY_ELIG_OVRRD_HIST
            add constraint CAERT_TO_CAEOH foreign key (CLM_ANTY_ELIG_RSN_TYP_CD)
            references CLAIM_ANNUITY_ELIG_RSN_TYP (CLM_ANTY_ELIG_RSN_TYP_CD)
            on delete restrict on update restrict;         
            
alter table CLAIM_ANNUITY_ELIG_OVRRD_HIST
   		add constraint USER_TO_CAEOH1 foreign key (AUDIT_USER_ID_CREA)
      	references USERS (USER_ID)
      	on delete restrict on update restrict;

alter table CLAIM_ANNUITY_ELIG_OVRRD_HIST
   		add constraint USER_TO_CAEOH2 foreign key (AUDIT_USER_ID_UPDT)
      	references USERS (USER_ID)
      	on delete restrict on update restrict;            

alter table CLAIM_ANNUITY_INTEREST_RATE
            add constraint CAIRT_TO_CAIR foreign key (CLM_ANTY_INTE_RT_TYP_CD) 
            references CLAIM_ANNUITY_INTEREST_RT_TYP (CLM_ANTY_INTE_RT_TYP_CD)
            on delete restrict on update restrict;          

alter table CLAIM_ANNUITY_INTEREST_RATE
            add constraint JT_TO_CAIR foreign key (JUR_TYP_CD) 
            references JURISDICTION_TYPE (JUR_TYP_CD)
            on delete restrict on update restrict;          

alter table CLAIM_ANNUITY_INTEREST_RATE
            add constraint CAR_TO_CAIR foreign key (CLM_ANTY_RL_ID) 
            references CLAIM_ANNUITY_RULE (CLM_ANTY_RL_ID)
            on delete restrict on update restrict;          

ALTER TABLE CLAIM_ANNUITY_DISTRIBUTION
    ADD CONSTRAINT CUST_TO_CAD
    FOREIGN KEY (CUST_ID) REFERENCES CUSTOMER(CUST_ID)
    ON DELETE RESTRICT ON UPDATE RESTRICT;		  

ALTER TABLE CLAIM_ANNUITY_DISTRIBUTION
    ADD CONSTRAINT AUTH_TO_CAD
    FOREIGN KEY (AUTH_ID) REFERENCES AUTHORIZATIONS(AUTH_ID)
    ON DELETE RESTRICT ON UPDATE RESTRICT;		  

ALTER TABLE CLAIM_ANNUITY_DISTRIBUTION
    ADD CONSTRAINT CADRT_TO_CAD
    FOREIGN KEY (CLM_ANTY_DISTR_REQS_TYP_CD) 
    REFERENCES CLAIM_ANNUITY_DISTR_REQS_TYP(CLM_ANTY_DISTR_REQS_TYP_CD)
    ON DELETE RESTRICT ON UPDATE RESTRICT;		  

ALTER TABLE CLAIM_ANNUITY_DISTRIBUTION 
    ADD CONSTRAINT USER_TO_CAD1 
    FOREIGN KEY (AUDIT_USER_ID_CREA) 
    REFERENCES USERS (USER_ID) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_ANNUITY_DISTRIBUTION 
  ADD CONSTRAINT USER_TO_CAD2 
  FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
  ON DELETE RESTRICT ON UPDATE RESTRICT;



ALTER TABLE CLAIM_ANNUITY_DISTR_AGRE
    ADD CONSTRAINT CAD_TO_CADA
    FOREIGN KEY(CLM_ANTY_DISTR_ID) 
    REFERENCES CLAIM_ANNUITY_DISTRIBUTION(CLM_ANTY_DISTR_ID)
    on delete restrict on update restrict;

ALTER TABLE CLAIM_ANNUITY_DISTR_AGRE
    ADD CONSTRAINT AGRE_TO_CADA
    FOREIGN KEY(AGRE_ID) 
    REFERENCES AGREEMENT(AGRE_ID)
    on delete restrict on update restrict;

ALTER TABLE CLAIM_ANNUITY_DISTR_AGRE 
    ADD CONSTRAINT USER_TO_CADA1 
    FOREIGN KEY (AUDIT_USER_ID_CREA) 
    REFERENCES USERS (USER_ID) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_ANNUITY_DISTR_AGRE 
  ADD CONSTRAINT USER_TO_CADA2 
  FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
  ON DELETE RESTRICT ON UPDATE RESTRICT;



ALTER TABLE CLAIM_ANNUITY_DISTRIBUTION_DTL
    ADD CONSTRAINT CAD_TO_CADD
    FOREIGN KEY(CLM_ANTY_DISTR_ID) 
    REFERENCES CLAIM_ANNUITY_DISTRIBUTION(CLM_ANTY_DISTR_ID)
    on delete restrict on update restrict;

ALTER TABLE CLAIM_ANNUITY_DISTRIBUTION_DTL
    ADD CONSTRAINT CUST_TO_CADD
    FOREIGN KEY(CUST_ID) 
    REFERENCES CUSTOMER(CUST_ID)
    on delete restrict on update restrict;

ALTER TABLE CLAIM_ANNUITY_DISTRIBUTION_DTL
    ADD CONSTRAINT USER_TO_CADD1 
    FOREIGN KEY (AUDIT_USER_ID_CREA) 
    REFERENCES USERS (USER_ID) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_ANNUITY_DISTRIBUTION_DTL
  ADD CONSTRAINT USER_TO_CADD2 
  FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
  ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_ANNUITY 
   ADD CONSTRAINT AGRE_TO_CLMA FOREIGN KEY (AGRE_ID) 
            REFERENCES AGREEMENT (AGRE_ID)  
            ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE CLAIM_ANNUITY 
   ADD CONSTRAINT ISD_TO_CLMA FOREIGN KEY (INDM_SCH_DTL_ID) 
            REFERENCES INDEMNITY_SCHEDULE_DETAIL (INDM_SCH_DTL_ID)  
            ON DELETE RESTRICT ON UPDATE RESTRICT;                        

ALTER TABLE CLAIM_ANNUITY ADD CONSTRAINT CAD_TO_CLMA FOREIGN KEY (CLM_ANTY_DISTR_ID)
      REFERENCES CLAIM_ANNUITY_DISTRIBUTION (CLM_ANTY_DISTR_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;      

ALTER TABLE CLAIM_ANNUITY
   ADD CONSTRAINT USER_TO_CLMA1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
            ON DELETE RESTRICT ON UPDATE RESTRICT;                        

ALTER TABLE CLAIM_ANNUITY
   ADD CONSTRAINT USER_TO_CLMA2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
            ON DELETE RESTRICT ON UPDATE RESTRICT;  

alter table CLAIM_ANNUITY_CFT_RELATIONSHIP 
   add constraint CLMA_TO_CACR foreign key (CLM_ANTY_ID)
      references CLAIM_ANNUITY (CLM_ANTY_ID)
      on delete restrict on update restrict;

alter table CLAIM_ANNUITY_CFT_RELATIONSHIP 
   add constraint CADD_TO_CACR foreign key (CADD_ID)
      references CLAIM_ANNUITY_DISTRIBUTION_DTL (CADD_ID)
      on delete restrict on update restrict;

alter table CLAIM_ANNUITY_CFT_RELATIONSHIP 
   add constraint FNCLTT_TO_CACR foreign key (FNCL_TRAN_TYP_ID)
      references FINANCIAL_TRANSACTION_TYPE (FNCL_TRAN_TYP_ID)
      on delete restrict on update restrict;

alter table CLAIM_ANNUITY_CFT_RELATIONSHIP 
   add constraint CFT_TO_CACR foreign key (CFT_ID)
      references CLAIM_FINANCIAL_TRANSACTION (CFT_ID)
      on delete restrict on update restrict;

alter table CLAIM_ANNUITY_CFT_RELATIONSHIP 
   add constraint USER_TO_CACR1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_ANNUITY_CFT_RELATIONSHIP 
   add constraint USER_TO_CACR2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table GNRL_LDGR_ACCT_FNCL_TRAN_XREF 
  add constraint INSCT_TO_GLAFTX foreign key (INS_CMPY_TYP_ID)
  references INSURANCE_COMPANY_TYPE(INS_CMPY_TYP_ID)
  on delete restrict on update restrict;

alter table GENERAL_LEDGER_FNCL_TRAN_DTL 
  add constraint INSCT_TO_GLFTD foreign key (INS_CMPY_TYP_ID)
  references INSURANCE_COMPANY_TYPE(INS_CMPY_TYP_ID)
  on delete restrict on update restrict;

alter table GENERAL_LEDGER_FNCL_TRAN_DTL 
  add constraint GLRRT_TO_GLFTD foreign key (GNRL_LDGR_RPT_RL_TYP_CD)
  references GENERAL_LEDGER_RPT_RL_TYP(GNRL_LDGR_RPT_RL_TYP_CD)
  on delete restrict on update restrict;

alter table CLAIM_ACCOUNTING_TRANSACTION
   add constraint ATT_TO_CLMAT foreign key (ACCT_TRAN_TYP_CD)
      references ACCOUNTING_TRANSACTION_TYPE (ACCT_TRAN_TYP_CD)
      on delete restrict on update restrict; 
      
alter table CLAIM_ACCOUNTING_TRANSACTION 
   add constraint AGRE_TO_CLMAT foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict;  
      
alter table CLAIM_ACCOUNTING_TRANSACTION
   add constraint USER_TO_CLMAT1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table CLAIM_ACCOUNTING_TRANSACTION
   add constraint USER_TO_CLMAT2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;  

alter table GENERAL_LEDGER_FNCL_TRAN_DTL 
  add constraint CLMAT_TO_GLFTD foreign key (CLM_ACCT_TRAN_ID)
  references CLAIM_ACCOUNTING_TRANSACTION(CLM_ACCT_TRAN_ID)
  on delete restrict on update restrict;

alter table REPORT_CONFIGURATION 
  add constraint RPTT_TO_RPTC foreign key (RPT_TMPL_CD)
  references REPORT_TEMPLATE(RPT_TMPL_CD)
  on delete restrict on update restrict;

alter table REPORT_TEMPLATE_XREF 
  add constraint RPTT_TO_RPTTX_PAR foreign key (RPT_TMPL_PAR_CD)
  references REPORT_TEMPLATE(RPT_TMPL_CD)
  on delete restrict on update restrict;


alter table REPORT_TEMPLATE_XREF 
  add constraint RPTT_TO_RPTTX_CHLD foreign key (RPT_TMPL_CHLD_CD)
  references REPORT_TEMPLATE(RPT_TMPL_CD)
  on delete restrict on update restrict;

alter table REPORT_PARAMETER_TEMPLATE_XREF 
  add constraint RPTT_TO_RPTTPX foreign key (RPT_TMPL_CD)
  references REPORT_TEMPLATE(RPT_TMPL_CD)
  on delete restrict on update restrict;

alter table REPORT_PARAMETER_TEMPLATE_XREF 
  add constraint RPTPC_TO_RPTPTX foreign key (RPT_PARM_CD)
  references REPORT_PARAMETER_CONFIGURATION(RPT_PARM_CD)
  on delete restrict on update restrict;

alter table REPORT_PARAMETER_CONFIGURATION
   add constraint DT_TO_RPTPC foreign key (DATA_TYP_CD)
      references DATA_TYPE (DATA_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_ALLOCATION
   add constraint CLM_TO_CALLOC foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_ALLOCATION
   add constraint CUST_TO_CALLOC foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CLAIM_ALLOCATION
   add constraint CATYP_TO_CALLOC foreign key (CLM_ALLOC_TYP_CD)
      references CLAIM_ALLOCATION_TYPE (CLM_ALLOC_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_ALLOCATION
   add constraint USER_TO_CALLOC1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
     
alter table CLAIM_ALLOCATION
   add constraint USER_TO_CALLOC2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_ALLOCATION_HISTORY
   add constraint CLM_TO_CALLOCH foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

alter table CLAIM_ALLOCATION_HISTORY
   add constraint CUST_TO_CALLOCH foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CLAIM_ALLOCATION_HISTORY
   add constraint CATYP_TO_CALLOCH foreign key (CLM_ALLOC_TYP_CD)
      references CLAIM_ALLOCATION_TYPE (CLM_ALLOC_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_ALLOCATION_HISTORY
   add constraint USER_TO_CALLOC1H foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
     
alter table CLAIM_ALLOCATION_HISTORY
   add constraint USER_TO_CALLOC2H foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table CLAIM_ALLOCATION_DETAIL
   add constraint CALLOC_TO_CADTL foreign key (CLM_ALLOC_ID)
      references CLAIM_ALLOCATION (CLM_ALLOC_ID)
      on delete restrict on update restrict;

alter table CLAIM_ALLOCATION_DETAIL
   add constraint PAYT_TO_CADTL foreign key (PAY_TYP_CD)
      references PAYMENT_TYPE (PAY_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_ALLOCATION_DETAIL
   add constraint BNFTT_TO_CADTL foreign key (BNFT_TYP_CD)
      references BENEFIT_TYPE (BNFT_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_ALLOCATION_DETAIL
   add constraint CCTYP_TO_CADTL foreign key (CST_CNTR_TYP_CD)
      references COST_CENTER_TYPE (CST_CNTR_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_ALLOCATION_DETAIL
   add constraint USER_TO_CADTL1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
     
alter table CLAIM_ALLOCATION_DETAIL
   add constraint USER_TO_CADTL2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table CLAIM_ALLOCATION_DETAIL_HIST
   add constraint CALLOC_TO_CADTLH foreign key (CLM_ALLOC_ID)
      references CLAIM_ALLOCATION (CLM_ALLOC_ID)
      on delete restrict on update restrict;

alter table CLAIM_ALLOCATION_DETAIL_HIST
   add constraint PAYT_TO_CADTLH foreign key (PAY_TYP_CD)
      references PAYMENT_TYPE (PAY_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_ALLOCATION_DETAIL_HIST
   add constraint BNFTT_TO_CADTLH foreign key (BNFT_TYP_CD)
      references BENEFIT_TYPE (BNFT_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_ALLOCATION_DETAIL_HIST
   add constraint CCTYP_TO_CADTLH foreign key (CST_CNTR_TYP_CD)
      references COST_CENTER_TYPE (CST_CNTR_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_ALLOCATION_DETAIL_HIST
   add constraint USER_TO_CADTL1H foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
     
alter table CLAIM_ALLOCATION_DETAIL_HIST
   add constraint USER_TO_CADTL2H foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;



alter table CLAIM_ALLOCATION_DETAIL_CFT
   add constraint CADTL_TO_CADC foreign key (CLM_ALLOC_DTL_ID)
      references CLAIM_ALLOCATION_DETAIL (CLM_ALLOC_DTL_ID)
      on delete restrict on update restrict;
      
alter table CLAIM_ALLOCATION_DETAIL_CFT
         add constraint CFT_TO_CADC foreign key (CFT_ID)
            references CLAIM_FINANCIAL_TRANSACTION (CFT_ID)
      on delete restrict on update restrict;
      

alter table CLAIM_ALLOCATION_DETAIL_CFT
   add constraint USER_TO_CADC1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
     
alter table CLAIM_ALLOCATION_DETAIL_CFT
   add constraint USER_TO_CADC2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table REPORT
  add constraint RPTC_TO_RPT foreign key (RPT_CFG_CD)
  references REPORT_CONFIGURATION(RPT_CFG_CD)
  on delete restrict on update restrict;

alter table REPORT
  add constraint CUST_TO_RPT foreign key (CUST_ID)
  references CUSTOMER (CUST_ID)
  on delete restrict on update restrict;

alter table REPORT
  add constraint PLCYP_TO_RPT foreign key (PLCY_PRD_ID)
  references POLICY_PERIOD (PLCY_PRD_ID)
  on delete restrict on update restrict;

alter table REPORT
  add constraint AGRE_TO_RPT foreign key (AGRE_ID)
  references AGREEMENT (AGRE_ID)
  on delete restrict on update restrict;
  
alter table REPORT_OUTPUT  
  add constraint RPT_TO_RPT0 foreign key (RPT_ID)
  references REPORT (RPT_ID)
  on delete restrict on update restrict;



alter table REPORT
   add constraint USER_TO_RPTUIC foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
     
alter table REPORT
   add constraint USER_TO_RPTUIU foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table REPORT_OUTPUT
   add constraint USER_TO_RPTOUIC foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
     
alter table REPORT_OUTPUT
   add constraint USER_TO_RPTOUIU foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table REPORT
   add constraint RFT_TO_RPT foreign key (RPT_FRMT_TYP_CD)
      references REPORT_FORMAT_TYPE (RPT_FRMT_TYP_CD)
      on delete restrict on update restrict;
      

      


ALTER TABLE EVENT_DLQ
    ADD CONSTRAINT ACT_TO_EVNTD
    FOREIGN KEY(APP_CNTX_TYP_CD) 
    REFERENCES APPLICATION_CONTEXT_TYPE(APP_CNTX_TYP_CD)
    on delete restrict on update restrict;

ALTER TABLE EVENT_DLQ
    ADD CONSTRAINT ASCT_TO_EVNTD
    FOREIGN KEY(APP_SUB_CNTX_TYP_CD) 
    REFERENCES APPLICATION_SUB_CONTEXT_TYPE(APP_SUB_CNTX_TYP_CD)
    on delete restrict on update restrict;

ALTER TABLE EVENT_DLQ
    ADD CONSTRAINT EVNTT_TO_EVNTD
    FOREIGN KEY(EVNT_TYP_CD) 
    REFERENCES EVENT_TYPE(EVNT_TYP_CD)
    on delete restrict on update restrict;

ALTER TABLE EVENT_DLQ
    ADD CONSTRAINT EVNTST_TO_EVNTD
    FOREIGN KEY (EVNT_SBSCR_TYP_CD) 
    REFERENCES EVENT_SUBSCRIBER_TYPE(EVNT_SBSCR_TYP_CD)
    ON DELETE RESTRICT ON UPDATE RESTRICT;		  

ALTER TABLE EVENT_DLQ
    ADD CONSTRAINT USER_TO_EVNTD1 
    FOREIGN KEY (AUDIT_USER_ID_CREA) 
    REFERENCES USERS (USER_ID) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE EVENT_DLQ
  ADD CONSTRAINT USER_TO_EVNTD2 
  FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
  ON DELETE RESTRICT ON UPDATE RESTRICT;



ALTER TABLE CLAIM_ANNUITY_STATEMENT
    ADD CONSTRAINT AGRE_TO_CLMAS foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict;
      
ALTER TABLE CLAIM_ANNUITY_STATEMENT
    ADD CONSTRAINT USER_TO_CLMAS1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

ALTER TABLE CLAIM_ANNUITY_STATEMENT
    ADD CONSTRAINT USER_TO_CLMAS2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

ALTER TABLE CLAIM_SUMMARY
   ADD CONSTRAINT USER1_TO_CSD1 foreign key (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
 

ALTER TABLE CLAIM_SUMMARY
   ADD CONSTRAINT USER1_TO_CSD2 foreign key (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

     --Changes for SNAP-4348 CR
--ALTER TABLE CLAIM_SUMMARY
--   ADD CONSTRAINT PLCY_PRD_TO_CSD foreign key (PLCY_PRD_ID)
--      REFERENCES POLICY_PERIOD (PLCY_PRD_ID)
--      ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table CLAIM_SUMMARY
  add constraint STTJ_TO_CLMS foreign key (STT_ID_JUR)
  references STATE (STT_ID)
  on delete restrict on update restrict;

alter table CLAIM_SUMMARY
  add constraint STTE_TO_CLMS foreign key (STT_ID_EXPSR)
  references STATE (STT_ID)
  on delete restrict on update restrict;
  
ALTER TABLE CLAIM_SUMMARY
   ADD CONSTRAINT CUST_TO_CLMS FOREIGN KEY (CUST_ID_CLMT)    
      REFERENCES CUSTOMER (CUST_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;       
  
ALTER TABLE CLAIM_SUMMARY_DTL
   ADD CONSTRAINT CSD_TO_CSAD FOREIGN KEY (CS_ID) 
	REFERENCES CLAIM_SUMMARY (CS_ID)  
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_SUMMARY_DTL
   ADD CONSTRAINT USER1_TO_CSAD1 foreign key (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_SUMMARY_DTL
   ADD CONSTRAINT USER1_TO_CSAD2 foreign key (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
      
ALTER TABLE CLAIM_SUMMARY_ALLOCATION_DTL
   ADD CONSTRAINT CSID_TO_CSAD FOREIGN KEY (CS_ID) 
	REFERENCES CLAIM_SUMMARY (CS_ID)  
	ON DELETE RESTRICT ON UPDATE RESTRICT;
	
ALTER TABLE CLAIM_SUMMARY_ALLOCATION_DTL
   ADD CONSTRAINT USER1_TO_CSADC foreign key (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_SUMMARY_ALLOCATION_DTL
   ADD CONSTRAINT USER1_TO_CSADU foreign key (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;      

-- BNET RFC009 Clearance
alter table CLEARANCE_REVIEW
   add constraint PLCYP_TO_CLRNCRMST foreign key (PLCY_PRD_ID_MSTR)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table CLEARANCE_REVIEW
   add constraint PLCYP_TO_CLRNCR foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table CLEARANCE_REVIEW
   add constraint CUST_TO_CLRNCR foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CLEARANCE_REVIEW
   add constraint CADDR_TO_CLRNCR foreign key (CUST_ADDR_ID)
      references CUSTOMER_ADDRESS (CUST_ADDR_ID)
      on delete restrict on update restrict;

alter table CLEARANCE_REVIEW
   add constraint CN_TO_CLRNCR foreign key (CUST_NM_ID)
      references CUSTOMER_NAME (CUST_NM_ID)
      on delete restrict on update restrict;

alter table CLEARANCE_REVIEW
   add constraint TI_TO_CLRNCR foreign key (TAX_ID_ID)
      references TAX_IDENTIFIER (TAX_ID_ID)
      on delete restrict on update restrict;

alter table CLEARANCE_REVIEW
   add constraint CINTRNC_TO_CLRNCR foreign key (CUST_INTRN_CHNL_ID)
      references CUSTOMER_INTERACTION_CHANNEL (CUST_INTRN_CHNL_ID)
      on delete restrict on update restrict;

alter table CLEARANCE_REVIEW
   add constraint AST_TO_CLRNCR foreign key (AUTH_STS_TYP_CD)
      references AUTHORIZATION_STATUS_TYPE (AUTH_STS_TYP_CD)
      on delete restrict on update restrict;

alter table CLEARANCE_REVIEW
    add constraint USER_TO_CLRNCR1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLEARANCE_REVIEW
    add constraint USER_TO_CLRNCR2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict; 
     
ALTER TABLE RATING_ELEMENT_CAT_TYPE_XREF
 add constraint RECT_TO_DCT foreign key (DED_CTG_TYP_CD)
      references DEDUCTIBLE_CATEGORY_TYPE (DED_CTG_TYP_CD)
      on delete restrict on update restrict;
      

alter table WC_CLASS_STANDARD_EXCP_INTF
   add constraint JT_TO_WCSEI foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;
      
alter table WCSTAT_COST_CENTER_TYPE_XREF
  add constraint JT_TO_WCCTX foreign key (JUR_TYP_CD)
  references JURISDICTION_TYPE (JUR_TYP_CD)
  on delete restrict on update restrict;

alter table WCSTAT_COST_CENTER_TYPE_XREF
  add constraint CCTC_TO_WCCTX foreign key (CST_CNTR_TYP_CD)
  references COST_CENTER_TYPE (CST_CNTR_TYP_CD)
  on delete restrict on update restrict;

alter table WCSTAT_COST_CENTER_TYPE_XREF
  add constraint PT_TO_WCCTX foreign key (PAY_TYP_CD)
  references PAYMENT_TYPE (PAY_TYP_CD)
  on delete restrict on update restrict;

alter table WCSTAT_COST_CNTR_CTG_TYP_XREF
  add constraint JT_TO_WCCCTX foreign key (JUR_TYP_CD)
  references JURISDICTION_TYPE (JUR_TYP_CD)
  on delete restrict on update restrict;

alter table WCSTAT_COST_CNTR_CTG_TYP_XREF
  add constraint CCCT_TO_WCCCTX foreign key (CST_CNTR_CTG_TYP_CD)
  references COST_CENTER_CATEGORY_TYPE (CST_CNTR_CTG_TYP_CD)
  on delete restrict on update restrict;

alter table WCSTAT_COST_CNTR_CTG_TYP_XREF
  add constraint CRCT_TO_WCCCTX foreign key (CLM_RSRV_CTG_TYP_CD)
  references CLAIM_RESERVE_CATEGORY_TYPE (CLM_RSRV_CTG_TYP_CD)
  on delete restrict on update restrict;
  
ALTER TABLE WCIO_CONFIGURATION_TEMPLATE
 add constraint WT_TO_WCT foreign key (WCIO_TYP_CD)
      references WCIO_TYPE (WCIO_TYP_CD)
      on delete restrict on update restrict;
  
ALTER TABLE INSURANCE_CMPY_DTL_BUR_DTL
 add constraint SI_TO_ICTDTBD foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

ALTER TABLE INSURANCE_CMPY_DTL_BUR_DTL
 add constraint ICTD_TO_ICTDTBD foreign key (ICTD_ID)
      references INSURANCE_COMPANY_TYPE_DTL (ICTD_ID)
      on delete restrict on update restrict;
  
alter table NAICS_SIC_XREF
   add constraint NT_TO_NSX foreign key (NAICS_TYP_CD)
      references NAICS_TYPE (NAICS_TYP_CD)
      on delete restrict on update restrict;

alter table NAICS_SIC_XREF
   add constraint ST_TO_NSX foreign key (SIC_TYP_CD)
      references SIC_TYPE (SIC_TYP_CD)
      on delete restrict on update restrict;

alter table JURISDICTION_NOI_TYPE
   add constraint JT_TO_JNT foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;
      
      

      


alter table ROLE_PROVIDER_TYPE_JUR
  add constraint JT_TO_RPTJ foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;
  
alter table ROLE_PROVIDER_TYPE_JUR
  add constraint RPTYP_TO_RPTJ foreign key (ROLE_PROV_TYP_ID)
      references ROLE_PROVIDER_TYPE (ROLE_PROV_TYP_ID)
      on delete restrict on update restrict;  

alter table ROLE_PROVIDER_TYPE_JUR
   add constraint USER_TO_RPTJ1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER_TYPE_JUR
   add constraint USER_TO_RPTJ2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table ROLE_PROVIDER_TYPE_STATUS
  add constraint PST_TO_RPTS foreign key (PROV_STS_TYP_CD)
      references PROVIDER_STATUS_TYPE (PROV_STS_TYP_CD)
      on delete restrict on update restrict;  

alter table ROLE_PROVIDER_TYPE_STATUS
  add constraint RPTYP_TO_RPTS foreign key (ROLE_PROV_TYP_ID)
      references ROLE_PROVIDER_TYPE (ROLE_PROV_TYP_ID)
      on delete restrict on update restrict;  

alter table ROLE_PROVIDER_TYPE_STATUS
   add constraint USER_TO_RPTS1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_PROVIDER_TYPE_STATUS
   add constraint USER_TO_RPTS2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
alter table CLAIM
  add constraint CLMIT_TO_CLM foreign key (CLM_INVSTG_TYP_CD)
      references CLAIM_INVESTIGATION_TYPE (CLM_INVSTG_TYP_CD)
      on delete restrict on update restrict;  
      
alter table JURISDICTION_NOI_NOI_XREF
   add constraint JNT_TO_JNNX foreign key (JUR_NOI_TYP_ID)
      references JURISDICTION_NOI_TYPE (JUR_NOI_TYP_ID)
      on delete restrict on update restrict;
      
alter table JURISDICTION_NOI_NOI_XREF
 add constraint NOIT_TO_JNNX foreign key (NOI_TYP_CD)
    references NATURE_OF_INJURY_TYPE (NOI_TYP_CD)
      on delete restrict on update restrict;
      

alter table JURISDICTION_PART_OF_BODY_TYPE
   add constraint JT_TO_JPOBT foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;
      
      

alter table JURISDICTION_POB_POB_XREF
   add constraint JPOBT_TO_JPPX foreign key (JUR_POB_TYP_ID)
      references JURISDICTION_PART_OF_BODY_TYPE (JUR_POB_TYP_ID)
      on delete restrict on update restrict;
      
alter table JURISDICTION_POB_POB_XREF
 add constraint POBT_TO_JPPX foreign key (POB_TYP_CD)
    references PART_OF_BODY_TYPE (POB_TYP_CD)
      on delete restrict on update restrict;


alter table JURISDICTION_CAUSE_OF_LOSS_TYP
   add constraint JT_TO_JCOLT foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;
      
      

alter table JURISDICTION_CL_CL_XREF
   add constraint JCOLT_TO_JCCX foreign key (JUR_CAUS_OF_LOSS_ID)
      references JURISDICTION_CAUSE_OF_LOSS_TYP (JUR_CAUS_OF_LOSS_ID)
      on delete restrict on update restrict;
      
alter table JURISDICTION_CL_CL_XREF
 add constraint COLT_TO_JCCX foreign key (CAUS_OF_LOSS_TYP_CD)
    references CAUSE_OF_LOSS_TYPE (CAUS_OF_LOSS_TYP_CD)
      on delete restrict on update restrict;


--BEGIN RFC007

ALTER TABLE ASSIGNMENT_RULE ADD CONSTRAINT ACT_TO_AR FOREIGN KEY(APP_CNTX_TYP_CD) REFERENCES 
APPLICATION_CONTEXT_TYPE(APP_CNTX_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT_RULE ADD CONSTRAINT EVNTT_TO_AR  FOREIGN KEY(EVNT_TYP_CD) REFERENCES 
EVENT_TYPE (EVNT_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT_RULE ADD CONSTRAINT ACT_TO_RULE FOREIGN KEY(RL_ID) REFERENCES RULES(RL_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CONTEXT_TYPE_FNCT_ROLE_XREF ADD CONSTRAINT ACT_TO_CTFRX FOREIGN KEY(APP_CNTX_TYP_CD) REFERENCES 
APPLICATION_CONTEXT_TYPE(APP_CNTX_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
      
ALTER TABLE CONTEXT_TYPE_FNCT_ROLE_XREF ADD CONSTRAINT FR_TO_CTFRX FOREIGN KEY(FNCT_ROLE_ID) REFERENCES 
FUNCTIONAL_ROLE(FNCT_ROLE_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT_CRITERIA ADD CONSTRAINT AC_TO_ASGN FOREIGN KEY(ASGN_ID) REFERENCES
ASSIGNMENT(ASGN_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT ADD CONSTRAINT ACT_TO_ASGN FOREIGN KEY(APP_CNTX_TYP_CD) REFERENCES 
APPLICATION_CONTEXT_TYPE(APP_CNTX_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT ADD CONSTRAINT FR_TO_ASGN FOREIGN KEY(FNCT_ROLE_ID) REFERENCES 
FUNCTIONAL_ROLE(FNCT_ROLE_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT ADD CONSTRAINT OU_TO_ASGN FOREIGN KEY(ORG_UNT_ID) REFERENCES 
ORGANIZATIONAL_UNIT(ORG_UNT_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
  
ALTER TABLE ASSIGNMENT ADD CONSTRAINT USER_TO_ASGN FOREIGN KEY(USER_ID) REFERENCES 
USERS(USER_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT ADD CONSTRAINT AUDIT_USER_TO_ASGN FOREIGN KEY(AUDIT_USER_ID_CREA) REFERENCES 
USERS(USER_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT ADD CONSTRAINT AUDIT_USER_UPDT_TO_ASGN FOREIGN KEY(AUDIT_USER_ID_UPDT) REFERENCES 
USERS(USER_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT ADD CONSTRAINT CUST_TO_ASGN FOREIGN KEY(CUST_ID) REFERENCES 
CUSTOMER(CUST_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT ADD CONSTRAINT AST_TO_ASGN  FOREIGN KEY(ASGN_STS_TYP_CD) REFERENCES 
ASSIGNMENT_STATUS_TYPE(ASGN_STS_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT ADD CONSTRAINT ALBRT_TO_ASGN  FOREIGN KEY(ASGN_LD_BAL_RL_TYP_CD) REFERENCES 
ASSIGNMENT_LOAD_BAL_RL_TYP(ASGN_LD_BAL_RL_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT_RULE_RESULT ADD CONSTRAINT FR_TO_ARR  FOREIGN KEY(FNCT_ROLE_ID) REFERENCES 
FUNCTIONAL_ROLE(FNCT_ROLE_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT_RULE_RESULT ADD CONSTRAINT ALBRY_TO_ARR FOREIGN KEY(ASGN_LD_BAL_RL_TYP_CD) REFERENCES 
ASSIGNMENT_LOAD_BAL_RL_TYP(ASGN_LD_BAL_RL_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT_RULE_RESULT ADD CONSTRAINT RI_TO_ASGNRR FOREIGN KEY(RL_ITEM_ID) REFERENCES 
RULE_ITEM(RL_ITEM_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT_RULE_RESULT ADD CONSTRAINT ACT_TO_ARR FOREIGN KEY(APP_CNTX_TYP_CD) REFERENCES 
APPLICATION_CONTEXT_TYPE(APP_CNTX_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT_RULE_RESULT ADD CONSTRAINT RULE_TO_ARR FOREIGN KEY(RL_ID) REFERENCES RULES(RL_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT_RULE_RESULT ADD CONSTRAINT OU_TO_ARR FOREIGN KEY(ORG_UNT_ID) REFERENCES 
ORGANIZATIONAL_UNIT(ORG_UNT_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT_RULE_RESULT ADD CONSTRAINT USER_TO_ARR FOREIGN KEY(USER_ID) REFERENCES 
USERS(USER_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT_RULE_RESULT ADD CONSTRAINT CUST_TO_ARR FOREIGN KEY(CUST_ID) 
REFERENCES CUSTOMER(CUST_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT_RULE_RESULT ADD CONSTRAINT AST_TO_ARR FOREIGN KEY(ASGN_STS_TYP_CD) REFERENCES 
ASSIGNMENT_STATUS_TYPE(ASGN_STS_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE ASSIGNMENT_RULE_RESULT_DETAIL ADD CONSTRAINT ARR_TO_ARRD FOREIGN KEY(ASGN_RL_RSLT_ID) REFERENCES 
ASSIGNMENT_RULE_RESULT(ASGN_RL_RSLT_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
      
ALTER TABLE ASSIGNMENT_RULE_RESULT_DETAIL ADD CONSTRAINT USER_TO_ARRD FOREIGN KEY(USER_ID) REFERENCES 
USERS(USER_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT_RULE_RESULT_DETAIL ADD CONSTRAINT CUST_TO_ARRD FOREIGN KEY(CUST_ID) REFERENCES 
CUSTOMER(CUST_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
      
ALTER TABLE ASSIGNMENT_RULE_RESULT_DETAIL ADD CONSTRAINT OU_TO_ARRD FOREIGN KEY(ORG_UNT_ID) REFERENCES 
ORGANIZATIONAL_UNIT(ORG_UNT_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;


--END RFC007


ALTER TABLE USERS_LANG ADD CONSTRAINT USERS_TO_UL FOREIGN KEY(USER_ID)
    REFERENCES USERS(USER_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE USERS_LANG ADD CONSTRAINT LT_TO_UL FOREIGN KEY(LANG_TYP_CD)
    REFERENCES LANGUAGE_TYPE(LANG_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE USERS_CREDENTIAL ADD CONSTRAINT USERS_TO_UC FOREIGN KEY(USER_ID)
    REFERENCES USERS(USER_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE USERS_CREDENTIAL ADD CONSTRAINT CT_TO_UC FOREIGN KEY(CRDNTL_TYP_CD)
    REFERENCES CREDENTIAL_TYPE(CRDNTL_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE USERS_CREDENTIAL ADD CONSTRAINT JT_TO_UC FOREIGN KEY(JUR_TYP_CD)
    REFERENCES JURISDICTION_TYPE(JUR_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- ---------------------------------------------------------
-- RFC 084 Reinsurance

alter table ROLE_INSURED_OTHER_CAR_PLCY
   add constraint RT_TO_RIOCP foreign key (RINS_TYP_CD)
      references REINSURANCE_TYPE (RINS_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSRD_OTHR_CAR_PLCY_COV
   add constraint RIOCPLCY_TO_RIOCPC foreign key (RIOCP_ID)
      references ROLE_INSURED_OTHER_CAR_PLCY (RIOCP_ID)
      on delete restrict on update restrict;

alter table ROLE_INSRD_OTHR_CAR_PLCY_COV
   add constraint RRT_TO_RIOCPC foreign key (RINS_RTNTN_TYP_CD)
      references REINSURANCE_RETENTION_TYPE (RINS_RTNTN_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSRD_OTHR_CAR_PLCY_COV
   add constraint RCT_TO_RIOCPC foreign key (RINS_COV_TYP_CD)
      references REINSURANCE_COVERAGE_TYPE (RINS_COV_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSRD_OTHR_CAR_PLCY_COV
   add constraint RINSRT_TO_RIOCPC foreign key (RINS_RPT_TYP_CD)
      references REINSURANCE_REPORT_TYPE (RINS_RPT_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSRD_OTHR_CAR_PLCY_COV
   add constraint USER_TO_RIOCPC1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_INSRD_OTHR_CAR_PLCY_COV
   add constraint USER_TO_RIOCPC2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table ROLE_INSRD_OC_POLICY_COV_HIST
   add constraint RIOCPC_TO_RIOPCOVH foreign key (RIOCPC_ID)
      references ROLE_INSRD_OTHR_CAR_PLCY_COV (RIOCPC_ID)
         on delete restrict on update restrict;

Alter table ROLE_INSRD_OC_POLICY_COV_HIST
   add constraint RIOCPLC_TO_RIOCPCH foreign key (RIOCP_ID)
      references ROLE_INSURED_OTHER_CAR_PLCY (RIOCP_ID)
      on delete restrict on update restrict;

alter table ROLE_INSRD_OC_POLICY_COV_HIST
   add constraint RRTNTNT_TO_RIOCPCH foreign key (RINS_RTNTN_TYP_CD)
      references REINSURANCE_RETENTION_TYPE (RINS_RTNTN_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSRD_OC_POLICY_COV_HIST
   add constraint RCT_TO_RIOCPCH foreign key (RINS_COV_TYP_CD)
      references REINSURANCE_COVERAGE_TYPE (RINS_COV_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSRD_OC_POLICY_COV_HIST
   add constraint RRPTT_TO_RIOCPCH foreign key (RINS_RPT_TYP_CD)
      references REINSURANCE_REPORT_TYPE (RINS_RPT_TYP_CD)
      on delete restrict on update restrict;

alter table ROLE_INSRD_OC_POLICY_COV_HIST
   add constraint USER_TO_RIOCPCOVH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ROLE_INSRD_OC_POLICY_COV_HIST
   add constraint USER_TO_RIOCPCOVH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;









alter table RICOPC_JURISDICTION_XREF
   add constraint RIOCPC_TO_RJX foreign key (RIOCPC_ID)
      references ROLE_INSRD_OTHR_CAR_PLCY_COV (RIOCPC_ID)
      on delete restrict on update restrict;


alter table RICOPC_JURISDICTION_XREF
   add constraint JT_TO_RJX foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table RATING_ELEMENT_TYPE
   add constraint REUT_TO_RTET foreign key(RT_ELEM_USAGE_TYP_CD)    
      references RATING_ELEMENT_USAGE_TYPE (RT_ELEM_USAGE_TYP_CD) 
      on delete restrict on update restrict;

     
alter table RATING_ELEMENT_TYPE
   add constraint RTET_TO_RTET foreign key(RT_ELEM_TYP_RLT) 
      references RATING_ELEMENT_TYPE (RT_ELEM_TYP_CD)
      on delete restrict on update restrict;


alter table ASSOCIATED_SOURCE_TYPE
   add constraint USER_TO_ASRCT foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ASSOCIATED_SOURCE_TYPE
   add constraint USER_TO_ASRCT2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ASSOCIATED_SOURCE_CODE_TYPE
   add constraint USER_TO_ASRCCT foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ASSOCIATED_SOURCE_CODE_TYPE
   add constraint USER_TO_ASRCCT2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ASSOCIATED_SOURCE_VALUE
   add constraint AST_TO_ASV foreign key (ASSC_SRC_TYP_CD)
      references ASSOCIATED_SOURCE_TYPE (ASSC_SRC_TYP_CD)
      on delete restrict on update restrict;

alter table ASSOCIATED_SOURCE_VALUE
   add constraint ASCT_TO_ASV foreign key (ASSC_SRC_CD_TYP_CD)
      references ASSOCIATED_SOURCE_CODE_TYPE (ASSC_SRC_CD_TYP_CD)
      on delete restrict on update restrict;

alter table ASSOCIATED_SOURCE_VALUE
   add constraint USER_TO_ASV foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ASSOCIATED_SOURCE_VALUE
   add constraint USER_TO_ASV2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CODE_MAPPING_XREF
   add constraint CTC_TO_CMX foreign key (CD_TBL_CATLG_TBL_NM)
      references CODE_TABLE_CATALOG (CD_TBL_CATLG_TBL_NM)
      on delete restrict on update restrict;

alter table CODE_MAPPING_XREF
   add constraint ASV_TO_CMX foreign key (ASSC_SRC_VAL_ID)
      references ASSOCIATED_SOURCE_VALUE (ASSC_SRC_VAL_ID)
      on delete restrict on update restrict;

alter table CODE_MAPPING_XREF
   add constraint USER_TO_CMX foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CODE_MAPPING_XREF
   add constraint USER_TO_CMX2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_CODE_MAP_XREF
   add constraint BT_TO_CFCMX foreign key (BNFT_TYP_CD)
      references BENEFIT_TYPE (BNFT_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_CODE_MAP_XREF
   add constraint CCTYP_TO_CFCMX foreign key (CST_CNTR_TYP_CD)
      references COST_CENTER_TYPE (CST_CNTR_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_CODE_MAP_XREF
   add constraint CCCTYP_TO_CFCMX foreign key (CST_CNTR_CTG_TYP_CD)
      references COST_CENTER_CATEGORY_TYPE (CST_CNTR_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_CODE_MAP_XREF
   add constraint PAYT_TO_CFCMX foreign key (PAY_TYP_CD)
      references PAYMENT_TYPE (PAY_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_CODE_MAP_XREF
   add constraint ASV_TO_CFCMX foreign key (ASSC_SRC_VAL_ID)
      references ASSOCIATED_SOURCE_VALUE (ASSC_SRC_VAL_ID)
      on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_CODE_MAP_XREF
   add constraint ASV2_TO_CFCMX foreign key (PMT_TYP_ASSC_SRC_VAL_ID)
      references ASSOCIATED_SOURCE_VALUE (ASSC_SRC_VAL_ID)
      on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_CODE_MAP_XREF
   add constraint USER_TO_CFCMX foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_CODE_MAP_XREF
   add constraint USER_TO_CFCMX2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
	  
alter table CLAIM_FINANCIAL_CODE_MAP_XREF
   add constraint BRT_TO_CFCMX foreign key (BNFT_RPT_TYP_ID)
      references BENEFIT_REPORTING_TYPE (BNFT_RPT_TYP_ID)
      on delete restrict on update restrict;

alter table CLAIM_FINANCIAL_CODE_MAP_XREF
            ADD CONSTRAINT VCAT_TO_CFCMX
            FOREIGN KEY(VAR_CALC_ATTR_TYP_CD)
            REFERENCES VARIABLE_CALCULATION_ATTR_TYP(VAR_CALC_ATTR_TYP_CD);
            
alter table ISO_STAGING
   add constraint AGRE_TO_ISTG foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict;

alter table ISO_STAGING
   add constraint ISRT_TO_ISTG foreign key (ISO_STG_REC_TYP_CD)
      references ISO_STAGING_RECORD_TYPE (ISO_STG_REC_TYP_CD)
      on delete restrict on update restrict;

alter table ISO_STAGING
   add constraint CCCTYP_TO_ISTG foreign key (CST_CNTR_CTG_TYP_CD)
      references COST_CENTER_CATEGORY_TYPE (CST_CNTR_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table ISO_STAGING
   add constraint BNFTT_TO_ISTG foreign key (BNFT_TYP_CD)
      references BENEFIT_TYPE (BNFT_TYP_CD)
      on delete restrict on update restrict;

alter table ISO_STAGING
   add constraint PTCPT_TO_ISTG foreign key (PTCP_TYP_CD)
      references PARTICIPATION_TYPE (PTCP_TYP_CD)
      on delete restrict on update restrict;

alter table ISO_STAGING
   add constraint CFT_TO_ISTG foreign key (CFT_ID)
      references CLAIM_FINANCIAL_TRANSACTION (CFT_ID)
      on delete restrict on update restrict;

alter table ISO_STAGING
   add constraint INSCT_TO_ISTG foreign key (INS_CMPY_TYP_ID)
      references INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID)
      on delete restrict on update restrict;

alter table ISO_STAGING
   add constraint USER_TO_ISTG foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table ISO_STAGING
   add constraint USER_TO_ISTG2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

ALTER TABLE ISO_ACKNOWLEDGEMENT ADD CONSTRAINT IAST_TO_IA FOREIGN KEY (ISO_ACK_STS_TYP_CD) REFERENCES 
ISO_ACKNOWLEDGEMENT_STS_TYPE (ISO_ACK_STS_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ISO_ACKNOWLEDGEMENT ADD CONSTRAINT AGRE_TO_IA FOREIGN KEY (AGRE_ID) REFERENCES 
AGREEMENT (AGRE_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ISO_ACKNOWLEDGEMENT ADD CONSTRAINT USER_TO_IA1 FOREIGN KEY (AUDIT_USER_ID_CREA) REFERENCES
USERS (USER_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ISO_ACKNOWLEDGEMENT ADD CONSTRAINT USER_TO_IA2 FOREIGN KEY (AUDIT_USER_ID_UPDT) REFERENCES
USERS (USER_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ISO_ACKNOWLEDGEMENT_ERROR ADD CONSTRAINT IA_TO_IAE FOREIGN KEY (ISO_ACK_ID) REFERENCES 
ISO_ACKNOWLEDGEMENT (ISO_ACK_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ISO_ACKNOWLEDGEMENT_ERROR ADD CONSTRAINT IAIABCET_TO_IAE FOREIGN KEY (IAIABC_ELEM_TYP_CD) REFERENCES 
IAIABC_ELEMENT_TYPE (IAIABC_ELEM_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ISO_ACKNOWLEDGEMENT_ERROR ADD CONSTRAINT ISOET_TO_IAE FOREIGN KEY (ISO_ELEM_TYP_CD) REFERENCES 
ISO_ELEMENT_TYPE (ISO_ELEM_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ISO_ACKNOWLEDGEMENT_ERROR ADD CONSTRAINT IET_TO_IAE FOREIGN KEY (IAIABC_ERR_TYP_CD) REFERENCES 
IAIABC_ERROR_TYPE (IAIABC_ERR_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ISO_ACKNOWLEDGEMENT_ERROR ADD CONSTRAINT WET_TO_IAE FOREIGN KEY (WCTRP_ERR_TYP_CD) REFERENCES 
WCTRP_ERROR_TYPE (WCTRP_ERR_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ISO_ACKNOWLEDGEMENT_ERROR ADD CONSTRAINT USER_TO_IAE1 FOREIGN KEY (AUDIT_USER_ID_CREA) REFERENCES
USERS (USER_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ISO_ACKNOWLEDGEMENT_ERROR ADD CONSTRAINT USER_TO_IAE2 FOREIGN KEY (AUDIT_USER_ID_UPDT) REFERENCES
USERS (USER_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ISO_ELEM_WCTRP_ERR_XREF ADD CONSTRAINT ISOET_TO_IEWEX FOREIGN KEY (ISO_ELEM_TYP_CD) REFERENCES 
ISO_ELEMENT_TYPE (ISO_ELEM_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ISO_ELEM_WCTRP_ERR_XREF ADD CONSTRAINT WET_TO_IEWEX FOREIGN KEY (WCTRP_ERR_TYP_CD) REFERENCES 
WCTRP_ERROR_TYPE (WCTRP_ERR_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE IAIABC_ELEM_ISO_ELEM_XREF ADD CONSTRAINT ISOET_TO_IEIEX FOREIGN KEY (ISO_ELEM_TYP_CD) REFERENCES 
ISO_ELEMENT_TYPE (ISO_ELEM_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE IAIABC_ELEM_ISO_ELEM_XREF ADD CONSTRAINT IAIABCET_TO_IEIEX FOREIGN KEY (IAIABC_ELEM_TYP_CD) REFERENCES 
IAIABC_ELEMENT_TYPE (IAIABC_ELEM_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ISO_OUTBND_REC_ACTV_NM_XREF
   ADD CONSTRAINT IORT_TO_IORANX FOREIGN KEY (ISO_OUTBND_REC_TYP_CD)
      REFERENCES ISO_OUTBOUND_RECORD_TYPE (ISO_OUTBND_REC_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ISO_OUTBND_REC_ACTV_NM_XREF
   ADD CONSTRAINT ANT_TO_IORANX FOREIGN KEY (ACTV_NM_TYP_CD)
      REFERENCES ACTIVITY_NAME_TYPE (ACTV_NM_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ISO_OUTBND_REC_ACTV_NM_XREF
   ADD CONSTRAINT USER_TO_IORANX FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ISO_OUTBND_REC_ACTV_NM_XREF
   ADD CONSTRAINT USER_TO_IORANX2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table bill_edi_file_configuration
   add constraint best_to_befc foreign key (bill_edi_src_typ_cd)
      references bill_edi_source_type (bill_edi_src_typ_cd)
      on delete restrict on update restrict;

alter table bill_edi_file_configuration
   add constraint beft_to_befc foreign key (bill_edi_file_typ_cd)
      references bill_edi_file_type (bill_edi_file_typ_cd)
      on delete restrict on update restrict;

alter table bill_edi_file_process
   add constraint befc_to_befp foreign key (bill_edi_file_cnfg_id)
      references bill_edi_file_configuration (bill_edi_file_cnfg_id)
      on delete restrict on update restrict;

alter table bill_edi_bill_process
   add constraint befp_to_bebp foreign key (bill_edi_file_prcs_id)
      references bill_edi_file_process (bill_edi_file_prcs_id)
      on delete restrict on update restrict;

alter table bill_edi_promote_configuration
   add constraint best_to_bepc foreign key (bill_edi_src_typ_cd)
      references bill_edi_source_type (bill_edi_src_typ_cd)
      on delete restrict on update restrict;

alter table bill_edi_promote_configuration
   add constraint bept_to_bepc foreign key (bill_edi_prmte_typ_cd)
      references bill_edi_promote_type (bill_edi_prmte_typ_cd)
      on delete restrict on update restrict;

ALTER TABLE BILL_EDI_CUSTOMER ADD CONSTRAINT CUSTT_TO_BEC FOREIGN KEY (CUST_TYP_CD) REFERENCES CUSTOMER_TYPE (CUST_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_EDI_CUSTOMER ADD CONSTRAINT BILL_TO_BEC FOREIGN KEY (BILL_ID) REFERENCES BILL (BILL_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_EDI_CUSTOMER ADD CONSTRAINT GT_TO_BEC FOREIGN KEY (GNDR_TYP_CD) REFERENCES GENDER_TYPE (GNDR_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_EDI_CUSTOMER ADD CONSTRAINT MSTST_TO_BEC FOREIGN KEY (MAR_STS_TYP_CD) REFERENCES MARITAL_STATUS_TYPE (MAR_STS_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_EDI_CUSTOMER ADD CONSTRAINT TIT_TO_BEC FOREIGN KEY (TAX_ID_TYP_CD) REFERENCES TAX_IDENTIFIER_TYPE (TAX_ID_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_EDI_CUSTOMER ADD CONSTRAINT CAT_TO_BEC FOREIGN KEY (CUST_ADDR_TYP_CD) REFERENCES CUSTOMER_ADDRESS_TYPE (CUST_ADDR_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_EDI_CUSTOMER ADD CONSTRAINT STT_TO_BEC FOREIGN KEY (STT_ID) REFERENCES STATE (STT_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_EDI_CUSTOMER ADD CONSTRAINT CNTRY_TO_BEC FOREIGN KEY (CNTRY_ID) REFERENCES COUNTRY (CNTRY_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_EDI_CUSTOMER ADD CONSTRAINT USER_TO_BEC2 FOREIGN KEY (audit_user_id_updt) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_EDI_CUSTOMER ADD CONSTRAINT USER_TO_BEC1 FOREIGN KEY (audit_user_id_crea) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INDM_FREQ_JUR_BNFT_RUL_XREF ADD CONSTRAINT IFT_TO_IFJBRX FOREIGN KEY(INDM_FREQ_TYP_CD) REFERENCES INDEMNITY_FREQUENCY_TYPE(INDM_FREQ_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_RESERVE_INITIAL_RULE ADD CONSTRAINT POBT_TO_CRIR FOREIGN KEY(POB_TYP_CD) REFERENCES PART_OF_BODY_TYPE(POB_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_RESERVE_INITIAL_RULE ADD CONSTRAINT CLMT_TO_CRIR FOREIGN KEY(CLM_TYP_CD) REFERENCES CLAIM_TYPE(CLM_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_RESERVE_INITIAL_RULE ADD CONSTRAINT CLMRCT_TO_CRIR FOREIGN KEY(CLM_RSRV_CTG_TYP_CD) REFERENCES CLAIM_RESERVE_CATEGORY_TYPE(CLM_RSRV_CTG_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_RESERVE_INITIAL_RULE ADD CONSTRAINT  CCCTC_TO_CRIR FOREIGN KEY(CST_CNTR_CTG_TYP_CD) REFERENCES COST_CENTER_CATEGORY_TYPE(CST_CNTR_CTG_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_RESERVE_INITIAL_RULE ADD CONSTRAINT NDT_TO_CRIR FOREIGN KEY(NWISP_DTL_TYP_CD) REFERENCES NWISP_DETAIL_TYPE(NWISP_DTL_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table predictive_anltcs_outbnd_cnfg
   add constraint adt_to_paoc foreign key (app_data_typ_cd)
      references application_data_type (app_data_typ_cd)
      on delete restrict on update restrict
;
alter table predictive_anltcs_outbnd_cnfg
   add constraint dt_to_paoc foreign key (data_typ_cd)
      references data_type (data_typ_cd)
      on delete restrict on update restrict
;
alter table prdct_anltcs_rslt_item_cnfg
   add constraint parit_to_paric foreign key (parit_cd)
      references prdct_anltcs_rslt_item_typ (parit_cd)
      on delete restrict on update restrict
;
alter table prdct_anltcs_rslt_item_cnfg
   add constraint frmtt_to_paric foreign key (frmt_typ_cd)
      references format_type (frmt_typ_cd)
      on delete restrict on update restrict
;
alter table predictive_analytics_result
   add constraint plcyp_to_par foreign key (plcy_prd_id)
      references policy_period (plcy_prd_id)
      on delete restrict on update restrict
;
alter table predictive_analytics_rslt_item
   add constraint par_to_pari foreign key (par_id)
      references predictive_analytics_result (par_id)
      on delete restrict on update restrict
;

-- ECR 219/220 Changes

ALTER TABLE CONTEXT_NUMBER_GENERATION ADD CONSTRAINT CNTXNT_TO_CNG FOREIGN KEY(CNTX_NO_TYP_CD) REFERENCES CONTEXT_NUMBER_TYPE(CNTX_NO_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE CONTEXT_NUMBER_INCREMENT ADD CONSTRAINT CNTXNT_TO_CNTXNI FOREIGN KEY(CNTX_NO_TYP_CD) REFERENCES CONTEXT_NUMBER_TYPE(CNTX_NO_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table TIME_MANAGEMENT_ACTIVITY add constraint TMA_TO_CLMR foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID) on delete restrict on update restrict;

alter table TIME_MANAGEMENT_ACTIVITY add constraint TMA_TO_TMAT foreign key (TIME_MANG_ACTV_TYP_CD) references TIME_MANAGEMENT_ACTIVITY_TYPE (TIME_MANG_ACTV_TYP_CD) on delete restrict on update restrict;

alter table TIME_MANAGEMENT_ACTIVITY
   add constraint USER_TO_TMA1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table TIME_MANAGEMENT_ACTIVITY
   add constraint USER_TO_TMA2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;      


alter table WC_CLASS_SIC_XREF
   add constraint ST_TO_WCSX foreign key (SIC_TYP_CD)
      references SIC_TYPE (SIC_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_GOVERNING_CLASS
   add constraint PLCYP_TO_PPGC foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_GOVERNING_CLASS
   add constraint JT_TO_PPGC foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;


alter table POLICY_PERIOD_GOVERNING_CLASS
   add constraint USER_TO_PPGC1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_GOVERNING_CLASS
   add constraint USER_TO_PPGC2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table POLICY_PERIOD_GOVN_CLASS_HIST 
   add constraint PPGC_TO_PPGCH foreign key (PLCY_PRD_GOVN_CLS_ID)
      references POLICY_PERIOD_GOVERNING_CLASS (PLCY_PRD_GOVN_CLS_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_GOVN_CLASS_HIST 
   add constraint PLCYP_TO_PPGCH foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_GOVN_CLASS_HIST 
   add constraint JT_TO_PPGCH foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;


alter table POLICY_PERIOD_GOVN_CLASS_HIST 
   add constraint USER_TO_PPGCH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_GOVN_CLASS_HIST 
   add constraint USER_TO_PPGCH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
  

--CR73509


ALTER TABLE PAYMENT_RECORD_200
		ADD CONSTRAINT PR100_TO_PR200
		FOREIGN KEY(PR_200_CTL_NO)
		REFERENCES PAYMENT_RECORD_100 (PR_100_CTL_NO) ON DELETE RESTRICT  ON UPDATE RESTRICT;

ALTER TABLE PAYMENT_RECORD_210
		ADD CONSTRAINT PR200_TO_PR210
		FOREIGN KEY(PR_210_PAY_CTL_NO,PR_210_CTL_NO)
		REFERENCES PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) ON DELETE RESTRICT  ON UPDATE RESTRICT;
		
ALTER TABLE PAYMENT_RECORD_220
			ADD CONSTRAINT PR200_TO_PR220
			FOREIGN KEY(PR_220_PAY_CTL_NO,PR_220_CTL_NO)
			REFERENCES PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) ON DELETE RESTRICT  ON UPDATE RESTRICT;
			
ALTER TABLE PAYMENT_RECORD_300
			ADD CONSTRAINT PR200_TO_PR300
			FOREIGN KEY(PR_300_PAY_CTL_NO,PR_300_CTL_NO)
			REFERENCES PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) ON DELETE RESTRICT  ON UPDATE RESTRICT;
			
ALTER TABLE PAYMENT_RECORD_310
			ADD CONSTRAINT PR200_TO_PR310
			FOREIGN KEY(PR_310_PAY_CTL_NO,PR_310_CTL_NO)
			REFERENCES PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) ON DELETE RESTRICT  ON UPDATE RESTRICT;

ALTER TABLE PAYMENT_RECORD_311
			ADD CONSTRAINT PR200_TO_PR311
			FOREIGN KEY(PR_311_PAY_CTL_NO,PR_311_CTL_NO)
			REFERENCES PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) ON DELETE RESTRICT  ON UPDATE RESTRICT;
			
ALTER TABLE PAYMENT_RECORD_320
			ADD CONSTRAINT PR200_TO_PR320
			FOREIGN KEY(PR_320_PAY_CTL_NO,PR_320_CTL_NO)
			REFERENCES PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) ON DELETE RESTRICT  ON UPDATE RESTRICT;
			

ALTER TABLE PAYMENT_RECORD_321
			ADD CONSTRAINT PR200_TO_PR321
			FOREIGN KEY(PR_321_PAY_CTL_NO,PR_321_CTL_NO)
			REFERENCES PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) ON DELETE RESTRICT  ON UPDATE RESTRICT;

ALTER TABLE PAYMENT_RECORD_322
			ADD CONSTRAINT PR200_TO_PR322
			FOREIGN KEY(PR_322_PAY_CTL_NO,PR_322_CTL_NO)
			REFERENCES PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) ON DELETE RESTRICT  ON UPDATE RESTRICT;

ALTER TABLE PAYMENT_RECORD_323
			ADD CONSTRAINT PR200_TO_PR323
			FOREIGN KEY(PR_323_PAY_CTL_NO,PR_323_CTL_NO)
			REFERENCES PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) ON DELETE RESTRICT  ON UPDATE RESTRICT;
			
ALTER TABLE PAYMENT_RECORD_325
			ADD CONSTRAINT PR200_TO_PR325
			FOREIGN KEY(PR_325_PAY_CTL_NO,PR_325_CTL_NO)
			REFERENCES PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) ON DELETE RESTRICT  ON UPDATE RESTRICT;


ALTER TABLE PAYMENT_RECORD_326
			ADD CONSTRAINT PR200_TO_PR326
			FOREIGN KEY(PR_326_PAY_CTL_NO,PR_326_CTL_NO)
			REFERENCES PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) ON DELETE RESTRICT  ON UPDATE RESTRICT;

ALTER TABLE PAYMENT_RECORD_327
			ADD CONSTRAINT PR200_TO_PR327
			FOREIGN KEY(PR_327_PAY_CTL_NO,PR_327_CTL_NO)
			REFERENCES PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) ON DELETE RESTRICT  ON UPDATE RESTRICT;

ALTER TABLE PAYMENT_RECORD_328
			ADD CONSTRAINT PR200_TO_PR328
			FOREIGN KEY(PR_328_PAY_CTL_NO,PR_328_CTL_NO)
			REFERENCES PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) ON DELETE RESTRICT  ON UPDATE RESTRICT;

ALTER TABLE PAYMENT_RECORD_329A
			ADD CONSTRAINT PR200_TO_PR329A
			FOREIGN KEY(PR_329A_PAY_CTL_NO,PR_329A_CTL_NO)
			REFERENCES PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) ON DELETE RESTRICT  ON UPDATE RESTRICT;
			
ALTER TABLE PAYMENT_RECORD_329B
			ADD CONSTRAINT PR200_TO_PR329B
			FOREIGN KEY(PR_329B_PAY_CTL_NO,PR_329B_CTL_NO)
			REFERENCES PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) ON DELETE RESTRICT  ON UPDATE RESTRICT;
						

ALTER TABLE PAYMENT_RECORD_330
			ADD CONSTRAINT PR200_TO_PR330
			FOREIGN KEY(PR_330_PAY_CTL_NO,PR_330_CTL_NO)
			REFERENCES PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) ON DELETE RESTRICT  ON UPDATE RESTRICT;

ALTER TABLE PAYMENT_RECORD_332
			ADD CONSTRAINT PR200_TO_PR332
			FOREIGN KEY(PR_332_PAY_CTL_NO,PR_332_CTL_NO)
			REFERENCES PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) ON DELETE RESTRICT  ON UPDATE RESTRICT;

ALTER TABLE PAYMENT_RECORD_335
			ADD CONSTRAINT PR200_TO_PR335
			FOREIGN KEY(PR_335_PAY_CTL_NO,PR_335_CTL_NO)
			REFERENCES PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) ON DELETE RESTRICT  ON UPDATE RESTRICT;

ALTER TABLE PAYMENT_RECORD_337
			ADD CONSTRAINT PR200_TO_PR337
			FOREIGN KEY(PR_337_PAY_CTL_NO,PR_337_CTL_NO)
			REFERENCES PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) ON DELETE RESTRICT  ON UPDATE RESTRICT;

ALTER TABLE PAYMENT_RECORD_340
			ADD CONSTRAINT PR200_TO_PR340
			FOREIGN KEY(PR_340_PAY_CTL_NO,PR_340_CTL_NO)
			REFERENCES PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) ON DELETE RESTRICT  ON UPDATE RESTRICT;

ALTER TABLE PAYMENT_RECORD_341
			ADD CONSTRAINT PR200_TO_PR341
			FOREIGN KEY(PR_341_PAY_CTL_NO,PR_341_CTL_NO)
			REFERENCES PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) ON DELETE RESTRICT  ON UPDATE RESTRICT;
			
ALTER TABLE PAYMENT_RECORD_350
			ADD CONSTRAINT PR200_TO_PR350
			FOREIGN KEY(PR_350_PAY_CTL_NO,PR_350_CTL_NO)
			REFERENCES PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) ON DELETE RESTRICT  ON UPDATE RESTRICT;
			
ALTER TABLE PAYMENT_RECORD_360
			ADD CONSTRAINT PR200_TO_PR360
			FOREIGN KEY(PR_360_PAY_CTL_NO,PR_360_CTL_NO)
			REFERENCES PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) ON DELETE RESTRICT  ON UPDATE RESTRICT;

ALTER TABLE PAYMENT_RECORD_370
			ADD CONSTRAINT PR200_TO_PR370
			FOREIGN KEY(PR_370_PAY_CTL_NO,PR_370_CTL_NO)
			REFERENCES PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) ON DELETE RESTRICT  ON UPDATE RESTRICT;
			
--ECR 202(CR73536)
ALTER TABLE BENEFIT_CATEGORY_BENEFIT_XREF
    ADD CONSTRAINT BNFTT_TO_BCBX FOREIGN KEY (BNFT_TYP_CD)
       REFERENCES BENEFIT_TYPE (BNFT_TYP_CD)
       ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE BENEFIT_CATEGORY_BENEFIT_XREF
    ADD CONSTRAINT BNFTCTGT_TO_BCBX FOREIGN KEY (BNFT_CTG_TYP_CD)
       REFERENCES BENEFIT_CATEGORY_TYPE (BNFT_CTG_TYP_CD)
       ON DELETE RESTRICT ON UPDATE RESTRICT;
       
--ECR 211 (COI) START
ALTER TABLE CLAIM_DISABILITY_MANAGEMENT
 	ADD CONSTRAINT CDMDT_TO_CDM foreign key (CLM_DISAB_MANG_DISAB_TYP_CD)
      references CLAIM_DISAB_MANG_DISAB_TYP (CLM_DISAB_MANG_DISAB_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE CLAIM_DISABILITY_MANAGEMENT
 	ADD CONSTRAINT CDMMST_TO_CDM foreign key (CLM_DISAB_MANG_MED_STS_TYP_CD)
      references CLAIM_DISAB_MANG_MED_STS_TYP (CLM_DISAB_MANG_MED_STS_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE CLAIM_DISABILITY_MANAGEMENT
 	ADD CONSTRAINT CDMRT_TO_CDM foreign key (CLM_DISAB_MANG_RSN_TYP_CD)
      references CLAIM_DISABILITY_MANG_RSN_TYP (CLM_DISAB_MANG_RSN_TYP_CD)
      on delete restrict on update restrict;
      
ALTER TABLE CLAIM_DISABILITY_MANAGEMENT
 	ADD CONSTRAINT CDMWST_TO_CDM foreign key (CLM_DISAB_MANG_WK_STS_TYP_CD)
      references CLAIM_DISAB_MANG_WK_STS_TYP (CLM_DISAB_MANG_WK_STS_TYP_CD)
      on delete restrict on update restrict;
      
ALTER TABLE CLAIM_DISABILITY_MANG_HIST
   add constraint CDM_TO_CDMH foreign key (CLM_DISAB_MANG_ID)
      references CLAIM_DISABILITY_MANAGEMENT (CLM_DISAB_MANG_ID)
      on delete restrict on update restrict;

ALTER TABLE CLAIM_DISABILITY_MANG_HIST
 	ADD CONSTRAINT CDMDT_TO_CDMH foreign key (CLM_DISAB_MANG_DISAB_TYP_CD)
      references CLAIM_DISAB_MANG_DISAB_TYP (CLM_DISAB_MANG_DISAB_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE CLAIM_DISABILITY_MANG_HIST
 	ADD CONSTRAINT CDMMST_TO_CDMH foreign key (CLM_DISAB_MANG_MED_STS_TYP_CD)
      references CLAIM_DISAB_MANG_MED_STS_TYP (CLM_DISAB_MANG_MED_STS_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE CLAIM_DISABILITY_MANG_HIST
 	ADD CONSTRAINT CDMRT_TO_CDMH foreign key (CLM_DISAB_MANG_RSN_TYP_CD)
      references CLAIM_DISABILITY_MANG_RSN_TYP (CLM_DISAB_MANG_RSN_TYP_CD)
      on delete restrict on update restrict;
      
ALTER TABLE CLAIM_DISABILITY_MANG_HIST
 	ADD CONSTRAINT CDMWST_TO_CDMH foreign key (CLM_DISAB_MANG_WK_STS_TYP_CD)
      references CLAIM_DISAB_MANG_WK_STS_TYP (CLM_DISAB_MANG_WK_STS_TYP_CD)
      on delete restrict on update restrict;

--ECR 211 (COI) END
      
alter table COST_TO_CHARGE_RATIO_TYPE
   add constraint CTCT_TO_CTCRT foreign key (CST_TO_CHR_TYP_ID)
      references COST_TO_CHARGE_TYPE (CST_TO_CHR_TYP_ID)
      on delete restrict on update restrict;  
           
      -- START COMP OPTIONS ECR-212 ; CLM-19
      
      ALTER TABLE BILL_CYCLE ADD CONSTRAINT BCPT_TO_BC FOREIGN KEY (BILL_CYC_PPY_TYP_CD) REFERENCES BILL_CYCLE_PREPAYMENT_TYPE (BILL_CYC_PPY_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
      ALTER TABLE BILL_CYCLE ADD CONSTRAINT BST_TO_BC FOREIGN KEY (BILL_SCH_TYP_CD) REFERENCES BILL_SCHEDULE_TYPE (BILL_SCH_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
      ALTER TABLE BILL_CYCLE ADD CONSTRAINT BSPT_TO_BC FOREIGN KEY (BILL_SPL_PROC_TYP_CD) REFERENCES BILL_SPECIAL_PROCEDURE_TYPE (BILL_SPL_PROC_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
      ALTER TABLE BILL_CYCLE ADD CONSTRAINT BDNRRT_TO_BC FOREIGN KEY (BILL_DO_NOT_RPT_RSN_TYP_CD) REFERENCES BILL_DO_NOT_REPORT_RSN_TYPE (BILL_DO_NOT_RPT_RSN_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
      
      ALTER TABLE BILL_CYCLE_HISTORY ADD CONSTRAINT BCPT_TO_BCH FOREIGN KEY (BILL_CYC_PPY_TYP_CD) REFERENCES BILL_CYCLE_PREPAYMENT_TYPE (BILL_CYC_PPY_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
      ALTER TABLE BILL_CYCLE_HISTORY ADD CONSTRAINT BST_TO_BCH FOREIGN KEY (BILL_SCH_TYP_CD) REFERENCES BILL_SCHEDULE_TYPE (BILL_SCH_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
      ALTER TABLE BILL_CYCLE_HISTORY ADD CONSTRAINT BSPT_TO_BCH FOREIGN KEY (BILL_SPL_PROC_TYP_CD) REFERENCES BILL_SPECIAL_PROCEDURE_TYPE (BILL_SPL_PROC_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
      ALTER TABLE BILL_CYCLE_HISTORY ADD CONSTRAINT BDNRRT_TO_BCH FOREIGN KEY (BILL_DO_NOT_RPT_RSN_TYP_CD) REFERENCES BILL_DO_NOT_REPORT_RSN_TYPE (BILL_DO_NOT_RPT_RSN_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
      
      ALTER TABLE BILL_LINE_ITEM ADD CONSTRAINT BDAWT_TO_BLI1 FOREIGN KEY (BILL_DISD_AS_WRTN_TYP_CD) REFERENCES BILL_DISPENSED_AS_WRITTEN_TYPE (BILL_DISD_AS_WRTN_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
      ALTER TABLE BILL_LINE_ITEM ADD CONSTRAINT BNRT_TO_BLI1 FOREIGN KEY (BILL_NEW_REFL_TYP_CD) REFERENCES BILL_NEW_REFILL_TYPE (BILL_NEW_REFL_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
      ALTER TABLE BILL_LINE_ITEM ADD CONSTRAINT BDOT_TO_BLI1 FOREIGN KEY (BILL_DME_OWNSHP_TYP_CD) REFERENCES BILL_DME_OWNERSHIP_TYPE (BILL_DME_OWNSHP_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
      
      ALTER TABLE BILL_LINE_ITEM_HISTORY ADD CONSTRAINT BDAWT_TO_BLIH FOREIGN KEY (BILL_DISD_AS_WRTN_TYP_CD) REFERENCES BILL_DISPENSED_AS_WRITTEN_TYPE (BILL_DISD_AS_WRTN_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
      ALTER TABLE BILL_LINE_ITEM_HISTORY ADD CONSTRAINT BNRT_TO_BLIH FOREIGN KEY (BILL_NEW_REFL_TYP_CD) REFERENCES BILL_NEW_REFILL_TYPE (BILL_NEW_REFL_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
      ALTER TABLE BILL_LINE_ITEM_HISTORY ADD CONSTRAINT BDOT_TO_BLIH FOREIGN KEY (BILL_DME_OWNSHP_TYP_CD) REFERENCES BILL_DME_OWNERSHIP_TYPE (BILL_DME_OWNSHP_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
      
      ALTER TABLE BILL_DIAGNOSIS ADD CONSTRAINT BDT_TO_BILLD FOREIGN KEY (BILL_DIAG_TYP_CD) REFERENCES BILL_DIAGNOSIS_TYPE (BILL_DIAG_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
      ALTER TABLE BILL_DIAGNOSIS_HISTORY ADD CONSTRAINT BDT_TO_BILLDH FOREIGN KEY (BILL_DIAG_TYP_CD) REFERENCES BILL_DIAGNOSIS_TYPE (BILL_DIAG_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
      
      
      -- END COMP OPTIONS ECR-212 ; CLM-19


-- start comp option CLM-30

ALTER TABLE JURISDICTION_BENEFIT_RPT_TYP
   	Add constraint BRT_TO_JBRT foreign key (BNFT_RPT_TYP_ID)  
      	References BENEFIT_REPORTING_TYPE (BNFT_RPT_TYP_ID)
      	On delete restrict on update restrict;

ALTER TABLE JURISDICTION_BENEFIT_RPT_TYP
   	Add constraint BNFTT_TO_JBRT foreign key (BNFT_TYP_CD)
      	References BENEFIT_TYPE (BNFT_TYP_CD)
      	On delete restrict on update restrict;

ALTER TABLE JURISDICTION_BENEFIT_RPT_TYP
   	Add constraint CCTYP_TO_JBRT foreign key (CST_CNTR_TYP_CD)
     	References COST_CENTER_TYPE (CST_CNTR_TYP_CD)
      	On delete restrict on update restrict;

ALTER TABLE JURISDICTION_BENEFIT_RPT_TYP
   	Add constraint IT_TO_JBRT foreign key (INTFC_TYP_CD)  
     	 References INTERFACE_TYPE (INTFC_TYP_CD)
      	On delete restrict on update restrict;

ALTER TABLE INDEMNITY_PAYMENT
   	add constraint BRT_TO_IP foreign key (BNFT_RPT_TYP_ID)  
     	 references BENEFIT_REPORTING_TYPE (BNFT_RPT_TYP_ID)
      	on delete restrict on update restrict;

ALTER TABLE INDEMNITY_PAYMENT_HISTORY
   	add constraint BRT_TO_IPH foreign key (BNFT_RPT_TYP_ID)  
     	 references BENEFIT_REPORTING_TYPE (BNFT_RPT_TYP_ID)
      	on delete restrict on update restrict;

ALTER TABLE CLAIM_STATUS_ADDITIONAL_RSN  
 add constraint CCS_TO_CSAR foreign key (CLM_CLM_STS_ID) 
      references CLAIM_CLAIM_STATUS (CLM_CLM_STS_ID)  
      on delete restrict on update restrict;

ALTER TABLE CLAIM_STATUS_ADDITIONAL_RSN
   add constraint CTRT_TO_CSAR foreign key (CLM_TRANS_RSN_TYP_CD)  
      references CLAIM_TRANSITION_REASON_TYPE (CLM_TRANS_RSN_TYP_CD)
      on delete restrict on update restrict;            

ALTER TABLE CLAIM_STATUS_ADDTNL_RSN_HIST
 add constraint CSAR_TO_CSARH foreign key (CLM_STS_ADDTNL_RSN_ID)  
      references CLAIM_STATUS_ADDITIONAL_RSN (CLM_STS_ADDTNL_RSN_ID)
      on delete restrict on update restrict;

ALTER TABLE CLAIM_STATUS_ADDTNL_RSN_HIST
 add constraint CCSH_TO_CSARH foreign key (CLM_CLM_STS_ID)  
      references CLAIM_CLAIM_STATUS (CLM_CLM_STS_ID)
      on delete restrict on update restrict;

ALTER TABLE CLAIM_STATUS_ADDTNL_RSN_HIST
   add constraint CTRT_TO_CSARH foreign key (CLM_TRANS_RSN_TYP_CD)  
      references CLAIM_TRANSITION_REASON_TYPE (CLM_TRANS_RSN_TYP_CD)
      on delete restrict on update restrict; 


-- end comp options CLM-30

-- CR 73544 START

alter table edi_file_process
   add constraint eft_to_efp foreign key (edi_file_typ_cd)
      references edi_file_type (edi_file_typ_cd)
      on delete restrict on update restrict;
alter table edi_record_process
   add constraint efp_to_erp foreign key (edi_file_prcs_id)
      references edi_file_process (edi_file_prcs_id)
      on delete restrict on update restrict;
alter table INTERFACE_REQUEST
   add constraint isct_to_ir foreign key (INTFC_SUB_CNTX_TYP_CD)
      references INTERFACE_SUB_CONTEXT_TYPE (INTFC_SUB_CNTX_TYP_CD)
      on delete restrict on update restrict;
alter table INTERFACE_REQUEST_HISTORY
   add constraint isct_to_irh foreign key (INTFC_SUB_CNTX_TYP_CD)
      references INTERFACE_SUB_CONTEXT_TYPE (INTFC_SUB_CNTX_TYP_CD)
      on delete restrict on update restrict;
alter table INTERFACE_REQUEST_TYPE_XREF
   add constraint it_to_irtx foreign key (INTFC_TYP_CD)
      references INTERFACE_TYPE (INTFC_TYP_CD)
      on delete restrict on update restrict;
alter table INTERFACE_REQUEST_TYPE_XREF
   add constraint irt_to_irtx foreign key (INTFC_REQS_TYP_CD)
      references INTERFACE_REQUEST_TYPE (INTFC_REQS_TYP_CD)
      on delete restrict on update restrict;
alter table INTERFACE_SUB_CONTEXT_TYPE
   add constraint it_to_isct foreign key (INTFC_TYP_CD)
      references INTERFACE_TYPE (INTFC_TYP_CD)
      on delete restrict on update restrict;
      
-- CR 73544 END

alter table fee_schedule_modifier_factor
   add constraint mod_to_fsmf foreign key (mod_id)
      references modifier (mod_id)
      on delete restrict on update restrict;
alter table fee_schedule_modifier_factor
   add constraint fsmft_to_fsmf foreign key (fee_sch_mod_fctr_typ_cd)
      references fee_schedule_modifier_fctr_typ (fee_sch_mod_fctr_typ_cd)
      on delete restrict on update restrict;

alter table fee_schedule_locality_region
   add constraint fsl_to_fslr foreign key (fee_sch_lclty_id)
      references fee_schedule_locality (fee_sch_lclty_id)
      on delete restrict on update restrict;
alter table fee_schedule_locality_region
   add constraint jt_to_fslr foreign key (jur_typ_cd)
      references jurisdiction_type (jur_typ_cd)
      on delete restrict on update restrict;   

alter table fee_schedule_code_group
   add constraint fs_to_fscg foreign key (fee_sch_id)
      references fee_schedule (fee_sch_id)
      on delete restrict on update restrict;
alter table fee_schedule_code_group
   add constraint jt_to_fscg foreign key (jur_typ_cd)
      references jurisdiction_type (jur_typ_cd)
      on delete restrict on update restrict;
alter table fee_schedule_code_group
   add constraint blict_to_fscg foreign key (bill_ln_item_cd_typ_cd)
      references bill_line_item_code_type (bill_ln_item_cd_typ_cd)
      on delete restrict on update restrict;

alter table role_provider_contract
   add constraint rp_to_rpc foreign key (role_prov_id)
      references role_provider (role_prov_id)
      on delete restrict on update restrict;
alter table role_provider_contract
   add constraint fs_to_rpc foreign key (fee_sch_id)
      references fee_schedule (fee_sch_id)
      on delete restrict on update restrict;

  alter table role_provider_contract
   add constraint FCT_TO_RPC foreign key (FEE_CLS_TYP_ID)
      references FEE_CLASSIFICATION_TYPE (FEE_CLS_TYP_ID)
      on delete restrict on update restrict;

alter table fee_schedule_allowance
   add constraint fs_to_fsa foreign key (fee_sch_id)
      references fee_schedule (fee_sch_id)
      on delete restrict on update restrict;
alter table fee_schedule_allowance
   add constraint blict_to_fsa foreign key (bill_ln_item_cd_typ_cd)
      references bill_line_item_code_type (bill_ln_item_cd_typ_cd)
      on delete restrict on update restrict;
alter table fee_schedule_allowance
   add constraint fst_to_fsa foreign key (fee_sch_typ_cd)
      references fee_schedule_type (fee_sch_typ_cd)
      on delete restrict on update restrict;
alter table fee_schedule_allowance
   add constraint fct_to_fsa foreign key (fee_cls_typ_id)
      references fee_classification_type (fee_cls_typ_id)
      on delete restrict on update restrict;
alter table fee_schedule_allowance
   add constraint mod_to_fsa foreign key (mod_id)
      references modifier (mod_id)
      on delete restrict on update restrict;


alter table fee_schedule_alw_lclty_xref
   add constraint fsa_to_fsalx foreign key (fee_sch_alw_id)
      references fee_schedule_allowance (fee_sch_alw_id)
      on delete restrict on update restrict;
      
alter table fee_schedule_alw_lclty_xref
   add constraint fsl_to_fsalx foreign key (fee_sch_lclty_id)
      references fee_schedule_locality (fee_sch_lclty_id)
      on delete restrict on update restrict;

--COI CR78911
ALTER TABLE EOB_DWC_REPORTING_XREF
   Add constraint EOB_TO_EDRX foreign key (EOB_ID)  
      	References EOB (EOB_ID)
      	On delete restrict on update restrict;

ALTER TABLE EOB_DWC_REPORTING_XREF
   Add constraint DWCRT_TO_EDRX foreign key (DWC_RPT_TYP_CD)  
      	References DWC_REPORTING_TYPE (DWC_RPT_TYP_CD)
      	On delete restrict on update restrict;

--CLM-19
ALTER TABLE BILL_LINE_ITEM_MODIFIER_PRI 
   ADD CONSTRAINT BLIMPT_TO_BLIMP FOREIGN KEY (BILL_LN_ITEM_MOD_PRI_TYP_CD) 
	REFERENCES BILL_LINE_ITEM_MOD_PRI_TYP (BILL_LN_ITEM_MOD_PRI_TYP_CD) 
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE BILL_LINE_ITEM_MOD_PRI_HIST 
   ADD CONSTRAINT BLIMPT_TO_BLIMPH FOREIGN KEY (BILL_LN_ITEM_MOD_PRI_TYP_CD) 
       REFERENCES BILL_LINE_ITEM_MOD_PRI_TYP (BILL_LN_ITEM_MOD_PRI_TYP_CD) 
       ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table PLCY_PRD_LOSS_RATIO_ADDTNL_DTL
   add constraint PPLR_TO_PPLRAD foreign key (PLCY_PRD_LOSS_RATIO_ID)
      references POLICY_PERIOD_LOSS_RATIO (PLCY_PRD_LOSS_RATIO_ID)
      on delete restrict on update restrict;

alter table PLCY_PRD_LOSS_RATIO_ADDTNL_DTL
   add constraint OT_TO_PPLRAD foreign key (OWNSHP_TYP_CD)
      references OWNERSHIP_TYPE (OWNSHP_TYP_CD)
      on delete restrict on update restrict;

alter table PLCY_PRD_LOSS_RATIO_ADDTNL_DTL
   add constraint PST_TO_PPLRAD foreign key (PLCY_STS_TYP_CD)
      references POLICY_STATUS_TYPE (PLCY_STS_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PRD_LOSS_RATIO_EMOD_DTL
   add constraint PPLR_TO_PPLRED foreign key (PLCY_PRD_LOSS_RATIO_ID)
      references POLICY_PERIOD_LOSS_RATIO (PLCY_PRD_LOSS_RATIO_ID)
      on delete restrict on update restrict;

alter table POLICY_PRD_LOSS_RATIO_EMOD_DTL
   add constraint JT_TO_PPLRED foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;
alter table fee_sch_oos_prov_lclty_xref
   add constraint jt_to_fsoplx foreign key (jur_typ_cd)
      references jurisdiction_type (jur_typ_cd)
      on delete restrict on update restrict;
alter table fee_sch_oos_prov_lclty_xref
   add constraint fsl_to_fsoplx foreign key (fee_sch_lclty_id)
      references fee_schedule_locality (fee_sch_lclty_id)
      on delete restrict on update restrict;

ALTER TABLE INSURANCE_CMPY_TYP_1099_DTL
    ADD CONSTRAINT STT_TO_ICT1DCMPY  
	FOREIGN KEY(STT_ID_CMPY)
	REFERENCES STATE(STT_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INSURANCE_CMPY_TYP_1099_DTL
    ADD CONSTRAINT STT_TO_ICT1DSHIP   
	FOREIGN KEY(STT_ID_PYR_SHIP)
	REFERENCES STATE(STT_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INSURANCE_CMPY_TYP_1099_DTL
    ADD CONSTRAINT INSCT_TO_ICT1D  
	FOREIGN KEY(INS_CMPY_TYP_ID)
	REFERENCES INSURANCE_COMPANY_TYPE(INS_CMPY_TYP_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INSURANCE_CMPY_TYP_1099_DTL
    ADD CONSTRAINT USER_TO_ICT1DAUIC 
	FOREIGN KEY(AUDIT_USER_ID_CREA)
	REFERENCES USERS(USER_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INSURANCE_CMPY_TYP_1099_DTL
    ADD CONSTRAINT USER_TO_ICT1DAUIU 
	FOREIGN KEY(AUDIT_USER_ID_UPDT)
	REFERENCES USERS(USER_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;
	      
ALTER TABLE  PTCP_FNCL_TRAN_CST_CNTR_1099
    ADD CONSTRAINT PTCPT_TO_PFTCC1
	FOREIGN KEY(PTCP_TYP_CD)
	REFERENCES PARTICIPATION_TYPE(PTCP_TYP_CD)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE  PTCP_FNCL_TRAN_CST_CNTR_1099
    ADD CONSTRAINT FTT_TO_PFTCC1
	FOREIGN KEY(FNCL_TRAN_TYP_ID)
	REFERENCES FINANCIAL_TRANSACTION_TYPE (FNCL_TRAN_TYP_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE  PTCP_FNCL_TRAN_CST_CNTR_1099
    ADD CONSTRAINT CCTYP_TO_PFTCC1
	FOREIGN KEY(CST_CNTR_TYP_CD)
	REFERENCES COST_CENTER_TYPE(CST_CNTR_TYP_CD)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;	


-- ECR-204 START

alter table COST_CENTER_CATEGORY_TYPE
    add constraint CRWT_TO_CCCTYP foreign key (CLM_RSRV_WKSHT_TYP_CD)
       references CLAIM_RESERVE_WORKSHEET_TYPE (CLM_RSRV_WKSHT_TYP_CD)
       on delete restrict on update restrict;

alter table COST_CENTER_CATEGORY_TYPE
    add constraint CRAT_TO_CCCTYP foreign key (CLM_RSRV_ACTN_TYP_CD)
       references CLAIM_RESERVE_ACTION_TYPE (CLM_RSRV_ACTN_TYP_CD)
       on delete restrict on update restrict;

ALTER TABLE CLAIM_RESERVE_WORKSHEET
    ADD CONSTRAINT CRCD_TO_CRW
	FOREIGN KEY(CLM_RSRV_CTG_DTL_ID)
	REFERENCES CLAIM_RESERVE_CATEGORY_DETAIL(CLM_RSRV_CTG_DTL_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_RESERVE_WORKSHEET
    ADD CONSTRAINT USER_TO_CRW1
	FOREIGN KEY(AUDIT_USER_ID_CREA)
	REFERENCES USERS(USER_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_RESERVE_WORKSHEET
    ADD CONSTRAINT USER_TO_CRW2
	FOREIGN KEY(AUDIT_USER_ID_UPDT)
	REFERENCES USERS(USER_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_RESERVE_WORKSHEET_DETAIL
    ADD CONSTRAINT CRW_TO_CRWD
	FOREIGN KEY(CLM_RSRV_WKSHT_ID)
	REFERENCES CLAIM_RESERVE_WORKSHEET(CLM_RSRV_WKSHT_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_RESERVE_WORKSHEET_DETAIL
    ADD CONSTRAINT CALCR_TO_CRWD
	FOREIGN KEY(CALC_RSLT_ID)
	REFERENCES CALCULATION_RESULT(CALC_RSLT_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_RESERVE_WORKSHEET_DETAIL
    ADD CONSTRAINT USER_TO_CRWD1
	FOREIGN KEY(AUDIT_USER_ID_CREA)
	REFERENCES USERS(USER_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_RESERVE_WORKSHEET_DETAIL
    ADD CONSTRAINT USER_TO_CRWD2
	FOREIGN KEY(AUDIT_USER_ID_UPDT)
	REFERENCES USERS(USER_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_RESERVE_WKSHT_DTL_HIST
    ADD CONSTRAINT CRWD_TO_CRWDH
	FOREIGN KEY(CLM_RSRV_WKSHT_DTL_ID)
	REFERENCES CLAIM_RESERVE_WORKSHEET_DETAIL(CLM_RSRV_WKSHT_DTL_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_RESERVE_WKSHT_DTL_HIST
    ADD CONSTRAINT USER_TO_CRWDH1
	FOREIGN KEY(AUDIT_USER_ID_CREA)
	REFERENCES USERS(USER_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_RESERVE_WKSHT_DTL_HIST
    ADD CONSTRAINT USER_TO_CRWDH2
	FOREIGN KEY(AUDIT_USER_ID_UPDT)
	REFERENCES USERS(USER_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_RESERVE_WKSHT_DTL_HIST
    ADD CONSTRAINT CALCR_TO_CRWDH
	FOREIGN KEY(CALC_RSLT_ID)
	REFERENCES CALCULATION_RESULT(CALC_RSLT_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;      	    	      

ALTER TABLE CUSTOMER_SEARCH_AREA_TYPE
    ADD CONSTRAINT CUSTST_TO_CSAT
	FOREIGN KEY(CUST_SRCH_TYP_CD)
	REFERENCES CUSTOMER_SEARCH_TYPE(CUST_SRCH_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
	

alter table coverage_exposure_limit
       add constraint ct_to_cel foreign key (cov_typ_cd)
      references covered_type (cov_typ_cd)
      on delete restrict on update restrict;

alter table coverage_exposure_limit
       add constraint jt_to_cel foreign key (jur_typ_cd)
      references jurisdiction_type (jur_typ_cd)
      on delete restrict on update restrict;

ALTER TABLE BILL_LINE_ITEM_FLAG
    ADD CONSTRAINT BLI_TO_BLIF FOREIGN KEY(BILL_LN_ITEM_ID)
	REFERENCES BILL_LINE_ITEM(BILL_LN_ITEM_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE BILL_LINE_ITEM_FLAG
    ADD CONSTRAINT BILL_TO_BLIF FOREIGN KEY(BILL_ID) 
	REFERENCES BILL(BILL_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE BILL_LINE_ITEM_FLAG
    ADD CONSTRAINT BLIFT_TO_BLIF FOREIGN KEY(BILL_LN_ITEM_FLG_TYP_CD)
	REFERENCES BILL_LINE_ITEM_FLAG_TYPE(BILL_LN_ITEM_FLG_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;  
	
ALTER TABLE BILL_LINE_ITEM_LINK 
	ADD CONSTRAINT BLI_TO_BLIL1 
	FOREIGN KEY (BILL_LN_ITEM_ID) 
	REFERENCES BILL_LINE_ITEM (BILL_LN_ITEM_ID) 
	ON DELETE RESTRICT ON UPDATE RESTRICT;
	
ALTER TABLE BILL_LINE_ITEM_LINK 
	ADD CONSTRAINT BLI_TO_BLIL2 
	FOREIGN KEY (BILL_LN_ITEM_ID_LNK) 
	REFERENCES BILL_LINE_ITEM (BILL_LN_ITEM_ID) 
	ON DELETE RESTRICT ON UPDATE RESTRICT;
	
ALTER TABLE BILL_LINE_ITEM_LINK ADD CONSTRAINT USER_TO_BLIL1 FOREIGN KEY (AUDIT_USER_ID_CREA) REFERENCES 
	USERS (user_id)  ON DELETE RESTRICT ON UPDATE RESTRICT;
	
ALTER TABLE BILL_LINE_ITEM_LINK ADD CONSTRAINT USER_TO_BLIL2 FOREIGN KEY (AUDIT_USER_ID_UPDT) REFERENCES 
	USERS (user_id)  ON DELETE RESTRICT ON UPDATE RESTRICT;	
	
ALTER TABLE BILL_LINE_ITEM_LINK_HISTORY 
	ADD CONSTRAINT BLI_TO_BLILH1 
	FOREIGN KEY (BILL_LN_ITEM_ID) 
	REFERENCES BILL_LINE_ITEM (BILL_LN_ITEM_ID) 
	ON DELETE RESTRICT ON UPDATE RESTRICT;
	
ALTER TABLE BILL_LINE_ITEM_LINK_HISTORY 
	ADD CONSTRAINT BLI_TO_BLILH2 
	FOREIGN KEY (BILL_LN_ITEM_ID_LNK) 
	REFERENCES BILL_LINE_ITEM (BILL_LN_ITEM_ID) 
	ON DELETE RESTRICT ON UPDATE RESTRICT;
	
ALTER TABLE BILL_LINE_ITEM_LINK_HISTORY 
	ADD CONSTRAINT BLIL_TO_BLILH 
	FOREIGN KEY (BILL_LN_ITEM_LNK_ID) 
	REFERENCES BILL_LINE_ITEM_LINK (BILL_LN_ITEM_LNK_ID) 
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE BILL_LINE_ITEM_LINK_HISTORY ADD CONSTRAINT USER_TO_BLILH1 FOREIGN KEY (AUDIT_USER_ID_CREA) REFERENCES 
	USERS (user_id)  ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL_LINE_ITEM_LINK_HISTORY ADD CONSTRAINT USER_TO_BLILH2 FOREIGN KEY (AUDIT_USER_ID_UPDT) REFERENCES 
	USERS (user_id)  ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table MULTIPLE_CLAIM_OCCURRENCE
   add constraint LOB_TO_MULTICO foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table MULTIPLE_CLAIM_OCCURRENCE
   add constraint CUST_TO_MULTICO foreign key (CUST_ID_INSRD)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;
      
alter table MULTIPLE_CLAIM_OCCURRENCE
   add constraint PSD_TO_MULTICO foreign key (PLCY_SUM_DTL_ID)
      references POLICY_SUMMARY_DETAIL (PLCY_SUM_DTL_ID)
      on delete restrict on update restrict;

      
alter table MULTIPLE_CLAIM_OCCURRENCE
   add constraint CTRPH_TO_MULTICO foreign key (CTRPH_CD)
      references CATASTROPHE (CTRPH_CD)
      on delete restrict on update restrict;

alter table MCO_CLAIM_XREF
   add constraint MCO_TO_MCX  foreign key (MCO_ID)
      references MULTIPLE_CLAIM_OCCURRENCE (MCO_ID)
      on delete restrict on update restrict;

alter table MCO_CLAIM_XREF
   add constraint CLM_TO_MCX foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;

 alter table CLAIM_DEFAULT_INJURY_TYPE_CODE
   add constraint CLMTYP_TO_CDITC foreign key (CLM_TYP_CD)
      references CLAIM_TYPE (CLM_TYP_CD)
      on delete restrict on update restrict;
 
 alter table CLAIM_DEFAULT_INJURY_TYPE_CODE
   add constraint JT_TO_CDITC foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

  alter table CLAIM_DEFAULT_INJURY_TYPE_CODE
   add constraint INJRT_TO_CDITC foreign key (INJR_TYP_CD)
      references INJURY_TYPE (INJR_TYP_CD)
      on delete restrict on update restrict;

alter table RATING_ELEMENT_DIVIDEND_TYPE
   add constraint RELT_TO_RTEDT foreign key (RT_ELEM_LMCJ_TYP_ID)
       references RATING_ELEMENT_LMCJ_TYPE (RT_ELEM_LMCJ_TYP_ID)
       on delete restrict on update restrict;
       
alter table RATING_ELEMENT_DIVIDEND_TYPE
   add constraint DVNDT_TO_RTEDT foreign key (DVND_TYP_CD)
       references DIVIDEND_TYPE (DVND_TYP_CD)
       on delete restrict on update restrict;

alter table POLICY_PERIOD_ESTIMATED_DVND
   add constraint PLCYP_TO_PPED foreign key (PLCY_PRD_ID)
       references POLICY_PERIOD (PLCY_PRD_ID)
       on delete restrict on update restrict;
       
alter table POLICY_PERIOD_ESTIMATED_DVND
   add constraint JT_TO_PPED foreign key (JUR_TYP_CD)
       references JURISDICTION_TYPE (JUR_TYP_CD)
       on delete restrict on update restrict;
       
alter table POLICY_PERIOD_ESTIMATED_DVND
   add constraint RTET_TO_PPED foreign key (RT_ELEM_TYP_CD)
       references RATING_ELEMENT_TYPE (RT_ELEM_TYP_CD)
       on delete restrict on update restrict;     
       
alter table POLICY_PERIOD_ESTIMATED_DVND
   add constraint USER_TO_PPED1 foreign key (AUDIT_USER_ID_CREA)
       references USERS (USER_ID)
       on delete restrict on update restrict;     
       
alter table POLICY_PERIOD_ESTIMATED_DVND
   add constraint USER_TO_PPED2 foreign key (AUDIT_USER_ID_UPDT)
       references USERS (USER_ID)
       on delete restrict on update restrict;            
       
alter table POLICY_PERIOD_RATING_ELEMENT
   add constraint DVNDT_TO_PPRE foreign key (DVND_TYP_CD)
       references DIVIDEND_TYPE (DVND_TYP_CD)
       on delete restrict on update restrict;

      

  alter table POLICY_PROFILE_RULES_XREF
   add constraint PPS_TO_PPRX  foreign key (PLCY_PRFL_STMT_ID)
      references POLICY_PROFILE_STATEMENT (PLCY_PRFL_STMT_ID)
      on delete restrict on update restrict;


  alter table POLICY_PROFILE_RULES_XREF
   add constraint RL_TO_PPRX foreign key(RL_ID)
      references RULES(RL_ID)
      on delete restrict on update restrict;



ALTER TABLE ELIGIBILITY_RULE
    ADD CONSTRAINT RULE_TO_ER FOREIGN KEY(RL_ID)
	REFERENCES RULES(RL_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ELIGIBILITY_RULE_RESULT
    ADD CONSTRAINT RULE_TO_ERR FOREIGN KEY(RL_ID)
	REFERENCES RULES(RL_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT ;

ALTER TABLE ELIGIBILITY_RULE_RESULT
    ADD CONSTRAINT RI_TO_ERR FOREIGN KEY(RL_ITEM_ID)
	REFERENCES RULE_ITEM(RL_ITEM_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT ;


alter table POLICY_PERIOD
   add constraint STRT_TO_PLCYP foreign key (SHR_TRM_RSN_TYP_CD)
      references SHORT_TERM_REASON_TYPE (SHR_TRM_RSN_TYP_CD)
      on delete restrict on update restrict;


alter table COMPONENT_TYPE_PTCP_TYPE_XREF
   add constraint CMPNTT_TO_CTPTX foreign key (CMPNT_TYP_CD)
      references COMPONENT_TYPE (CMPNT_TYP_CD)
      on delete restrict on update restrict;


alter table COMPONENT_TYPE_PTCP_TYPE_XREF
   add constraint PTCPT_TO_CTPTX foreign key (PTCP_TYP_CD)
      references PARTICIPATION_TYPE (PTCP_TYP_CD)
      on delete restrict on update restrict;



alter table USERS_SECURITY_QUESTION
   add constraint USERS_TO_USQ foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table USERS_SECURITY_QUESTION
   add constraint SQT_TO_USQ foreign key (SEC_QSTN_TYP_CD)
      references SECURITY_QUESTION_TYPE (SEC_QSTN_TYP_CD)
      on delete restrict on update restrict;




-- ECR-243 START

ALTER TABLE TRAVEL_RATE
    ADD CONSTRAINT JT_TO_TR FOREIGN KEY (JUR_TYP_CD)
       REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
       ON DELETE RESTRICT ON UPDATE RESTRICT;
       
       
ALTER TABLE BILL_LINE_ITEM
    ADD CONSTRAINT BLI_TO_TRVLT FOREIGN KEY (TRVL_TYP_CD)
       REFERENCES TRAVEL_TYPE (TRVL_TYP_CD)
       ON DELETE RESTRICT ON UPDATE RESTRICT;
       
       
ALTER TABLE BILL_LINE_ITEM_HISTORY
    ADD CONSTRAINT BLIH_TO_TRVLT FOREIGN KEY (TRVL_TYP_CD)
       REFERENCES TRAVEL_TYPE (TRVL_TYP_CD)
       ON DELETE RESTRICT ON UPDATE RESTRICT;
       
-- ECR-243 END

alter table CLAIM_NCCI_INTERFACE
add constraint CLMT_TO_CNI foreign key(CLM_TYP_CD)
references CLAIM_TYPE (CLM_TYP_CD)
on delete restrict on update restrict;

alter table CLAIM_NCCI_DCI_STAGING
   add constraint AGRE_TO_CNDS foreign key (AGRE_ID)
      references AGREEMENT (AGRE_ID)
      on delete restrict on update restrict;

alter table RENEWAL_TYPE_CRITERIA
add constraint RGT_TO_RTC foreign key (RN_GRP_TYP_CD)
references RENEWAL_GROUP_TYPE (RN_GRP_TYP_CD)
on delete restrict on update restrict;

alter table RENEWAL_TYPE_CRITERIA
add constraint DT_TO_RTC foreign key (DATA_TYP_CD)
references DATA_TYPE (DATA_TYP_CD)
on delete restrict on update restrict;


ALTER TABLE POLICY_SUMMARY_PARTICIPATION
    ADD CONSTRAINT PTCPT_TO_PSP 
	FOREIGN KEY(PTCP_TYP_CD)
	REFERENCES PARTICIPATION_TYPE(PTCP_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
	
ALTER TABLE POLICY_SUMMARY_PARTICIPATION
    ADD CONSTRAINT PSD_TO_PSP 
	FOREIGN KEY(PLCY_SUM_DTL_ID)
	REFERENCES POLICY_SUMMARY_DETAIL(PLCY_SUM_DTL_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE POLICY_SUMMARY_PARTICIPATION
    ADD CONSTRAINT CUST_TO_PSP 
	FOREIGN KEY(CUST_ID)
	REFERENCES CUSTOMER(CUST_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PRICING_TEMPLATE
    ADD CONSTRAINT ICT_TO_PRC
	FOREIGN KEY(INS_CMPY_TYP_ID)
	REFERENCES INSURANCE_COMPANY_TYPE(INS_CMPY_TYP_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE PRICING_TEMPLATE
    ADD CONSTRAINT MT_TO_PRC
	FOREIGN KEY(MRKT_TYP_CD)
	REFERENCES MARKET_TYPE(MRKT_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE PRICING_TEMPLATE
    ADD CONSTRAINT JT_TO_PRC
	FOREIGN KEY(JUR_TYP_CD)
	REFERENCES JURISDICTION_TYPE(JUR_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE PRICING_TEMPLATE
    ADD CONSTRAINT WCRTTC_TO_PRC
	FOREIGN KEY(WC_CLS_RT_TIER_TYP_CD)
	REFERENCES WC_CLASS_RATE_TIER_TYPE(WC_CLS_RT_TIER_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT ;

ALTER TABLE PRICING_TEMPLATE_SCH_FCTR
    ADD CONSTRAINT PRC_TO_PTSF
	FOREIGN KEY(PRC_TMPL_ID)
	REFERENCES PRICING_TEMPLATE(PRC_TMPL_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT ;

ALTER TABLE PRICING_TEMPLATE_SCH_FCTR
    ADD CONSTRAINT RAST_TO_PTSF
	FOREIGN KEY(RT_ADJ_SCH_TYP_CD)
	REFERENCES RATING_ADJUSTMENT_SCHEDULE_TYP(RT_ADJ_SCH_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT ;

ALTER TABLE PRICING_TEMPLATE_SCH_FCTR
    ADD CONSTRAINT RAFTC_TO_PTSF
	FOREIGN KEY(RT_ADJ_FCTR_TYP_CD)
	REFERENCES RATING_ADJUSTMENT_FACTOR_TYPE(RT_ADJ_FCTR_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT ;


ALTER TABLE WEB_CLAIM_COMMENT 
    ADD CONSTRAINT WC_TO_WCC foreign key (WEB_CLM_AGRE_ID) 
      REFERENCES WEB_CLAIM (AGRE_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE ISSUING_BUREAU_TYPE
    ADD CONSTRAINT JT_TO_IBT
	FOREIGN KEY(JUR_TYP_CD)
	REFERENCES JURISDICTION_TYPE(JUR_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT; 


	ALTER TABLE WEB_FNOL_JUR_LOB_CTG_XREF
    ADD CONSTRAINT JUR_TYP_CD 
	FOREIGN KEY(JUR_TYP_CD)
	REFERENCES JURISDICTION_TYPE(JUR_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE WEB_FNOL_JUR_LOB_CTG_XREF
    ADD CONSTRAINT CPCTC_TO_WFJLCX 
	FOREIGN KEY(CLM_PRFL_CTG_TYP_CD)
	REFERENCES CLAIM_PROFILE_CATEGORY_TYPE(CLM_PRFL_CTG_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE WEB_FNOL_JUR_LOB_CTG_XREF
    ADD CONSTRAINT LOBT_TO_WFJLCX 
	FOREIGN KEY(LOB_TYP_CD)
	REFERENCES LINE_OF_BUSINESS_TYPE(LOB_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_PROFILE_STMT_RL_XREF
    ADD CONSTRAINT RULE_TO_CPSRX  
	 FOREIGN KEY(RL_ID)
	 REFERENCES RULES(RL_ID) 
	 ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CLAIM_PROFILE_STMT_RL_XREF
    ADD CONSTRAINT CPS_TO_CPSRX  
	FOREIGN KEY(CLM_PRFL_STMT_ID)
	REFERENCES CLAIM_PROFILE_STATEMENT(CLM_PRFL_STMT_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE WEB_CLAIM
    ADD CONSTRAINT AGT_TO_WC
	FOREIGN KEY(AGRE_ID)
	REFERENCES AGREEMENT(AGRE_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE WEB_CLAIM
    ADD CONSTRAINT CLMSTST_TO_WC
	FOREIGN KEY(CLM_STS_TYP_CD)
	REFERENCES CLAIM_STATUS_TYPE(CLM_STS_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE WEB_CLAIM
   ADD CONSTRAINT CLMST_TO_WC
	FOREIGN KEY (CLM_STT_TYP_CD)
	REFERENCES CLAIM_STATE_TYPE (CLM_STT_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE WEB_CLAIM
   ADD CONSTRAINT JT_TO_WC 
      FOREIGN KEY (JUR_TYP_CD)
      REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE WEB_CLAIM
    ADD CONSTRAINT INSRD_CUST_TO_WC
	FOREIGN KEY(CUST_ID_INSRD)
	REFERENCES CUSTOMER(CUST_ID) 
	ON DELETE RESTRICT ON UPDATE RESTRICT;
	
	ALTER TABLE WEB_CLAIM
    ADD CONSTRAINT CLMT_CUST_TO_WC
	FOREIGN KEY(CUST_ID_CLMT)
	REFERENCES CUSTOMER(CUST_ID) 
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE WEB_CLAIM
  ADD CONSTRAINT PSD_TO_WC 
  FOREIGN KEY (PLCY_SUM_DTL_ID)
  REFERENCES POLICY_SUMMARY_DETAIL (PLCY_SUM_DTL_ID)
  ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE WCCSC_CPS_XREF     
    ADD CONSTRAINT CPS_TO_WCX
	 FOREIGN KEY(CLM_PRFL_STMT_ID)
	 REFERENCES CLAIM_PROFILE_STATEMENT(CLM_PRFL_STMT_ID)
	 ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE WCCSC_CPS_XREF     
    ADD CONSTRAINT WCCSC_TO_WCX
	 FOREIGN KEY(WCCSC_ID)
	 REFERENCES WEB_CLAIM_CUSTOMER_SRCH_CRIT(WCCSC_ID)      
	 ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE WEB_FNOL_PROFILE_VLDT_RL
    ADD CONSTRAINT CPS_TO_WFPVR
	FOREIGN KEY(CLM_PRFL_STMT_ID)
	REFERENCES CLAIM_PROFILE_STATEMENT(CLM_PRFL_STMT_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE WEB_FNOL_PROFILE_VLDT_RL
    ADD CONSTRAINT RULES_TO_WFPVR
	FOREIGN KEY(RL_ID)
	REFERENCES RULES(RL_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE web_claim_dto_attribute
	ADD CONSTRAINT wcdt_to_wcda
	FOREIGN KEY(web_clm_dto_typ_cd)       
 	REFERENCES web_claim_dto_type(web_clm_dto_typ_cd)     
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE web_claim_dto_attribute
	ADD CONSTRAINT jt_to_wcda
	FOREIGN KEY(jur_typ_cd) 
	REFERENCES jurisdiction_type(jur_typ_cd)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE web_claim_dto_attribute
	ADD CONSTRAINT wcdadt_to_wcda
	FOREIGN KEY(web_clm_dto_attr_data_typ_cd)                
	REFERENCES web_claim_dto_attr_data_typ(wcdadt_cd)    
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE web_claim_dto_attribute
	ADD CONSTRAINT cps_to_wcda
	FOREIGN KEY(clm_prfl_stmt_id) 
	REFERENCES claim_profile_statement(clm_prfl_stmt_id)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE web_claim_dto_attribute
	ADD CONSTRAINT frmtt_to_wcda
	FOREIGN KEY(frmt_typ_cd) 
	REFERENCES format_type(frmt_typ_cd)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE web_claim_dto_attribute
	ADD CONSTRAINT wcdt_to_wcdatt
	FOREIGN KEY(web_clm_dto_attr_chld_typ_cd)      
	REFERENCES web_claim_dto_type (web_clm_dto_typ_cd)       
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE WEB_PROFILE_DEPENDENCY_XREF
    ADD CONSTRAINT CPS_TO_WPDXC            
	FOREIGN KEY(CLM_PRFL_STMT_ID_CHLD)
	REFERENCES CLAIM_PROFILE_STATEMENT(CLM_PRFL_STMT_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE WEB_PROFILE_DEPENDENCY_XREF
    ADD CONSTRAINT CPS_TO_WPDXP
	FOREIGN KEY(CLM_PRFL_STMT_ID_PAR)
	REFERENCES CLAIM_PROFILE_STATEMENT(CLM_PRFL_STMT_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE WEB_FNOL_PROFILE_DISABLE
    ADD CONSTRAINT RULE_TO_WFPD  
	 FOREIGN KEY(RL_ID)
	 REFERENCES RULES(RL_ID) 
	 ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE WEB_FNOL_PROFILE_DISABLE
    ADD CONSTRAINT PS_TO_WFPD
	FOREIGN KEY(PRFL_STMT_ID)
	REFERENCES PROFILE_STATEMENT(PRFL_STMT_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;



ALTER TABLE WEB_FNOL_DOCUMENT_JUR_XREF
    ADD CONSTRAINT JT_TO_WFDJX
	FOREIGN KEY(JUR_TYP_CD)
	REFERENCES JURISDICTION_TYPE(JUR_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE WEB_FNOL_DOCUMENT_JUR_XREF
    ADD CONSTRAINT DOCMT_TO_WFDJX
	FOREIGN KEY(DOCM_TYP_ID)
	REFERENCES DOCUMENT_TYPE(DOCM_TYP_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE WEB_COMPONENT_PAYMENT_METH_TYP ADD CONSTRAINT WCPGT_TO_WCPMT FOREIGN KEY (WEB_CMPNT_PYMT_GRP_TYP_CD)
 REFERENCES WEB_COMPONENT_PAYMENT_GRP_TYP (WEB_CMPNT_PYMT_GRP_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
 
      
   alter table QUOTE_ELIGIBILITY_SCORE_SUM
   	  ADD CONSTRAINT PLCYP_TO_QESS FOREIGN KEY (PLCY_PRD_ID)
      REFERENCES POLICY_PERIOD (PLCY_PRD_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

	alter table QUOTE_ELIGIBILITY_SCORE_SUM
   	  ADD CONSTRAINT RI_TO_QESS FOREIGN KEY (RL_ITEM_ID)
      REFERENCES RULE_ITEM (RL_ITEM_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE CASE_ASSOCIATED_PTCP_HIST ADD CONSTRAINT CASEPTCP_TO_CAPH
 FOREIGN KEY (CASE_PTCP_ID)
  REFERENCES CASE_PARTICIPANT (CASE_PTCP_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_ASSOCIATED_PTCP_HIST ADD CONSTRAINT USER_TO_CAPH1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_ASSOCIATED_PTCP_HIST ADD CONSTRAINT USER_TO_CAPH2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_ASSOCIATED_PTCP_HIST ADD CONSTRAINT CASEPTCP_TO_CAPH2
 FOREIGN KEY (CASE_PTCP_ID_ASSC)
  REFERENCES CASE_PARTICIPANT (CASE_PTCP_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_ASSOCIATED_PTCP_HIST ADD CONSTRAINT CAP_TO_CAPH
 FOREIGN KEY (CASE_ASSC_PTCP_ID) 
  REFERENCES CASE_ASSOCIATED_PARTICIPANT (CASE_ASSC_PTCP_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_COMMUNICATION_LOG_HISTORY ADD CONSTRAINT CASE_TO_CCLH
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE CASE_COMMUNICATION_LOG_HISTORY ADD CONSTRAINT CCMT_TO_CCLH
 FOREIGN KEY (CASE_COMM_MDM_TYP_CD)
  REFERENCES CASE_COMMUNICATION_MEDIUM_TYPE (CASE_COMM_MDM_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE CASE_COMMUNICATION_LOG_HISTORY ADD CONSTRAINT CASEPTCP_TO_CCLH
 FOREIGN KEY (CASE_PTCP_ID)
  REFERENCES CASE_PARTICIPANT (CASE_PTCP_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE CASE_COMMUNICATION_LOG_HISTORY ADD CONSTRAINT CPC_TO_CCLH
 FOREIGN KEY (CASE_PTCP_CNTC_ID)
  REFERENCES CASE_PARTICIPANT_CONTACT (CASE_PTCP_CNTC_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_COMMUNICATION_LOG_HISTORY ADD CONSTRAINT USER_TO_CCLH1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_COMMUNICATION_LOG_HISTORY ADD CONSTRAINT USER_TO_CCLH2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_COMMUNICATION_LOG_HISTORY ADD CONSTRAINT CCL_TO_CCLH
 FOREIGN KEY (CASE_COMM_LOG_ID) 
  REFERENCES CASE_COMMUNICATION_LOG (CASE_COMM_LOG_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table CASE_DTL_FLD_FRAUD_INVSTG_HIST
   add constraint INVSTGRT_TO_CDFFIH foreign key (INVSTG_RESP_TYP_CD)
      references INVESTIGATION_RESP_TYP (INVSTG_RESP_TYP_CD)
on delete restrict on update restrict;

alter table CASE_DTL_FLD_FRAUD_INVSTG_HIST
   add constraint USER_TO_CDFFIH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CASE_DTL_FLD_FRAUD_INVSTG_HIST
   add constraint USER_TO_CDFFIH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CASE_DTL_FLD_FRAUD_INVSTG_HIST
   add constraint CASE_TO_CDFFIH foreign key (CASE_ID)
      references CASES (CASE_ID)
      on delete restrict on update restrict; 

ALTER TABLE CASE_DTL_FLD_FRAUD_INVSTG_HIST ADD CONSTRAINT CDFFI_TO_CDFFIH
 FOREIGN KEY (CDFFI_ID) 
  REFERENCES CASE_DETAIL_FIELD_FRAUD_INVSTG (CDFFI_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_LEGAL_HISTORY
   ADD CONSTRAINT CASE_TO_CDLH FOREIGN KEY (CASE_ID)
      REFERENCES CASES (CASE_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_LEGAL_HISTORY
   ADD CONSTRAINT CJT_TO_CDLH FOREIGN KEY (CASE_JUR_TYP_CD)
      REFERENCES CASE_JURISDICTION_TYPE (CASE_JUR_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_LEGAL_HISTORY
   ADD CONSTRAINT CVT_TO_CDLH FOREIGN KEY (CASE_VENU_TYP_CD)
      REFERENCES CASE_VENUE_TYPE (CASE_VENU_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_LEGAL_HISTORY
   ADD CONSTRAINT CVLT_TO_CDLH FOREIGN KEY (CASE_VENU_LOC_TYP_CD)
      REFERENCES CASE_VENUE_LOCATION_TYPE (CASE_VENU_LOC_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_LEGAL_HISTORY
   ADD CONSTRAINT USER_TO_CDLH1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_LEGAL_HISTORY
   ADD CONSTRAINT USER_TO_CDLH2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_LEGAL_HISTORY ADD CONSTRAINT CDL_TO_CDLH
 FOREIGN KEY (CDL_ID) 
  REFERENCES CASE_DETAIL_LEGAL (CDL_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_MED_MGMT_HIST ADD CONSTRAINT CMMERT_TO_CDMMH 
FOREIGN KEY (CMMERT_CD)
REFERENCES CASE_MED_MANG_EXTRNL_RVW_TYP (CMMERT_CD)
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_MED_MGMT_HIST ADD CONSTRAINT CASE_TO_CDMMH
FOREIGN KEY (CASE_ID)
REFERENCES CASES (CASE_ID)
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_MED_MGMT_HIST ADD CONSTRAINT USER_TO_CDMMH1 
FOREIGN KEY (AUDIT_USER_ID_CREA)
REFERENCES USERS (USER_ID)
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_MED_MGMT_HIST ADD CONSTRAINT USER_TO_CDMMH2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_MED_MGMT_HIST ADD CONSTRAINT CDMM_TO_CDMMH
 FOREIGN KEY (CDMM_ID) 
  REFERENCES CASE_DETAIL_MEDICAL_MANAGEMENT (CDMM_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_PREAUDT_SURV_HIST ADD CONSTRAINT CASE_TO_CDPSH
      FOREIGN KEY (CASE_ID)
      REFERENCES CASES (CASE_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_PREAUDT_SURV_HIST ADD CONSTRAINT USER_TO_CDPSH1
      FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_PREAUDT_SURV_HIST ADD CONSTRAINT USER_TO_CDPSH2
	FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_PREAUDT_SURV_HIST ADD CONSTRAINT CDPS_TO_CDPSH
  FOREIGN KEY (CDPS_ID) 
  REFERENCES CASE_DETAIL_PREAUDIT_SURVEY (CDPS_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_SUBROGATION_HIST ADD CONSTRAINT CASE_TO_CDSH
      FOREIGN KEY (CASE_ID)
      REFERENCES CASES (CASE_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_SUBROGATION_HIST ADD CONSTRAINT CST_TO_CDSH
      FOREIGN KEY (CASE_SRGT_SRC_TYP_CD)
      REFERENCES CASE_SUBROGATION_SOURCE_TYPE (CASE_SRGT_SRC_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_SUBROGATION_HIST ADD CONSTRAINT USER_TO_CDSH1 
      FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_SUBROGATION_HIST ADD CONSTRAINT USER_TO_CDSH2
      FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_SUBROGATION_HIST ADD CONSTRAINT CDS_TO_CDSH
 FOREIGN KEY (CDS_ID) 
  REFERENCES CASE_DETAIL_SUBROGATION (CDS_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_UTLZ_RVW_HIST ADD CONSTRAINT CASE_TO_CDURH
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_UTLZ_RVW_HIST ADD CONSTRAINT USER_TO_CDURH1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_UTLZ_RVW_HIST ADD CONSTRAINT USER_TO_CDURH2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_UTLZ_RVW_HIST ADD CONSTRAINT CDUR_TO_CDURH
 FOREIGN KEY (CDUR_ID) 
  REFERENCES CASE_DETAIL_UTILIZATION_REVIEW (CDUR_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_VOCA_REHAB_HIST ADD CONSTRAINT CASE_TO_CDVRH
	FOREIGN KEY (CASE_ID)
      REFERENCES CASES (CASE_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE CASE_DETAIL_VOCA_REHAB_HIST ADD CONSTRAINT USER_TO_CDVRH1 
      FOREIGN KEY (AUDIT_USER_ID_CREA) REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE CASE_DETAIL_VOCA_REHAB_HIST ADD CONSTRAINT USER_TO_CDVRH2
      FOREIGN KEY (AUDIT_USER_ID_UPDT) REFERENCES USERS (USER_ID) 
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_VOCA_REHAB_HIST ADD CONSTRAINT CDVR_TO_CDVRH
 FOREIGN KEY (CDVR_ID) 
  REFERENCES CASE_DETAIL_VOCATIONAL_REHAB (CDVR_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DTL_ACT_MANG_LS_PRVN_HIST ADD CONSTRAINT CASE_TO_CDAMLPH
      FOREIGN KEY (CASE_ID)
      REFERENCES CASES (CASE_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DTL_ACT_MANG_LS_PRVN_HIST ADD CONSTRAINT USER_TO_CDAMLPH1
      FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DTL_ACT_MANG_LS_PRVN_HIST ADD CONSTRAINT USER_TO_CDAMLPH2
      FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DTL_ACT_MANG_LS_PRVN_HIST ADD CONSTRAINT CDAMLP_TO_CDAMLPH
 FOREIGN KEY (CDAMLP_ID) 
  REFERENCES CASE_DTL_ACCT_MANG_LOSS_PRVN (CDAMLP_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_EVENT_HISTORY ADD CONSTRAINT CASE_TO_CEH
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_EVENT_HISTORY ADD CONSTRAINT CASEET_TO_CEH
 FOREIGN KEY (CASE_EVNT_TYP_CD)
  REFERENCES CASE_EVENT_TYPE (CASE_EVNT_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_EVENT_HISTORY ADD CONSTRAINT USER_TO_CEH
 FOREIGN KEY (USER_ID)
  REFERENCES USERS (USER_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_EVENT_HISTORY ADD CONSTRAINT CASEPTCP_TO_CEH
 FOREIGN KEY (CASE_PTCP_ID)
  REFERENCES CASE_PARTICIPANT (CASE_PTCP_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_EVENT_HISTORY ADD CONSTRAINT USER_TO_CEH1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_EVENT_HISTORY ADD CONSTRAINT USER_TO_CEH2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_EVENT_HISTORY ADD CONSTRAINT CE_TO_CEH
 FOREIGN KEY (CASE_EVNT_ID) 
  REFERENCES CASE_EVENT (CASE_EVNT_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_EVENT_HISTORY ADD CONSTRAINT ORG_UNT_TO_CEH
FOREIGN KEY (ORG_UNT_ID)
  REFERENCES ORGANIZATIONAL_UNIT (ORG_UNT_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;  

ALTER TABLE CASE_EVNT_TASK_RMND_RECIP_HIST  ADD CONSTRAINT ORG_UNT_TO_CETRRH
FOREIGN KEY (ORG_UNT_ID)
  REFERENCES ORGANIZATIONAL_UNIT (ORG_UNT_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;  

ALTER TABLE CASE_EVNT_TASK_RMND_RECIP_HIST ADD CONSTRAINT CE_TO_CETRRH
 FOREIGN KEY (CASE_EVNT_ID)
  REFERENCES CASE_EVENT (CASE_EVNT_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_EVNT_TASK_RMND_RECIP_HIST ADD CONSTRAINT USER_TO_CETRRH
 FOREIGN KEY (USER_ID)
  REFERENCES USERS (USER_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_EVNT_TASK_RMND_RECIP_HIST ADD CONSTRAINT USER_TO_CETRRH1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_EVNT_TASK_RMND_RECIP_HIST ADD CONSTRAINT USER_TO_CETRRH2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_EVNT_TASK_RMND_RECIP_HIST ADD CONSTRAINT CETRR_TO_CETRRH
 FOREIGN KEY (CETRR_ID) 
  REFERENCES CASE_EVENT_TASK_REMINDER_RECIP (CETRR_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_INCL_CLM_PLCY_QUOT_HIST ADD CONSTRAINT CASE_TO_CICPQH
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_INCL_CLM_PLCY_QUOT_HIST ADD CONSTRAINT AGRE_TO_CICPQH
 FOREIGN KEY (AGRE_ID)
  REFERENCES AGREEMENT (AGRE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_INCL_CLM_PLCY_QUOT_HIST ADD CONSTRAINT PLCYP_TO_CICPQH
 FOREIGN KEY (PLCY_PRD_ID)
  REFERENCES POLICY_PERIOD (PLCY_PRD_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_INCL_CLM_PLCY_QUOT_HIST ADD CONSTRAINT USER_TO_CICPQH1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_INCL_CLM_PLCY_QUOT_HIST ADD CONSTRAINT USER_TO_CICPQH2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_INCL_CLM_PLCY_QUOT_HIST ADD CONSTRAINT CICPQ_TO_CICPQH
 FOREIGN KEY (CICPQ_ID) 
  REFERENCES CASE_INCL_CLM_PLCY_QUOT (CICPQ_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_ISSUE_HISTORY ADD CONSTRAINT CASE_TO_CIH
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_ISSUE_HISTORY ADD CONSTRAINT  CIT_TO_CIH
 FOREIGN KEY (CASE_ISS_TYP_CD)
  REFERENCES CASE_ISSUE_TYPE (CASE_ISS_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_ISSUE_HISTORY ADD CONSTRAINT CIST_TO_CIH
 FOREIGN KEY (CASE_ISS_STS_TYP_CD)
  REFERENCES CASE_ISSUE_STATUS_TYPE (CASE_ISS_STS_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_ISSUE_HISTORY ADD CONSTRAINT USER_TO_CIH1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_ISSUE_HISTORY ADD CONSTRAINT USER_TO_CIH2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_ISSUE_HISTORY ADD CONSTRAINT CI_TO_CIH
 FOREIGN KEY (CASE_ISS_ID) 
  REFERENCES CASE_ISSUE (CASE_ISS_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PARTICIPANT_HISTORY ADD CONSTRAINT CASE_TO_CASEPTCPH
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PARTICIPANT_HISTORY ADD CONSTRAINT CPTCPT_TO_CPTCPH
 FOREIGN KEY (CASE_PTCP_TYP_CD)
  REFERENCES CASE_PARTICIPATION_TYPE (CASE_PTCP_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PARTICIPANT_HISTORY ADD CONSTRAINT CUST_TO_CASEPTCPH
 FOREIGN KEY (CUST_ID)
  REFERENCES CUSTOMER (CUST_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PARTICIPANT_HISTORY ADD CONSTRAINT PTCP_TO_CASEPTCPH 
 FOREIGN KEY (PTCP_ID) 
  REFERENCES PARTICIPATION (PTCP_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE CASE_PARTICIPANT_HISTORY ADD CONSTRAINT USER_TO_CASEPTCPH
 FOREIGN KEY (USER_ID)
  REFERENCES USERS (USER_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PARTICIPANT_HISTORY ADD CONSTRAINT USER_TO_CASEPTCPH1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PARTICIPANT_HISTORY ADD CONSTRAINT USER_TO_CASEPTCPH2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PARTICIPANT_HISTORY ADD CONSTRAINT CASEPTCP_TO_CPH
 FOREIGN KEY (CASE_PTCP_ID) 
  REFERENCES CASE_PARTICIPANT (CASE_PTCP_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PARTICIPANT_CONTACT_HIST ADD CONSTRAINT CASEPTCP_TO_CPCH
 FOREIGN KEY (CASE_PTCP_ID)
  REFERENCES CASE_PARTICIPANT (CASE_PTCP_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PARTICIPANT_CONTACT_HIST ADD CONSTRAINT CCNTCT_TO_CPCH
 FOREIGN KEY (CASE_CNTC_TYP_CD)
  REFERENCES CASE_CONTACT_TYPE (CASE_CNTC_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PARTICIPANT_CONTACT_HIST ADD CONSTRAINT USER_TO_CPCH1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PARTICIPANT_CONTACT_HIST ADD CONSTRAINT USER_TO_CPCH2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PARTICIPANT_CONTACT_HIST ADD CONSTRAINT CPC_TO_CPCH
 FOREIGN KEY (CASE_PTCP_CNTC_ID) 
  REFERENCES CASE_PARTICIPANT_CONTACT (CASE_PTCP_CNTC_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table CASE_PARTICIPANT_PHY_DESC_HIST add constraint USER_TO_CPPDH1
      foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CASE_PARTICIPANT_PHY_DESC_HIST add constraint USER_TO_CPPDH2
	foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CASE_PARTICIPANT_PHY_DESC_HIST add constraint GT_TO_CPPDH
	foreign key (GNDR_TYP_CD)
      references GENDER_TYPE (GNDR_TYP_CD)
      on delete restrict on update restrict;

alter table CASE_PARTICIPANT_PHY_DESC_HIST add constraint CDFFI_TO_CPPDH 
	foreign key (CDFFI_ID)
      references CASE_DETAIL_FIELD_FRAUD_INVSTG (CDFFI_ID)
      on delete restrict on update restrict;

ALTER TABLE CASE_PARTICIPANT_PHY_DESC_HIST ADD CONSTRAINT CASEPTCP_TO_CPPDH 
	FOREIGN KEY (CASE_PTCP_ID)
  	REFERENCES CASE_PARTICIPANT (CASE_PTCP_ID)
   	ON DELETE RESTRICT ON UPDATE RESTRICT;  

ALTER TABLE CASE_PARTICIPANT_PHY_DESC_HIST ADD CONSTRAINT CPPD_TO_CPPDH
 FOREIGN KEY (CPPD_ID) 
  REFERENCES CASE_PARTICIPANT_PHYSICAL_DESC (CPPD_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PROFILE_HISTORY ADD CONSTRAINT CASE_TO_CASEPH
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PROFILE_HISTORY ADD CONSTRAINT CASEPCT_TO_CASEPH
 FOREIGN KEY (CASE_PRFL_CTG_TYP_CD)
  REFERENCES CASE_PROFILE_CATEGORY_TYPE (CASE_PRFL_CTG_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PROFILE_HISTORY ADD CONSTRAINT PRFLS_TO_CASEPH
 FOREIGN KEY (PRFL_STMT_ID)
  REFERENCES PROFILE_STATEMENT (PRFL_STMT_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PROFILE_HISTORY ADD CONSTRAINT CE_TO_CASEPH
 FOREIGN KEY (CASE_EVNT_ID)
  REFERENCES CASE_EVENT (CASE_EVNT_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PROFILE_HISTORY ADD CONSTRAINT PSSN_TO_CASEPH 
       foreign key (PRFL_STMT_SEL_NEST_ID)
      references PROFILE_STATEMENT_SEL_NEST (PRFL_STMT_SEL_NEST_ID)
      on delete restrict on update restrict;
 
ALTER TABLE CASE_PROFILE_HISTORY ADD CONSTRAINT PSVT_TO_CASEPH 
      foreign key (PRFL_SEL_VAL_TYP_CD)
      references PROFILE_SELECTION_VALUE_TYPE (PRFL_SEL_VAL_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE CASE_PROFILE_HISTORY ADD CONSTRAINT USER_TO_CASEPH1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PROFILE_HISTORY ADD CONSTRAINT USER_TO_CASEPH2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_PROFILE_HISTORY ADD CONSTRAINT CASEP_TO_CASEPH
 FOREIGN KEY (CASE_PRFL_ID) 
  REFERENCES CASE_PROFILE (CASE_PRFL_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_RELATED_HISTORY ADD CONSTRAINT CASE_TO_CASERH
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_RELATED_HISTORY ADD CONSTRAINT CASE_TO_CASERRLTH
 FOREIGN KEY (CASE_RLT_CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_RELATED_HISTORY ADD CONSTRAINT USER_TO_CASERH1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_RELATED_HISTORY ADD CONSTRAINT USER_TO_CASERH2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_RELATED_HISTORY ADD CONSTRAINT CASER_TO_CASERH
 FOREIGN KEY (CASE_RLT_ID) 
  REFERENCES CASE_RELATED (CASE_RLT_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCORECARD_HISTORY ADD CONSTRAINT CASE_TO_CSCRCRDH
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCORECARD_HISTORY ADD CONSTRAINT CSCT_TO_CSCRCRDH
 FOREIGN KEY (CASE_SCRCRD_CTG_TYP_CD)
  REFERENCES CASE_SCORECARD_CATEGORY_TYPE (CASE_SCRCRD_CTG_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCORECARD_HISTORY ADD CONSTRAINT USER_TO_CSCRCRDH1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCORECARD_HISTORY ADD CONSTRAINT USER_TO_CSCRCRDH2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCORECARD_HISTORY ADD CONSTRAINT CS_TO_CSCRCRDH
 FOREIGN KEY (CS_ID) 
  REFERENCES CASE_SCORECARD (CS_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCRCRD_RT_ATTR_SCR_HIST ADD CONSTRAINT CS_TO_CSRASH
 FOREIGN KEY (CS_ID)
  REFERENCES CASE_SCORECARD (CS_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCRCRD_RT_ATTR_SCR_HIST ADD CONSTRAINT CASERAT_TO_CSRASH
 FOREIGN KEY (CASE_RT_ATTR_TYP_CD)
  REFERENCES CASE_RATING_ATTRIBUTE_TYPE (CASE_RT_ATTR_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCRCRD_RT_ATTR_SCR_HIST ADD CONSTRAINT CASERST_TO_CSRASH
 FOREIGN KEY (CASE_RT_SCL_TYP_CD_SCR)
  REFERENCES CASE_RATING_SCALE_TYPE (CASE_RT_SCL_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCRCRD_RT_ATTR_SCR_HIST ADD CONSTRAINT CASERST_TO_CSRASRH
 FOREIGN KEY (CASE_RT_SCL_TYP_CD_RSOL_SCR)
  REFERENCES CASE_RATING_SCALE_TYPE (CASE_RT_SCL_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCRCRD_RT_ATTR_SCR_HIST ADD CONSTRAINT USER_TO_CSRASH1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCRCRD_RT_ATTR_SCR_HIST ADD CONSTRAINT USER_TO_CSRASH2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCRCRD_RT_ATTR_SCR_HIST ADD CONSTRAINT CSRAS_TO_CSRASH
 FOREIGN KEY (CSRAS_ID) 
  REFERENCES CASE_SCORECARD_RATING_ATTR_SCR (CSRAS_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SERVICE_HISTORY ADD CONSTRAINT CASE_TO_CASESH
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SERVICE_HISTORY ADD CONSTRAINT CASEPTCP_TO_CASESH
 FOREIGN KEY (CASE_PTCP_ID)
  REFERENCES CASE_PARTICIPANT (CASE_PTCP_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SERVICE_HISTORY ADD CONSTRAINT CASEST_TO_CASESH
 FOREIGN KEY (CASE_SERV_TYP_CD)
  REFERENCES CASE_SERVICE_TYPE (CASE_SERV_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SERVICE_HISTORY ADD CONSTRAINT CASESST_TO_CASESH
 FOREIGN KEY (CASE_SERV_STS_TYP_CD)
  REFERENCES CASE_SERVICE_STATUS_TYPE (CASE_SERV_STS_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SERVICE_HISTORY ADD CONSTRAINT USER_TO_CASESH1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SERVICE_HISTORY ADD CONSTRAINT USER_TO_CASESH2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SERVICE_HISTORY ADD CONSTRAINT CASES_TO_CASESH
 FOREIGN KEY (CASE_SERV_ID) 
  REFERENCES CASE_SERVICE (CASE_SERV_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SERVICE_DETAIL_HISTORY ADD CONSTRAINT CASES_TO_CSDH
 FOREIGN KEY (CASE_SERV_ID)
  REFERENCES CASE_SERVICE (CASE_SERV_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SERVICE_DETAIL_HISTORY ADD CONSTRAINT USER_TO_CSDH1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SERVICE_DETAIL_HISTORY ADD CONSTRAINT USER_TO_CSDH2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SERVICE_DETAIL_HISTORY ADD CONSTRAINT CSD_TO_CSDH
 FOREIGN KEY (CSD_ID) 
  REFERENCES CASE_SERVICE_DETAIL (CSD_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_TIME_TRACKING_DETAIL_HIST ADD CONSTRAINT CASE_TO_CTTDH
 FOREIGN KEY (CASE_ID)
  REFERENCES CASES (CASE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_TIME_TRACKING_DETAIL_HIST ADD CONSTRAINT CTTTT_TO_CTTDH
 FOREIGN KEY (CASE_TIME_TRK_TASK_TYP_CD)
  REFERENCES CASE_TIME_TRACKING_TASK_TYPE (CASE_TIME_TRK_TASK_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_TIME_TRACKING_DETAIL_HIST ADD CONSTRAINT CASEPTCP_TO_CTTDH
 FOREIGN KEY (CASE_PTCP_ID)
  REFERENCES CASE_PARTICIPANT (CASE_PTCP_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_TIME_TRACKING_DETAIL_HIST ADD CONSTRAINT CUST_TO_CTTDH
 FOREIGN KEY (CUST_ID)
  REFERENCES CUSTOMER (CUST_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_TIME_TRACKING_DETAIL_HIST ADD CONSTRAINT USER_TO_CTTDH
 FOREIGN KEY (USER_ID)
  REFERENCES USERS (USER_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_TIME_TRACKING_DETAIL_HIST ADD CONSTRAINT USER_TO_CTTDH1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_TIME_TRACKING_DETAIL_HIST ADD CONSTRAINT USER_TO_CTTDH2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_TIME_TRACKING_DETAIL_HIST ADD CONSTRAINT CTTD_TO_CTTDH
 FOREIGN KEY (CTTD_ID) 
  REFERENCES CASE_TIME_TRACKING_DETAIL (CTTD_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASES_HISTORY ADD CONSTRAINT ACT_TO_CASEH
 FOREIGN KEY (APP_CNTX_TYP_CD)
  REFERENCES APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASES_HISTORY ADD CONSTRAINT CSRCT_TO_CASEH
 FOREIGN KEY (CASE_SRC_TYP_CD)
  REFERENCES CASE_SOURCE_TYPE (CASE_SRC_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASES_HISTORY ADD CONSTRAINT CASECT_TO_CASEH
 FOREIGN KEY (CASE_CTG_TYP_CD)
  REFERENCES CASE_CATEGORY_TYPE (CASE_CTG_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASES_HISTORY ADD CONSTRAINT CASET_TO_CASEH 
 FOREIGN KEY (CASE_TYP_CD)
  REFERENCES CASE_TYPE (CASE_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASES_HISTORY ADD CONSTRAINT USER_TO_CASEH
 FOREIGN KEY (USER_ID)
  REFERENCES USERS (USER_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASES_HISTORY ADD CONSTRAINT CASEPT_TO_CASEH
 FOREIGN KEY (CASE_PRTY_TYP_CD)
  REFERENCES CASE_PRIORITY_TYPE (CASE_PRTY_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASES_HISTORY ADD CONSTRAINT CASERT_TO_CASEH
 FOREIGN KEY (CASE_RSOL_TYP_CD) 
  REFERENCES CASE_RESOLUTION_TYPE (CASE_RSOL_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASES_HISTORY ADD CONSTRAINT USER_TO_CASEH1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASES_HISTORY ADD CONSTRAINT USER_TO_CASEH2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASES_HISTORY ADD CONSTRAINT CASE_TO_CASEH
 FOREIGN KEY (CASE_ID) 
  REFERENCES CASES (CASE_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ACCT_MANG_LOSS_PRVN_EXP_HIST ADD CONSTRAINT CDAMLP_TO_AMLPEH 
      FOREIGN KEY (CDAMLP_ID)
      REFERENCES CASE_DTL_ACCT_MANG_LOSS_PRVN(CDAMLP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ACCT_MANG_LOSS_PRVN_EXP_HIST ADD CONSTRAINT EXPT_TO_AMLPEH
    FOREIGN KEY (EXP_TYP_CD)
      REFERENCES EXPENSE_TYPE (EXP_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ACCT_MANG_LOSS_PRVN_EXP_HIST ADD CONSTRAINT USER_TO_AMLPEH1
    FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE ACCT_MANG_LOSS_PRVN_EXP_HIST ADD CONSTRAINT USER_TO_AMLPEH2
   FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE LEGAL_PROCEEDING_HISTORY ADD CONSTRAINT CDL_TO_LPH
    FOREIGN KEY (CDL_ID)
      REFERENCES CASE_DETAIL_LEGAL(CDL_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE LEGAL_PROCEEDING_HISTORY ADD CONSTRAINT CPRCDT_TO_LPH
    FOREIGN KEY (CASE_PRCD_TYP_CD)
      REFERENCES CASE_PROCEEDING_TYPE (CASE_PRCD_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE LEGAL_PROCEEDING_HISTORY ADD CONSTRAINT USER_TO_LPH1
    FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE LEGAL_PROCEEDING_HISTORY ADD CONSTRAINT USER_TO_LPH2
    FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE LOSS_PREVENTION_RECM_HIST ADD CONSTRAINT CDSSLP_TO_LPRH
    FOREIGN KEY (CDAMLP_ID)
      REFERENCES CASE_DTL_ACCT_MANG_LOSS_PRVN (CDAMLP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE LOSS_PREVENTION_RECM_HIST ADD CONSTRAINT CRECMST_TO_LPRH 
     FOREIGN KEY (CASE_RECM_STS_TYP_CD)
      REFERENCES CASE_RECOMMENDATION_STS_TYP (CASE_RECM_STS_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE LOSS_PREVENTION_RECM_HIST ADD CONSTRAINT USER_TO_LPRH1
    FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE LOSS_PREVENTION_RECM_HIST ADD CONSTRAINT USER_TO_LPRH2
     FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PREAUDIT_SURVEY_CLASS_CD_HIST ADD CONSTRAINT CDPS_TO_PSCCH
    FOREIGN KEY (CDPS_ID)
      REFERENCES CASE_DETAIL_PREAUDIT_SURVEY(CDPS_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE PREAUDIT_SURVEY_CLASS_CD_HIST ADD CONSTRAINT USER_TO_PSCCH1
   FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE PREAUDIT_SURVEY_CLASS_CD_HIST ADD CONSTRAINT USER_TO_PSCCH2
     FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
      
alter table WC_CLASS_INDUSTRY_CTG_XREF
	add constraint ICT_TO_WCCICX foreign key (INDST_CTG_TYP_CD)
	references INDUSTRY_CATEGORY_TYPE (INDST_CTG_TYP_CD)
	on delete restrict on update restrict;
      
ALTER TABLE CLS_GRP_WC_CLS_XREF
    ADD CONSTRAINT CGT_TO_CGWCX                            
 FOREIGN KEY(CLS_GRP_TYP_CD) 
 REFERENCES CLASSIFICATION_GROUPING_TYPE (CLS_GRP_TYP_CD) 
       ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE CLS_GRP_WC_CLS_XREF  
   ADD CONSTRAINT JT_TO_CGWCX
FOREIGN KEY(JUR_TYP_CD)
REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
       ON DELETE RESTRICT ON UPDATE RESTRICT;

--- scripts related to the new table rating_element_type_name
ALTER TABLE RATING_ELEMENT_NAME_TYPE
    ADD CONSTRAINT RTET_TO_RENT FOREIGN KEY (RT_ELEM_TYP_CD)      
    REFERENCES RATING_ELEMENT_TYPE (RT_ELEM_TYP_CD);


ALTER TABLE RATING_ELEMENT_NAME_TYPE
       ADD CONSTRAINT JT_TO_RENT FOREIGN KEY (JUR_TYP_CD)   
       REFERENCES JURISDICTION_TYPE (JUR_TYP_CD); 

--- scripts related to the new table rating_element_type_name

alter table CUSTOMER_GROUP
   add constraint CUST_TO_CG foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_GROUP
   add constraint CUSTA_TO_CG foreign key (CUST_ADDR_ID)
      references CUSTOMER_ADDRESS (CUST_ADDR_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_GROUP
   add constraint CGTYP_TO_CG foreign key (CUST_GRP_TYP_CD)
      references CUSTOMER_GROUP_TYPE (CUST_GRP_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_GROUP
   add constraint CPT_TO_CG foreign key (CRES_PREF_TYP_CD)
      references CORRESPONDENCE_PREF_TYP (CRES_PREF_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_GROUP
   add constraint USER_TO_CG1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_GROUP
   add constraint USER_TO_CG2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_GROUP_HISTORY
   add constraint CG_TO_CGH foreign key (CUST_GRP_ID)
      references CUSTOMER_GROUP (CUST_GRP_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_GROUP_HISTORY
   add constraint CUST_TO_CGH foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_GROUP_HISTORY
   add constraint CPT_TO_CGH foreign key (CRES_PREF_TYP_CD)
      references CORRESPONDENCE_PREF_TYP (CRES_PREF_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_GROUP_HISTORY
   add constraint CGTYP_TO_CGH foreign key (CUST_GRP_TYP_CD)
      references CUSTOMER_GROUP_TYPE (CUST_GRP_TYP_CD)
      on delete restrict on update restrict;

alter table CUSTOMER_GROUP_HISTORY
   add constraint CUSTA_TO_CGH foreign key (CUST_ADDR_ID)
      references CUSTOMER_ADDRESS (CUST_ADDR_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_GROUP_HISTORY
   add constraint USER_TO_CGH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_GROUP_HISTORY
   add constraint USER_TO_CGH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_GROUP
   add constraint CG_TO_PPG foreign key (CUST_GRP_ID) 
	references CUSTOMER_GROUP (CUST_GRP_ID)
        on delete restrict on update restrict;

alter table POLICY_PERIOD_GROUP
   add constraint PLCYP_TO_PPG foreign key (PLCY_PRD_ID) 
	references POLICY_PERIOD (PLCY_PRD_ID)
        on delete restrict on update restrict;

alter table POLICY_PERIOD_GROUP
   add constraint USER_TO_PPG1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_GROUP
   add constraint USER_TO_PPG2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

ALTER TABLE POLICY_PERIOD_GROUP
	ADD CONSTRAINT PTCP_TO_PPG FOREIGN KEY (PTCP_ID)
		REFERENCES PARTICIPATION (PTCP_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table POLICY_PERIOD_GROUP_HISTORY
   add constraint PPG_TO_PPGH foreign key (PLCY_PRD_GRP_ID) 
	references POLICY_PERIOD_GROUP (PLCY_PRD_GRP_ID)
        on delete restrict on update restrict;

alter table POLICY_PERIOD_GROUP_HISTORY
   add constraint CG_TO_PPGH foreign key (CUST_GRP_ID) 
	references CUSTOMER_GROUP (CUST_GRP_ID)
        on delete restrict on update restrict;

alter table POLICY_PERIOD_GROUP_HISTORY
   add constraint PLCYP_TO_PPGH foreign key (PLCY_PRD_ID) 
	references POLICY_PERIOD (PLCY_PRD_ID)
        on delete restrict on update restrict;

alter table POLICY_PERIOD_GROUP_HISTORY
   add constraint USER_TO_PPGH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_GROUP_HISTORY
   add constraint USER_TO_PPGH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

ALTER TABLE POLICY_PERIOD_GROUP_HISTORY
	ADD CONSTRAINT PTCP_TO_PPGH FOREIGN KEY (PTCP_ID)
		REFERENCES PARTICIPATION (PTCP_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table POLICY_PERIOD_RPT_GRP_RISK
   add constraint RISK_TO_PPRGR foreign key (RISK_ID)
     	references RISK (RISK_ID)
      	on delete restrict on update restrict;

alter table POLICY_PERIOD_RPT_GRP_RISK
  add constraint PPG_TO_PPRGR foreign key (PLCY_PRD_GRP_ID)
     	references POLICY_PERIOD_GROUP (PLCY_PRD_GRP_ID)
      	on delete restrict on update restrict;

alter table POLICY_PERIOD_RPT_GRP_RISK
   add constraint USER_TO_PPRGR1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_RPT_GRP_RISK
   add constraint USER_TO_PPRGR2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PRD_RPT_GRP_RISK_HIST
  add constraint PPRGR_TO_PPRGRH foreign key (PLCY_PRD_RPT_GRP_RISK_ID)
     	references POLICY_PERIOD_RPT_GRP_RISK (PLCY_PRD_RPT_GRP_RISK_ID)
      	on delete restrict on update restrict;

alter table POLICY_PRD_RPT_GRP_RISK_HIST
   add constraint RISK_TO_PPRGRH foreign key (RISK_ID)
     	references RISK (RISK_ID)
      	on delete restrict on update restrict;

alter table POLICY_PRD_RPT_GRP_RISK_HIST
  add constraint PPG_TO_PPRGRH foreign key (PLCY_PRD_GRP_ID)
     	references POLICY_PERIOD_GROUP (PLCY_PRD_GRP_ID)
      	on delete restrict on update restrict;

alter table POLICY_PRD_RPT_GRP_RISK_HIST
   add constraint USER_TO_PPRGRH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PRD_RPT_GRP_RISK_HIST
   add constraint USER_TO_PPRGRH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table PAYROLL_REPORT
add constraint PPG_TO_PR foreign key (PLCY_PRD_GRP_ID)
references POLICY_PERIOD_GROUP (PLCY_PRD_GRP_ID)
on delete restrict on update restrict;

alter table PAYROLL_REPORT_HISTORY
add constraint PPG_TO_PRH foreign key (PLCY_PRD_GRP_ID)
references POLICY_PERIOD_GROUP (PLCY_PRD_GRP_ID)
on delete restrict on update restrict;

alter table PREMIUM_PERIOD_PAYROLL_RPT
add constraint PR_TO_PPPR foreign key (PYRL_RPT_ID)
references PAYROLL_REPORT (PYRL_RPT_ID)
on delete restrict on update restrict;

alter table PREMIUM_PERIOD_PAYROLL_RPT
add constraint PP_TO_PPPR foreign key (PREM_PRD_ID)
references PREMIUM_PERIOD (PREM_PRD_ID)
on delete restrict on update restrict;

alter table PREM_PRD_PYRL_RPT_HIST
add constraint PPPR_TO_PPPRH foreign key (PREM_PRD_PYRL_RPT_ID)
references PREMIUM_PERIOD_PAYROLL_RPT(PREM_PRD_PYRL_RPT_ID)
on delete restrict on update restrict;

alter table PREM_PRD_PYRL_RPT_HIST
add constraint PR_TO_PRPPRH foreign key (PYRL_RPT_ID)
references PAYROLL_REPORT (PYRL_RPT_ID)
on delete restrict on update restrict;

alter table PREM_PRD_PYRL_RPT_HIST
add constraint PP_TO_PPPRH foreign key (PREM_PRD_ID)
references PREMIUM_PERIOD (PREM_PRD_ID)
on delete restrict on update restrict;


ALTER TABLE ROLE_AGENT_AGENCY_LOB_STT_COMS
    ADD CONSTRAINT RAAL_TO_RAALSC FOREIGN KEY (RAAL_ID)      
    REFERENCES ROLE_AGENT_AGY_LOB (RAAL_ID);

ALTER TABLE ROLE_AGENT_AGENCY_LOB_STT_COMS
    ADD CONSTRAINT STT_TO_RAALSC FOREIGN KEY (STT_ID)      
    REFERENCES STATE (STT_ID);

ALTER TABLE ROLE_AGENT_AGENCY_LOB_STT_COMS
    ADD CONSTRAINT CST_TO_RAALSC FOREIGN KEY (COMS_SCH_TYP_CD)      
    REFERENCES COMMISSION_SCHEDULE_TYPE (COMS_SCH_TYP_CD);


ALTER TABLE RAALSCH
    ADD CONSTRAINT RAALSC_TO_RAALSCH FOREIGN KEY (ROLE_AGNT_AGY_LOB_STT_COMS_ID)      
    REFERENCES ROLE_AGENT_AGENCY_LOB_STT_COMS (ROLE_AGNT_AGY_LOB_STT_COMS_ID);

ALTER TABLE RAALSCH
    ADD CONSTRAINT RAAL_TO_RAALSCH FOREIGN KEY (RAAL_ID)      
    REFERENCES ROLE_AGENT_AGY_LOB (RAAL_ID);

ALTER TABLE RAALSCH
    ADD CONSTRAINT STT_TO_RAALSCH FOREIGN KEY (STT_ID)      
    REFERENCES STATE (STT_ID);

ALTER TABLE RAALSCH
    ADD CONSTRAINT CST_TO_RAALSCH FOREIGN KEY (COMS_SCH_TYP_CD)      
    REFERENCES COMMISSION_SCHEDULE_TYPE (COMS_SCH_TYP_CD);


ALTER TABLE POLICY_PRD_PTCP_AGNT_STT_COMS
    ADD CONSTRAINT PPPAGNT_TO_PPPASC FOREIGN KEY (PTCP_ID)      
    REFERENCES POLICY_PERIOD_PTCP_AGNT (PTCP_ID);

ALTER TABLE POLICY_PRD_PTCP_AGNT_STT_COMS
    ADD CONSTRAINT STT_TO_PPPASC FOREIGN KEY (STT_ID)      
    REFERENCES STATE (STT_ID);

ALTER TABLE POLICY_PRD_PTCP_AGNT_STT_COMS
    ADD CONSTRAINT CST_TO_PPPASC FOREIGN KEY (COMS_SCH_TYP_CD)      
    REFERENCES COMMISSION_SCHEDULE_TYPE (COMS_SCH_TYP_CD);


ALTER TABLE PPPASCH
    ADD CONSTRAINT STT_TO_PPPASCH FOREIGN KEY (STT_ID)      
    REFERENCES STATE (STT_ID);

ALTER TABLE PPPASCH
    ADD CONSTRAINT CST_TO_PPPASCH FOREIGN KEY (COMS_SCH_TYP_CD)      
    REFERENCES COMMISSION_SCHEDULE_TYPE (COMS_SCH_TYP_CD);
	
 
ALTER TABLE POLICY_PRD_PTCP_AGY_STT_COMS
    ADD CONSTRAINT PPPAGY_TO_PPPAGYSC FOREIGN KEY (PTCP_ID)      
    REFERENCES POLICY_PERIOD_PTCP_AGY (PTCP_ID);

ALTER TABLE POLICY_PRD_PTCP_AGY_STT_COMS
    ADD CONSTRAINT STT_TO_PPPAGYSC FOREIGN KEY (STT_ID)      
    REFERENCES STATE (STT_ID);

ALTER TABLE POLICY_PRD_PTCP_AGY_STT_COMS
    ADD CONSTRAINT CST_TO_PPPAGYSC FOREIGN KEY (COMS_SCH_TYP_CD)      
    REFERENCES COMMISSION_SCHEDULE_TYPE (COMS_SCH_TYP_CD);
    

ALTER TABLE PPPASCHIST
    ADD CONSTRAINT STT_TO_PPPAGYSCH FOREIGN KEY (STT_ID)      
    REFERENCES STATE (STT_ID);

ALTER TABLE PPPASCHIST
    ADD CONSTRAINT CST_TO_PPPAGYSCH FOREIGN KEY (COMS_SCH_TYP_CD)      
    REFERENCES COMMISSION_SCHEDULE_TYPE (COMS_SCH_TYP_CD);
    

ALTER TABLE LOB_STATE_COMMISSION
    ADD CONSTRAINT LOBT_TO_LSC FOREIGN KEY (LOB_TYP_CD)      
    REFERENCES LINE_OF_BUSINESS_TYPE (LOB_TYP_CD);
    
ALTER TABLE LOB_STATE_COMMISSION
    ADD CONSTRAINT STT_TO_LSC FOREIGN KEY (STT_ID)      
    REFERENCES STATE (STT_ID);

alter table CLTRL_CLTRL_RSN_REQD_XREF
  add constraint CLTRLT_TO_CCRRX foreign key (CLTRL_TYP_CD)
     	references COLLATERAL_TYPE (CLTRL_TYP_CD)
      	on delete restrict on update restrict;

alter table CLTRL_CLTRL_RSN_REQD_XREF
  add constraint CLTRLRRT_TO_CCRRX foreign key (CLTRL_RSN_REQD_TYP_CD)
     	references COLLATERAL_REASON_REQUIRED_TYP (CLTRL_RSN_REQD_TYP_CD)
      	on delete restrict on update restrict;

alter table COLLATERAL
  add constraint PLCY_TO_CLTRL foreign key (AGRE_ID)
     	references POLICY (AGRE_ID)
      	on delete restrict on update restrict;

alter table COLLATERAL
  add constraint CLTRLT_TO_CLTRL foreign key (CLTRL_TYP_CD)
     	references COLLATERAL_TYPE (CLTRL_TYP_CD)
      	on delete restrict on update restrict;

alter table COLLATERAL
  add constraint PLCYP_TO_CLTRL foreign key (PLCY_PRD_ID)
     	references POLICY_PERIOD (PLCY_PRD_ID)
      	on delete restrict on update restrict;


alter table COLLATERAL
  add constraint CUST_TO_CLTRL foreign key (CUST_ID)
     	references CUSTOMER (CUST_ID)
      	on delete restrict on update restrict;

alter table COLLATERAL
  add constraint CLTRLRRT_TO_CLTRL foreign key (CLTRL_RSN_REQD_TYP_CD)
     	references COLLATERAL_REASON_REQUIRED_TYP (CLTRL_RSN_REQD_TYP_CD)
      	on delete restrict on update restrict;

alter table COLLATERAL
  add constraint CRMT_TO_CLTRL foreign key (CASH_RECT_MEDA_TYP_CD)
     	references CASH_RECEIPT_MEDIA_TYPE (CASH_RECT_MEDA_TYP_CD)
      	on delete restrict on update restrict;

alter table COLLATERAL
   add constraint USER_TO_CLTRL1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table COLLATERAL
   add constraint USER_TO_CLTRL2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table COLLATERAL_HISTORY
  add constraint CLTRL_TO_CLTRLH foreign key (CLTRL_ID)
     	references COLLATERAL (CLTRL_ID)
      	on delete restrict on update restrict;

alter table COLLATERAL_HISTORY
  add constraint PLCY_TO_CLTRLH foreign key (AGRE_ID)
     	references POLICY (AGRE_ID)
      	on delete restrict on update restrict;

alter table COLLATERAL_HISTORY
  add constraint CLTRLT_TO_CLTRLH foreign key (CLTRL_TYP_CD)
     	references COLLATERAL_TYPE (CLTRL_TYP_CD)
      	on delete restrict on update restrict;

alter table COLLATERAL_HISTORY
  add constraint PLCYP_TO_CLTRLH foreign key (PLCY_PRD_ID)
     	references POLICY_PERIOD (PLCY_PRD_ID)
      	on delete restrict on update restrict;

alter table COLLATERAL_HISTORY
  add constraint CUST_TO_CLTRLH foreign key (CUST_ID)
     	references CUSTOMER (CUST_ID)
      	on delete restrict on update restrict;

alter table COLLATERAL_HISTORY
  add constraint CLTRLRRT_TO_CLTRLH foreign key (CLTRL_RSN_REQD_TYP_CD)
     	references COLLATERAL_REASON_REQUIRED_TYP (CLTRL_RSN_REQD_TYP_CD)
      	on delete restrict on update restrict;

alter table COLLATERAL_HISTORY
  add constraint CRMT_TO_CLTRLH foreign key (CASH_RECT_MEDA_TYP_CD)
     	references CASH_RECEIPT_MEDIA_TYPE (CASH_RECT_MEDA_TYP_CD)
      	on delete restrict on update restrict;

alter table COLLATERAL_HISTORY
   add constraint USER_TO_CLTRLH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table COLLATERAL_HISTORY
   add constraint USER_TO_CLTRLH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table COLLATERAL_DRAW
  add constraint CLTRL_TO_CLTRLD foreign key (CLTRL_ID)
     	references COLLATERAL (CLTRL_ID)
      	on delete restrict on update restrict;

alter table COLLATERAL_DRAW
   add constraint USER_TO_CLTRLD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table COLLATERAL_DRAW
   add constraint USER_TO_CLTRLD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

ALTER TABLE COLLATERAL_DRAW
   ADD CONSTRAINT PPG_TO_CLTRLD FOREIGN KEY (PLCY_PRD_GRP_ID)
      REFERENCES POLICY_PERIOD_GROUP (PLCY_PRD_GRP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;


alter table COLLATERAL_DRAW_HISTORY
  add constraint CLTRLD_TO_CLTRLDH foreign key (CLTRL_DRW_ID)
     	references COLLATERAL_DRAW (CLTRL_DRW_ID)
      	on delete restrict on update restrict;

alter table COLLATERAL_DRAW_HISTORY
  add constraint CLTRL_TO_CLTRLDH foreign key (CLTRL_ID)
     	references COLLATERAL (CLTRL_ID)
      	on delete restrict on update restrict;

alter table COLLATERAL_DRAW_HISTORY
   add constraint USER_TO_CLTRLDH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table COLLATERAL_DRAW_HISTORY
   add constraint USER_TO_CLTRLDH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

ALTER TABLE COLLATERAL_DRAW_HISTORY
  ADD CONSTRAINT PPG_TO_CLTRLDH FOREIGN KEY (PLCY_PRD_GRP_ID)
      REFERENCES POLICY_PERIOD_GROUP (PLCY_PRD_GRP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table POLICY_ACCOUNTING_TRANSACTION
  add constraint PLCY_TO_PLCYAT foreign key (AGRE_ID)
     	references POLICY (AGRE_ID)
      	on delete restrict on update restrict;


alter table POLICY_ACCOUNTING_TRANSACTION
  add constraint CLTRL_TO_PLCYAT foreign key (CLTRL_ID)
     	references COLLATERAL (CLTRL_ID)
      	on delete restrict on update restrict;

alter table POLICY_ACCOUNTING_TRANSACTION
  add constraint ATT_TO_PLCYAT foreign key (ACCT_TRAN_TYP_CD)
     	references ACCOUNTING_TRANSACTION_TYPE (ACCT_TRAN_TYP_CD)
      	on delete restrict on update restrict;

alter table POLICY_ACCOUNTING_TRANSACTION
   add constraint USER_TO_PLCYAT1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_ACCOUNTING_TRANSACTION
   add constraint USER_TO_PLCYAT2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
ALTER TABLE CONSTRUCTION_TERRITORY 
   ADD  CONSTRAINT CNSTTT_TO_CNSTT FOREIGN KEY (CNST_TERR_TYP_CD) 
      REFERENCES CONSTRUCTION_TERRITORY_TYPE (CNST_TERR_TYP_CD) 
	      ON DELETE RESTRICT ON UPDATE RESTRICT;


-- ECR002 Start

ALTER TABLE AGENCY_TRANSFER
ADD CONSTRAINT AGYTT_TO_AGYTRN FOREIGN KEY (TRN_TYP_CD)
REFERENCES AGENCY_TRANSFER_TYPE (TRN_TYP_CD)
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE AGENCY_TRANSFER
ADD CONSTRAINT COMSAT_TO_AGYTRN FOREIGN KEY (COMS_AGY_TYP_CD)
REFERENCES COMMISION_AGENCY_TYPE (COMS_AGY_TYP_CD)
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE AGENCY_TRANSFER
ADD CONSTRAINT CUST_TO_AGYTRN1
FOREIGN KEY(CUST_ID_SRC_AGY)
REFERENCES CUSTOMER(CUST_ID)
;

ALTER TABLE AGENCY_TRANSFER
ADD CONSTRAINT CUST_TO_AGYTRN2
FOREIGN KEY(CUST_ID_TRGT_AGY)
REFERENCES CUSTOMER(CUST_ID)
;

ALTER TABLE AGENCY_TRANSFER
ADD CONSTRAINT USER_TO_AGYTRN 
FOREIGN KEY(AUDIT_USER_ID_CREA)
REFERENCES USERS(USER_ID)
;

ALTER TABLE AGENCY_TRANSFER_AGREEMENT
ADD CONSTRAINT AGYTRN_TO_ATA
FOREIGN KEY(AGY_TRN_ID)
REFERENCES AGENCY_TRANSFER(AGY_TRN_ID)
;

ALTER TABLE AGENCY_TRANSFER_AGREEMENT
ADD CONSTRAINT CUST_TO_ATA
FOREIGN KEY(CUST_ID_TRGT_AGY)
REFERENCES CUSTOMER(CUST_ID)
;

ALTER TABLE AGENCY_TRANSFER_AGREEMENT
ADD CONSTRAINT PLCY_TO_ATA
FOREIGN KEY(AGRE_ID)
REFERENCES POLICY(AGRE_ID)
;

ALTER TABLE AGENCY_TRANSFER_AGREEMENT
ADD CONSTRAINT USER_TO_ATA 
FOREIGN KEY(AUDIT_USER_ID_CREA)
REFERENCES USERS(USER_ID)
;

ALTER TABLE AGENCY_TRANSFER_POLICY_PRD
ADD CONSTRAINT AGYTRN_TO_ATPP
FOREIGN KEY(AGY_TRN_ID)
REFERENCES AGENCY_TRANSFER(AGY_TRN_ID)
;

ALTER TABLE AGENCY_TRANSFER_POLICY_PRD
ADD CONSTRAINT PLCYP_TO_ATPP
FOREIGN KEY(PLCY_PRD_ID)
REFERENCES POLICY_PERIOD(PLCY_PRD_ID)
;

-- ECR002 End
alter table CLAIM_PTCP_RINS_CAR_CMT
   add constraint CPTCP_TO_CPRCC foreign key (CLM_PTCP_ID)
      references CLAIM_PARTICIPATION (CLM_PTCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PTCP_RINS_CAR_CMT_HIST
   add constraint CPTCP_TO_CPRCCH foreign key (CLM_PTCP_ID)
      references CLAIM_PARTICIPATION (CLM_PTCP_ID)
      on delete restrict on update restrict; 

alter table CLAIM_PARTICIPATION_RLT
   add constraint CPTCP_TO_CPTCPR foreign key (CLM_PTCP_ID)
      references CLAIM_PARTICIPATION (CLM_PTCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_RLT
   add constraint RLT_TO_CPTCPR foreign key (RLT_ID)
      references RELATIONSHIP (RLT_ID)
      on delete restrict on update restrict;


alter table EXTERNAL_CONTENT_PARM_CNFG
    add constraint ECTN_TO_ECPC foreign key (EXTRNL_CTN_ID)
       references EXTERNAL_CONTENT (EXTRNL_CTN_ID)
       on delete restrict on update restrict;

alter table EXTERNAL_CONTENT
    add constraint ACT_TO_ECNT foreign key (APP_CNTX_TYP_CD)
       references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
       on delete restrict on update restrict;
       
alter table EXTERNAL_CONTENT
    add constraint ASCT_TO_ECNT foreign key (APP_SUB_CNTX_TYP_CD)
       references APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD)
       on delete restrict on update restrict;

alter table EXTERNAL_CONTENT_PARM_CNFG
   add constraint ADT_TO_ECPC foreign key (APP_DATA_TYP_CD)
       references  APPLICATION_DATA_TYPE (APP_DATA_TYP_CD)
       on delete restrict on update restrict;

alter table EXTERNAL_CONTENT_PARM_CNFG
   add constraint UILDC_TO_ECPC foreign key (UI_LNK_DATA_CD_ID)
       references  USER_INTERFACE_LINK_DATA_CD (UI_LNK_DATA_CD_ID)
       on delete restrict on update restrict;
       
alter table COLLECTION_SCHEDULE
   add constraint CSPPT_TO_CLCTS foreign key (CLCT_SCH_PAY_PLN_TYP_CD)
      references COLLECTION_SCH_PAY_PLN_TYP (CLCT_SCH_PAY_PLN_TYP_CD)
      on delete restrict on update restrict;
  

alter table COLLECTION_SCHEDULE
   add constraint PFT_TO_CLCTS foreign key (PFT_ID)
      references POLICY_FINANCIAL_TRANSACTION (PFT_ID)
      on delete restrict on update restrict;

ALTER TABLE COLLECTION_SCHEDULE
   ADD CONSTRAINT PPG_TO_CLCTS FOREIGN KEY (PLCY_PRD_GRP_ID)
      REFERENCES POLICY_PERIOD_GROUP (PLCY_PRD_GRP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table COLLECTION_SCHEDULE_HISTORY
   add constraint CS_TO_CLCTSH foreign key (CLCT_SCH_ID)
      references COLLECTION_SCHEDULE (CLCT_SCH_ID)
      on delete restrict on update restrict;  

alter table COLLECTION_SCHEDULE_HISTORY
   add constraint CSPPT_TO_CLCTSH foreign key (CLCT_SCH_PAY_PLN_TYP_CD)
      references COLLECTION_SCH_PAY_PLN_TYP (CLCT_SCH_PAY_PLN_TYP_CD)
      on delete restrict on update restrict;
  

alter table COLLECTION_SCHEDULE_HISTORY
   add constraint PFT_TO_CLCTSH foreign key (PFT_ID)
      references POLICY_FINANCIAL_TRANSACTION (PFT_ID)
      on delete restrict on update restrict;  
  
ALTER TABLE COLLECTION_SCHEDULE_HISTORY
   ADD CONSTRAINT PPG_TO_CLCTSH FOREIGN KEY (PLCY_PRD_GRP_ID)
      REFERENCES POLICY_PERIOD_GROUP (PLCY_PRD_GRP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table COLLECTION_SCHEDULE_INSTL
   add constraint CS_TO_CSI foreign key (CLCT_SCH_ID)
      references COLLECTION_SCHEDULE (CLCT_SCH_ID)
      on delete restrict on update restrict;  

alter table COLLECTION_SCHEDULE_INSTL_HIST
   add constraint CSI_TO_CSIH foreign key (CLCT_SCH_INSTL_ID)
      references COLLECTION_SCHEDULE_INSTL (CLCT_SCH_INSTL_ID)
      on delete restrict on update restrict;  

alter table COLLECTION_SCHEDULE_INSTL_HIST
   add constraint CS_TO_CSIH foreign key (CLCT_SCH_ID)
      references COLLECTION_SCHEDULE (CLCT_SCH_ID)
      on delete restrict on update restrict; 

alter table COLLECTION_SCHEDULE_INSTL_DTL
   add constraint CSI_TO_CSID foreign key (CLCT_SCH_INSTL_ID)
      references COLLECTION_SCHEDULE_INSTL (CLCT_SCH_INSTL_ID)
      on delete restrict on update restrict;

alter table COLLECTION_SCHEDULE_INSTL_DTL
   add constraint CLCTSAT_TO_CSID foreign key (CLCT_SCH_AMT_TYP_CD)
      references  COLLECTION_SCHEDULE_AMT_TYP (CLCT_SCH_AMT_TYP_CD)
      on delete restrict on update restrict;


alter table COLLECTION_SCH_INSTL_DTL_HIST
   add constraint CSID_TO_CSIDH foreign key (CLCT_SCH_INSTL_DTL_ID)
      references COLLECTION_SCHEDULE_INSTL_DTL (CLCT_SCH_INSTL_DTL_ID)
      on delete restrict on update restrict;

alter table COLLECTION_SCH_INSTL_DTL_HIST
   add constraint CSI_TO_CSIDH foreign key (CLCT_SCH_INSTL_ID)
      references COLLECTION_SCHEDULE_INSTL (CLCT_SCH_INSTL_ID)
      on delete restrict on update restrict;

alter table COLLECTION_SCH_INSTL_DTL_HIST
   add constraint CLCTSAT_TO_CSIDH foreign key (CLCT_SCH_AMT_TYP_CD)
      references COLLECTION_SCHEDULE_AMT_TYP (CLCT_SCH_AMT_TYP_CD)
      on delete restrict on update restrict;


ALTER TABLE CUSTOMER_OWNERSHIP
    ADD CONSTRAINT OWNSHPT_TO_CUSTO FOREIGN KEY(OWNSHP_TYP_CD)
	REFERENCES OWNERSHIP_TYPE(OWNSHP_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE CUSTOMER_OWNERSHIP
    ADD CONSTRAINT USER_TO_CUSTO FOREIGN KEY(AUDIT_USER_ID_UPDT)
	REFERENCES USERS(USER_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE CUSTOMER_OWNERSHIP
    ADD CONSTRAINT CUST_TO_CUSTO FOREIGN KEY(CUST_ID)
	REFERENCES CUSTOMER(CUST_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE CUSTOMER_OWNERSHIP
    ADD CONSTRAINT USER_TO_CUSTO1 FOREIGN KEY(AUDIT_USER_ID_CREA)
	REFERENCES USERS(USER_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;  


ALTER TABLE CUSTOMER_OWNERSHIP_HIST
    ADD CONSTRAINT OWNSHPT_TO_CUSTOH FOREIGN KEY(OWNSHP_TYP_CD)
	REFERENCES OWNERSHIP_TYPE(OWNSHP_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE CUSTOMER_OWNERSHIP_HIST
    ADD CONSTRAINT USER_TO_CUSTOH FOREIGN KEY(AUDIT_USER_ID_CREA)
	REFERENCES USERS(USER_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE CUSTOMER_OWNERSHIP_HIST
    ADD CONSTRAINT USER_TO_CUSTOH1 FOREIGN KEY(AUDIT_USER_ID_UPDT)
	REFERENCES USERS(USER_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE CUSTOMER_OWNERSHIP_HIST
    ADD CONSTRAINT CUSTO_TO_CUSTOH FOREIGN KEY(CUST_OWNSHP_ID)
	REFERENCES CUSTOMER_OWNERSHIP(CUST_OWNSHP_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE CUSTOMER_OWNERSHIP_HIST
    ADD CONSTRAINT CUST_TO_CUSTOH FOREIGN KEY(CUST_ID)
	REFERENCES CUSTOMER(CUST_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT; 


ALTER TABLE CUSTOMER_OWNERSHIP_DETAIL
    ADD CONSTRAINT USER_TO_CUSTOD FOREIGN KEY(AUDIT_USER_ID_CREA)
	REFERENCES USERS(USER_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE CUSTOMER_OWNERSHIP_DETAIL
    ADD CONSTRAINT USER_TO_CUSTOD1 FOREIGN KEY(AUDIT_USER_ID_UPDT)
	REFERENCES USERS(USER_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE CUSTOMER_OWNERSHIP_DETAIL
    ADD CONSTRAINT CUSTO_TO_CUSTOD FOREIGN KEY(CUST_OWNSHP_ID)
	REFERENCES CUSTOMER_OWNERSHIP(CUST_OWNSHP_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE CUSTOMER_OWNERSHIP_DETAIL
    ADD CONSTRAINT CUST_TO_CUSTOD FOREIGN KEY(CUST_ID)
	REFERENCES CUSTOMER(CUST_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE CUSTOMER_OWNERSHIP_DETAIL_HIST
    ADD CONSTRAINT USER_TO_CUSTODH FOREIGN KEY(AUDIT_USER_ID_CREA)
	REFERENCES USERS(USER_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE CUSTOMER_OWNERSHIP_DETAIL_HIST
    ADD CONSTRAINT USER_TO_CUSTODH1 FOREIGN KEY(AUDIT_USER_ID_UPDT)
	REFERENCES USERS(USER_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE CUSTOMER_OWNERSHIP_DETAIL_HIST
    ADD CONSTRAINT CUSTO_TO_CUSTODH FOREIGN KEY(CUST_OWNSHP_ID)
	REFERENCES CUSTOMER_OWNERSHIP(CUST_OWNSHP_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE CUSTOMER_OWNERSHIP_DETAIL_HIST
    ADD CONSTRAINT CUSTOD_TO_CUSTODH FOREIGN KEY(CUST_OWNSHP_DTL_ID)
	REFERENCES CUSTOMER_OWNERSHIP_DETAIL(CUST_OWNSHP_DTL_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CUSTOMER_OWNERSHIP_DETAIL_HIST
    ADD CONSTRAINT CUST_TO_CUSTODH FOREIGN KEY(CUST_ID)
	REFERENCES CUSTOMER(CUST_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
-- GAP 32 START
alter table CASE_DTL_RISK_APRS_CASE_SERV
   add constraint RACST_TO_CDRACS foreign key (RISK_APRS_CASE_SERV_TYP_CD)
      references RISK_APPRAISAL_CASE_SERV_TYP (RISK_APRS_CASE_SERV_TYP_CD)
      on delete restrict on update restrict;

alter table CASE_DTL_RISK_APRS_CASE_SERV
   add constraint USER_TO_CDRACS1 foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CASE_DTL_RISK_APRS_CASE_SERV
   add constraint CASE_TO_CDRACS foreign key (CASE_ID)
      references CASES (CASE_ID)
      on delete restrict on update restrict;

alter table CASE_DTL_RISK_APRS_CASE_SERV
   add constraint USER_TO_CDRACS2 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CASE_DTL_RISK_APRS_CASE_SERV
   add constraint USER_TO_CDRACS3 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CASE_RISK_APRS_CASE_SERV_XREF
   add constraint CASET_TO_CRACSX foreign key (CASE_TYP_CD)
      references CASE_TYPE (CASE_TYP_CD)
      on delete restrict on update restrict;
      
alter table CASE_RISK_APRS_CASE_SERV_XREF
   add constraint RACST_TO_CRACSX foreign key (RISK_APRS_CASE_SERV_TYP_CD)
      references RISK_APPRAISAL_CASE_SERV_TYP (RISK_APRS_CASE_SERV_TYP_CD)
      on delete restrict on update restrict;
      

alter table CASE_TEMPLATE
add constraint CPTCPT_TO_CTMPL foreign key (CASE_PTCP_TYP_CD)
references CASE_PARTICIPATION_TYPE (CASE_PTCP_TYP_CD)
on delete restrict on update restrict;

alter table CASE_TEMPLATE
add constraint CASET_TO_CTMPL foreign key (CASE_TYP_CD)
references CASE_TYPE (CASE_TYP_CD)
on delete restrict on update restrict;

alter table CASE_TEMPLATE
add constraint CSRCT_TO_CTMPL foreign key (CASE_SRC_TYP_CD)
references CASE_SOURCE_TYPE (CASE_SRC_TYP_CD)
on delete restrict on update restrict;

alter table CASE_TEMPLATE
add constraint CASECT_TO_CTMPL foreign key (CASE_CTG_TYP_CD)
references CASE_CATEGORY_TYPE (CASE_CTG_TYP_CD)
on delete restrict on update restrict;

alter table CASE_TEMPLATE
add constraint CASEPT_TO_CTMPL foreign key (CASE_PRTY_TYP_CD)
references CASE_PRIORITY_TYPE (CASE_PRTY_TYP_CD)
on delete restrict on update restrict;

alter table ACTION_RULE_RESULT
add constraint CTMPL_TO_ARR foreign key (CASE_TMPL_ID)
references CASE_TEMPLATE (CASE_TMPL_ID)
on delete restrict on update restrict;

alter table CASE_TYPE
add constraint ADT_TO_CASET foreign key (APP_DATA_TYP_CD)
references APPLICATION_DATA_TYPE (APP_DATA_TYP_CD)
on delete restrict on update restrict;

ALTER TABLE CASE_DETAIL_RISK_APPRAISAL ADD CONSTRAINT PPRISK_TO_CDRA FOREIGN KEY (plcy_prd_risk_id) REFERENCES POLICY_PERIOD_RISK (plcy_prd_risk_id)ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CASE_DETAIL_RISK_APPRAISAL ADD CONSTRAINT USER_TO_CDRA FOREIGN KEY (user_id) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CASE_DETAIL_RISK_APPRAISAL ADD CONSTRAINT CASE_TO_CDRA FOREIGN KEY (case_id) REFERENCES CASES (case_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CASE_DETAIL_RISK_APPRAISAL ADD CONSTRAINT CDRAST_TO_CDRA FOREIGN KEY (case_dtl_risk_aprs_sts_typ_cd) REFERENCES CASE_DETAIL_RISK_APRS_STS_TYP (case_dtl_risk_aprs_sts_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE CASE_DTL_RISK_APRS_PRFL_STMT ADD CONSTRAINT CDRA_TO_CDRAPS FOREIGN KEY (cdra_id) REFERENCES CASE_DETAIL_RISK_APPRAISAL (cdra_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CASE_DTL_RISK_APRS_PRFL_STMT ADD CONSTRAINT PRFLS_TO_CDRAPS FOREIGN KEY (prfl_stmt_id) REFERENCES PROFILE_STATEMENT (prfl_stmt_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CASE_DTL_RISK_APRS_PRFL_STMT ADD CONSTRAINT PSVT_TO_CDRAPS FOREIGN KEY (prfl_sel_val_typ_cd) REFERENCES PROFILE_SELECTION_VALUE_TYPE (prfl_sel_val_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CASE_DTL_RISK_APRS_PRFL_STMT ADD CONSTRAINT PSSN_TO_CDRAPS FOREIGN KEY (prfl_stmt_sel_nest_id) REFERENCES PROFILE_STATEMENT_SEL_NEST (prfl_stmt_sel_nest_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_PROFILE_STATEMENT ADD CONSTRAINT PRFLS_TO_CASEDPS FOREIGN KEY (prfl_stmt_id) REFERENCES PROFILE_STATEMENT (prfl_stmt_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CASE_DETAIL_PROFILE_STATEMENT ADD CONSTRAINT CDPCT_TO_CASEDPS FOREIGN KEY (case_dtl_prfl_ctg_typ_cd) REFERENCES CASE_DETAIL_PROFILE_CTG_TYP (case_dtl_prfl_ctg_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CASE_DETAIL_PROFILE_STATEMENT ADD CONSTRAINT CASEDT_TO_CASEDPS FOREIGN KEY (case_dtl_typ_cd) REFERENCES CASE_DETAIL_TYPE (case_dtl_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CASE_DETAIL_PROFILE_STATEMENT ADD CONSTRAINT CASET_TO_CASEDPS FOREIGN KEY (case_typ_cd) REFERENCES CASE_TYPE (case_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
-- GAP32 END

alter table CASE_DTL_RSK_APRS_CS_SERV_HIST
   add constraint CDRACS_TO_CDRACSH foreign key (CDRACS_ID)
      references CASE_DTL_RISK_APRS_CASE_SERV (CDRACS_ID)
      on delete restrict on update restrict;

alter table CASE_DTL_RSK_APRS_CS_SERV_HIST
   add constraint RACST_TO_CDRACSH foreign key (RISK_APRS_CASE_SERV_TYP_CD)
      references RISK_APPRAISAL_CASE_SERV_TYP (RISK_APRS_CASE_SERV_TYP_CD)
      on delete restrict on update restrict;

alter table CASE_DTL_RSK_APRS_CS_SERV_HIST
   add constraint USER_TO_CDRACSH1 foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CASE_DTL_RSK_APRS_CS_SERV_HIST
   add constraint CASE_TO_CDRACSH foreign key (CASE_ID)
      references CASES (CASE_ID)
      on delete restrict on update restrict;

alter table CASE_DTL_RSK_APRS_CS_SERV_HIST
   add constraint USER_TO_CDRACSH2 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CASE_DTL_RSK_APRS_CS_SERV_HIST
   add constraint USER_TO_CDRACSH3 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

ALTER TABLE CASE_DETAIL_RISK_APRS_HIST ADD CONSTRAINT CDRA_TO_CDRAH FOREIGN KEY (cdra_id) REFERENCES CASE_DETAIL_RISK_APPRAISAL (cdra_id)ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CASE_DETAIL_RISK_APRS_HIST ADD CONSTRAINT PPRISK_TO_CDRAH FOREIGN KEY (plcy_prd_risk_id) REFERENCES POLICY_PERIOD_RISK (plcy_prd_risk_id)ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CASE_DETAIL_RISK_APRS_HIST ADD CONSTRAINT USER_TO_CDRAH FOREIGN KEY (user_id) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CASE_DETAIL_RISK_APRS_HIST ADD CONSTRAINT CASE_TO_CDRAH FOREIGN KEY (case_id) REFERENCES CASES (case_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CASE_DETAIL_RISK_APRS_HIST ADD CONSTRAINT CDRAST_TO_CDRAH FOREIGN KEY (case_dtl_risk_aprs_sts_typ_cd) REFERENCES CASE_DETAIL_RISK_APRS_STS_TYP (case_dtl_risk_aprs_sts_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CASE_DETAIL_RISK_APRS_HIST ADD CONSTRAINT USER_TO_CDRAH1 FOREIGN KEY (AUDIT_USER_ID_CREA) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CASE_DETAIL_RISK_APRS_HIST ADD CONSTRAINT USER_TO_CDRAH2 FOREIGN KEY (AUDIT_USER_ID_UPDT) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE CASE_DTL_RSK_APRS_PRFL_ST_HIST ADD CONSTRAINT CDRAPS_TO_CDRAPSH FOREIGN KEY (cdraps_id) REFERENCES CASE_DTL_RISK_APRS_PRFL_STMT (cdraps_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CASE_DTL_RSK_APRS_PRFL_ST_HIST ADD CONSTRAINT CDRA_TO_CDRAPSH FOREIGN KEY (cdra_id) REFERENCES CASE_DETAIL_RISK_APPRAISAL (cdra_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CASE_DTL_RSK_APRS_PRFL_ST_HIST ADD CONSTRAINT PRFLS_TO_CDRAPSH FOREIGN KEY (prfl_stmt_id) REFERENCES PROFILE_STATEMENT (prfl_stmt_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CASE_DTL_RSK_APRS_PRFL_ST_HIST ADD CONSTRAINT PSVT_TO_CDRAPSH FOREIGN KEY (prfl_sel_val_typ_cd) REFERENCES PROFILE_SELECTION_VALUE_TYPE (prfl_sel_val_typ_cd) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CASE_DTL_RSK_APRS_PRFL_ST_HIST ADD CONSTRAINT PSSN_TO_CDRAPSH FOREIGN KEY (prfl_stmt_sel_nest_id) REFERENCES PROFILE_STATEMENT_SEL_NEST (prfl_stmt_sel_nest_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CASE_DTL_RSK_APRS_PRFL_ST_HIST ADD CONSTRAINT USER_TO_CDRAPSH1 FOREIGN KEY (AUDIT_USER_ID_CREA) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE CASE_DTL_RSK_APRS_PRFL_ST_HIST ADD CONSTRAINT USER_TO_CDRAPSH2 FOREIGN KEY (AUDIT_USER_ID_UPDT) REFERENCES USERS (user_id) ON DELETE RESTRICT ON UPDATE RESTRICT;

--Alter for OTHER_CARRIER_CLAIM_INDM_PAY

ALTER TABLE OTHER_CARRIER_CLAIM_INDM_PAY
	ADD CONSTRAINT bnftt_TO_OCCIP FOREIGN KEY(BNFT_TYP_CD)
	REFERENCES BENEFIT_TYPE(BNFT_TYP_CD)
	on delete restrict on update restrict;  

ALTER TABLE OTHER_CARRIER_CLAIM_INDM_PAY
	ADD CONSTRAINT OCC_TO_OCCIP FOREIGN KEY(OTHR_CAR_CLM_ID)  
	REFERENCES OTHER_CARRIER_CLAIM(OTHR_CAR_CLM_ID)
	on delete restrict on update restrict;

ALTER TABLE OTHER_CARRIER_CLAIM_INDM_PAY
	ADD CONSTRAINT USER_TO_OCCIP1 FOREIGN  KEY(AUDIT_USER_ID_CREA)
	REFERENCES USERS(USER_ID)
	on delete restrict on update restrict; 

ALTER TABLE OTHER_CARRIER_CLAIM_INDM_PAY
	ADD CONSTRAINT USER_TO_OCCIP2 FOREIGN   KEY(AUDIT_USER_ID_UPDT)
	REFERENCES USERS(USER_ID)
	on delete restrict on update restrict; 


--ALTER
ALTER TABLE OTHR_CAR_CLM_VAR_CALC_ATTR
	ADD CONSTRAINT OCCIP_TO_OCCVCA FOREIGN KEY(OTHR_CAR_CLM_INDM_PAY_ID)
	REFERENCES OTHER_CARRIER_CLAIM_INDM_PAY(OTHR_CAR_CLM_INDM_PAY_ID)
	on delete restrict on update restrict;

ALTER TABLE OTHR_CAR_CLM_VAR_CALC_ATTR
	ADD CONSTRAINT OCCVCAT_TO_OCCVCA FOREIGN KEY(OCCVCAT_CD) 
REFERENCES OTHR_CAR_CLM_VAR_CALC_ATTR_TYP(OCCVCAT_CD)
	on delete restrict on update restrict; 

ALTER TABLE OTHR_CAR_CLM_VAR_CALC_ATTR
	ADD CONSTRAINT USER_TO_OCCVCA1 FOREIGN  KEY(AUDIT_USER_ID_CREA)
	REFERENCES USERS(USER_ID)
	on delete restrict on update restrict; 

ALTER TABLE OTHR_CAR_CLM_VAR_CALC_ATTR
	ADD CONSTRAINT USER_TO_OCCVCA2 FOREIGN  KEY(AUDIT_USER_ID_UPDT)
	REFERENCES USERS(USER_ID)
	on delete restrict on update restrict;


--Alter for OTHR_CAR_CLM_VCA_BNFT_XREF

ALTER TABLE OTHR_CAR_CLM_VCA_BNFT_XREF
	ADD CONSTRAINT OCCVCAT_TO_OCCVBX FOREIGN KEY(OCCVCAT_CD) 
	REFERENCES OTHR_CAR_CLM_VAR_CALC_ATTR_TYP(OCCVCAT_CD)
	on delete restrict on update restrict;

ALTER TABLE OTHR_CAR_CLM_VCA_BNFT_XREF
	ADD CONSTRAINT bnftt_TO_OCCVBX FOREIGN KEY(BNFT_TYP_CD) 
	REFERENCES BENEFIT_TYPE(BNFT_TYP_CD)
	on delete restrict on update restrict;


-- Fit 76a

Alter table MIRA_JUR_CST_CNTR_CTG_XREF
   add constraint JT_TO_MJCCCX foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

Alter table MIRA_JUR_CST_CNTR_CTG_XREF
   add constraint CCCT_TO_MJCCCX foreign key (CST_CNTR_CTG_TYP_CD)
      references COST_CENTER_CATEGORY_TYPE (CST_CNTR_CTG_TYP_CD)
      on delete restrict on update restrict;

Alter table MIRA_INSURANCE_COMPANY_XREF
   add constraint INSCT_TO_MICX foreign key (INS_CMPY_TYP_ID)
      references INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID) 
	  on delete restrict on update restrict;
alter table TASK_HISTORY
   add constraint TASK_TO_TASKH foreign key (TASK_ID)
      references TASK (TASK_ID)
     on delete restrict on update restrict;

alter table TASK_HISTORY
   add constraint ACT_TO_TASKH foreign key (APP_CNTX_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
     on delete restrict on update restrict;

alter table TASK_HISTORY
   add constraint ADL_TO_TASKH foreign key (APP_DTL_LVL_CD)
      references APPLICATION_DETAIL_LEVEL (APP_DTL_LVL_CD)
     on delete restrict on update restrict;

alter table TASK_HISTORY
   add constraint ASCT_TO_TASKH foreign key (APP_SUB_CNTX_TYP_CD)
      references APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD)
     on delete restrict on update restrict;

alter table TASK_HISTORY
   add constraint COND_TO_TASKH foreign key (COND_ID)
      references "CONDITION" (COND_ID)
     on delete restrict on update restrict;

alter table TASK_HISTORY
   add constraint FOLD_TO_TASKH foreign key (FOLD_ID)
      references FOLDER (FOLD_ID)
     on delete restrict on update restrict;

alter table TASK_HISTORY
   add constraint OU_TO_TASKH foreign key (ORG_UNT_ID)
      references ORGANIZATIONAL_UNIT (ORG_UNT_ID)
     on delete restrict on update restrict;

alter table TASK_HISTORY
   add constraint TASKH_TO_TASKH foreign key (TASK_LNK_ID)
      references TASK (TASK_ID)
      on delete restrict on update restrict;

alter table TASK_HISTORY
   add constraint TPT_TO_TASKH foreign key (TASK_PRTY_TYP_CD)
      references TASK_PRIORITY_TYPE (TASK_PRTY_TYP_CD)
     on delete restrict on update restrict;

alter table TASK_HISTORY
   add constraint TST_TO_TASKH foreign key (TASK_STS_TYP_CD)
      references TASK_STATUS_TYPE (TASK_STS_TYP_CD)
     on delete restrict on update restrict;

alter table TASK_HISTORY
   add constraint TST_TO_TASKH2 foreign key (TASK_PR_STS_TYP_CD)
      references TASK_STATUS_TYPE (TASK_STS_TYP_CD)
     on delete restrict on update restrict;

alter table TASK_HISTORY
   add constraint TTYP_TO_TASKH foreign key (TASK_TYP_CD)
      references TASK_TYPE (TASK_TYP_CD)
     on delete restrict on update restrict;

alter table TASK_HISTORY
   add constraint TASKT_TO_TASKH foreign key (TASK_TMPL_ID)
      references TASK_TEMPLATE (TASK_TMPL_ID)
     on delete restrict on update restrict;

alter table TASK_HISTORY
   add constraint USER_TO_TASKH foreign key (USER_ID)
      references USERS (USER_ID)
     on delete restrict on update restrict;

alter table TASK_HISTORY
   add constraint USER_TO_TASKH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
     on delete restrict on update restrict;

alter table TASK_HISTORY
   add constraint USER_TO_TASKH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
     on delete restrict on update restrict;


     ALTER TABLE TASK_ESCALATION_HISTORY
    ADD CONSTRAINT TPT_TO_TEH
	FOREIGN KEY(TASK_PRTY_TYP_CD)
	REFERENCES TASK_PRIORITY_TYPE(TASK_PRTY_TYP_CD)
	on delete restrict on update restrict;

ALTER TABLE TASK_ESCALATION_HISTORY
    ADD CONSTRAINT TASK_TO_TEH
	FOREIGN KEY(TASK_ID)
	REFERENCES TASK(TASK_ID)
	on delete restrict on update restrict;

	ALTER TABLE TASK_DOCUMENT_KEY_HISTORY
    ADD CONSTRAINT TDK_TO_IDK_H
	FOREIGN KEY(INOW_DOCM_KY_ID)
	REFERENCES INOW_DOCUMENT_KEY(INOW_DOCM_KY_ID)
on delete restrict on update restrict;

ALTER TABLE TASK_DOCUMENT_KEY_HISTORY
    ADD CONSTRAINT TASK_TO_TDK_H
	FOREIGN KEY(TASK_ID)
	REFERENCES TASK(TASK_ID)
on delete restrict on update restrict;	  

ALTER TABLE FINANCIAL_TRAN_CTG_ROLLUP_RL
   ADD CONSTRAINT FTC_TO_FTCRR FOREIGN KEY (FNCL_TRAN_CLS_ID)
      REFERENCES FINANCIAL_TRANSACTION_CLASS (FNCL_TRAN_CLS_ID)
      on delete restrict on update restrict;

ALTER TABLE BSDA_PLCY_FNCL_TRAN_XREF
   ADD CONSTRAINT BPFTX_TO_BSDA FOREIGN KEY (BILL_SCH_DTL_AMT_ID)
      REFERENCES BILLING_SCHEDULE_DETAIL_AMOUNT (BILL_SCH_DTL_AMT_ID)
      on delete restrict on update restrict;

ALTER TABLE BSDA_PLCY_FNCL_TRAN_XREF
   ADD CONSTRAINT BPFTX_TO_PFT FOREIGN KEY (PFT_ID)
      REFERENCES POLICY_FINANCIAL_TRANSACTION (PFT_ID)
      on delete restrict on update restrict;
      
 ALTER TABLE POLICY_ACCOUNTING_TRANSACTION
 ADD  CONSTRAINT JUR_TO_PAT FOREIGN KEY (JUR_TYP_CD)
 REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
 on delete restrict on update restrict;
 
ALTER TABLE CLCT_SCH_AMT_FNCL_TRAN_XREF
   ADD CONSTRAINT FTC_TO_CSAFTX FOREIGN KEY (FNCL_TRAN_CLS_ID)
      REFERENCES FINANCIAL_TRANSACTION_CLASS (FNCL_TRAN_CLS_ID)
      on delete restrict on update restrict;


alter table CSID_PLCY_FNCL_TRAN_XREF
   add constraint PFT_TO_CPFTX foreign key (PFT_ID)
      references POLICY_FINANCIAL_TRANSACTION (PFT_ID)
      on delete restrict on update restrict;
      
alter table CSID_PLCY_FNCL_TRAN_XREF
   add constraint CLCT_TO_CPFTX foreign key (CLCT_SCH_INSTL_DTL_ID)
      references COLLECTION_SCHEDULE_INSTL_DTL (CLCT_SCH_INSTL_DTL_ID)
      on delete restrict on update restrict;

 

alter table PAYMENT_REQUEST_TYPE
   add constraint ACT_TO_PRTYP foreign key (APP_CNTX_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table PAYMENT_REQUEST_TYPE
   add constraint ASCT_TO_PRTYP foreign key (APP_SUB_CNTX_TYP_CD)
      references APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD);
ALTER TABLE CLAIM_DECISION_DETAIL
  add constraint CD_TO_CDD foreign key (CLM_DCSN_ID)
  references CLAIM_DECISION (CLM_DCSN_ID)
  on delete restrict on update restrict;    

ALTER TABLE CLAIM_DECISION_DETAIL
   add constraint IP_TO_CDD  foreign key (INDM_PAY_ID)
   references INDEMNITY_PAYMENT (INDM_PAY_ID)
   on delete restrict on update restrict; 

alter table EXPERIENCE_MODIFIER
   add constraint STT_TO_EXPM foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table EXPERIENCE_MODIFIER_HISTORY
   add constraint STT_TO_EXPMH foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

alter table LOCATION_RETIREMENT_AGE
   add constraint CNTRY_TO_LRA foreign key (CNTRY_ID)
      references COUNTRY (CNTRY_ID)
      on delete restrict on update restrict;

alter table WBFT_CEST_XREF
   add constraint WCX_TO_CEST foreign key (CTL_ELEM_SUB_TYP_ID)
      references CONTROL_ELEMENT_SUB_TYPE (CTL_ELEM_SUB_TYP_ID)
      on delete restrict on update restrict;

alter table WBFT_CEST_XREF
   add constraint WCX_TO_WBFT foreign key (WCPOLS_BILL_FREQ_TYP_ID)
      references WCPOLS_BILLING_FREQUENCY_TYPE (WCPOLS_BILL_FREQ_TYP_ID)
      on delete restrict on update restrict;

alter table FILING_TYPE
	add constraint FRMTT_TO_FT foreign key (FRMT_TYP_CD)
	references FORMAT_TYPE (FRMT_TYP_CD)
	on delete restrict on update restrict;

-- GAP 123 BEGIN
alter table POLICY_PERIOD_PTCP_CNTC
    add constraint PPP_TO_PPPCNTC foreign key (PTCP_ID)    
    references POLICY_PERIOD_PARTICIPATION(PTCP_ID)
    on delete restrict on update restrict;

alter table POLICY_PERIOD_PTCP_CNTC
    add constraint JTT_TO_PPPCNTC foreign key (JOB_TTL_TYP_CD)    
    references JOB_TITLE_TYPE(JOB_TTL_TYP_CD)
    on delete restrict on update restrict;

alter table POLICY_PERIOD_PTCP_CNTC
    add constraint PCT_TO_PPPCNTC foreign key (PTCP_CNTC_TYP_CD)    
    references PARTICIPATION_CONTACT_TYPE(PTCP_CNTC_TYP_CD)
    on delete restrict on update restrict;

alter table POLICY_PERIOD_PTCP_CNTC_HIST
   add constraint PPPH_TO_PPPCH foreign key (HIST_ID)
      references POLICY_PERIOD_PTCP_HIST (HIST_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_PTCP_CNTC_HIST
    add constraint JTT_TO_PPPCNTCH foreign key (JOB_TTL_TYP_CD)    
    references JOB_TITLE_TYPE(JOB_TTL_TYP_CD)
    on delete restrict on update restrict;

alter table POLICY_PERIOD_PTCP_CNTC_HIST
    add constraint PCT_TO_PPPCNTCH foreign key (PTCP_CNTC_TYP_CD)    
    references PARTICIPATION_CONTACT_TYPE(PTCP_CNTC_TYP_CD)
    on delete restrict on update restrict;
-- GAP 123 END

alter table RATING_ELEMENT_MERIT_RATE_TYPE
   add constraint RELT_TO_REMRT foreign key (RT_ELEM_LMCJ_TYP_ID)
       references RATING_ELEMENT_LMCJ_TYPE (RT_ELEM_LMCJ_TYP_ID)
       on delete restrict on update restrict;
       
ALTER TABLE RATING_VARIABLE_RT_ELEM_XREF
 add constraint RV_TO_RVREX foreign key (RT_VAR_ID)
      references RATING_VARIABLE (RT_VAR_ID)
      on delete restrict on update restrict;

ALTER TABLE RATING_VARIABLE_RT_ELEM_XREF
 add constraint RTET_TO_RVREX foreign key (RT_ELEM_TYP_CD)
      references RATING_ELEMENT_TYPE (RT_ELEM_TYP_CD)
      on delete restrict on update restrict;
--alter table RETROSPECTIVE_PREM_ELEM_TYP
 --  add constraint RTET_TO_RPET foreign key (RT_ELEM_TYP_CD)
--      references RATING_ELEMENT_TYPE (RT_ELEM_TYP_CD)
--      on delete restrict on update restrict;

alter table RETROSPECTIVE_PREMIUM_CALC
   add constraint PLCYP_TO_RPCLC foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table RETROSPECTIVE_PREMIUM_CALC
   add constraint PPRE_TO_RPCLC foreign key (PPRE_ID)
      references POLICY_PERIOD_RATING_ELEMENT (PPRE_ID)
      on delete restrict on update restrict;
      
alter table RETROSPECTIVE_PREMIUM_CALC
   add constraint USER_TO_RPCLC1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table RETROSPECTIVE_PREMIUM_CALC
   add constraint USER_TO_RPCLC2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table RETROSPECTIVE_PREM_CALC_DTL
   add constraint RPCLC_TO_RPCD foreign key (RTSP_PREM_CALC_ID)
      references RETROSPECTIVE_PREMIUM_CALC (RTSP_PREM_CALC_ID)
      on delete restrict on update restrict;

alter table RETROSPECTIVE_PREM_CALC_DTL
   add constraint RPET_TO_RPCD foreign key (RTSP_PREM_ELEM_TYP_CD)
      references RETROSPECTIVE_PREM_ELEM_TYP (RTSP_PREM_ELEM_TYP_CD)
      on delete restrict on update restrict;

alter table RETROSPECTIVE_PREM_CALC_DTL
   add constraint JT_TO_RPCD foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table RETROSPECTIVE_PREM_CALC_DTL
   add constraint USER_TO_RPCD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table RETROSPECTIVE_PREM_CALC_DTL
   add constraint USER_TO_RPCD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

ALTER TABLE IDENTIFIER_TYPE_PTCP_TYP_XREF
            ADD  CONSTRAINT PTCPT_TO_ITPTX FOREIGN KEY(PTCP_TYP_CD)     
            REFERENCES PARTICIPATION_TYPE(PTCP_TYP_CD) ;

ALTER TABLE IDENTIFIER_TYPE_PTCP_TYP_XREF
            ADD CONSTRAINT ID_TO_ITPTX FOREIGN KEY(ID_TYP_CD)
            REFERENCES IDENTIFIER_TYPE(ID_TYP_CD);

ALTER TABLE CLAIM_PARTICIPATION_MCO
            ADD  CONSTRAINT CPTCP_TO_CPM FOREIGN KEY(CLM_PTCP_ID)
            REFERENCES CLAIM_PARTICIPATION(CLM_PTCP_ID) ;

ALTER TABLE CLAIM_PARTICIPATION_MCO
            ADD  CONSTRAINT USER_TO_CPM1 FOREIGN KEY(AUDIT_USER_ID_CREA)
            REFERENCES USERS(USER_ID);

ALTER TABLE CLAIM_PARTICIPATION_MCO
            ADD  CONSTRAINT USER_TO_CPM2    FOREIGN KEY(AUDIT_USER_ID_UPDT )
            REFERENCES USERS(USER_ID) ;

ALTER TABLE CLAIM_PARTICIPATION_MCO
            ADD  CONSTRAINT CRI_TO_CPM       FOREIGN KEY(CUST_ROLE_ID_ID) 
            REFERENCES CUSTOMER_ROLE_IDENTIFIER(CUST_ROLE_ID_ID) ;

ALTER TABLE CLAIM_PARTICIPATION_MCO_HIST
            ADD CONSTRAINT CPMCO_TO_CPMH FOREIGN KEY(CLM_PTCP_MCO_ID)
            REFERENCES CLAIM_PARTICIPATION_MCO(CLM_PTCP_MCO_ID);


ALTER TABLE CLAIM_PARTICIPATION_MCO_HIST
            ADD  CONSTRAINT CPTCP_TO_CPMH FOREIGN KEY(CLM_PTCP_ID)
            REFERENCES CLAIM_PARTICIPATION(CLM_PTCP_ID) ;

ALTER TABLE CLAIM_PARTICIPATION_MCO_HIST
           ADD CONSTRAINT CRI_TO_CPMH FOREIGN KEY(CUST_ROLE_ID_ID)
            REFERENCES CUSTOMER_ROLE_IDENTIFIER(CUST_ROLE_ID_ID) ;

ALTER TABLE CLAIM_PARTICIPATION_MCO_HIST
            ADD  CONSTRAINT USER_TO_CPMH1 FOREIGN KEY(AUDIT_USER_ID_CREA)
            REFERENCES USERS(USER_ID) ;

ALTER TABLE CLAIM_PARTICIPATION_MCO_HIST 
    ADD CONSTRAINT USER_TO_CPMH2 FOREIGN KEY(AUDIT_USER_ID_UPDT)
            REFERENCES USERS(USER_ID)
      on delete restrict on update restrict;

alter table BILL_INTERFACE_CUSTOMER
   add constraint BI_TO_BIC foreign key (BI_ID)
      references BILL_INTERFACE (BI_ID)
      on delete restrict on update restrict;
       
alter table BILL_INTERFACE_CUSTOMER
	add constraint BILL_TO_BIC foreign key (BILL_ID)
		references BILL (BILL_ID)
		on delete restrict on update restrict;

alter table BILL_INTERFACE_DIAGNOSIS
   add constraint BI_TO_BID foreign key (BI_ID)
      references BILL_INTERFACE (BI_ID)
      on delete restrict on update restrict;

alter table BILL_INTERFACE_PROCEDURE
   add constraint BI_TO_BIP foreign key (BI_ID)
      references BILL_INTERFACE (BI_ID)
      on delete restrict on update restrict;
      
alter table BILL_INTERFACE_LINE_ITEM
   add constraint BI_BILI foreign key (BI_ID)
      references BILL_INTERFACE (BI_ID)
      on delete restrict on update restrict;

alter table BILL_INTERFACE_LINE_ITEM_DIAG
   add constraint BILI_TO_BILID foreign key (BILI_ID)
      references BILL_INTERFACE_LINE_ITEM (BILI_ID)
      on delete restrict on update restrict;
      
alter table BILL_INTERFACE_LINE_ITEM_DIAG
   add constraint BID_TO_BILID foreign key (BILL_INTFC_DIAG_ID)
      references BILL_INTERFACE_DIAGNOSIS (BILL_INTFC_DIAG_ID)
      on delete restrict on update restrict;

alter table BILL_INTERFACE_LINE_ITEM_EOB
   add constraint BILI_TO_BILIE foreign key (BILI_ID)
      references BILL_INTERFACE_LINE_ITEM (BILI_ID)
      on delete restrict on update restrict;

alter table BILL_INTERFACE_LINE_ITEM_MOD
   add constraint BILI_TO_BILIM foreign key (BILI_ID)
      references BILL_INTERFACE_LINE_ITEM (BILI_ID)
      on delete restrict on update restrict;

alter table BILL_INTERFACE_EOB
   add constraint BI_TO_BIE foreign key (BI_ID)
      references BILL_INTERFACE (BI_ID)
      on delete restrict on update restrict;
-- ECR 190
alter table POLICY_PERIOD_AUDIT_APNT
   add constraint PPAD_TO_PPAUDAPNT foreign key (PLCY_PRD_AUDT_DTL_ID)
      references POLICY_PERIOD_AUDIT_DETAIL (PLCY_PRD_AUDT_DTL_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_AUDIT_APNT
   add constraint PAAST_TO_PPAUDAPNT foreign key (PLCY_AUDT_APNT_STS_TYP_CD)
      references POLICY_AUDIT_APNT_STS_TYP (PLCY_AUDT_APNT_STS_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_AUDIT_APNT_HIST
   add constraint PPAA_TO_PPAUDAPNTH foreign key (PLCY_PRD_AUDT_APNT_ID)
      references POLICY_PERIOD_AUDIT_APNT (PLCY_PRD_AUDT_APNT_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_AUDIT_APNT_HIST
   add constraint PAAST_TO_PPAUDAPNTH foreign key (PLCY_AUDT_APNT_STS_TYP_CD)
      references POLICY_AUDIT_APNT_STS_TYP (PLCY_AUDT_APNT_STS_TYP_CD)
      on delete restrict on update restrict;
      
ALTER TABLE POLICY_NUMBER_ASSIGNMENT_RULE 
    ADD CONSTRAINT LMICX_TO_PNAR FOREIGN KEY (LMICX_ID) 
    REFERENCES LOB_MARKET_INSURANCE_CMPY_XREF (LMICX_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE POLICY_NUMBER_ASSIGNMENT_RULE 
    ADD CONSTRAINT SK_TO_PNAR FOREIGN KEY (SURGT_KY_NM) 
    REFERENCES SURROGATE_KEY (SURGT_KY_NM);

ALTER TABLE CREDIT_APPLICATION_RULE ADD CONSTRAINT FTC_TO_CARF FOREIGN KEY (FNCL_TRAN_CLS_ID_APLD_FR) REFERENCES 
FINANCIAL_TRANSACTION_CLASS (FNCL_TRAN_CLS_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CREDIT_APPLICATION_RULE ADD CONSTRAINT FTC_TO_CART FOREIGN KEY (FNCL_TRAN_CLS_ID_APLD_TO) REFERENCES 
FINANCIAL_TRANSACTION_CLASS (FNCL_TRAN_CLS_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CREDIT_APPLICATION_RULE ADD CONSTRAINT FTT_TO_CARF FOREIGN KEY (FNCL_TRAN_TYP_ID_APLD_FR) REFERENCES 
FINANCIAL_TRANSACTION_TYPE (FNCL_TRAN_TYP_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CREDIT_APPLICATION_RULE ADD CONSTRAINT FTT_TO_CART FOREIGN KEY (FNCL_TRAN_TYP_ID_APLD_TO) REFERENCES 
FINANCIAL_TRANSACTION_TYPE (FNCL_TRAN_TYP_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE WC_CLASS_NAICS_XREF 
    ADD CONSTRAINT NT_TO_WCNX FOREIGN KEY(NAICS_TYP_CD)
     	REFERENCES NAICS_TYPE(NAICS_TYP_CD) 
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE JUR_INDST_CD_XREF 
    ADD CONSTRAINT JT_TO_JICX FOREIGN KEY(JUR_TYP_CD)
     	REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
        ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE JUR_INDST_CD_XREF 
    ADD CONSTRAINT INDSTCT_TO_JICX FOREIGN KEY(INDST_CD_TYP_CD)
     	REFERENCES INDUSTRY_CODE_TYPE (INDST_CD_TYP_CD)
        ON DELETE RESTRICT ON UPDATE RESTRICT;

--ECR090

ALTER TABLE JURISDICTION_BNFT_FED_RT_AMT
   ADD CONSTRAINT JBFRA_JT FOREIGN KEY (JUR_TYP_CD)
   REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;      

ALTER TABLE JURISDICTION_BNFT_FED_RT_AMT
   ADD CONSTRAINT JBFRA_JBT FOREIGN KEY (JUR_BNFT_TYP_ID)
   REFERENCES JURISDICTION_BENEFIT_TYPE (JUR_BNFT_TYP_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
alter table POLICY_TYPE_DETAILS
   add constraint CEST_TO_PTD foreign key (CTL_ELEM_SUB_TYP_ID)
      references CONTROL_ELEMENT_SUB_TYPE (CTL_ELEM_SUB_TYP_ID)
      on delete restrict on update restrict;

alter table PTSPT_PTST_XREF                                                     
   add constraint PTST_TO_PTSPTPTST foreign key (PAY_TRK_SRC_TYP_CD)
      references PAYMENT_TRACK_SOURCE_TYPE (PAY_TRK_SRC_TYP_CD)
      on delete restrict on update restrict;

alter table PTSPT_PTST_XREF
   add constraint PTSPT_TO_PTSPTPTST foreign key (PAY_TRK_SRC_PRC_TYP_CD)
      references PAYMENT_TRACK_SOURCE_PRC_TYP (PAY_TRK_SRC_PRC_TYP_CD)
      on delete restrict on update restrict;        

alter table POLICY_FINANCIAL_TRANSACTION
   add constraint PTST_TO_PFT foreign key (PAY_TRK_SRC_TYP_CD)
      references PAYMENT_TRACK_SOURCE_TYPE (PAY_TRK_SRC_TYP_CD)
      on delete restrict on update restrict;

alter table CASH_RECEIPT_LINE_ITEM_DETAIL
   add constraint PTST_TO_CRLID foreign key (PAY_TRK_SRC_TYP_CD)
      references PAYMENT_TRACK_SOURCE_TYPE (PAY_TRK_SRC_TYP_CD)
      on delete restrict on update restrict;

alter table PAYROLL_REPORT
   add constraint PTST_TO_PR foreign key (PAY_TRK_SRC_TYP_CD)
      references PAYMENT_TRACK_SOURCE_TYPE (PAY_TRK_SRC_TYP_CD)
      on delete restrict on update restrict;

--ECR 411 Start
alter table CUSTOMER_TAX_ID_VRF_DTL
   add constraint CTIVD_TO_TI foreign key (TAX_ID_TYP_CD)
      references TAX_IDENTIFIER_TYPE (TAX_ID_TYP_CD)
      on delete restrict on update restrict;
      

alter table CUSTOMER_TAX_ID_VRF_DTL
   add constraint CTIVD_TO_CTIVST foreign key (CUST_TAX_ID_VRF_STS_TYP_CD)
      references CUSTOMER_TAX_ID_VRF_STS_TYP (CUST_TAX_ID_VRF_STS_TYP_CD)
      on delete restrict on update restrict;


alter table CUSTOMER_TAX_ID_VRF_BNFT_DTL
   add constraint CTIVD_TO_CTIVBD foreign key (CTIVD_ID)
      references CUSTOMER_TAX_ID_VRF_DTL (CTIVD_ID)
      on delete restrict on update restrict;
      

alter table CUSTOMER_TAX_ID_VRF_DTL_HIST
   add constraint CTIVDH_TO_TI foreign key (TAX_ID_TYP_CD)
      references TAX_IDENTIFIER_TYPE (TAX_ID_TYP_CD)
      on delete restrict on update restrict;
      

alter table CUSTOMER_TAX_ID_VRF_DTL_HIST
   add constraint CTIVDH_TO_CTIVST foreign key (CUST_TAX_ID_VRF_STS_TYP_CD)
      references CUSTOMER_TAX_ID_VRF_STS_TYP (CUST_TAX_ID_VRF_STS_TYP_CD)
      on delete restrict on update restrict;

--ECR 411 End         
      
ALTER TABLE INTERFACE_TAXID_VRF_OUT
   ADD CONSTRAINT GT_TO_ITVO FOREIGN KEY (GNDR_TYP_CD)
      REFERENCES GENDER_TYPE (GNDR_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
      
ALTER TABLE INTERFACE_TAXID_VRF_OUT
   ADD CONSTRAINT C_TO_ITVO FOREIGN KEY (CUST_ID)
      REFERENCES CUSTOMER (CUST_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
      
ALTER TABLE BATCH_SPREAD_DETAIL
   ADD CONSTRAINT BJT_TO_BSD FOREIGN KEY (BTCH_JOB_TYP_CD)
      REFERENCES BATCH_JOB_TYPE (BTCH_JOB_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;       

-- Event framework 	
--ALTER TABLE EVENT
--	ADD CONSTRAINT ET_TO_E FOREIGN KEY (EVNT_TYP_CD)
--      REFERENCES EVENT_TYPE (EVNT_TYP_CD)
--      ON DELETE RESTRICT ON UPDATE RESTRICT;	
	
--ALTER TABLE EVENT
--   ADD CONSTRAINT ACT_TO_E FOREIGN KEY (APP_CNTX_TYP_CD)
--      REFERENCES APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
--      ON DELETE RESTRICT ON UPDATE RESTRICT;	

--ALTER TABLE EVENT
--   ADD CONSTRAINT ASCT_TO_E FOREIGN KEY (APP_SUB_CNTX_TYP_CD)
--      REFERENCES APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD)
--      ON DELETE RESTRICT ON UPDATE RESTRICT;	

ALTER TABLE EVENT_ACTION
   ADD CONSTRAINT AST_TO_EA FOREIGN KEY (ASYNC_STS_TYP_CD)
      REFERENCES ASYNC_STATUS_TYPE (ASYNC_STS_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;	
	
ALTER TABLE EVENT_ACTION
   ADD CONSTRAINT E_TO_EA FOREIGN KEY (EVNT_ID)
      REFERENCES EVENT (EVNT_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;	
	
ALTER TABLE EVENT_LOG
   ADD CONSTRAINT E_TO_EL FOREIGN KEY (EVNT_ID)
      REFERENCES EVENT (EVNT_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;	

ALTER TABLE EVENT_LOG
   ADD CONSTRAINT EA_TO_EL FOREIGN KEY (EVNT_ACTN_ID)
      REFERENCES EVENT_ACTION (EVNT_ACTN_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;		
      
ALTER TABLE EVENT_LOG_DETAIL
   ADD CONSTRAINT EL_TO_ELD FOREIGN KEY (EVNT_LOG_ID)
      REFERENCES EVENT_LOG (EVNT_LOG_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table RT_ELEM_ACCT_TRAN_TYP_XREF
   add constraint ATT_TO_REATTX foreign key (ACCT_TRAN_TYP_CD)
      references ACCOUNTING_TRANSACTION_TYPE (ACCT_TRAN_TYP_CD)
      on delete restrict on update restrict;

alter table RT_ELEM_ACCT_TRAN_TYP_XREF
   add constraint RTET_TO_REATTX foreign key (RT_ELEM_TYP_CD)
      references RATING_ELEMENT_TYPE (RT_ELEM_TYP_CD)
      on delete restrict on update restrict;   

alter table PLCY_STS_RSN_EXCL_FR_PLCY_INVC
   add constraint PST_TO_PSREFPI foreign key (PLCY_STS_TYP_CD)
      references POLICY_STATUS_TYPE (PLCY_STS_TYP_CD)
      on delete restrict on update restrict;
      
alter table PLCY_STS_RSN_EXCL_FR_PLCY_INVC
   add constraint PSRT_TO_PSREFPI foreign key (PLCY_STS_RSN_TYP_CD)
      references POLICY_STATUS_REASON_TYPE (PLCY_STS_RSN_TYP_CD)
      on delete restrict on update restrict; 
      

--------------- BWC ECR419
ALTER TABLE CASE_DETAIL_FILE_RVW ADD CONSTRAINT CDART_TO_CDFR
 FOREIGN KEY (CD_ADNDM_REQS_TYP_CD)
  REFERENCES CASE_DETAIL_ADNDM_REQS_TYPE (CD_ADNDM_REQS_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_FILE_RVW ADD CONSTRAINT CASE_TO_CDFR
FOREIGN KEY (CASE_ID)
REFERENCES CASES (CASE_ID)
ON DELETE RESTRICT ON UPDATE RESTRICT;   

ALTER TABLE CASE_DETAIL_FILE_RVW_HISTORY
   add constraint CDFR_TO_CDFRH foreign key (CDFR_ID)
      references CASE_DETAIL_FILE_RVW (CDFR_ID)
      on delete restrict on update restrict;

ALTER TABLE CASE_DETAIL_FILE_RVW_HISTORY ADD CONSTRAINT CASE_TO_CDFRH
FOREIGN KEY (CASE_ID)
REFERENCES CASES (CASE_ID)
ON DELETE RESTRICT ON UPDATE RESTRICT;

  
ALTER TABLE CASE_DETAIL_FILE_RVW_HISTORY ADD CONSTRAINT CDART_TO_CDFRH
 FOREIGN KEY (CD_ADNDM_REQS_TYP_CD)
  REFERENCES CASE_DETAIL_ADNDM_REQS_TYPE (CD_ADNDM_REQS_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE CASE_DETAIL_EXM_SCH 
ADD CONSTRAINT CDART_TO_CDES
 FOREIGN KEY (CD_ADNDM_REQS_TYP_CD)
  REFERENCES CASE_DETAIL_ADNDM_REQS_TYPE (CD_ADNDM_REQS_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
alter table CASE_DETAIL_EXM_SCH
   add constraint LT_TO_CDES foreign key (LANG_TYP_CD)
      references LANGUAGE_TYPE (LANG_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE CASE_DETAIL_EXM_SCH
    ADD CONSTRAINT STT_TO_CDES
	FOREIGN KEY(STT_ID)
	REFERENCES STATE(STT_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_DETAIL_EXM_SCH
    ADD CONSTRAINT CNTRY_TO_CDES
	FOREIGN KEY(CNTRY_ID)
	REFERENCES COUNTRY(CNTRY_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;
		  
ALTER TABLE CASE_DETAIL_EXM_SCH 
ADD CONSTRAINT CPST_TO_CDES
FOREIGN KEY (CPS_TYP_CD)
REFERENCES CASE_PROV_SPL_TYPE (CPS_TYP_CD)
ON DELETE RESTRICT ON UPDATE RESTRICT;  

ALTER TABLE CASE_DETAIL_EXM_SCH 
ADD CONSTRAINT CDERT_TO_CDES
FOREIGN KEY (CD_EXM_REQS_TYP_CD)
REFERENCES CASE_DETAIL_EXM_REQS_TYPE (CD_EXM_REQS_TYP_CD)
ON DELETE RESTRICT ON UPDATE RESTRICT;  


ALTER TABLE CASE_DETAIL_EXM_SCH ADD CONSTRAINT CASE_TO_CDES
FOREIGN KEY (CASE_ID)
REFERENCES CASES (CASE_ID)
ON DELETE RESTRICT ON UPDATE RESTRICT;  
   
ALTER TABLE CASE_DETAIL_EXM_SCH_HIS 
ADD CONSTRAINT CDES_TO_CDESH
 FOREIGN KEY (CDES_ID)
  REFERENCES CASE_DETAIL_EXM_SCH (CDES_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE CASE_DETAIL_EXM_SCH_HIS 
ADD CONSTRAINT CDART_TO_CDESH
 FOREIGN KEY (CD_ADNDM_REQS_TYP_CD)
  REFERENCES CASE_DETAIL_ADNDM_REQS_TYPE (CD_ADNDM_REQS_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
alter table CASE_DETAIL_EXM_SCH_HIS
   add constraint LT_TO_CDESH 
   foreign key (LANG_TYP_CD)
      references LANGUAGE_TYPE (LANG_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE CASE_DETAIL_EXM_SCH_HIS
    ADD CONSTRAINT STT_TO_CDESH
	FOREIGN KEY(STT_ID)
	REFERENCES STATE(STT_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;	

ALTER TABLE CASE_DETAIL_EXM_SCH_HIS
    ADD CONSTRAINT CNTRY_TO_CDESH
	FOREIGN KEY(CNTRY_ID)
	REFERENCES COUNTRY(CNTRY_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;		  

ALTER TABLE CASE_DETAIL_EXM_SCH_HIS 
ADD CONSTRAINT CPST_TO_CDESH
FOREIGN KEY (CPS_TYP_CD_SCND)
REFERENCES CASE_PROV_SPL_TYPE (CPS_TYP_CD)
ON DELETE RESTRICT ON UPDATE RESTRICT;  


ALTER TABLE CASE_DETAIL_EXM_SCH_HIS 
ADD CONSTRAINT CDERT_TO_CDESH
FOREIGN KEY (CD_EXM_REQS_TYP_CD)
REFERENCES CASE_DETAIL_EXM_REQS_TYPE (CD_EXM_REQS_TYP_CD)
ON DELETE RESTRICT ON UPDATE RESTRICT;  


ALTER TABLE CASE_DETAIL_EXM_SCH_HIS 
ADD CONSTRAINT CASE_TO_CDESH
FOREIGN KEY (CASE_ID)
REFERENCES CASES (CASE_ID)
ON DELETE RESTRICT ON UPDATE RESTRICT;   

--------------- END BWC ECR419

-- START BWC ECR424

ALTER TABLE OVERPAYMENT_RECOVERY_DFLT_METH
   ADD CONSTRAINT JT_TO_ORDM FOREIGN KEY (JUR_TYP_CD)
      REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE OVERPAYMENT_RECOVERY_DFLT_METH
   ADD CONSTRAINT LOBT_TO_ORDM FOREIGN KEY (LOB_TYP_CD)
      REFERENCES LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE OVERPAYMENT_RECOVERY_DFLT_METH
   ADD CONSTRAINT PAYT_TO_ORDM FOREIGN KEY (PAY_TYP_CD)
      REFERENCES PAYMENT_TYPE (PAY_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE OVERPAYMENT_RECOVERY_DFLT_METH
   ADD CONSTRAINT BNFTT_TO_ORDM FOREIGN KEY (BNFT_TYP_CD)
      REFERENCES BENEFIT_TYPE (BNFT_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE OVERPAYMENT_RECOVERY_DFLT_METH
   ADD CONSTRAINT ACT_TO_ORDM FOREIGN KEY (APP_CNTX_TYP_CD)
      REFERENCES APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE OVERPAYMENT_RECOVERY_DFLT_METH
   ADD CONSTRAINT ORATT_TO_ORDM FOREIGN KEY (OVRPY_RCVR_APPLY_TO_TYP_CD)
      REFERENCES OVERPAYMENT_RCVR_APPLY_TO_TYP (OVRPY_RCVR_APPLY_TO_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE OVERPAYMENT_RECOVERY_DFLT_METH
   ADD CONSTRAINT ORMT_TO_ORDM FOREIGN KEY (OVRPY_RCVR_METH_TYP_CD)
      REFERENCES OVERPAYMENT_RECOVERY_METH_TYP (OVRPY_RCVR_METH_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE OVERPAYMENT_RECOVERY_DFLT_METH
   ADD CONSTRAINT ORPT_TO_ORDM FOREIGN KEY (OVRPY_RCVR_PRD_TYP_CD)
      REFERENCES OVERPAYMENT_RECOVERY_PRD_TYP (OVRPY_RCVR_PRD_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

-- END BWC ECR424

ALTER TABLE CBVT_JBT_XREF 
ADD CONSTRAINT JBT_TO_CJX
FOREIGN KEY (JUR_BNFT_TYP_ID)
REFERENCES JURISDICTION_BENEFIT_TYPE (JUR_BNFT_TYP_ID)
ON DELETE RESTRICT ON UPDATE RESTRICT;   

ALTER TABLE CBVT_JBT_XREF 
ADD CONSTRAINT CBVT_TO_CJX
FOREIGN KEY (CLM_BNFT_VLDT_TYP_CD)
REFERENCES CLAIM_BENEFIT_VALIDATION_TYPE (CLM_BNFT_VLDT_TYP_CD)
ON DELETE RESTRICT ON UPDATE RESTRICT;   

alter table CLAIM_PARTICIPATION_DEP_REP
   add constraint DRT_TO_CPB foreign key (DEP_REP_TYP_CD)
      references DEPENDENT_REPRESENTATIVE_TYPE (DEP_REP_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_DEP_REP
   add constraint CPTCP_TO_CPDR foreign key (CLM_PTCP_ID)
      references CLAIM_PARTICIPATION (CLM_PTCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_DEP_REP
   add constraint USER_TO_CPDR1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PARTICIPATION_DEP_REP
   add constraint USER_TO_CPDR2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PTCP_DEP_REP_DEP
   add constraint CPDR_TO_CPDRD foreign key (CLM_PTCP_DEP_REP_ID)
      references CLAIM_PARTICIPATION_DEP_REP (CLM_PTCP_DEP_REP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PTCP_DEP_REP_DEP
   add constraint USER_TO_CPDRD1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PTCP_DEP_REP_DEP
   add constraint USER_TO_CPDRD2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PTCP_DEP_REP_HIST
   add constraint DRT_TO_CPDRH foreign key (DEP_REP_TYP_CD)
      references DEPENDENT_REPRESENTATIVE_TYPE (DEP_REP_TYP_CD)
      on delete restrict on update restrict;

alter table CLAIM_PTCP_DEP_REP_HIST
   add constraint CPB_TO_CPDRH  foreign key (CLM_PTCP_DEP_REP_ID)
      references CLAIM_PARTICIPATION_DEP_REP (CLM_PTCP_DEP_REP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PTCP_DEP_REP_HIST
   add constraint CPTCP_TO_CPDRH  foreign key (CLM_PTCP_ID)
      references CLAIM_PARTICIPATION (CLM_PTCP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PTCP_DEP_REP_HIST
   add constraint USER_TO_CPDRH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PTCP_DEP_REP_HIST
   add constraint USER_TO_CPDRH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PTCP_DEP_REP_DEP_HIST
   add constraint CPDRD_TO_CPDRDH foreign key (CLM_PTCP_DEP_REP_DEP_ID)
      references CLAIM_PTCP_DEP_REP_DEP (CLM_PTCP_DEP_REP_DEP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PTCP_DEP_REP_DEP_HIST
   add constraint CPDR_TO_CPDRDH foreign key (CLM_PTCP_DEP_REP_ID)
      references CLAIM_PARTICIPATION_DEP_REP (CLM_PTCP_DEP_REP_ID)
      on delete restrict on update restrict;

alter table CLAIM_PTCP_DEP_REP_DEP_HIST
   add constraint USER_TO_CPDRDH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CLAIM_PTCP_DEP_REP_DEP_HIST
   add constraint USER_TO_CPDRDH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


ALTER TABLE DEMOGRAPHIC_PROCESS_PARAMETER
ADD CONSTRAINT EVNTT_TO_DPPCCZ FOREIGN KEY (DPP_CLMT_CHG_ZIP_EVNT_TYP)
      REFERENCES EVENT_TYPE (EVNT_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
      
ALTER TABLE DEMOGRAPHIC_PROCESS_PARAMETER
ADD CONSTRAINT EVNTT_TO_DPPCP FOREIGN KEY (DPP_FRGN_CNTRY_PLCY_EVNT_TYP)
      REFERENCES EVENT_TYPE (EVNT_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
 
 
 ALTER TABLE DEMOGRAPHIC_PROCESS_PARAMETER
 ADD CONSTRAINT EVNTT_TO_DPPCCE FOREIGN KEY (DPP_FRGN_CNTRY_CLM_EVNT_TYP)
       REFERENCES EVENT_TYPE (EVNT_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
 
 ALTER TABLE DEMOGRAPHIC_PROCESS_PARAMETER
 ADD CONSTRAINT EVNTT_TO_DPPUPE FOREIGN KEY (DPP_ADDR_UPDT_PLCY_EVNT_TYP)
       REFERENCES EVENT_TYPE (EVNT_TYP_CD)
       ON DELETE RESTRICT ON UPDATE RESTRICT;
  
  
 ALTER TABLE DEMOGRAPHIC_PROCESS_PARAMETER
  ADD CONSTRAINT EVNTT_TO_DPPUCE FOREIGN KEY (DPP_ADDR_UPDT_CLM_EVNT_TYP)
        REFERENCES EVENT_TYPE (EVNT_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
      
  
 ALTER TABLE DEMOGRAPHIC_PROCESS_PARAMETER
  ADD CONSTRAINT EVNTT_TO_DPPAFP FOREIGN KEY (DPP_ADDR_FAIL_PLCY_EVNT_TYP)
        REFERENCES EVENT_TYPE (EVNT_TYP_CD)
       ON DELETE RESTRICT ON UPDATE RESTRICT;
  
 ALTER TABLE DEMOGRAPHIC_PROCESS_PARAMETER
  ADD CONSTRAINT EVNTT_TO_DPPAFC FOREIGN KEY (DPP_ADDR_FAIL_CLM_EVNT_TYP)
        REFERENCES EVENT_TYPE (EVNT_TYP_CD)
        ON DELETE RESTRICT ON UPDATE RESTRICT;
   
   
 ALTER TABLE DEMOGRAPHIC_PROCESS_PARAMETER
   ADD CONSTRAINT EVNTT_TO_DPPUIC FOREIGN KEY (DPP_UPDT_INDM_CLM_EVNT_TYP)
         REFERENCES EVENT_TYPE (EVNT_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

--ECR-001 BRAC START 

ALTER TABLE ACTIVITY_MANAGEMENT_TYPE ADD CONSTRAINT USER_TO_AMNT1
	FOREIGN KEY(AUDIT_USER_ID_CREA)
	REFERENCES USERS(USER_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;      
      
ALTER TABLE ACTIVITY_MANAGEMENT_TYPE ADD CONSTRAINT USER_TO_AMNT2
	FOREIGN KEY(AUDIT_USER_ID_UPDT)
	REFERENCES USERS(USER_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
	

      
ALTER TABLE ACTIVITY_MANAGEMENT ADD CONSTRAINT USER_TO_AMN1
      FOREIGN KEY(AUDIT_USER_ID_CREA)
      REFERENCES USERS(USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;      
      
ALTER TABLE ACTIVITY_MANAGEMENT ADD CONSTRAINT USER_TO_AMN2
      FOREIGN KEY(AUDIT_USER_ID_UPDT)
      REFERENCES USERS(USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
      
ALTER TABLE ACTIVITY_MANAGEMENT ADD CONSTRAINT AMNT_TO_AMN
      FOREIGN KEY(ACTV_MANG_TYP_CD)
      REFERENCES ACTIVITY_MANAGEMENT_TYPE(ACTV_MANG_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
      
ALTER TABLE ACTIVITY_MANAGEMENT ADD CONSTRAINT PLCYP_TO_AMN
      FOREIGN KEY(PLCY_PRD_ID)
      REFERENCES POLICY_PERIOD(PLCY_PRD_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
      
--ECR-001 BRAC END

-- ECR POWCR00085729
alter table JURISDICTION_CLOSED_INCN_RPRT
	add constraint JT_TO_JCIR foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table ISO_JURISDICTION_CLAIM_XREF
      add constraint JT_TO_IJCX foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table ISO_JURISDICTION_CLAIM_XREF
   add constraint CT_TO_IJCX foreign key (CLM_TYP_CD)
      references CLAIM_TYPE (CLM_TYP_CD)
      on delete restrict on update restrict;
ALTER TABLE SYSTEM_OPTION
 ADD CONSTRAINT LMICX_TO_SO FOREIGN KEY (LMICX_ID)
      REFERENCES LOB_MARKET_INSURANCE_CMPY_XREF (LMICX_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;   
        
ALTER TABLE CONTROL_ELEMENT_SUB_TYPE
 ADD CONSTRAINT LMICX_TO_CEST FOREIGN KEY (LMICX_ID)
      REFERENCES LOB_MARKET_INSURANCE_CMPY_XREF (LMICX_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;   
        
--ECR-001 BRAC END

ALTER TABLE CMPL_RSN_CTG_LMC_XREF
 add constraint NCRCLX_TO_CRCLX foreign key (NON_CMPL_RSN_CTG_LMC_ID)
      references NON_CMPL_RSN_CTG_LMC_XREF (NON_CMPL_RSN_CTG_LMC_ID)
      on delete restrict on update restrict;

ALTER TABLE CMPL_RSN_CTG_LMC_XREF
 add constraint CRT_TO_CRCLX foreign key (CMPL_RSN_TYP_CD)
      references COMPLIANCE_REASON_TYPE (CMPL_RSN_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE NON_CMPL_RSN_CTG_LMC_XREF
 add constraint LMICX_TO_NCRCLX foreign key (LMICX_ID)
      references LOB_MARKET_INSURANCE_CMPY_XREF (LMICX_ID)
      on delete restrict on update restrict;

ALTER TABLE NON_CMPL_RSN_CTG_LMC_XREF
 add constraint NCCT_TO_NCRCLX foreign key (NON_CMPL_CTG_TYP_CD)
      references NON_COMPLIANCE_CATEGORY_TYPE (NON_CMPL_CTG_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE NON_CMPL_RSN_CTG_LMC_XREF
 add constraint NCRT_TO_NCRCLX foreign key (NON_CMPL_RSN_TYP_CD)
      references NON_COMPLIANCE_REASON_TYPE (NON_CMPL_RSN_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE NON_CMPL_RSN_CTG_LMC_XREF
 add constraint PSRT_TO_NCRCLX foreign key (PLCY_STS_RSN_TYP_CD)
      references POLICY_STATUS_REASON_TYPE (PLCY_STS_RSN_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE POLICY_PERIOD_COMPLIANCE_TRK
 add constraint PLCYP_TO_PPCT foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

ALTER TABLE POLICY_PERIOD_COMPLIANCE_TRK
 add constraint NCRCLX_TO_PPCT foreign key (NON_CMPL_RSN_CTG_LMC_ID)
      references NON_CMPL_RSN_CTG_LMC_XREF (NON_CMPL_RSN_CTG_LMC_ID)
      on delete restrict on update restrict;

ALTER TABLE POLICY_PERIOD_COMPLIANCE_TRK
 add constraint CRCLX_TO_PPCT foreign key (CMPL_RSN_CTG_LMC_ID)
      references CMPL_RSN_CTG_LMC_XREF (CMPL_RSN_CTG_LMC_ID)
      on delete restrict on update restrict;

ALTER TABLE POLICY_PERIOD_CMPL_TRK_HIST
 add constraint PPCT_TO_PPCTH foreign key (PLCY_PRD_CMPL_TRK_ID)
      references POLICY_PERIOD_COMPLIANCE_TRK (PLCY_PRD_CMPL_TRK_ID)
      on delete restrict on update restrict;

ALTER TABLE POLICY_PERIOD_CMPL_TRK_HIST
 add constraint PLCYP_TO_PPCTH foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

ALTER TABLE POLICY_PERIOD_CMPL_TRK_HIST
 add constraint NCRCLX_TO_PPCTH foreign key (NON_CMPL_RSN_CTG_LMC_ID)
      references NON_CMPL_RSN_CTG_LMC_XREF (NON_CMPL_RSN_CTG_LMC_ID)
      on delete restrict on update restrict;

ALTER TABLE POLICY_PERIOD_CMPL_TRK_HIST
 add constraint CRCLX_TO_PPCTH foreign key (CMPL_RSN_CTG_LMC_ID)
      references CMPL_RSN_CTG_LMC_XREF (CMPL_RSN_CTG_LMC_ID)
      on delete restrict on update restrict;
	  
ALTER TABLE ACCT_PAY_MRKT_TYP_XREF
   add constraint MT_TO_APMTX foreign key (MRKT_TYP_CD)
      references MARKET_TYPE (MRKT_TYP_CD)
      on delete restrict on update restrict;
	  
ALTER TABLE ACCT_PAY_MRKT_TYP_XREF
   add constraint APST_TO_APMTX foreign key (ACCT_PAY_SYS_CD)
      references ACCOUNTS_PAYABLE_SYSTEM_TYPE (ACCT_PAY_SYS_CD)
      on delete restrict on update restrict;
	  
ALTER TABLE PAYMENT_REQUEST
	add constraint PR_TO_APST foreign key (ACCT_PAY_SYS_CD) 
		references ACCOUNTS_PAYABLE_SYSTEM_TYPE (ACCT_PAY_SYS_CD)
		on delete restrict on update restrict;
		
ALTER TABLE LOSS_PREVENTION_RECOMMENDATION
   ADD CONSTRAINT LPRECMT_TO_SSLPE FOREIGN KEY (LOSS_PRVN_RECM_TYP_CD)
      REFERENCES LOSS_PRVN_RECOMMENDATION_TYPE (LOSS_PRVN_RECM_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
      
		
ALTER TABLE OVERPAYMENT_RCVR_DFLT_EXCL_JUR
   ADD CONSTRAINT ORD_ORDXJ FOREIGN KEY (OVRPY_RCVR_DFLT_ID)
   REFERENCES OVERPAYMENT_RECOVERY_DFLT (OVRPY_RCVR_DFLT_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;    

ALTER TABLE POLICY_CONTROL_ELEMENT
    add constraint CEART_TO_PCE foreign key (CTL_ELEM_AUDT_RSN_TYP_CD)
		references CONTROL_ELEMENT_AUDIT_RSN_TYP (CTL_ELEM_AUDT_RSN_TYP_CD)
		on delete restrict on update restrict;
		
ALTER TABLE POLICY_CONTROL_ELEMENT_HISTORY
    add constraint CEART_TO_PCEH foreign key (CTL_ELEM_AUDT_RSN_TYP_CD)
		references CONTROL_ELEMENT_AUDIT_RSN_TYP (CTL_ELEM_AUDT_RSN_TYP_CD)
		on delete restrict on update restrict;

 
ALTER TABLE PLCY_STS_RSN_PLCY_PRD_SEL_XREF
add constraint PSRT_TO_PSRPPSX foreign key (PLCY_STS_RSN_TYP_CD)
      references POLICY_STATUS_REASON_TYPE (PLCY_STS_RSN_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PLCY_STS_RSN_PLCY_PRD_SEL_XREF
add constraint NCPPST_TO_PSRPPSX foreign key (NON_CMPL_PLCY_PRD_SEL_CD)
      references NON_CMPL_PLCY_PRD_SEL_TYPE (NON_CMPL_PLCY_PRD_SEL_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
	  
ALTER TABLE OVERPAYMENT_RCVR_DFLT_EXCL_JUR
   ADD CONSTRAINT JT_ORDXJ FOREIGN KEY (JUR_TYP_CD)
   REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   

alter table USER_UI_PREFERENCES
   add constraint UUP_UI foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;     
    
alter table USER_UI_PREFERENCES
   add constraint UUP_AUCI foreign key (AUDT_USER_CREA_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;    
      
alter table USER_UI_PREFERENCES
   add constraint UUP_AUUI foreign key (AUDT_USER_UPDT_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;  
  
ALTER TABLE NAVIGATION_PATH_CD
    ADD CONSTRAINT NLGTC_NPC FOREIGN KEY(NAV_LD_GRP_TYP_ID)
    REFERENCES NAVIGATION_LOAD_GROUP_TYPE_CD(NAV_LD_GRP_TYP_ID)
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE NAVIGATION_PATH_CD
    ADD CONSTRAINT NGC_NPC FOREIGN KEY(NAV_GRP_CD)
    REFERENCES NAVIGATION_GROUP_CD(NAV_GRP_CD)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
    
ALTER TABLE NAVIGATION_PATH_SEC_OBJ_XREF
    ADD CONSTRAINT SOC_NPSOX FOREIGN KEY(SEC_OBJ_ID)
    REFERENCES SECURED_OBJECT_CD(SEC_OBJ_ID)
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE NAVIGATION_PATH_SEC_OBJ_XREF
    ADD CONSTRAINT NPC_NPSOX FOREIGN KEY(NAV_PATH_CD)
    REFERENCES NAVIGATION_PATH_CD(NAV_PATH_CD)
    ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE NAVIGATION_PATH_SEC_OBJ_XREF
    ADD CONSTRAINT NGC_NPSOX FOREIGN KEY(NAV_GRP_CD)
    REFERENCES NAVIGATION_GROUP_CD(NAV_GRP_CD)
    ON DELETE RESTRICT ON UPDATE RESTRICT; 
    
ALTER TABLE USER_SECURED_OBJECT_XREF
    ADD CONSTRAINT UC_USOX FOREIGN KEY(USER_ID)
    REFERENCES USERS(USER_ID)
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE USER_SECURED_OBJECT_XREF
    ADD CONSTRAINT SOC_USOX FOREIGN KEY(SEC_OBJ_ID)
    REFERENCES SECURED_OBJECT_CD(SEC_OBJ_ID)
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE USER_SECURED_OBJECT_XREF
    ADD CONSTRAINT PTC_USOX FOREIGN KEY(PRMSN_TYP_ID)
    REFERENCES PERMISSION_TYPE_CD(PRMSN_TYP_ID)
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE SECURITY_GROUP_SEC_OBJ_XREF
    ADD CONSTRAINT SOC_SGSOX FOREIGN KEY(SEC_OBJ_ID)
    REFERENCES SECURED_OBJECT_CD(SEC_OBJ_ID)
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE SECURITY_GROUP_SEC_OBJ_XREF
    ADD CONSTRAINT SGC_SGSOX FOREIGN KEY(SEC_GRP_CD)
    REFERENCES SECURITY_GROUP_CD(SEC_GRP_CD)
    ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE SECURITY_GROUP_SEC_OBJ_XREF
    ADD CONSTRAINT PTC_SGSOX FOREIGN KEY(PRMSN_TYP_ID)
    REFERENCES PERMISSION_TYPE_CD(PRMSN_TYP_ID)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
    
ALTER TABLE SECURITY_GROUP_CD
    ADD CONSTRAINT SGTC_SGC FOREIGN KEY(SEC_GRP_TYP_CD)
    REFERENCES SECURITY_GROUP_TYPE_CD(SEC_GRP_TYP_CD)
    ON DELETE RESTRICT ON UPDATE RESTRICT;     

ALTER TABLE SECURITY_GROUP_CD
    ADD CONSTRAINT SGC_SGCPAR FOREIGN KEY(SEC_GRP_CD_PAR)
    REFERENCES SECURITY_GROUP_CD(SEC_GRP_CD)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
    
ALTER TABLE USER_SECURITY_GROUP_XREF
    ADD CONSTRAINT UC_USGX FOREIGN KEY(USER_ID)
    REFERENCES USERS(USER_ID)
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE USER_SECURITY_GROUP_XREF
    ADD CONSTRAINT SGC_USGX FOREIGN KEY(SEC_GRP_CD)
    REFERENCES SECURITY_GROUP_CD(SEC_GRP_CD)
  ON DELETE RESTRICT ON UPDATE RESTRICT;    
	  
ALTER TABLE AUTHORIZATION_TYPE_CD
   ADD CONSTRAINT ATC_AUTHTC FOREIGN KEY (AGRE_TYP_CD)
      REFERENCES AGREEMENT_TYPE (AGRE_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE AUTHORIZATION_TYPE_CD
   ADD CONSTRAINT DT_ATC FOREIGN KEY (DATA_TYP_CD)
      REFERENCES DATA_TYPE (DATA_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE AUTHORIZATION_TYPE_CD
   ADD CONSTRAINT FT_AUTHTC FOREIGN KEY (FRMT_TYP_CD)
      REFERENCES FORMAT_TYPE (FRMT_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE SECURITY_GROUP_AUTH_TYP_DEF_CD
   ADD CONSTRAINT AUTHTC_SGATDC FOREIGN KEY (AUTH_TYP_ID)
      REFERENCES AUTHORIZATION_TYPE_CD (AUTH_TYP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE SECURITY_GROUP_AUTH_TYP_DEF_CD
   ADD CONSTRAINT SGC_SGATDC FOREIGN KEY (SEC_GRP_CD)
      REFERENCES SECURITY_GROUP_CD (SEC_GRP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE USER_AUTHORIZATION_TYPE_DEF_CD
   ADD CONSTRAINT AUTHTC_UATDC FOREIGN KEY (AUTH_TYP_ID)
      REFERENCES AUTHORIZATION_TYPE_CD (AUTH_TYP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE USER_AUTHORIZATION_TYPE_DEF_CD
   ADD CONSTRAINT USER_UATDC FOREIGN KEY (USER_ID)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE AUTH_TYP_FNCL_TRAN_TYP_XREF 
ADD CONSTRAINT AT_TO_ATFTTX
FOREIGN KEY (AUTH_TYP_ID) REFERENCES 
 AUTHORIZATION_TYPE_CD (AUTH_TYP_ID)
 ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE AUTH_TYP_FNCL_TRAN_TYP_XREF 
ADD CONSTRAINT FNCLTT_TO_ATFTTX 
FOREIGN KEY (FNCL_TRAN_TYP_ID) REFERENCES 
 FINANCIAL_TRANSACTION_TYPE (FNCL_TRAN_TYP_ID)
 ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE USER_INTERFACE_LINK_DATA_CD
ADD CONSTRAINT UILDC_ASCTC FOREIGN KEY (APP_SUB_CNTX_TYP_CD)
  REFERENCES APPLICATION_SUB_CONTEXT_TYPE(APP_SUB_CNTX_TYP_CD)
  ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table USER_INTF_LNK_DATA_CD_ADL_XREF
   add constraint UILDCDADLX_UILDCI foreign key (UI_LNK_DATA_CD_ID)
      references USER_INTERFACE_LINK_DATA_CD (UI_LNK_DATA_CD_ID)
      on delete restrict on update restrict;

alter table USER_INTF_LNK_DATA_CD_ADL_XREF
   add constraint UILLCDADLX_ADL foreign key (APP_DTL_LVL_CD)
      references APPLICATION_DETAIL_LEVEL (APP_DTL_LVL_CD)
      on delete restrict on update restrict;

ALTER TABLE JURISDICTION_LUMP_SUM_DSCNT_RT
    ADD CONSTRAINT JLSDRT_TO_JLSDR
    FOREIGN KEY(JUR_LUMP_SUM_DSCNT_RT_TYP_CD)
    REFERENCES JUR_LUMP_SUM_DSCNT_RT_TYP(JUR_LUMP_SUM_DSCNT_RT_TYP_CD)
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE JURISDICTION_LUMP_SUM_DSCNT_RT
    ADD CONSTRAINT JT_TO_JLSDR
    FOREIGN KEY(JUR_TYP_CD)
    REFERENCES JURISDICTION_TYPE(JUR_TYP_CD)
ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE POLICY_PERIOD_DEDUCTIBLE_REMB
   ADD CONSTRAINT PP_TO_PPDR 
   FOREIGN KEY (PLCY_PRD_ID) 
   REFERENCES POLICY_PERIOD (PLCY_PRD_ID)  
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE POLICY_PERIOD_DEDUCTIBLE_REMB
   ADD CONSTRAINT CS_TO_PPDR1 
   FOREIGN KEY (CS_ID) 
   REFERENCES CLAIM_SUMMARY (CS_ID)  
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE POLICY_PERIOD_DEDUCTIBLE_REMB
   ADD CONSTRAINT USER1_TO_PPDR1 
   FOREIGN KEY (AUDIT_USER_ID_CREA)
   REFERENCES USERS (USER_ID)
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE POLICY_PERIOD_DEDUCTIBLE_REMB
   ADD CONSTRAINT USER1_TO_PPDR2 
   FOREIGN KEY (AUDIT_USER_ID_UPDT)
   REFERENCES USERS (USER_ID)
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASH_RECT_FNCL_TRAN_TYP_XREF 
ADD CONSTRAINT CRT_TO_CRFTTX FOREIGN KEY (CASH_RECT_TYP_CD)
REFERENCES CASH_RECEIPT_TYPE (CASH_RECT_TYP_CD)
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASH_RECT_FNCL_TRAN_TYP_XREF
ADD CONSTRAINT FTT_TO_CRFTTX FOREIGN KEY (FNCL_TRAN_TYP_ID)
REFERENCES FINANCIAL_TRANSACTION_TYPE (FNCL_TRAN_TYP_ID) 
ON DELETE RESTRICT ON UPDATE RESTRICT;

-- BEGIN : POWCR00112952 - Data Level Security for the NOTE_CATEGORY_TYPE Table.

alter table SECURITY_GROUP_NOTE_CTG_XREF
   add constraint NCT_SGNCX foreign key (NOTE_CTG_TYP_CD)
      references NOTE_CATEGORY_TYPE (NOTE_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table SECURITY_GROUP_NOTE_CTG_XREF
   add constraint PTC_SGNCX foreign key (PRMSN_TYP_ID)
      references PERMISSION_TYPE_CD (PRMSN_TYP_ID)
      on delete restrict on update restrict;

alter table SECURITY_GROUP_NOTE_CTG_XREF
   add constraint SGC_SGNCX foreign key (SEC_GRP_CD)
      references SECURITY_GROUP_CD (SEC_GRP_CD)
      on delete restrict on update restrict;
	  
alter table USER_NOTE_CATEGORY_XREF
   add constraint NCT_UNCX foreign key (NOTE_CTG_TYP_CD)
      references NOTE_CATEGORY_TYPE (NOTE_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table USER_NOTE_CATEGORY_XREF
   add constraint PTC_UNCX foreign key (PRMSN_TYP_ID)
      references PERMISSION_TYPE_CD (PRMSN_TYP_ID)
      on delete restrict on update restrict;

alter table USER_NOTE_CATEGORY_XREF
   add constraint U_UNCX foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;
	  
-- END : POWCR00112952 - Data Level Security for the NOTE_CATEGORY_TYPE Table.

-- BEGIN : POWCR00112953 - Data Level Security for the CASE_CATEGORY_TYPE Table.

alter table SECURITY_GROUP_CASE_CTG_XREF
   add constraint CCT_SGCCX foreign key (CASE_CTG_TYP_CD)
      references CASE_CATEGORY_TYPE (CASE_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table SECURITY_GROUP_CASE_CTG_XREF
   add constraint PTC_SGCCX foreign key (PRMSN_TYP_ID)
      references PERMISSION_TYPE_CD (PRMSN_TYP_ID)
      on delete restrict on update restrict;

alter table SECURITY_GROUP_CASE_CTG_XREF
   add constraint SGC_SGCCX foreign key (SEC_GRP_CD)
      references SECURITY_GROUP_CD (SEC_GRP_CD)
      on delete restrict on update restrict;
	  
alter table USER_CASE_CATEGORY_XREF
   add constraint CCT_UCCX foreign key (CASE_CTG_TYP_CD)
      references CASE_CATEGORY_TYPE (CASE_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table USER_CASE_CATEGORY_XREF
   add constraint PTC_UCCX foreign key (PRMSN_TYP_ID)
      references PERMISSION_TYPE_CD (PRMSN_TYP_ID)
      on delete restrict on update restrict;

alter table USER_CASE_CATEGORY_XREF
   add constraint U_UCCX foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;
-- END : POWCR00112952 - Data Level Security for the NOTE_CATEGORY_TYPE Table.

-- BEGIN : POWCR00112953 - Data Level Security for the CASE_TYPE Table.

alter table SECURITY_GROUP_CASE_TYPE_XREF
   add constraint CT_SGCTX foreign key (CASE_TYP_CD)
      references CASE_TYPE (CASE_TYP_CD)
      on delete restrict on update restrict;

alter table SECURITY_GROUP_CASE_TYPE_XREF
   add constraint PTC_SGCTX foreign key (PRMSN_TYP_ID)
      references PERMISSION_TYPE_CD (PRMSN_TYP_ID)
      on delete restrict on update restrict;

alter table SECURITY_GROUP_CASE_TYPE_XREF
   add constraint SGC_SGCTX foreign key (SEC_GRP_CD)
      references SECURITY_GROUP_CD (SEC_GRP_CD)
      on delete restrict on update restrict;
alter table USER_CASE_TYPE_XREF
   add constraint CT_UCTX foreign key (CASE_TYP_CD)
      references CASE_TYPE (CASE_TYP_CD)
      on delete restrict on update restrict;

alter table USER_CASE_TYPE_XREF
   add constraint PTC_UCTX foreign key (PRMSN_TYP_ID)
      references PERMISSION_TYPE_CD (PRMSN_TYP_ID)
      on delete restrict on update restrict;

alter table USER_CASE_TYPE_XREF
   add constraint U_UCTX foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;
	  
-- END : POWCR00112953 - Data Level Security for the CASE_TYPE Table.	  

alter table SECURITY_GRP_DOCM_JUR_CTG_XREF
 add constraint JT_TO_SGDJCX foreign key (JUR_TYP_CD)
 references JURISDICTION_TYPE (JUR_TYP_CD)
 on delete restrict on update restrict;

alter table SECURITY_GRP_DOCM_JUR_CTG_XREF
 add constraint PTC_TO_SGDJCX foreign key (PRMSN_TYP_ID)
 references PERMISSION_TYPE_CD (PRMSN_TYP_ID)
 on delete restrict on update restrict;

alter table SECURITY_GRP_DOCM_JUR_CTG_XREF
 add constraint SGC_TO_SGDJCX foreign key (SEC_GRP_CD)
 references SECURITY_GROUP_CD (SEC_GRP_CD)
 on delete restrict on update restrict;
 
alter table SECURITY_GRP_DOCM_JUR_CTG_XREF
 add constraint DCT_TO_SGDJCX foreign key (DOCM_CTG_TYP_CD)
 references DOCUMENT_CATEGORY_TYPE (DOCM_CTG_TYP_CD)
 on delete restrict on update restrict;
 
alter table USER_DOCM_JUR_CTG_XREF
 add constraint JT_TO_UDJCX foreign key (JUR_TYP_CD)
 references JURISDICTION_TYPE (JUR_TYP_CD)
 on delete restrict on update restrict;

alter table USER_DOCM_JUR_CTG_XREF
 add constraint PTC_TO_UDJCX foreign key (PRMSN_TYP_ID)
 references PERMISSION_TYPE_CD (PRMSN_TYP_ID)
 on delete restrict on update restrict;

alter table USER_DOCM_JUR_CTG_XREF
 add constraint U_TO_UDJCX foreign key (USER_ID)
 references USERS (USER_ID)
 on delete restrict on update restrict;
 
alter table USER_DOCM_JUR_CTG_XREF
 add constraint DCT_TO_UDJCX foreign key (DOCM_CTG_TYP_CD)
 references DOCUMENT_CATEGORY_TYPE (DOCM_CTG_TYP_CD)
 on delete restrict on update restrict;

   
ALTER TABLE EVENT_EXTRA_DATA
       add constraint EEDT_TO_EED foreign key (EVNT_EXTRA_DATA_TYP_ID) 
             references EVENT_EXTRA_DATA_TYPE (EVNT_EXTRA_DATA_TYP_ID)
             on delete restrict on update restrict;
			 
ALTER TABLE INSTL_LTE_PAY_PENL_PFT_XREF
   ADD CONSTRAINT PFT_TO_ILPPPX FOREIGN KEY (PFT_ID)
      REFERENCES POLICY_FINANCIAL_TRANSACTION (PFT_ID)
      on delete restrict on update restrict;

-- BEGIN: CRs 112413/112419
alter table INTERFACE_PBM_ELIG_OUT
   add constraint RISKL_TO_IPEO foreign key (RISK_LOC_ID)
      references POLICY_SUMMARY_RISK_LOCATION (PSRL_ID)
      on delete restrict on update restrict;
alter table INTERFACE_PBM_ELIG_OUT
   add constraint GT_TO_IPEO foreign key (GNDR_TYP_CD)
      references GENDER_TYPE (GNDR_TYP_CD)
      on delete restrict on update restrict;
alter table INTERFACE_PBM_ELIG_OUT
   add constraint JT_TO_IPEO foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;
alter table INTERFACE_PBM_ELIG_OUT
   add constraint INSCT_TO_IPEO foreign key (INS_CMPY_TYP_ID)
      references INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID)
      on delete restrict on update restrict;
-- END: CRs 112413/112419

-- BEGIN: CR 112418
alter table INTERFACE_PBM_RECN_OUT
   add constraint BST_TO_IPRO foreign key (BILL_STS_TYP_CD)
      references BILL_STATUS_TYPE (BILL_STS_TYP_CD)
      on delete restrict on update restrict;
-- END: CR 112418


-- BEGIN: ECR 209(POWCR00115223)     
alter table BILL_INTFC_LINE_ITEM_MOD_SECD
   add constraint BILI_TO_BILIMS foreign key (BILI_ID)
      references BILL_INTERFACE_LINE_ITEM (BILI_ID)
      on delete restrict on update restrict;
-- END: ECR 209

alter table SYSTEM_OPTION
   add constraint SACC_TO_SO foreign key (SYS_ADMIN_CMPNT_CD)
      references SYSTEM_ADMINISTRATION_CMPNT_CD (SYS_ADMIN_CMPNT_CD)
      on delete restrict on update restrict;

alter table SYSTEM_CONSTANT
   add constraint SACC_TO_SC foreign key (SYS_ADMIN_CMPNT_CD)
      references SYSTEM_ADMINISTRATION_CMPNT_CD (SYS_ADMIN_CMPNT_CD)
      on delete restrict on update restrict;

alter table SYSTEM_OPTION
   add constraint SOCC_TO_SO foreign key (SYS_OPT_CTG_CD)
      references SYSTEM_OPTION_CATEGORY_CD (SYS_OPT_CTG_CD)
      on delete restrict on update restrict;
      
alter table SYSTEM_CONSTANT
   add constraint SOCC_TO_SC foreign key (SYS_OPT_CTG_CD)
      references SYSTEM_OPTION_CATEGORY_CD (SYS_OPT_CTG_CD)
      on delete restrict on update restrict;
      
alter table SYS_OPT_CTG_SAC_XREF
   add constraint SOCSX_TO_SACC foreign key (SYS_ADMIN_CMPNT_CD)
      references SYSTEM_ADMINISTRATION_CMPNT_CD (SYS_ADMIN_CMPNT_CD)
      on delete restrict on update restrict;

alter table SYS_OPT_CTG_SAC_XREF
   add constraint SOCSX_TO_SOCC foreign key (SYS_OPT_CTG_CD)
      references SYSTEM_OPTION_CATEGORY_CD (SYS_OPT_CTG_CD)
      on delete restrict on update restrict;
      
alter table SYSTEM_CONSTANT
   add constraint SOHLC_SC foreign key (SYS_OPT_HRCHY_LVL_ID)
      references SYSTEM_OPTION_HRCHY_LVL_CD (SYS_OPT_HRCHY_LVL_ID)
      on delete restrict on update restrict;

alter table SYSTEM_OPTION
   add constraint SOHLC_SO foreign key (SYS_OPT_HRCHY_LVL_ID)
      references SYSTEM_OPTION_HRCHY_LVL_CD (SYS_OPT_HRCHY_LVL_ID)
      on delete restrict on update restrict;

--ECR 300
alter table COVERED_TYPE_JUR_XREF
	add constraint JT_TO_CTJX foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table COVERED_TYPE_JUR_XREF
	add constraint CT_TO_CTJX foreign key (COV_TYP_CD)
      references COVERED_TYPE (COV_TYP_CD)
      on delete restrict on update restrict;

alter table COVERED_TITLE_TYPE_XREF
	add constraint CT_TO_COVTX foreign key (COV_TYP_CD)
      references COVERED_TYPE (COV_TYP_CD)
      on delete restrict on update restrict;

alter table COVERED_TITLE_TYPE_XREF
	add constraint TT_TO_COVTX foreign key (TTL_TYP_CD)
      references TITLE_TYPE (TTL_TYP_CD)
      on delete restrict on update restrict;
	  
alter table POLICY_PERIOD_HISTORY
   add constraint IDT_TO_PLCYPH foreign key (INVC_DD_TYP_CD)
      references INVOICE_DAY_TYPE (INVC_DD_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_HISTORY
   add constraint PLCY_TO_PLCYPH foreign key (AGRE_ID)
      references POLICY (AGRE_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_HISTORY
   add constraint PNRRT_TO_PLCYPH foreign key (PLCY_NRN_RSN_TYP_CD)
      references POLICY_NON_RENEWAL_REASON_TYPE (PLCY_NRN_RSN_TYP_CD)
      on delete restrict on update restrict;
      
alter table POLICY_PERIOD_HISTORY
   add constraint LDD_TO_PLCYPH foreign key (LDD_ID)
      references LARGE_DEDUCTIBLE_DETAIL (LDD_ID)
      on delete restrict on update restrict;
      
alter table POLICY_PERIOD_HISTORY
   add constraint USER_TO_PLCYP1H foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_HISTORY
   add constraint USER_TO_PLCYP2H foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;     


alter table POLICY_PERIOD_HISTORY
   add constraint PLCYP_TO_PLCYPH foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD(PLCY_PRD_ID)
      on delete restrict on update restrict;   
      
--SysAdmin note templates
alter table NOTE_TYPE_TEMPLATE_CD
   add constraint AGT_TO_NTTC foreign key (AGRE_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table NOTE_TYPE_TEMPLATE_CD
   add constraint NCTGT_TO_NTTC foreign key (NOTE_CTG_CD)
      references NOTE_CATEGORY_TYPE (NOTE_CTG_TYP_CD)
      on delete restrict on update restrict;
      
alter table NOTE_TYPE_TEMPLATE_CD
   add constraint PTCP_TO_NTTC foreign key (PTCP_TYP_CD)
      references PARTICIPATION_TYPE (PTCP_TYP_CD)
      on delete restrict on update restrict;
      
alter table NOTE_TYPE_TEMPLATE_CD
   add constraint CPTCP_TO_NTTC foreign key (CASE_PTCP_TYP_CD)
      references CASE_PARTICIPATION_TYPE (CASE_PTCP_TYP_CD)
      on delete restrict on update restrict;
      
 alter table NOTE_TMPL_APP_DTL_XREF
	add constraint NTTC_TO_NTADX foreign key (NOTE_TYP_TMPL_ID)
	   references NOTE_TYPE_TEMPLATE_CD (NOTE_TYP_TMPL_ID)
       on delete restrict on update restrict;
       
 alter table NOTE_TMPL_APP_DTL_XREF
	add constraint ADL_TO_NTADX foreign key (APP_DTL_LVL_CD)
	   references APPLICATION_DETAIL_LEVEL (APP_DTL_LVL_CD)
       on delete restrict on update restrict;
           
-- Rule table related

ALTER TABLE FUNCTIONAL_ROLE
   ADD CONSTRAINT UK_FR_FRC UNIQUE (FNCT_ROLE_CD);
   
ALTER TABLE DATA_RETRIEVER_CONFIGURATION
   ADD CONSTRAINT UK_DRC_ADT UNIQUE (APP_DATA_TYP_CD);

alter table RULE_CATEGORY_CD
   add constraint ACT_RCC foreign key (AGRE_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_CATEGORY_TYPE_CATEGORY_CD
   add constraint ACT_RCTCC foreign key (AGRE_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_CATEGORY_TYPE_CATEGORY_CD
   add constraint RCC_RCTCC foreign key (RL_CTG_CD)
      references RULE_CATEGORY_CD (RL_CTG_CD)
      on delete restrict on update restrict;

alter table RULE_CATEGORY_TYPE_CATEGORY_CD
   add constraint RCTC_RCTCC foreign key (RL_CTG_TYP_CD)
      references RULE_CATEGORY_TYPE_CD (RL_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_CATEGORY_TYPE_CATEGORY_CD
   add constraint RTC_RCTCC foreign key (RL_TYP_CD)
      references RULE_TYPE_CD (RL_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_CATEGORY_TYPE_CD
   add constraint ACT_RCTCTG foreign key (AGRE_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_CONDITION_ACTION_ASGN_CD
   add constraint ACT_RCAAC foreign key (AGRE_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_CONDITION_ACTION_ASGN_CD
   add constraint COUC_RCAAC foreign key (CMPY_ORG_UNT_ID_DFLT)
      references ORGANIZATIONAL_UNIT (ORG_UNT_ID)
      on delete restrict on update restrict;

alter table RULE_CONDITION_ACTION_ASGN_CD
   add constraint FRC_RCAAC foreign key (FNCT_ROLE_CD)
      references FUNCTIONAL_ROLE (FNCT_ROLE_CD)
      on delete restrict on update restrict;

alter table RULE_CONDITION_ACTION_ASGN_CD
   add constraint RCAC_RCAAC foreign key (RL_COND_ACTN_ID)
      references RULE_CONDITION_ACTION_CD (RL_COND_ACTN_ID)
      on delete restrict on update restrict;

alter table RULE_CONDITION_ACTION_ASGN_CD
   add constraint UC_RCAAC foreign key (USER_ID_DFLT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table RULE_CONDITION_ACTION_CASE_CD
   add constraint RCAC_RCACASEC foreign key (RL_COND_ACTN_ID)
      references RULE_CONDITION_ACTION_CD (RL_COND_ACTN_ID)
      on delete restrict on update restrict;

alter table RULE_CONDITION_ACTION_CD
   add constraint RCATC_RCAC foreign key (RL_COND_ACTN_TYP_CD)
      references RULE_CONDITION_ACTION_TYPE_CD (RL_COND_ACTN_TYP_CD)
      on delete restrict on update restrict;
	  
alter table RULE_CONDITION_ACTION_CD
   add constraint RCNC_RCAC foreign key (RL_COND_NODE_ID)
      references RULE_CONDITION_NODE_CD (RL_COND_NODE_ID)
      on delete restrict on update restrict;

alter table RULE_CONDITION_ACTION_COND_CD
   add constraint RCAC_RCACC foreign key (RL_COND_ACTN_ID)
      references RULE_CONDITION_ACTION_CD (RL_COND_ACTN_ID)
      on delete restrict on update restrict;
	  
alter table RULE_CONDITION_ACTION_COND_CD
   add constraint RCNC_RCACC foreign key (RL_COND_NODE_ID)
      references RULE_CONDITION_NODE_CD (RL_COND_NODE_ID)
      on delete restrict on update restrict;

alter table RULE_CONDITION_ACTION_DOCM_CD
   add constraint RCAC_RCADC foreign key (RL_COND_ACTN_ID)
      references RULE_CONDITION_ACTION_CD (RL_COND_ACTN_ID)
      on delete restrict on update restrict;

alter table RULE_CONDITION_ACTION_ERROR_CD
   add constraint RCAC_RCAEC foreign key (RL_COND_ACTN_ID)
      references RULE_CONDITION_ACTION_CD (RL_COND_ACTN_ID)
      on delete restrict on update restrict;

alter table RULE_CONDITION_ACTION_ERROR_CD
   add constraint RCAETC_RCAEC foreign key (RL_COND_ACTN_ERR_TYP_CD)
      references RULE_CONDITION_ACTN_ERR_TYP_CD (RL_COND_ACTN_ERR_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_CONDITION_ACTION_ERROR_CD
   add constraint RCAETXTC_RCAEC foreign key (RCAET_CD)
      references RULE_CONDITION_ACTN_ERR_TXT_CD (RCAET_CD)
      on delete restrict on update restrict;

alter table RULE_CONDITION_ACTION_EVENT_CD
   add constraint EVNTTC_RCAEVNTC foreign key (EVNT_TYP_CD)
      references EVENT_TYPE (EVNT_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_CONDITION_ACTION_EVENT_CD
   add constraint RCAC_RCAEVNTC foreign key (RL_COND_ACTN_ID)
      references RULE_CONDITION_ACTION_CD (RL_COND_ACTN_ID)
      on delete restrict on update restrict;
      
alter table RULE_CONDITION_ACTION_EVENT_CD
	add constraint ADT_TO_RCAEC foreign key (APP_DATA_TYP_CD)
		references APPLICATION_DATA_TYPE (APP_DATA_TYP_CD)
	    on delete restrict on update restrict;
	    
alter table RULE_CONDITION_ACTION_EVENT_CD
	add constraint ACT_TO_RCAEC foreign key (APP_CNTX_TYP_CD_CSCD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
	    on delete restrict on update restrict;
	    
alter table RULE_CONDITION_ACTION_EVENT_CD
	add constraint ASCT_TO_RCAEC foreign key (APP_SUB_CNTX_TYP_CD_CSCD)
      references APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD)
	    on delete restrict on update restrict;

alter table RULE_CONDITION_ACTION_FOLD_CD
   add constraint RCAC_RCAFC foreign key (RL_COND_ACTN_ID)
      references RULE_CONDITION_ACTION_CD (RL_COND_ACTN_ID)
      on delete restrict on update restrict;

alter table RULE_CONDITION_ACTION_NOTE_CD
   add constraint RCAC_RCANC foreign key (RL_COND_ACTN_ID)
      references RULE_CONDITION_ACTION_CD (RL_COND_ACTN_ID)
      on delete restrict on update restrict;

alter table RULE_CONDITION_ACTION_ORDER_CD
   add constraint RCAC_RCAOC foreign key (RL_COND_ACTN_ID)
      references RULE_CONDITION_ACTION_CD (RL_COND_ACTN_ID)
      on delete restrict on update restrict;

alter table RULE_CONDITION_ACTION_TYPE_CD
   add constraint RLTC_RCATC foreign key (RL_TYP_CD)
      references RULE_TYPE_CD (RL_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_CONDITION_ACTION_UI_CD
   add constraint RCAC_RCAUC foreign key (RL_COND_ACTN_ID)
      references RULE_CONDITION_ACTION_CD (RL_COND_ACTN_ID)
      on delete restrict on update restrict;

alter table RULE_CONDITION_ACTN_ERR_TXT_CD
   add constraint ASCT_RCAETC foreign key (AGRE_SUBTYP_CD)
      references APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_CONDITION_ACTN_ERR_TXT_CD
   add constraint ACT_RCAETC foreign key (AGRE_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_CONDITION_ACTN_UI_PROP_CD
   add constraint RCAUC_RCAUPC foreign key (RL_COND_ACTN_ID)
      references RULE_CONDITION_ACTION_UI_CD (RL_COND_ACTN_ID)
      on delete restrict on update restrict;

alter table RULE_CONDITION_ACTN_UI_PROP_CD
   add constraint RCAUTC_RCAUPC foreign key (RL_COND_ACTN_UI_TYP_CD)
      references RULE_CONDITION_ACTN_UI_TYP_CD (RL_COND_ACTN_UI_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_CONDITION_ACTN_UI_PROP_CD
   add constraint UDOC_RCAUPC foreign key (UI_DYN_OBJ_ID)
      references UI_DYNAMIC_OBJECT_CD (UI_DYN_OBJ_ID)
      on delete restrict on update restrict;
      
alter table UI_DYNAMIC_OBJECT_CD
   add constraint ACT_UIDOC foreign key (AGRE_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_CONDITION_EXPRESSION_CD
   add constraint ADATACLFT_RCEC foreign key (AGRE_DATA_CD_LFT)
      references AGREEMENT_DATA_CD (AGRE_DATA_CD)
      on delete restrict on update restrict;

alter table RULE_CONDITION_EXPRESSION_CD
   add constraint ADATACRT_RCEC foreign key (AGRE_DATA_CD_RT)
      references AGREEMENT_DATA_CD (AGRE_DATA_CD)
      on delete restrict on update restrict;

alter table RULE_CONDITION_EXPRESSION_CD
   add constraint BOC_RCEC foreign key (BOOL_OPER_CD_NXT)
      references BOOLEAN_OPERATOR_CD (BOOL_OPER_CD)
      on delete restrict on update restrict;

alter table RULE_CONDITION_EXPRESSION_CD
   add constraint EOC_RCEC foreign key (EXPRSN_OPER_CD)
      references EXPRESSION_OPERATOR_CD (EXPRSN_OPER_CD)
      on delete restrict on update restrict;

alter table RULE_CONDITION_EXPRESSION_CD
   add constraint RCEC_RCEC foreign key (RL_COND_EXPRSN_ID_NXT)
      references RULE_CONDITION_EXPRESSION_CD (RL_COND_EXPRSN_ID)
      on delete restrict on update restrict;

alter table RULE_CONDITION_EXPRESSION_CD
   add constraint RDACLFT_RCEC foreign key (RL_DTO_ATTR_CD_LFT)
      references RULE_DTO_ATTRIBUTE_CD (RL_DTO_ATTR_CD)
      on delete restrict on update restrict;

alter table RULE_CONDITION_EXPRESSION_CD
   add constraint RDACRT_RCEC foreign key (RL_DTO_ATTR_CD_RT)
      references RULE_DTO_ATTRIBUTE_CD (RL_DTO_ATTR_CD)
      on delete restrict on update restrict;

alter table RULE_CONDITION_EXPRESSION_CD
   add constraint RDACRT_RTFCTN foreign key (RLDATA_FCTN_ID_RT)
      references RULE_FUNCTION_DATA (RLDATA_FCTN_ID)
      on delete restrict on update restrict;
      
alter table RULE_CONDITION_EXPRESSION_CD
   add constraint RDACRT_LFTFCTN foreign key (RLDATA_FCTN_ID_LFT)
      references RULE_FUNCTION_DATA (RLDATA_FCTN_ID)
      on delete restrict on update restrict;
      
alter table RULE_CONDITION_NODE_CD
   add constraint ADATAC_RCNC foreign key (AGRE_DATA_CD)
      references AGREEMENT_DATA_CD (AGRE_DATA_CD)
      on delete restrict on update restrict;

alter table RULE_CONDITION_NODE_CD
   add constraint RCEC_RCNC foreign key (RL_COND_EXPRSN_ID_INIT)
      references RULE_CONDITION_EXPRESSION_CD (RL_COND_EXPRSN_ID)
      on delete restrict on update restrict;

alter table RULE_CONDITION_NODE_CD
   add constraint RCTC_RCNC foreign key (RL_COND_TYP_CD)
      references RULE_CONDITION_TYPE_CD (RL_COND_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_COND_ACTN_ASGN_ORG_UNT_CD
   add constraint COUC_RCAAOUC foreign key (CMPY_ORG_UNT_ID)
      references ORGANIZATIONAL_UNIT (ORG_UNT_ID)
      on delete restrict on update restrict;

alter table RULE_COND_ACTN_ASGN_ORG_UNT_CD
   add constraint RCAAC_RCAAOUC foreign key (RL_COND_ACTN_ID)
      references RULE_CONDITION_ACTION_ASGN_CD (RL_COND_ACTN_ID)
      on delete restrict on update restrict;

alter table RULE_COND_ACTN_ASGN_USER_CD
   add constraint RCAAC_RCAAUC foreign key (RL_COND_ACTN_ID)
      references RULE_CONDITION_ACTION_ASGN_CD (RL_COND_ACTN_ID)
      on delete restrict on update restrict;

alter table RULE_COND_ACTN_ASGN_USER_CD
   add constraint UC_RCAAUC foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table RULE_COND_ACTN_EVNT_DATA_CD
   add constraint ADC_RCAEDC foreign key (AGRE_DATA_CD)
      references AGREEMENT_DATA_CD (AGRE_DATA_CD)
      on delete restrict on update restrict;

alter table RULE_COND_ACTN_EVNT_DATA_CD
   add constraint DRC_RCAEDC foreign key (DATA_RTRV_CD)
      references DATA_RETRIEVER_CONFIGURATION (APP_DATA_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_COND_ACTN_UI_TYP_DTO_XREF
   add constraint RCAUTC_RCAUTDX foreign key (RL_COND_ACTN_UI_TYP_CD)
      references RULE_CONDITION_ACTN_UI_TYP_CD (RL_COND_ACTN_UI_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_COND_ACTN_UI_TYP_DTO_XREF
   add constraint RDC_RCAUTDX foreign key (RL_DTO_CD)
      references RULE_DTO_CD (RL_DTO_CD)
      on delete restrict on update restrict;

alter table RULE_COND_ACTN_WRK_ITEM_CD
   add constraint RCAC_RCAWIC foreign key (RL_COND_ACTN_ID)
      references RULE_CONDITION_ACTION_CD (RL_COND_ACTN_ID)
      on delete restrict on update restrict;
      
alter table RULE_DECISION_TREE_CD
   add constraint ASCT_RDTC foreign key (AGRE_SUBTYP_CD)
      references APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_DECISION_TREE_CD
   add constraint ACT_RDTC foreign key (AGRE_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_DECISION_TREE_CD
   add constraint EVNTTC_RDTC foreign key (EVNT_TYP_CD)
      references EVENT_TYPE (EVNT_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_DECISION_TREE_CD
   add constraint RCD_RDTC foreign key (RL_CTG_CD)
      references RULE_CATEGORY_CD (RL_CTG_CD)
      on delete restrict on update restrict;

alter table RULE_DECISION_TREE_CD
   add constraint RCNC_RDTC foreign key (RL_COND_NODE_ID_INIT)
      references RULE_CONDITION_NODE_CD (RL_COND_NODE_ID)
      on delete restrict on update restrict;

alter table RULE_DECISION_TREE_CD
   add constraint RCO_RDTC foreign key (RL_ORIG_CD)
      references RULE_ORIGINATION_CD (RL_ORIG_CD)
      on delete restrict on update restrict;

alter table RULE_DECISION_TREE_CD
   add constraint RCTC_RDTC foreign key (RL_CTG_TYP_CD)
      references RULE_CATEGORY_TYPE_CD (RL_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_DECISION_TREE_CD
   add constraint RDC_RDTC foreign key (RL_DTO_CD)
      references RULE_DTO_CD (RL_DTO_CD)
      on delete restrict on update restrict;

alter table RULE_DECISION_TREE_CD
   add constraint RLTC_RDTC foreign key (RL_TYP_CD)
      references RULE_TYPE_CD (RL_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_DECISION_TREE_CD
   add constraint UETC_RDTC foreign key (UI_EVNT_TYP_CD)
      references UI_EVENT_TYPE_CD (UI_EVNT_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_DTO_ATTRIBUTE_CD
   add constraint ADC_RDAC foreign key (AGRE_DATA_CD)
      references AGREEMENT_DATA_CD (AGRE_DATA_CD)
      on delete restrict on update restrict;

alter table RULE_DTO_ATTRIBUTE_CD
   add constraint DATATC_RDAC foreign key (DATA_TYP_CD)
      references DATA_TYPE (DATA_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_DTO_ATTRIBUTE_CD
   add constraint RDC_RDAC foreign key (RL_DTO_CD)
      references RULE_DTO_CD (RL_DTO_CD)
      on delete restrict on update restrict;
      
alter table RULE_DTO_ATTRIBUTE_DESC_CD
   add constraint ADC_RDADC foreign key (AGRE_DATA_CD)
      references AGREEMENT_DATA_CD (AGRE_DATA_CD)
      on delete restrict on update restrict;

alter table RULE_DTO_CD
   add constraint ASCT_RDC foreign key (AGRE_SUBTYP_CD)
      references APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_DTO_CD
   add constraint ACT_RDC foreign key (AGRE_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_PARSE_STATUS
   add constraint RDTC_RPS foreign key (RL_DECN_TREE_ID)
      references RULE_DECISION_TREE_CD (RL_DECN_TREE_ID)
      on delete restrict on update restrict;

alter table UI_EVENT_TYPE_CD
   add constraint ASCT_UETC foreign key (AGRE_SUBTYP_CD)
      references APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table UI_EVENT_TYPE_CD
   add constraint ACT_UETC foreign key (AGRE_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table UI_EVENT_TYPE_RULE_DTO_XREF
   add constraint RDC_UETRDX foreign key (RL_DTO_CD)
      references RULE_DTO_CD (RL_DTO_CD)
      on delete restrict on update restrict;

alter table UI_EVENT_TYPE_RULE_DTO_XREF
   add constraint UETC_UETRDX foreign key (UI_EVNT_TYP_CD)
      references UI_EVENT_TYPE_CD (UI_EVNT_TYP_CD)
      on delete restrict on update restrict;

alter table UI_EVENT_TYPE_UI_DYN_OBJ_XREF
   add constraint UDOC_UETUDOX foreign key (UI_DYN_OBJ_ID)
      references UI_DYNAMIC_OBJECT_CD (UI_DYN_OBJ_ID)
      on delete restrict on update restrict;

alter table UI_EVENT_TYPE_UI_DYN_OBJ_XREF
   add constraint UETC_UETUDOX foreign key (UI_EVNT_TYP_CD)
      references UI_EVENT_TYPE_CD (UI_EVNT_TYP_CD)
      on delete restrict on update restrict;

alter table AGREEMENT_DATA_CD
   add constraint ASCT_ADC foreign key (AGRE_SUBTYP_CD)
      references APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table AGREEMENT_DATA_CD
   add constraint ACT_ADC foreign key (AGRE_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table AGREEMENT_DATA_CD
   add constraint DTC_ADC foreign key (DATA_TYP_CD)
      references DATA_TYPE (DATA_TYP_CD)
      on delete restrict on update restrict;

alter table AGREEMENT_DATA_CODE_TABLE_CD
   add constraint ADATAC_ADCTC foreign key (AGRE_DATA_CD)
      references AGREEMENT_DATA_CD (AGRE_DATA_CD)
      on delete restrict on update restrict;

alter table AGREEMENT_DATA_CODE_TABLE_CD
   add constraint DATATC_ADCTC foreign key (DATA_TYP_CD)
      references DATA_TYPE (DATA_TYP_CD)
      on delete restrict on update restrict;

alter table AGREEMENT_DATA_CODE_TABLE_CD
   add constraint DFTC_ADCTC foreign key (DATA_TYP_FRMT_ID)
      references DATA_TYPE_FORMAT_CD (DATA_TYP_FRMT_ID)
      on delete restrict on update restrict;
      
alter table DATA_TYPE_FORMAT_CD
   add constraint DATATC_DTFC foreign key (DATA_TYP_CD)
      references DATA_TYPE (DATA_TYP_CD)
      on delete restrict on update restrict;

-- ECR 035
ALTER TABLE ROLE_EMPLOYER_REP
   ADD CONSTRAINT CR_TO_RER FOREIGN KEY (ROLE_ID)
      REFERENCES CUSTOMER_ROLE (ROLE_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
      
ALTER TABLE ROLE_EMPLOYER_REP
   ADD CONSTRAINT USER_TO_RER1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ROLE_EMPLOYER_REP
   ADD CONSTRAINT USER_TO_RER2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ROLE_EMPLOYER_REP
   ADD CONSTRAINT ERT_TO_RER FOREIGN KEY (EMPLR_REP_TYP_CD)    
      REFERENCES EMPLOYER_REP_TYPE(EMPLR_REP_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT; 
ALTER TABLE ROLE_EMPLOYER_REP_HISTORY
  ADD CONSTRAINT RER_TO_RERH FOREIGN KEY (ROLE_EMPLR_REP_ID)
      REFERENCES ROLE_EMPLOYER_REP(ROLE_EMPLR_REP_ID)
        ON DELETE RESTRICT ON UPDATE RESTRICT;
        
ALTER TABLE ROLE_EMPLOYER_REP_HISTORY
   ADD CONSTRAINT USER_TO_RERH1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ROLE_EMPLOYER_REP_HISTORY
   ADD CONSTRAINT USER_TO_RERH2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
     REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PLCY_PRD_PTCP_EMPLR_REP
   ADD CONSTRAINT PPP_TO_PPPER FOREIGN KEY (PTCP_ID)    
      REFERENCES POLICY_PERIOD_PARTICIPATION(PTCP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;   

ALTER TABLE PLCY_PRD_PTCP_EMPLR_REP
   ADD CONSTRAINT ERT_TO_PPPER FOREIGN KEY (EMPLR_REP_TYP_CD)    
      REFERENCES EMPLOYER_REP_TYPE(EMPLR_REP_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;      

ALTER TABLE PLCY_PRD_PTCP_EMPLR_REP_HIST
   ADD CONSTRAINT ERT_TO_PPPERH FOREIGN KEY (EMPLR_REP_TYP_CD)    
      REFERENCES EMPLOYER_REP_TYPE(EMPLR_REP_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT; 
	  
alter table POLICY_PERIOD_PTCP_AGNT_HIST
   add constraint PPPH_TO_PPPERH foreign key (HIST_ID)
      references POLICY_PERIOD_PTCP_HIST (HIST_ID)
      on delete restrict on update restrict;

ALTER TABLE PLCY_PRD_PTCP_EMP_REP_DTL
   ADD CONSTRAINT PPP_TO_PPPERD FOREIGN KEY (PTCP_ID)    
      REFERENCES POLICY_PERIOD_PARTICIPATION(PTCP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;       

ALTER TABLE PLCY_PRD_PTCP_EMP_REP_DTL
   ADD CONSTRAINT PPP_TO_PPPERDI FOREIGN KEY (PPPERD_INS_PTCP_ID)    
      REFERENCES POLICY_PERIOD_PARTICIPATION(PTCP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT; 
      
ALTER TABLE PLCY_PRD_PTCP_EMP_REP_DTL
   ADD CONSTRAINT USER_TO_PPPERD1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PLCY_PRD_PTCP_EMP_REP_DTL
   ADD CONSTRAINT USER_TO_PPPERD2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
     REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PLCY_PRD_PTCP_EMP_REP_DTL_HIST
   ADD CONSTRAINT PPP_TO_PPPERDHI FOREIGN KEY (PPPERD_INS_PTCP_ID)    
      REFERENCES POLICY_PERIOD_PARTICIPATION(PTCP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT; 
      
ALTER TABLE PLCY_PRD_PTCP_EMP_REP_DTL_HIST
   ADD CONSTRAINT USER_TO_PPPERDH1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PLCY_PRD_PTCP_EMP_REP_DTL_HIST
   ADD CONSTRAINT USER_TO_PPPERDH2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
     REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
      
ALTER TABLE POLICY_SUMMARY_EMPLR_REP_DTL
   ADD CONSTRAINT PSP_TO_PSERD1 FOREIGN KEY (PLCY_SUM_PTCP_ID)
     REFERENCES POLICY_SUMMARY_PARTICIPATION (PLCY_SUM_PTCP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
	  	  
ALTER TABLE POLICY_SUMMARY_EMPLR_REP_DTL
   ADD CONSTRAINT ERT_TO_PSERD FOREIGN KEY (PSERD_EMPLR_REP_TYP_CD)
     REFERENCES EMPLOYER_REP_TYPE (EMPLR_REP_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
	  
ALTER TABLE POLICY_SUMMARY_EMPLR_REP_DTL
   ADD CONSTRAINT PSP_TO_PSERD2 FOREIGN KEY (PLCY_SUM_PTCP_ID_INS)
     REFERENCES POLICY_SUMMARY_PARTICIPATION (PLCY_SUM_PTCP_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;	  
	  
ALTER TABLE POLICY_SUMMARY_EMPLR_REP_DTL
   ADD CONSTRAINT USER_TO_PSERD1 FOREIGN KEY (AUDIT_USER_ID_CREA)
      REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE POLICY_SUMMARY_EMPLR_REP_DTL
   ADD CONSTRAINT USER_TO_PSERD2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
     REFERENCES USERS (USER_ID)
      ON DELETE RESTRICT ON UPDATE RESTRICT;
      
--- end ECR35

alter table RCAWI_ORG_UNT_CD
   add constraint COUC_ROUC foreign key (CMPY_ORG_UNT_ID)
      references ORGANIZATIONAL_UNIT (ORG_UNT_ID)
      on delete restrict on update restrict;

alter table RCAWI_ORG_UNT_USER_CD
   add constraint ROUC_RCAWIOUUC foreign key (RCAWIOU_ID)
      references RCAWI_ORG_UNT_CD (RCAWIOU_ID)
      on delete restrict on update restrict;

alter table RCAA_ORG_UNT_USER_CD
   add constraint RCAAOUC_RCAAOUUC foreign key (RCAAOU_ID)
      references RULE_COND_ACTN_ASGN_ORG_UNT_CD (RCAAOU_ID)
      on delete restrict on update restrict;

alter table RCAA_ORG_UNT_USER_CRITERIA_CD
   add constraint DRC_RCAAOUUCC foreign key (DATA_RTRV_CD)
      references DATA_RETRIEVER_CONFIGURATION (APP_DATA_TYP_CD)
      on delete restrict on update restrict;

alter table RCAA_ORG_UNT_USER_CRITERIA_CD
   add constraint EOC_RCAAOUUCC foreign key (EXPRSN_OPER_CD)
      references EXPRESSION_OPERATOR_CD (EXPRSN_OPER_CD)
      on delete restrict on update restrict;

alter table RCAA_ORG_UNT_USER_CRITERIA_CD
   add constraint RCAAOUC_OUUCC foreign key (RCAAOU_ID)
      references RULE_COND_ACTN_ASGN_ORG_UNT_CD (RCAAOU_ID)
      on delete restrict on update restrict;
      
alter table AGRE_TYPE_AGREEMENT_DATA_XREF
   add constraint ADC_ATADX foreign key (AGRE_DATA_CD)
      references AGREEMENT_DATA_CD (AGRE_DATA_CD)
      on delete restrict on update restrict;

alter table AGRE_TYPE_AGREEMENT_DATA_XREF
   add constraint ACT_ATADX foreign key (AGRE_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;
      
alter table AGRE_SUBTYP_AGRE_DATA_XREF
   add constraint ADC_ASADX foreign key (AGRE_DATA_CD)
      references AGREEMENT_DATA_CD (AGRE_DATA_CD)
      on delete restrict on update restrict;

alter table AGRE_SUBTYP_AGRE_DATA_XREF
   add constraint ASCT_ASADX foreign key (AGRE_SUBTYP_CD)
      references APPLICATION_SUB_CONTEXT_TYPE (APP_SUB_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table EVENT_TYPE_AGRE_DATA_XREF
   add constraint ADC_ETADX foreign key (AGRE_DATA_CD)
      references AGREEMENT_DATA_CD (AGRE_DATA_CD)
      on delete restrict on update restrict;

alter table EVENT_TYPE_AGRE_DATA_XREF
   add constraint EVNTTC_ETADX foreign key (EVNT_TYP_CD)
      references EVENT_TYPE (EVNT_TYP_CD)
      on delete restrict on update restrict;

-- End rule table related

alter table FINANCIAL_TRAN_TYP_SRC_XREF 
   add constraint FTST_TO_FTTSX foreign key (FNCL_TRAN_SRC_TYP_CD)
      references FINANCIAL_TRANSACTION_SRC_TYP (FNCL_TRAN_SRC_TYP_CD)
      on delete restrict on update restrict;

alter table FINANCIAL_TRAN_TYP_SRC_XREF 
   add constraint FTT_TO_FTTSX foreign key (FNCL_TRAN_TYP_ID)
      references FINANCIAL_TRANSACTION_TYPE (FNCL_TRAN_TYP_ID)
      on delete restrict on update restrict;

alter table FINANCIAL_TRAN_TYP_SRC_XREF 
   add constraint FTAT_TO_FTTSX foreign key (FTAT_ID)
      references FINANCIAL_TRANSACTION_APP_TYP (FTAT_ID)
      on delete restrict on update restrict;

alter table FINANCIAL_TRAN_TYP_SRC_XREF 
   add constraint ATT_TO_FTTSX foreign key (ACCT_TRAN_TYP_CD)
      references ACCOUNTING_TRANSACTION_TYPE (ACCT_TRAN_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE ASSIGNMENT_LOCK 
	ADD CONSTRAINT ACT_TO_AL FOREIGN KEY(APP_CNTX_TYP_CD) 
		REFERENCES APPLICATION_CONTEXT_TYPE(APP_CNTX_TYP_CD) 
		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT_LOCK 
	ADD CONSTRAINT ALBRT_TO_AL FOREIGN KEY(ASGN_LD_BAL_RL_TYP_CD) 
		REFERENCES ASSIGNMENT_LOAD_BAL_RL_TYP(ASGN_LD_BAL_RL_TYP_CD) 
		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT_LOCK 
	ADD CONSTRAINT FR_TO_ALN FOREIGN KEY(FNCT_ROLE_ID) 
		REFERENCES FUNCTIONAL_ROLE(FNCT_ROLE_ID) 
		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT_LOCK 
	ADD CONSTRAINT OU_TO_AL FOREIGN KEY(ORG_UNT_ID) 
		REFERENCES ORGANIZATIONAL_UNIT(ORG_UNT_ID) 
		ON DELETE RESTRICT ON UPDATE RESTRICT;
  
ALTER TABLE ASSIGNMENT_LOCK 
	ADD CONSTRAINT USER_TO_AL FOREIGN KEY(USER_ID) 
		REFERENCES USERS(USER_ID) 
		ON DELETE RESTRICT ON UPDATE RESTRICT;
		
      on delete restrict on update restrict;      		
      
alter table POLICY_PERIOD_AUDIT_DETAIL
   add constraint PTST_TO_PPAD foreign key (PAY_TRK_SRC_TYP_CD)
      references PAYMENT_TRACK_SOURCE_TYPE (PAY_TRK_SRC_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_AUDIT_DTL_HIST
   add constraint PTST_TO_PPADH foreign key (PAY_TRK_SRC_TYP_CD)
      references PAYMENT_TRACK_SOURCE_TYPE (PAY_TRK_SRC_TYP_CD)
      on delete restrict on update restrict;            
ALTER TABLE INTERFACE_RTSP_RT_ELEM_IN
  	ADD CONSTRAINT IREI_TO_IRREI FOREIGN KEY (IREI_ID)
	REFERENCES INTERFACE_RATING_ELEMENT_IN (IREI_ID)
      ON DELETE CASCADE;  
   
ALTER TABLE INTERFACE_DED_RT_ELEM_IN
  	ADD CONSTRAINT IREI_TO_IDREI FOREIGN KEY (IREI_ID)
	REFERENCES INTERFACE_RATING_ELEMENT_IN (IREI_ID)
      ON DELETE CASCADE;  

ALTER TABLE INTERFACE_EMOD_RT_ELEM_IN
  	ADD CONSTRAINT IREI_TO_IEREI FOREIGN KEY (IREI_ID)
	REFERENCES INTERFACE_RATING_ELEMENT_IN (IREI_ID)
      ON DELETE CASCADE     
            on delete restrict on update restrict;

 alter table CUSTOMER_INTERACTION_CHNL_HIST
 add constraint CIC_TO_CICH foreign key (CUST_INTRN_CHNL_ID)
 references CUSTOMER_INTERACTION_CHANNEL (CUST_INTRN_CHNL_ID)
 ;

alter table CUSTOMER_INTERACTION_CHNL_HIST
 add constraint ICT_TO_CICH foreign key (INTRN_CHNL_TYP_CD)
 references INTERACTION_CHANNEL_TYPE (INTRN_CHNL_TYP_CD)
 ;

alter table CUSTOMER_INTERACTION_CHNL_HIST
 add constraint PNT_TO_CICH foreign key (PHN_NO_TYP_CD)
 references PHONE_NUMBER_TYPE (PHN_NO_TYP_CD)
 ;

alter table CUSTOMER_INTERACTION_CHNL_HIST
 add constraint CRT_TO_CICH foreign key (CUST_ROLE_TYP_CD)
 references CUSTOMER_ROLE_TYPE (CUST_ROLE_TYP_CD)
 ;
 
alter table CUSTOMER_INTERACTION_CHNL_HIST
   add constraint CUST_TO_CINTRNCH foreign key (CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_INTERACTION_CHNL_HIST
   add constraint USER_TO_CINTRNCH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table CUSTOMER_INTERACTION_CHNL_HIST
   add constraint USER_TO_CINTRNCH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict; 
 
ALTER TABLE BATCH_PC_TO_WCPOLS_JUR_STG
	ADD CONSTRAINT BPTWS_TO_BPTWJS FOREIGN KEY (BPTWS_ID)
	REFERENCES BATCH_PC_TO_WCPOLS_STG (BPTWS_ID)
      ON DELETE CASCADE     
            on delete restrict on update restrict;

alter table CLAIM_ADDITIONAL_DETAIL
   add constraint CLM_TO_CLMAD foreign key (AGRE_ID)
      references CLAIM (AGRE_ID)
      on delete restrict on update restrict;
 
 alter table FNCL_TRAN_ACCT_TRAN_XREF
   add constraint ATT_TO_FTATX foreign key (ACCT_TRAN_TYP_CD)
      references ACCOUNTING_TRANSACTION_TYPE (ACCT_TRAN_TYP_CD)
      on delete restrict on update restrict;

alter table FNCL_TRAN_ACCT_TRAN_XREF
   add constraint FTT_TO_FTATX foreign key (FNCL_TRAN_TYP_ID)
      references FINANCIAL_TRANSACTION_TYPE (FNCL_TRAN_TYP_ID)
      on delete restrict on update restrict;

ALTER TABLE ASGN_RL_POST_GRP_SET_VAL_XREF
   add constraint ARPG_TO_ARPGSVX foreign key (ARPG_ID)
      references ASSIGNMENT_RULE_POSTAL_GROUP (ARPG_ID)
      on delete restrict on update restrict;

ALTER TABLE ASGN_RL_POST_GRP_RNG_VAL_XREF
   add constraint ARPG_TO_ARPGRVX foreign key (ARPG_ID)
      references ASSIGNMENT_RULE_POSTAL_GROUP (ARPG_ID)
      on delete restrict on update restrict;


alter table ICD_CLAIM_GEM_HISTORY
   add constraint ICDG_TO_ICDGH foreign key (ICD_CLM_GEM_ID)
      references ICD_CLAIM_GEM (ICD_CLM_GEM_ID)
      on delete restrict on update restrict;


alter table SECURITY_GRP_CUST_TYP_RLE_XREF
 add constraint CUSTT_TO_SGCTRX foreign key (CUST_TYP_CD)
 references CUSTOMER_TYPE (CUST_TYP_CD)
 on delete restrict on update restrict;

alter table SECURITY_GRP_CUST_TYP_RLE_XREF
 add constraint PRMSNTC_TO_SGCTRX foreign key (PRMSN_TYP_ID)
 references PERMISSION_TYPE_CD (PRMSN_TYP_ID)
 on delete restrict on update restrict;

alter table SECURITY_GRP_CUST_TYP_RLE_XREF
 add constraint SGC_TO_SGCTRX foreign key (SEC_GRP_CD)
 references SECURITY_GROUP_CD (SEC_GRP_CD)
 on delete restrict on update restrict;
 
alter table SECURITY_GRP_CUST_TYP_RLE_XREF
 add constraint CRT_TO_SGCTRX foreign key (CUST_ROLE_TYP_CD)
 references CUSTOMER_ROLE_TYPE (CUST_ROLE_TYP_CD)
 on delete restrict on update restrict;
 
alter table USER_CUST_TYP_RLE_XREF
 add constraint CUSTT_TO_UCTRX foreign key (CUST_TYP_CD)
 references CUSTOMER_TYPE (CUST_TYP_CD)
 on delete restrict on update restrict;

alter table USER_CUST_TYP_RLE_XREF
 add constraint PRMSNTC_TO_UCTRX foreign key (PRMSN_TYP_ID)
 references PERMISSION_TYPE_CD (PRMSN_TYP_ID)
 on delete restrict on update restrict;

alter table USER_CUST_TYP_RLE_XREF
 add constraint USER_TO_UCTRX foreign key (USER_ID)
 references USERS (USER_ID)
 on delete restrict on update restrict;
 
alter table USER_CUST_TYP_RLE_XREF
 add constraint CRT_TO_UCTRX foreign key (CUST_ROLE_TYP_CD)
 references CUSTOMER_ROLE_TYPE (CUST_ROLE_TYP_CD)
 on delete restrict on update restrict;

ALTER TABLE EVENT_TRIG_ACTION_QUEUE_XREF
add constraint ETC_TO_ETAQX foreign key (EVENT_TRIGGER_CLS_ID)
     references EVENT_TRIGGER_CLASS (EVENT_TRIGGER_CLS_ID)
     on delete restrict on update restrict;

ALTER TABLE EVENT_TRIG_ACTION_QUEUE_XREF
add constraint ETAT_TO_ETAQX foreign key (EVENT_TRIGGER_ACTION_TYPE_CD)
     references EVENT_TRIGGER_ACTION_TYPE (EVENT_TRIGGER_ACTION_TYPE_CD)
     on delete restrict on update restrict;
	 
ALTER TABLE EVENT_TRIG_ACTION_QUEUE_XREF
add constraint ACT_TO_ETAQX foreign key (APP_CNTX_TYP_CD)
     references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD);
     on delete restrict on update restrict;

ALTER TABLE EVENT_TRIG_ACTION_QUEUE_XREF
add constraint EVNTQ_TO_ETAQX foreign key (EVENT_QUEUE_ID)
     references EVENT_QUEUE (EVENT_QUEUE_ID)
     on delete restrict on update restrict;

ALTER TABLE EVENT_TRIG_PAYLOAD_XREF
add constraint ETAQX_TO_ETPX foreign key (ETAQX_ID)
     references EVENT_TRIG_ACTION_QUEUE_XREF (ETAQX_ID)
     on delete restrict on update restrict;

ALTER TABLE EVENT_TRIG_PAYLOAD_XREF
add constraint EVNTP_TO_ETPX foreign key (EVENT_PAYLOAD_ID)
      references EVENT_PAYLOAD (EVENT_PAYLOAD_ID)
      on delete restrict on update restrict;

ALTER TABLE EVENT_TRIG_ACTION_QUEUE_XREF
add constraint EVNTT_TO_ETAQX foreign key (EVNT_TYP_CD)
     references EVENT_TYPE (EVNT_TYP_CD)
     on delete restrict on update restrict;

ALTER TABLE EVENT_TRIGGER_RULES 
add constraint ETAQX_TO_ETR foreign key (ETAQX_ID)
     references EVENT_TRIG_ACTION_QUEUE_XREF (ETAQX_ID)
     on delete restrict on update restrict;

ALTER TABLE OUTBOUND_EVENT_DATA
add constraint ETC_TO_OED foreign key (EVENT_TRIGGER_CLS_ID)
     references EVENT_TRIGGER_CLASS (EVENT_TRIGGER_CLS_ID)
     on delete restrict on update restrict;

ALTER TABLE OUTBOUND_EVENT_DATA
add constraint ETAT_TO_OED foreign key (EVENT_TRIGGER_ACTION_TYPE_CD)
     references EVENT_TRIGGER_ACTION_TYPE (EVENT_TRIGGER_ACTION_TYPE_CD)
     on delete restrict on update restrict;

ALTER TABLE OUTBOUND_EVENT_DATA
add constraint EVNTQ_TO_OED foreign key (EVENT_QUEUE_ID)
     references EVENT_QUEUE (EVENT_QUEUE_ID)
     on delete restrict on update restrict;

ALTER TABLE OUTBOUND_EVENT_DATA
add constraint ESTYP_TO_OED foreign key (EVENT_STATUS_TYP_CD)
     references EVENT_STATUS_TYPE (EVENT_STATUS_TYP_CD)
     on delete restrict on update restrict;
     
ALTER TABLE EVENT_TRIGGER_CLASS
   ADD CONSTRAINT UK_ETC_ETCN UNIQUE (EVENT_TRIGGER_CLS_NM);
     
alter table CUSTOMER_CHILD_SUPPORT
   add constraint INSCT_TO_CUSTCS foreign key (INS_CMPY_TYP_ID)
      references INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID)
      on delete restrict on update restrict;
      
alter table CUSTOMER_LIEN_RESTRICTION
   add constraint INSCT_TO_CLR foreign key (INS_CMPY_TYP_ID)
      references INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID)
      on delete restrict on update restrict;
      
alter table CUSTOMER_LIEN_RESTRICTION_HIST
   add constraint INSCT_TO_CLRH foreign key (INS_CMPY_TYP_ID)
      references INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID)
      on delete restrict on update restrict;      
     
ALTER TABLE BILL ADD CONSTRAINT BOCBRT_TO_BILL FOREIGN KEY (BOCBRT_CD) REFERENCES 
BILL_OVRRD_CUST_BLK_RSN_TYP (BOCBRT_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE BILL_HISTORY ADD CONSTRAINT BOCBRT_TO_BILLH FOREIGN KEY (BOCBRT_CD) REFERENCES 
BILL_OVRRD_CUST_BLK_RSN_TYP (BOCBRT_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE BILL 
	ADD CONSTRAINT CN_TO_BILL FOREIGN KEY (BILL_OVRRD_PAYE_CUST_NM_ID) 
		REFERENCES CUSTOMER_NAME (CUST_NM_ID) 
		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE BILL_HISTORY 
	ADD CONSTRAINT CN_TO_BILLH FOREIGN KEY (BILL_OVRRD_PAYE_CUST_NM_ID) 
		REFERENCES CUSTOMER_NAME (CUST_NM_ID) 
		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE RULE_CONDITION_ACTION_CD
ADD CONSTRAINT RI_TO_RCACD FOREIGN KEY(RL_ITEM_ID) 
REFERENCES RULE_ITEM (RL_ITEM_ID );

ALTER TABLE EVENT_ACTION 
ADD CONSTRAINT RCACD_TO_EA FOREIGN KEY (RL_COND_ACTN_ID) 
REFERENCES RULE_CONDITION_ACTION_CD (RL_COND_ACTN_ID);

alter table EVENT_ACTION
   add constraint RCATC_TO_EA foreign key (RL_COND_ACTN_TYP_CD)
      references RULE_CONDITION_ACTION_TYPE_CD (RL_COND_ACTN_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE RULE_CONDITION_ACTION_ASGN_CD 
ADD CONSTRAINT C_TO_RCAAC FOREIGN KEY (COND_ID) 
REFERENCES CONDITION(COND_ID );

ALTER TABLE RULE_CONDITION_ACTION_CASE_CD 
ADD CONSTRAINT CT_TO_RCACC FOREIGN KEY (CASE_TMPL_ID) 
REFERENCES CASE_TEMPLATE (CASE_TMPL_ID);

ALTER TABLE RULE_CONDITION_ACTION_COND_CD
ADD CONSTRAINT C_TO_RCACD1 FOREIGN KEY (COND_ID)
REFERENCES CONDITION (COND_ID);

ALTER TABLE RULE_CONDITION_ACTION_DOCM_CD 
ADD CONSTRAINT DT_TO_RCADC FOREIGN KEY (DOCM_TYP_ID)
REFERENCES DOCUMENT_TYPE (DOCM_TYP_ID);

ALTER TABLE RULE_COND_ACTN_WRK_ITEM_CD 
ADD CONSTRAINT TT_TO_RCAWIC FOREIGN KEY (TASK_TMPL_ID) 
REFERENCES TASK_TEMPLATE (TASK_TMPL_ID);

alter table INTERFACE_CUST_BUSN_IN
 add constraint CUST_TO_CUSTBUSN foreign key (ICI_ID)
   references INTERFACE_CUSTOMER_IN (ICI_ID)
    on delete restrict on update restrict;  

alter table INTERFACE_CUST_PRSN_IN
 add constraint CUST_TO_CUSTPRSN foreign key (ICI_ID)
   references INTERFACE_CUSTOMER_IN (ICI_ID)
    on delete restrict on update restrict;   

alter table INTERFACE_CUST_DBA_NM_IN
 add constraint CUST_TO_CUSTDBANM foreign key (ICI_ID)
   references INTERFACE_CUSTOMER_IN (ICI_ID)
    on delete restrict on update restrict;   
    
alter table INTERFACE_CUST_ADDR_IN
 add constraint CUST_TO_CUSTADDR foreign key (ICI_ID)
   references INTERFACE_CUSTOMER_IN (ICI_ID)
    on delete restrict on update restrict;   
    
alter table INTERFACE_CUST_ROLE_ACTHLDR_IN
 add constraint CUST_TO_ACTHLDR foreign key (ICI_ID)
   references INTERFACE_CUSTOMER_IN (ICI_ID)
    on delete restrict on update restrict;   
    
alter table INTERFACE_CUST_ROLE_INSURED_IN
 add constraint CUST_TO_INSURED foreign key (ICI_ID)
   references INTERFACE_CUSTOMER_IN (ICI_ID)
    on delete restrict on update restrict;   
    
alter table INTERFACE_PLCY_RISKLOC_IN
 add constraint PLCY_TO_RISKLOC foreign key (IPI_ID)
   references INTERFACE_POLICY_IN (IPI_ID)
    on delete restrict on update restrict;  
    
alter table INTERFACE_PLCY_COVERAGE_IN
 add constraint PLCY_TO_COVRAGE foreign key (IPI_ID)
   references INTERFACE_POLICY_IN (IPI_ID)
    on delete restrict on update restrict; 
    
alter table INTERFACE_PLCY_INDV_IN
 add constraint PLCY_TO_INDV foreign key (IPI_ID)
   references INTERFACE_POLICY_IN (IPI_ID)
    on delete restrict on update restrict;

ALTER TABLE PEPC_APP_DATA_TYP_XREF
add constraint PEPC_TO_PADTX foreign key (PEP_ID)
references PII_ENCRYPTION_PREFERENCE_CD (PEP_ID)
on delete restrict on update restrict;

ALTER TABLE PEPC_APP_DATA_TYP_XREF
add constraint ADT_TO_PADTX foreign key (APP_DATA_TYP_CD)
references APPLICATION_DATA_TYPE (APP_DATA_TYP_CD)
on delete restrict on update restrict;

ALTER TABLE UI_CONTEXT_INDICATOR_CD
ADD CONSTRAINT ACT_TO_UCIC FOREIGN KEY (APP_CNTX_TYP_CD)
REFERENCES APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD);

ALTER TABLE UI_CONTEXT_INDICATOR_CD
ADD CONSTRAINT ADT_TO_UCIC FOREIGN KEY (APP_DATA_TYP_CD)
REFERENCES APPLICATION_DATA_TYPE (APP_DATA_TYP_CD);

ALTER TABLE UI_CONTEXT_INDICATOR_CD
ADD CONSTRAINT UILDC_TO_UCIC FOREIGN KEY (UI_LNK_DATA_CD_ID)
REFERENCES USER_INTERFACE_LINK_DATA_CD (UI_LNK_DATA_CD_ID);

ALTER TABLE UI_CONTEXT_INDICATOR_CD
ADD CONSTRAINT UTEC_TO_UCIC FOREIGN KEY (UI_TOOL_EVNT_CD)
REFERENCES UI_TOOL_EVENT_CD (UI_TOOL_EVNT_CD);

ALTER TABLE CLAIM_TREATMENT_DETAIL_TYP
ADD CONSTRAINT PTCP_TO_CTDT FOREIGN KEY (CLM_TRT_DTL_TYP_PTCP_TYP_CD)
REFERENCES PARTICIPATION_TYPE (PTCP_TYP_CD);

alter table POLICY_SUMMARY_ATTRIBUTE
  add constraint PSID_To_PSATTR foreign key (PLCY_SUM_DTL_ID)
  references POLICY_SUMMARY_DETAIL (PLCY_SUM_DTL_ID)
  on delete restrict on update restrict;

alter table POLICY_SUMMARY_ATTRIBUTE
   add constraint PSAT_TO_PSATTR foreign key (PLCY_SUM_ATTR_TYP_CD)
      references POLICY_SUMMARY_ATTRIBUTE_TYPE (PLCY_SUM_ATTR_TYP_CD)
      on delete restrict on update restrict;
      
alter table INTERFACE_PLCY_ATTR_IN
 add constraint IPI_TO_IPAIN foreign key (IPI_ID)
   references INTERFACE_POLICY_IN (IPI_ID)
    on delete restrict on update restrict;

alter table EBT
add constraint EFT_TO_EBT foreign key (EFT_ID)
   references EFT (EFT_ID)
   on delete restrict on update restrict;

alter table EBT
add constraint USER_TO_EBT1 foreign key (AUDIT_USER_ID_CREA)
   references USERS (USER_ID)
   on delete restrict on update restrict;

alter table EBT
add constraint USER_TO_EBT2 foreign key (AUDIT_USER_ID_UPDT)
   references USERS (USER_ID)
   on delete restrict on update restrict;  

alter table EBT_HIST
add constraint EFT_TO_EBTH foreign key (EFT_ID)
   references EFT (EFT_ID)
   on delete restrict on update restrict;

alter table EBT_HIST
add constraint USER_TO_EBTH1 foreign key (AUDIT_USER_ID_CREA)
   references USERS (USER_ID)
   on delete restrict on update restrict;

alter table EBT_HIST
add constraint USER_TO_EBTH2 foreign key (AUDIT_USER_ID_UPDT)
   references USERS (USER_ID)
   on delete restrict on update restrict;

alter table PAYMENT_RECORD_230
add constraint PR200_TO_PR230 foreign key (PR_230_PAY_CTL_NO,PR_230_CTL_NO)
	references PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) 
	on delete restrict on update restrict;
	
alter table INTERFACE_EBT_OUT
add constraint IEOH_TO_IEO foreign key (IEOH_ID)
   references INTERFACE_EBT_OUT_HEADER (IEOH_ID)
   on delete restrict on update restrict;
	
	

alter table INTERFACE_CUST_ROLE_AGENCY_LOC
 add constraint ICRAL_TO_ICI foreign key (ICI_ID)
   references INTERFACE_CUSTOMER_IN (ICI_ID)
    on delete restrict on update restrict; 
    
alter table INTERFACE_CUST_MAIL_GRP_IN
 add constraint ICMGI_ICI foreign key (ICI_ID)
   references INTERFACE_CUSTOMER_IN (ICI_ID)
    on delete restrict on update restrict;     
    
alter table INTERFACE_CUST_CNTC_IN
 add constraint ICCI_ICI foreign key (ICI_ID)
   references INTERFACE_CUSTOMER_IN (ICI_ID)
    on delete restrict on update restrict; 	

alter table COMMUNICATION_PREFERENCE
add constraint ISCAAT_TO_CP FOREIGN KEY (IN_STT_CHCK_ACCT_AVL_TYP_CD)
   references IN_STATE_CHCK_ACCT_AVL_TYP (IN_STT_CHCK_ACCT_AVL_TYP_CD)
   on delete restrict on update restrict;

alter table COMMUNICATION_PREFERENCE_HIST
add constraint ISCAAT_TO_CPH FOREIGN KEY (IN_STT_CHCK_ACCT_AVL_TYP_CD)
   references IN_STATE_CHCK_ACCT_AVL_TYP (IN_STT_CHCK_ACCT_AVL_TYP_CD)
   on delete restrict on update restrict;

alter table BILL
add constraint PSHT_TO_BILL FOREIGN KEY (PAY_SPL_HNDL_TYP_CD)
   references PAYMENT_SPECIAL_HANDLING_TYPE (PAY_SPL_HNDL_TYP_CD)
   on delete restrict on update restrict;

alter table BILL_HISTORY
add constraint PSHT_TO_BILLH FOREIGN KEY (PAY_SPL_HNDL_TYP_CD)
   references PAYMENT_SPECIAL_HANDLING_TYPE (PAY_SPL_HNDL_TYP_CD)
   on delete restrict on update restrict;

alter table BILL_ATTACHMENT
add constraint BILL_TO_BATTCH foreign key (BILL_ID)
   references BILL (BILL_ID)
   on delete restrict on update restrict;
   
alter table BILL_ATTACHMENT
add constraint USER_TO_BATTCH1 foreign key (AUDIT_USER_ID_CREA)
   references USERS (USER_ID)
   on delete restrict on update restrict;

alter table BILL_ATTACHMENT
add constraint USER_TO_BATTCH2 foreign key (AUDIT_USER_ID_UPDT)
   references USERS (USER_ID)
   on delete restrict on update restrict;

alter table BILL_ATTACHMENT_HIST
add constraint BILL_TO_BAH foreign key (BILL_ID)
   references BILL (BILL_ID)
   on delete restrict on update restrict;
   
alter table BILL_ATTACHMENT_HIST
add constraint USER_TO_BAH1 foreign key (AUDIT_USER_ID_CREA)
   references USERS (USER_ID)
   on delete restrict on update restrict;

alter table BILL_ATTACHMENT_HIST
add constraint USER_TO_BAH2 foreign key (AUDIT_USER_ID_UPDT)
   references USERS (USER_ID)
   on delete restrict on update restrict;

alter table INDEMNITY_SCHEDULE_DTL_AMT
add constraint PSHT_TO_ISDA FOREIGN KEY (PAY_SPL_HNDL_TYP_CD)
   references PAYMENT_SPECIAL_HANDLING_TYPE (PAY_SPL_HNDL_TYP_CD)
   on delete restrict on update restrict;

alter table INDEMNITY_SCH_DTL_AMT_HIST
add constraint PSHT_TO_ISDAH FOREIGN KEY (PAY_SPL_HNDL_TYP_CD)
   references PAYMENT_SPECIAL_HANDLING_TYPE (PAY_SPL_HNDL_TYP_CD)
   on delete restrict on update restrict;

alter table INDEMNITY_SCH_DTL_AMT_ATTCH
add constraint ISDA_TO_ISDAA foreign key (INDM_SCH_DTL_AMT_ID)
   references INDEMNITY_SCHEDULE_DTL_AMT (INDM_SCH_DTL_AMT_ID)
   on delete restrict on update restrict;
   
alter table INDEMNITY_SCH_DTL_AMT_ATTCH
add constraint USER_TO_ISDAA1 foreign key (AUDIT_USER_ID_CREA)
   references USERS (USER_ID)
   on delete restrict on update restrict;

alter table INDEMNITY_SCH_DTL_AMT_ATTCH
add constraint USER_TO_ISDAA2 foreign key (AUDIT_USER_ID_UPDT)
   references USERS (USER_ID)
   on delete restrict on update restrict;

alter table INDM_SCH_DTL_AMT_ATTCH_HIST
add constraint ISDA_TO_ISDAAH foreign key (INDM_SCH_DTL_AMT_ID)
  references INDEMNITY_SCHEDULE_DTL_AMT (INDM_SCH_DTL_AMT_ID)
  on delete restrict on update restrict;
  
alter table INDM_SCH_DTL_AMT_ATTCH_HIST
add constraint USER_TO_ISDAAH1 foreign key (AUDIT_USER_ID_CREA)
   references USERS (USER_ID)
   on delete restrict on update restrict;

alter table INDM_SCH_DTL_AMT_ATTCH_HIST
add constraint USER_TO_ISDAAH2 foreign key (AUDIT_USER_ID_UPDT)
   references USERS (USER_ID)
   on delete restrict on update restrict;

alter table CLAIM_DEBIT_CARD_DECISION
add constraint CLM_TO_CDCD FOREIGN KEY (AGRE_ID)
   references CLAIM (AGRE_ID)
   on delete restrict on update restrict;

alter table CLAIM_DEBIT_CARD_DECISION
add constraint CUST_TO_CDCD FOREIGN KEY (CUST_ID)
   references CUSTOMER (CUST_ID)
   on delete restrict on update restrict;

alter table CLAIM_DEBIT_CARD_DECISION
add constraint PTCPT_TO_CDCD FOREIGN KEY (PTCP_TYP_CD)
	references PARTICIPATION_TYPE (PTCP_TYP_CD)
	on delete restrict on update restrict;

alter table CLAIM_DEBIT_CARD_DECISION
add constraint DCDST_TO_CDCD FOREIGN KEY (DEBIT_CARD_DCSN_STS_TYP_CD)
   references DEBIT_CARD_DCSN_STS_TYP (DEBIT_CARD_DCSN_STS_TYP_CD)
   on delete restrict on update restrict;

alter table CLAIM_DEBIT_CARD_DECISION
add constraint DCDMT_TO_CDCD FOREIGN KEY (DEBIT_CARD_DCSN_METH_TYP_CD)
   references DEBIT_CARD_DCSN_METH_TYP (DEBIT_CARD_DCSN_METH_TYP_CD)
   on delete restrict on update restrict;

alter table CLAIM_DEBIT_CARD_DECISION
add constraint USER_TO_CDCD1 FOREIGN KEY (AUDIT_USER_ID_CREA)
   references USERS (USER_ID)
   on delete restrict on update restrict;

alter table CLAIM_DEBIT_CARD_DECISION
add constraint USER_TO_CDCD2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
   references USERS (USER_ID)
   on delete restrict on update restrict;

alter table CLAIM_DEBIT_CARD_DECISION_HIST
add constraint CDCD_TO_CDCDH FOREIGN KEY (CDCD_ID)
   references CLAIM_DEBIT_CARD_DECISION (CDCD_ID)
   on delete restrict on update restrict;

alter table CLAIM_DEBIT_CARD_DECISION_HIST
add constraint CLM_TO_CDCDH FOREIGN KEY (AGRE_ID)
   references CLAIM (AGRE_ID)
   on delete restrict on update restrict;

alter table CLAIM_DEBIT_CARD_DECISION_HIST
add constraint CUST_TO_CDCDH FOREIGN KEY (CUST_ID)
   references CUSTOMER (CUST_ID)
   on delete restrict on update restrict;

alter table CLAIM_DEBIT_CARD_DECISION_HIST
add constraint PTCPT_TO_CDCDH FOREIGN KEY (PTCP_TYP_CD)
	references PARTICIPATION_TYPE (PTCP_TYP_CD)
	on delete restrict on update restrict;

alter table CLAIM_DEBIT_CARD_DECISION_HIST
add constraint DCDST_TO_CDCDH FOREIGN KEY (DEBIT_CARD_DCSN_STS_TYP_CD)
   references DEBIT_CARD_DCSN_STS_TYP (DEBIT_CARD_DCSN_STS_TYP_CD)
   on delete restrict on update restrict;

alter table CLAIM_DEBIT_CARD_DECISION_HIST
add constraint DCDMT_TO_CDCDH FOREIGN KEY (DEBIT_CARD_DCSN_METH_TYP_CD)
   references DEBIT_CARD_DCSN_METH_TYP (DEBIT_CARD_DCSN_METH_TYP_CD)
   on delete restrict on update restrict;

alter table CLAIM_DEBIT_CARD_DECISION_HIST
add constraint USER_TO_CDCDH1 FOREIGN KEY (AUDIT_USER_ID_CREA)
   references USERS (USER_ID)
   on delete restrict on update restrict;

alter table CLAIM_DEBIT_CARD_DECISION_HIST
add constraint USER_TO_CDCDH2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
   references USERS (USER_ID)
   on delete restrict on update restrict;

alter table RULE_FUNCTION_CD
   add constraint RL_SRC_DATA_TYPEC foreign key (RL_FCTN_SRC_DATA_TYPE)
      references DATA_TYPE (DATA_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_FUNCTION_CD
   add constraint RL_DEST_DATA_TYPEC foreign key (RL_FCTN_DEST_DATA_TYPE)
      references DATA_TYPE (DATA_TYP_CD)
      on delete restrict on update restrict;
   
alter table RULE_FUNCTION_CD
   add constraint RL_ARG0_DATA_TYPEC foreign key (RL_FCTN_ARG0_DATA_TYPE)
      references DATA_TYPE (DATA_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_FUNCTION_CD
   add constraint RL_ARG1_DATA_TYPEC foreign key (RL_FCTN_ARG1_DATA_TYPE)
      references DATA_TYPE (DATA_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_FUNCTION_CD
   add constraint RL_ARG2_DATA_TYPEC foreign key (RL_FCTN_ARG2_DATA_TYPE)
      references DATA_TYPE (DATA_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_FUNCTION_CD
   add constraint RL_ARG3_DATA_TYPEC foreign key (RL_FCTN_ARG3_DATA_TYPE)
      references DATA_TYPE (DATA_TYP_CD)
      on delete restrict on update restrict;

alter table RULE_FUNCTION_CD
   add constraint RL_ARG4_DATA_TYPEC foreign key (RL_FCTN_ARG4_DATA_TYPE)
      references DATA_TYPE (DATA_TYP_CD)
      on delete restrict on update restrict;

alter table NOTE_COMMUNICATION
	add constraint NT_TO_NOTE_COMM foreign key (NOTE_ID)
		references NOTE (NOTE_ID)
		on delete restrict on update restrict;

alter table NOTE_COMMUNICATION
	add constraint PTCP_TO_NOTE_COMM foreign key (PTCP_TYP_CD)
		references PARTICIPATION_TYPE (PTCP_TYP_CD)
		on delete restrict on update restrict;
		
alter table NOTE_COMMUNICATION
	add constraint CUST_TO_NOTE_COMM foreign key (CUST_ID)
		references CUSTOMER (CUST_ID)
		on delete restrict on update restrict;

ALTER TABLE PAYMENT_RECORD_200
ADD CONSTRAINT PSHT_TO_PR200 FOREIGN KEY (PAY_SPL_HNDL_TYP_CD)
   REFERENCES PAYMENT_SPECIAL_HANDLING_TYPE (PAY_SPL_HNDL_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PAYMENT_RECORD_320
ADD CONSTRAINT JT_TO_PR320 FOREIGN KEY (JUR_TYP_CD)
   REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PAYMENT_RECORD_330 
ADD CONSTRAINT BEST_TO_PR330 FOREIGN KEY (BILL_EDI_SRC_TYP_CD) 
    REFERENCES BILL_EDI_SOURCE_TYPE (BILL_EDI_SRC_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PAYMENT_RECORD_335 
ADD CONSTRAINT CCTYP_TO_PR335 FOREIGN KEY (CST_CNTR_TYP_CD) 
    REFERENCES COST_CENTER_TYPE (CST_CNTR_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;
    
ALTER TABLE PAYMENT_RECORD_335 
ADD CONSTRAINT PAYT_TO_PR335 FOREIGN KEY (PAY_TYP_CD) 
    REFERENCES PAYMENT_TYPE (PAY_TYP_CD) 
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PAYMENT_RECORD_201
ADD CONSTRAINT PR200_TO_PR201 FOREIGN KEY(PAY_CTL_NO,CTL_NO)
   REFERENCES PAYMENT_RECORD_200 (PR_200_PAY_CTL_NO,PR_200_CTL_NO) 
   ON DELETE RESTRICT  ON UPDATE RESTRICT;

ALTER TABLE CHECK_SET_NUMBER_PAYMENT_XREF
ADD CONSTRAINT PMPT_TO_CSNPX FOREIGN KEY (PAY_MEDA_PREF_TYP_CD)
   REFERENCES PAYMENT_MEDIA_PREFERENCE_TYPE (PAY_MEDA_PREF_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE CASE_SERVICE ADD CONSTRAINT CS_TO_CRST FOREIGN KEY (CASE_RECORD_SOURCE_TYP_CD) REFERENCES 
CASE_RECORD_SOURCE_TYPE (CASE_RECORD_SOURCE_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SERVICE_HISTORY ADD CONSTRAINT CSH_TO_CRST FOREIGN KEY (CASE_RECORD_SOURCE_TYP_CD) REFERENCES 
CASE_RECORD_SOURCE_TYPE (CASE_RECORD_SOURCE_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_RECIP_EXCL_CUST_XREF
   ADD CONSTRAINT DOCM_TO_DRECX FOREIGN KEY (DOCM_ID)
      REFERENCES DOCUMENT (DOCM_ID)
      on delete restrict on update restrict;

ALTER TABLE DOCUMENT_RECIP_EXCL_CUST_XREF
   ADD CONSTRAINT CUST_TO_DRECX FOREIGN KEY (CUST_ID)
      REFERENCES CUSTOMER (CUST_ID)
      on delete restrict on update restrict;
      
ALTER TABLE BILL
   ADD CONSTRAINT BILL_TO_BILL FOREIGN KEY (BILL_LNK_BILL_ID)
      REFERENCES BILL (BILL_ID)
      on delete restrict on update restrict;      
      
ALTER TABLE BILL_HISTORY
   ADD CONSTRAINT BILL_TO_BILLLH FOREIGN KEY (BILL_LNK_BILL_ID)
      REFERENCES BILL (BILL_ID)
      on delete restrict on update restrict;          
      
ALTER TABLE BILL
   ADD CONSTRAINT BILL_TO_CLR FOREIGN KEY (CUST_LIEN_REST_ID)
      REFERENCES CUSTOMER_LIEN_RESTRICTION (CUST_LIEN_REST_ID)
      on delete restrict on update restrict;      
      
ALTER TABLE BILL_HISTORY
   ADD CONSTRAINT BILLH_TO_CLR FOREIGN KEY (CUST_LIEN_REST_ID)
      REFERENCES CUSTOMER_LIEN_RESTRICTION (CUST_LIEN_REST_ID)
      on delete restrict on update restrict;   
      
ALTER TABLE BILL
   ADD CONSTRAINT BILL_TO_BLT FOREIGN KEY (BILL_LNK_TYP_CD)
      REFERENCES BILL_LINK_TYPE (BILL_LNK_TYP_CD)
      on delete restrict on update restrict;     

ALTER TABLE BILL_HISTORY
   ADD CONSTRAINT BILLH_TO_BLT FOREIGN KEY (BILL_LNK_TYP_CD)
      REFERENCES BILL_LINK_TYPE (BILL_LNK_TYP_CD)
      on delete restrict on update restrict;     
      
ALTER TABLE BILL_INTERFACE
   ADD CONSTRAINT BILL_TO_BI FOREIGN KEY (BI_BILL_LNK_BILL_ID)
      REFERENCES BILL (BILL_ID)
      on delete restrict on update restrict;      
      
ALTER TABLE BILL_INTERFACE
   ADD CONSTRAINT CLR_TO_BI FOREIGN KEY (BI_CUST_LIEN_REST_ID)
      REFERENCES CUSTOMER_LIEN_RESTRICTION (CUST_LIEN_REST_ID)
      on delete restrict on update restrict;      
      
ALTER TABLE BILL_INTERFACE
   ADD CONSTRAINT BLT_TO_BI FOREIGN KEY (BI_BILL_LNK_TYP_CD)
      REFERENCES BILL_LINK_TYPE (BILL_LNK_TYP_CD)
      on delete restrict on update restrict;     
      
ALTER TABLE BILL_INTERFACE
   ADD CONSTRAINT BILI_TO_BI FOREIGN KEY (BI_LNK_BI_ID)
      REFERENCES BILL_INTERFACE (BI_ID)
      on delete restrict on update restrict;    

ALTER TABLE INDEMNITY_SCHEDULE_DTL_AMT
	ADD CONSTRAINT CLR_TO_ISDA FOREIGN KEY (CUST_LIEN_REST_ID)
	REFERENCES CUSTOMER_LIEN_RESTRICTION (CUST_LIEN_REST_ID)
	on delete restrict on update restrict;

ALTER TABLE INDEMNITY_SCH_DTL_AMT_HIST
	ADD CONSTRAINT CLR_TO_ISDAH FOREIGN KEY (CUST_LIEN_REST_ID)
	REFERENCES CUSTOMER_LIEN_RESTRICTION (CUST_LIEN_REST_ID)
	on delete restrict on update restrict;  

ALTER TABLE PAYMENT_RECORD_321
ADD CONSTRAINT JT_TO_PR321 FOREIGN KEY (JUR_TYP_CD)
   REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE PAYMENT_RECORD_322
ADD CONSTRAINT JT_TO_PR322 FOREIGN KEY (JUR_TYP_CD)
   REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;  

ALTER TABLE DOCUMENT_ARCHIVING_ATTRIBUTE
  add constraint ADT_TO_DAA foreign key (APP_DATA_TYP_CD)
       references APPLICATION_DATA_TYPE (APP_DATA_TYP_CD)
       on delete restrict on update restrict;
    
 ALTER TABLE DOCUMENT_ARCHIVING_ATTRIBUTE
  add constraint ACT_TO_DAA foreign key (APP_CNTX_TYP_CD)
       references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
       on delete restrict on update restrict;

ALTER TABLE DOCUMENT_RECIPIENT
 add constraint DSHT_TO_DR foreign key (DOCM_SPL_HNDL_TYP_CD)
	references DOCUMENT_SPECIAL_HANDLING_TYPE (DOCM_SPL_HNDL_TYP_CD)
       on delete restrict on update restrict;
       
ALTER TABLE DOCUMENT_RECIPIENT ADD CONSTRAINT CPTCPT_TO_DR
 FOREIGN KEY (CASE_PTCP_TYP_CD)
  REFERENCES CASE_PARTICIPATION_TYPE (CASE_PTCP_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PAYMENT_RECORD_323
	ADD CONSTRAINT ISD_TO_PR323 FOREIGN KEY(INDM_SCH_DTL_ID)
		REFERENCES INDEMNITY_SCHEDULE_DETAIL (INDM_SCH_DTL_ID) 
		ON DELETE RESTRICT  ON UPDATE RESTRICT;

ALTER TABLE PAYMENT_RECORD_325
	ADD CONSTRAINT ISD_TO_PR325 FOREIGN KEY(INDM_SCH_DTL_ID)
		REFERENCES INDEMNITY_SCHEDULE_DETAIL (INDM_SCH_DTL_ID) 
		ON DELETE RESTRICT  ON UPDATE RESTRICT;

ALTER TABLE PAYMENT_RECORD_327
	ADD CONSTRAINT ISD_TO_PR327 FOREIGN KEY(INDM_SCH_DTL_ID)
		REFERENCES INDEMNITY_SCHEDULE_DETAIL (INDM_SCH_DTL_ID) 
		ON DELETE RESTRICT  ON UPDATE RESTRICT;

ALTER TABLE PAYMENT_RECORD_328
	ADD CONSTRAINT ISD_TO_PR328 FOREIGN KEY(INDM_SCH_DTL_ID)
		REFERENCES INDEMNITY_SCHEDULE_DETAIL (INDM_SCH_DTL_ID) 
		ON DELETE RESTRICT  ON UPDATE RESTRICT;

ALTER TABLE PAYMENT_RECORD_329A
	ADD CONSTRAINT ISD_TO_PR329A FOREIGN KEY(INDM_SCH_DTL_ID)
		REFERENCES INDEMNITY_SCHEDULE_DETAIL (INDM_SCH_DTL_ID) 
		ON DELETE RESTRICT  ON UPDATE RESTRICT;

ALTER TABLE PAYMENT_RECORD_329B
	ADD CONSTRAINT ISD_TO_PR329B FOREIGN KEY(INDM_SCH_DTL_ID)
		REFERENCES INDEMNITY_SCHEDULE_DETAIL (INDM_SCH_DTL_ID) 
		ON DELETE RESTRICT  ON UPDATE RESTRICT;

ALTER TABLE INTERFACE_1099_PAYEE_OUT
	ADD CONSTRAINT I1PI_TO_I1PAYEO	FOREIGN KEY(INTFC_1099_PYR_ID)
		REFERENCES INTERFACE_1099_PAYER_OUT(INTFC_1099_PYR_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INTERFACE_1099_PAYMENT_OUT
	ADD CONSTRAINT I1PI_TO_I1PAYO FOREIGN KEY(INTFC_1099_PAYE_ID)
	REFERENCES INTERFACE_1099_PAYEE_OUT(INTFC_1099_PAYE_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INTERFACE_1099_RPT_SUM_OUT
	ADD CONSTRAINT I1PI_TO_I1RSO FOREIGN KEY(INTFC_1099_PAYE_ID)
	REFERENCES INTERFACE_1099_PAYEE_OUT(INTFC_1099_PAYE_ID)
	      ON DELETE RESTRICT ON UPDATE RESTRICT;
	      
alter table USER_UI_PREFERENCES_TEMPLATE
   add constraint USER_TO_UUPT foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;
      
alter table DASHBOARD_ANNOUNCEMENT
   add constraint FR_TO_DA foreign key (FNCT_ROLE_ID)
      references FUNCTIONAL_ROLE (FNCT_ROLE_ID)
      on delete restrict on update restrict;

alter table DASHBOARD_ANNOUNCEMENT
   add constraint OU_TO_DA foreign key (ORG_UNT_ID)
      references ORGANIZATIONAL_UNIT (ORG_UNT_ID)
      on delete restrict on update restrict;
      
alter table INTERFACE_NCCI_IDC_JUR_CNFG
   add constraint NCCI_TO_JUR foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;
      
alter table SYSTEM_OPTION
   add constraint SOVTC_TO_SO foreign key (SYS_OPT_VAL_TYP_CD)
      references SYSTEM_OPTION_VALUE_TYPE_CD (SYS_OPT_VAL_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE DOCUMENTS_TO_IMAGE ADD  CONSTRAINT DOCM_TO_DOCMTI
 FOREIGN KEY (DOCM_ID) 
  REFERENCES DOCUMENT (DOCM_ID) 
    ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE DISABILITY_ASSESSMENT
   ADD CONSTRAINT CLM_TO_DA FOREIGN KEY (AGRE_ID)
      REFERENCES CLAIM (AGRE_ID)
      on delete restrict on update restrict;      

ALTER TABLE DISABILITY_ASSESSMENT_HISTORY
   ADD CONSTRAINT CLM_TO_DAH FOREIGN KEY (AGRE_ID)
      REFERENCES CLAIM (AGRE_ID)
      on delete restrict on update restrict;  
alter table USERS_CUSTOMER_ACCESS_XREF
   add constraint APPCNTXT_TO_UCAX foreign key (APP_CNTX_TYP_CD)
      references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
      on delete restrict on update restrict;

alter table USERS_CUSTOMER_ACCESS_XREF
   add constraint CASE_PTCPT_TO_UCAX foreign key (CASE_PTCP_TYP_CD)
      references CASE_PARTICIPATION_TYPE (CASE_PTCP_TYP_CD)
      on delete restrict on update restrict;
     
alter table USERS_CUSTOMER_ACCESS_XREF
   add constraint RELATION_TYP_TO_UCAX foreign key (RLT_TYP_CD)
      references RELATIONSHIP_TYPE (RLT_TYP_CD)
      on delete restrict on update restrict; 
      
/* Zipwhip integration */
alter table COMMUNICATION_PREFERENCE
   add constraint ECPT_TO_CP foreign key (ECOMM_PREF_TYP_CD)
      references E_COMM_PREF_TYP (ECOMM_PREF_TYP_CD)
      on delete restrict on update restrict;

alter table COMMUNICATION_PREFERENCE_HIST
   add constraint ECPT_TO_CPH foreign key (ECOMM_PREF_TYP_CD)
      references E_COMM_PREF_TYP (ECOMM_PREF_TYP_CD)
      on delete restrict on update restrict;  
    
ALTER TABLE CUSTOMER_PROFILE ADD CONSTRAINT CUST_TO_CP
 FOREIGN KEY (CUST_ID)
  REFERENCES CUSTOMER (CUST_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CUSTOMER_PROFILE ADD CONSTRAINT CPCT_TO_CP
 FOREIGN KEY (CUST_PRFL_CTG_TYP_CD)
  REFERENCES CUSTOMER_PROFILE_CATEGORY_TYPE (CUST_PRFL_CTG_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;   

ALTER TABLE CUSTOMER_PROFILE ADD CONSTRAINT PRFLS_TO_CP
 FOREIGN KEY (PRFL_STMT_ID)
  REFERENCES PROFILE_STATEMENT (PRFL_STMT_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CUSTOMER_PROFILE ADD CONSTRAINT PSSN_TO_CP
 FOREIGN KEY (PRFL_STMT_SEL_NEST_ID)
  REFERENCES PROFILE_STATEMENT_SEL_NEST (PRFL_STMT_SEL_NEST_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CUSTOMER_PROFILE ADD CONSTRAINT PSVT_TO_CP
 FOREIGN KEY (PRFL_SEL_VAL_TYP_CD)
  REFERENCES PROFILE_SELECTION_VALUE_TYPE (PRFL_SEL_VAL_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;  
   
ALTER TABLE CUSTOMER_PROFILE ADD CONSTRAINT CRT_TO_CP
 FOREIGN KEY (CUST_ROLE_TYP_CD)
  REFERENCES CUSTOMER_ROLE_TYPE (CUST_ROLE_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CUSTOMER_PROFILE ADD CONSTRAINT USER_TO_CUSTP1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CUSTOMER_PROFILE ADD CONSTRAINT USER_TO_CUSTP2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE CUSTOMER_PROFILE_STATEMENT ADD CONSTRAINT CPCT_TO_CUSTPS
 FOREIGN KEY (CUST_PRFL_CTG_TYP_CD)
  REFERENCES CUSTOMER_PROFILE_CATEGORY_TYPE (CUST_PRFL_CTG_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CUSTOMER_PROFILE_STATEMENT ADD CONSTRAINT PRFLS_TO_CUSTPS
 FOREIGN KEY (PRFL_STMT_ID)
  REFERENCES PROFILE_STATEMENT (PRFL_STMT_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CUSTOMER_PROFILE_HISTORY ADD CONSTRAINT CUST_TO_CPH
 FOREIGN KEY (CUST_ID)
  REFERENCES CUSTOMER (CUST_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CUSTOMER_PROFILE_HISTORY ADD CONSTRAINT CPCT_TO_CPH
 FOREIGN KEY (CUST_PRFL_CTG_TYP_CD)
  REFERENCES CUSTOMER_PROFILE_CATEGORY_TYPE (CUST_PRFL_CTG_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CUSTOMER_PROFILE_HISTORY ADD CONSTRAINT PRFLS_TO_CPH
 FOREIGN KEY (PRFL_STMT_ID)
  REFERENCES PROFILE_STATEMENT (PRFL_STMT_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CUSTOMER_PROFILE_HISTORY ADD CONSTRAINT PSSN_TO_CPH 
 FOREIGN KEY (PRFL_STMT_SEL_NEST_ID)
  REFERENCES PROFILE_STATEMENT_SEL_NEST (PRFL_STMT_SEL_NEST_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE CUSTOMER_PROFILE_HISTORY ADD CONSTRAINT PSVT_TO_CPH 
 FOREIGN KEY (PRFL_SEL_VAL_TYP_CD)
  REFERENCES PROFILE_SELECTION_VALUE_TYPE (PRFL_SEL_VAL_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE CUSTOMER_PROFILE_HISTORY ADD CONSTRAINT CP_TO_CUSTPH
 FOREIGN KEY (CUST_PRFL_ID) 
  REFERENCES CUSTOMER_PROFILE (CUST_PRFL_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CUSTOMER_PROFILE_HISTORY ADD CONSTRAINT CRT_TO_CPH
 FOREIGN KEY (CUST_ROLE_TYP_CD) 
  REFERENCES CUSTOMER_ROLE_TYPE (CUST_ROLE_TYP_CD) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CUSTOMER_PROFILE_HISTORY ADD CONSTRAINT USER_TO_CUSTPH1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CUSTOMER_PROFILE_HISTORY ADD CONSTRAINT USER_TO_CUSTPH2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE CUSTOMER_CUST_PRFL_CTG_XREF ADD CONSTRAINT CT_TO_CCPCX
 FOREIGN KEY (CUST_TYP_CD)
  REFERENCES CUSTOMER_TYPE (CUST_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE  CUSTOMER_CUST_PRFL_CTG_XREF  ADD CONSTRAINT CPCT_TO_CCPCX
 FOREIGN KEY ( CUST_PRFL_CTG_TYP_CD )
  REFERENCES CUSTOMER_PROFILE_CATEGORY_TYPE(CUST_PRFL_CTG_TYP_CD )
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE CUSTOMER_CUST_PRFL_CTG_XREF ADD CONSTRAINT CRT_TO_CCPCX
 FOREIGN KEY (CUST_ROLE_TYP_CD)
  REFERENCES CUSTOMER_ROLE_TYPE (CUST_ROLE_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;   
     
ALTER TABLE JURISDICTION_METHOD_CNV_CALC ADD CONSTRAINT JT_TO_JMCC 
 FOREIGN KEY (JUR_TYP_CD)
  REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE RETROSPECTIVE_EST_LOSS_CALC ADD CONSTRAINT PPRE_TO_RELC 
 FOREIGN KEY (PPRE_ID)
  REFERENCES POLICY_PERIOD_RATING_ELEMENT (PPRE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
  
ALTER TABLE RETROSPECTIVE_EXCL_CLM ADD CONSTRAINT PP_TO_REC
 FOREIGN KEY (PLCY_PRD_ID) 
  REFERENCES POLICY_PERIOD (PLCY_PRD_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE RETROSPECTIVE_EXCL_CLM ADD CONSTRAINT CS_TO_REC
 FOREIGN KEY (CS_ID) 
  REFERENCES CLAIM_SUMMARY (CS_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT; 
   
ALTER TABLE RETROSPECTIVE_EXCL_CLM ADD CONSTRAINT CRCT_TO_REC
 FOREIGN KEY (CLM_RSRV_CTG_TYP_CD) 
  REFERENCES CLAIM_RESERVE_CATEGORY_TYPE (CLM_RSRV_CTG_TYP_CD) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE RETROSPECTIVE_EXCL_CLM ADD CONSTRAINT USER_TO_REC1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE RETROSPECTIVE_EXCL_CLM ADD CONSTRAINT USER_TO_REC2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE RETROSPECTIVE_EXCL_CLM_HIST ADD CONSTRAINT REC_TO_RECH
 FOREIGN KEY (RTSP_EXCL_CLM_ID) 
  REFERENCES RETROSPECTIVE_EXCL_CLM (RTSP_EXCL_CLM_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE RETROSPECTIVE_EXCL_CLM_HIST ADD CONSTRAINT PP_TO_RECH
 FOREIGN KEY (PLCY_PRD_ID) 
  REFERENCES POLICY_PERIOD (PLCY_PRD_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE RETROSPECTIVE_EXCL_CLM_HIST ADD CONSTRAINT CS_TO_RECH
 FOREIGN KEY (CS_ID) 
  REFERENCES CLAIM_SUMMARY (CS_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE RETROSPECTIVE_EXCL_CLM_HIST ADD CONSTRAINT CRCT_TO_RECH
 FOREIGN KEY (CLM_RSRV_CTG_TYP_CD) 
  REFERENCES CLAIM_RESERVE_CATEGORY_TYPE (CLM_RSRV_CTG_TYP_CD) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;     
   
ALTER TABLE RETROSPECTIVE_EXCL_CLM_HIST ADD CONSTRAINT USER_TO_RECH1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE RETROSPECTIVE_EXCL_CLM_HIST ADD CONSTRAINT USER_TO_RECH2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PARTICIPATION_RULE_TYPE ADD CONSTRAINT DT_TO_PTCPRT 
 FOREIGN KEY (DATA_TYP_CD)
  REFERENCES DATA_TYPE (DATA_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PARTICIPATION_RULE_TYPE ADD CONSTRAINT FT_TO_PTCPRT 
 FOREIGN KEY (FRMT_TYP_CD)
  REFERENCES FORMAT_TYPE (FRMT_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PARTICIPATION_RULE ADD CONSTRAINT PTCPT_TO_PTCPRT 
 FOREIGN KEY (PTCP_TYP_CD)
  REFERENCES PARTICIPATION_TYPE (PTCP_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PARTICIPATION_RULE ADD CONSTRAINT PTCPRT_TO_PTCPR 
 FOREIGN KEY (PTCP_RL_TYP_CD)
  REFERENCES PARTICIPATION_RULE_TYPE (PTCP_RL_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE RETROSPECTIVE_PREM_ELEM_TYP ADD CONSTRAINT ATT_TO_RPET
 FOREIGN KEY (ACCT_TRAN_TYP_CD)
  REFERENCES ACCOUNTING_TRANSACTION_TYPE (ACCT_TRAN_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE INDM_SCH_CHLD_SUPT_CALC_DTL
 ADD CONSTRAINT ISDCS_TO_ISCSCD FOREIGN KEY (INDM_SCH_DTL_CHLD_SUPT_ID)
  REFERENCES INDM_SCH_DTL_CHLD_SUPT (INDM_SCH_DTL_CHLD_SUPT_ID);

ALTER TABLE INDM_SCH_CHLD_SUPT_CALC_DTL
 ADD CONSTRAINT USER_TO_ISCSCD1 FOREIGN KEY (AUDIT_USER_ID_CREA)
  REFERENCES USERS (USER_ID);
 
ALTER TABLE INDM_SCH_CHLD_SUPT_CALC_DTL
 ADD CONSTRAINT USER_TO_ISCSCD2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
  REFERENCES USERS (USER_ID);
  
ALTER TABLE RETROSPECTIVE_CLAIM_SNAPSHOT ADD CONSTRAINT PPRE_TO_RCS 
 FOREIGN KEY (PPRE_ID)
  REFERENCES POLICY_PERIOD_RATING_ELEMENT (PPRE_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;   

ALTER TABLE RETROSPECTIVE_CLAIM_SNAPSHOT ADD CONSTRAINT USER_TO_RCS1
 FOREIGN KEY (AUDIT_USER_ID_CREA) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE RETROSPECTIVE_CLAIM_SNAPSHOT ADD CONSTRAINT USER_TO_RCS2
 FOREIGN KEY (AUDIT_USER_ID_UPDT) 
  REFERENCES USERS (USER_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;   

ALTER TABLE RETROSPECTIVE_CLAIM_SNAPSHOT ADD CONSTRAINT CUST_TO_RCS
 FOREIGN KEY (CUST_ID_CLMT)    
  REFERENCES CUSTOMER (CUST_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE DOCUMENT_RECIPIENT_ATTRIBUTE 
ADD CONSTRAINT ADT_TO_DRA FOREIGN KEY (APP_DATA_TYP_CD)
	REFERENCES APPLICATION_DATA_TYPE (APP_DATA_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
  
ALTER TABLE DOCUMENT_RECIPIENT_ATTRIBUTE
ADD CONSTRAINT ACT_TO_DRA FOREIGN KEY (APP_CNTX_TYP_CD)
	REFERENCES APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE RETRO_PREM_CALC_CLM_SNPT_XREF ADD CONSTRAINT RPC_TO_RPCCSX
FOREIGN KEY (RTSP_PREM_CALC_ID)
  REFERENCES RETROSPECTIVE_PREMIUM_CALC (RTSP_PREM_CALC_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;   

ALTER TABLE RETRO_PREM_CALC_CLM_SNPT_XREF ADD CONSTRAINT RCS_TO_RPCCSX1
 FOREIGN KEY (RCS_ID) 
  REFERENCES RETROSPECTIVE_CLAIM_SNAPSHOT (RCS_ID) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE EVENT_EXTRA_DATA_XREF ADD CONSTRAINT EEDX_TO_EVNTX1
 FOREIGN KEY (EVNT_TYP_CD) 
  REFERENCES EVENT_TYPE (EVNT_TYP_CD) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE EVENT_EXTRA_DATA_XREF ADD CONSTRAINT EEDX_TO_DATATPX1
 FOREIGN KEY (DATA_TYP_CD) 
  REFERENCES DATA_TYPE (DATA_TYP_CD) 
   ON DELETE RESTRICT ON UPDATE RESTRICT;
   
ALTER TABLE BILL_CYCLE_EOB_SUMMARY ADD CONSTRAINT PAYT_TO_BCES FOREIGN KEY (PAY_TYP_CD) REFERENCES PAYMENT_TYPE (PAY_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE BILL_CYCLE_EOB_SUMMARY_HISTORY ADD CONSTRAINT PAYT_TO_BCESH FOREIGN KEY (PAY_TYP_CD) REFERENCES PAYMENT_TYPE (PAY_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

      
alter table DOCUMENT_TYPE_VERSION_JUR
   add constraint DTV_TO_DTVJ foreign key (DOCM_TYP_VER_ID)
      references DOCUMENT_TYPE_VERSION (DOCM_TYP_VER_ID)
      on delete restrict on update restrict;

alter table DOCUMENT_TYPE_VERSION_JUR
   add constraint JT_TO_DTVJ foreign key (JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

alter table LOSS_COVERAGE_TYPE
   add constraint JT_TO_LCT foreign key (LOSS_COV_TYP_JUR_TYP_CD)
      references JURISDICTION_TYPE (JUR_TYP_CD)
      on delete restrict on update restrict;

ALTER TABLE WCPOLS_NONRENEWAL_NOTIFICATION 
	ADD CONSTRAINT JT_TO_WNN  
	FOREIGN KEY (JUR_TYP_CD) 
	REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
	  ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE WCPOLS_NONRENEWAL_NOTIFICATION
	ADD CONSTRAINT EVNTT_TO_WNN 
	FOREIGN KEY (EVNT_TYP_CD)
	REFERENCES EVENT_TYPE (EVNT_TYP_CD)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE WCPOLS_NONRENEWAL_NOTIFICATION
	ADD CONSTRAINT PP_TO_WNN 
	FOREIGN KEY (PLCY_PRD_ID)
	REFERENCES POLICY_PERIOD (PLCY_PRD_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
-- ECR SNAP-946
ALTER TABLE OFAC_SEARCH_RESULT
	ADD CONSTRAINT CUST_TO_CUSTOFACH FOREIGN KEY (CUST_ID)
	REFERENCES CUSTOMER (CUST_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INTERFACE_OFAC_IN
	ADD CONSTRAINT CUST_TO_CUSTINOFACIN FOREIGN KEY (CUST_ID)
	REFERENCES CUSTOMER (CUST_ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT;
      
alter table GENDER_TYPE_PRONOUN_XREF
   add constraint GP_TO_GTPX foreign key (GNDR_PRON_CD)
      references GENDER_PRONOUN (GNDR_PRON_CD)
      on delete restrict on update restrict;
      
alter table GENDER_TYPE_PRONOUN_XREF
   add constraint GT_TO_GTPX foreign key (GNDR_TYP_CD)
      references GENDER_TYPE (GNDR_TYP_CD)
      on delete restrict on update restrict;

-- ECR SNAP-1809
ALTER TABLE INTFC_CLM_RSRV_CLM_MSTR_OUT
    ADD CONSTRAINT CLM_TO_ICRCMO FOREIGN KEY (AGRE_ID)
	    REFERENCES CLAIM (AGRE_ID)
	    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INTFC_CLM_RSRV_FNCL_TRAN_OUT
    ADD CONSTRAINT CLM_TO_ICRFTO FOREIGN KEY (AGRE_ID)
        REFERENCES CLAIM (AGRE_ID)
	    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INTERFACE_URS_OUT_PRTN
    ADD CONSTRAINT BU_TO_IUOP FOREIGN KEY (BTCH_URS_ID)
        REFERENCES BATCH_URS (BTCH_URS_ID)
	    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INTERFACE_URS_LINK_DATA_OUT
    ADD CONSTRAINT BUU_TO_IULDO FOREIGN KEY (BUU_ID)
        REFERENCES BATCH_URS_UNIT (BUU_ID)
	    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INTERFACE_URS_HEADER_DATA_OUT
    ADD CONSTRAINT BUU_TO_IUHDO FOREIGN KEY (BUU_ID)
        REFERENCES BATCH_URS_UNIT (BUU_ID)
	    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INTERFACE_URS_TRNSMT_DATA_OUT
    ADD CONSTRAINT BUU_TO_IUTDO FOREIGN KEY (BUU_ID)
        REFERENCES BATCH_URS_UNIT (BUU_ID)
	    ON DELETE RESTRICT ON UPDATE RESTRICT;


alter table POLICY_PROFILE_HISTORY
   add constraint PLCYPRFL_TO_PLCYPRFLHIST foreign key (PLCY_PRFL_ID)
		references POLICY_PROFILE (PLCY_PRFL_ID)
		on delete restrict on update restrict;

alter table POLICY_PROFILE_HISTORY
   add constraint LOBT_TO_PLCYPRFLHIST foreign key (LOB_TYP_CD)
      references LINE_OF_BUSINESS_TYPE (LOB_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PROFILE_HISTORY
   add constraint PLCYP_TO_PLCYPRFLHIST foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_PROFILE_HISTORY
   add constraint PPCT_TO_PLCYPRFLHIST foreign key (PLCY_PRFL_CTG_TYP_CD)
      references POLICY_PROFILE_CATEGORY_TYPE (PLCY_PRFL_CTG_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PROFILE_HISTORY
   add constraint PSSN_TO_PLCYPRFLHIST foreign key (PRFL_STMT_SEL_NEST_ID)
      references PROFILE_STATEMENT_SEL_NEST (PRFL_STMT_SEL_NEST_ID)
      on delete restrict on update restrict;

alter table POLICY_PROFILE_HISTORY
   add constraint PSVT_TO_PLCYPRFLHIST foreign key (PRFL_SEL_VAL_TYP_CD)
      references PROFILE_SELECTION_VALUE_TYPE (PRFL_SEL_VAL_TYP_CD)
      on delete restrict on update restrict;

alter table POLICY_PROFILE_HISTORY
   add constraint PS_TO_PLCYPRFLHIST foreign key (PRFL_STMT_ID)
      references PROFILE_STATEMENT (PRFL_STMT_ID)
      on delete restrict on update restrict;

alter table POLICY_PROFILE_HISTORY
   add constraint USER_TO_PLCYPRFLHIST1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;


alter table POLICY_PROFILE_HISTORY
   add constraint USER_TO_PLCYPRFLHIST2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;


ALTER TABLE FINANCIAL_TRANSACTION_DISHONOR
ADD CONSTRAINT FTT_TO_FTD FOREIGN KEY (FNCL_TRAN_TYP_ID)
   REFERENCES FINANCIAL_TRANSACTION_TYPE (FNCL_TRAN_TYP_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE FINANCIAL_TRANSACTION_DISHONOR
ADD CONSTRAINT FTT_TO_FTD1 FOREIGN KEY (FNCL_TRAN_TYP_ID_DSHNR)
   REFERENCES FINANCIAL_TRANSACTION_TYPE (FNCL_TRAN_TYP_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE PRFL_SEL_VAL_INJR_TYP
	ADD CONSTRAINT PSVIT_TO_PSVT FOREIGN KEY (PRFL_SEL_VAL_TYP_CD)
	REFERENCES PROFILE_SELECTION_VALUE_TYPE (PRFL_SEL_VAL_TYP_CD)
        on delete restrict on update restrict;

ALTER TABLE INTFC_NCCI_MED_KY_FLG
    ADD CONSTRAINT CLM_TO_INMKF FOREIGN KEY (AGRE_ID)
	    REFERENCES CLAIM (AGRE_ID)
	    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INTFC_NCCI_MED_QTR_FLG
    ADD CONSTRAINT INMKF_TO_INMQF FOREIGN KEY (INMKF_ID)
	    REFERENCES INTFC_NCCI_MED_KY_FLG (INMKF_ID)
	    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INTFC_NCCI_MED_JUR_CNFG
   ADD CONSTRAINT JT_TO_INMJC FOREIGN KEY (JUR_TYP_CD)
      REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
      ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INTFC_NCCI_MED_KY_OUT
    ADD CONSTRAINT CLM_TO_INMKO FOREIGN KEY (AGRE_ID)
	    REFERENCES CLAIM (AGRE_ID)
	    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INTFC_NCCI_MED_QTR_OUT
    ADD CONSTRAINT CLM_TO_INMQO FOREIGN KEY (AGRE_ID)
	    REFERENCES CLAIM (AGRE_ID)
	    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INTFC_NCCI_MED_QTR_OUT
    ADD CONSTRAINT INMQF_TO_INMQO FOREIGN KEY (INMQF_ID)
	    REFERENCES INTFC_NCCI_MED_QTR_FLG (INMQF_ID)
	    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE RULE_DECISION_TREE_CD
   ADD CONSTRAINT UK_RDTC UNIQUE (RL_DECN_TREE_NM);

ALTER TABLE CASE_CASE_CTG_SCHEDULE_XREF 
	ADD CONSTRAINT CCCACX_TO_CCCSX FOREIGN KEY (CCCACX_ID)
		REFERENCES CASE_CASE_CTG_APP_CNTX_XREF (CCCACX_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE  CASE_CASE_CTG_SCHEDULE_XREF  
	ADD CONSTRAINT CST1_TO_CCCSX FOREIGN KEY ( CASE_SCH_TYP_CD )
		REFERENCES CASE_SCHEDULE_TYPE(CASE_SCH_TYP_CD )
		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCHEDULE
	ADD CONSTRAINT CASE_TO_CS1 FOREIGN KEY (CASE_ID)
		REFERENCES CASES (CASE_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE  CASE_SCHEDULE  
	ADD CONSTRAINT CST1_TO_CS1 FOREIGN KEY ( CASE_SCH_TYP_CD )
		REFERENCES CASE_SCHEDULE_TYPE(CASE_SCH_TYP_CD )
		ON DELETE RESTRICT ON UPDATE RESTRICT;   

ALTER TABLE  CASE_SCHEDULE  
	ADD CONSTRAINT CPST_TO_CS1 FOREIGN KEY ( CPS_TYP_CD )
		REFERENCES CASE_PROV_SPL_TYPE(CPS_TYP_CD )
		ON DELETE RESTRICT ON UPDATE RESTRICT;  

ALTER TABLE  CASE_SCHEDULE  
	ADD CONSTRAINT TZC_TO_CS1 FOREIGN KEY ( TIME_ZN_CD )
		REFERENCES TIME_ZONE_CD (TIME_ZN_CD )
		ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE  CASE_SCHEDULE  
	ADD CONSTRAINT CL_TO_CS1 FOREIGN KEY ( LANG_TYP_CD )
		REFERENCES LANGUAGE_TYPE (LANG_TYP_CD )
		ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE  CASE_SCHEDULE  
	ADD CONSTRAINT CSRT1_TO_CS1 FOREIGN KEY ( CASE_SCH_REQS_TYP_CD )
		REFERENCES CASE_SCHEDULE_REQUESTER_TYPE(CASE_SCH_REQS_TYP_CD )
		ON DELETE RESTRICT ON UPDATE RESTRICT;  

ALTER TABLE  CASE_SCHEDULE  
	ADD CONSTRAINT CSST2_TO_CS1 FOREIGN KEY ( CASE_SCH_STS_TYP_CD )
		REFERENCES CASE_SCHEDULE_STATUS_TYPE (CASE_SCH_STS_TYP_CD )
		ON DELETE RESTRICT ON UPDATE RESTRICT;     

ALTER TABLE CASE_SCHEDULE
	ADD CONSTRAINT USER_TO_CS11 FOREIGN KEY (AUDIT_USER_ID_CREA)
		REFERENCES USERS (USER_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCHEDULE
	ADD CONSTRAINT USER_TO_CS12 FOREIGN KEY (AUDIT_USER_ID_UPDT)
		REFERENCES USERS (USER_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCHEDULE_HIST 
	ADD CONSTRAINT CS1_TO_CSH1 FOREIGN KEY (CASE_SCH_ID)
		REFERENCES CASE_SCHEDULE (CASE_SCH_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT;
  
ALTER TABLE CASE_SCHEDULE_HIST 
	ADD CONSTRAINT CASE_TO_CSH1 FOREIGN KEY (CASE_ID)
		REFERENCES CASES (CASE_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE  CASE_SCHEDULE_HIST  
	ADD CONSTRAINT CST1_TO_CSH1 FOREIGN KEY ( CASE_SCH_TYP_CD )
		REFERENCES CASE_SCHEDULE_TYPE(CASE_SCH_TYP_CD )
		ON DELETE RESTRICT ON UPDATE RESTRICT;   
  
ALTER TABLE  CASE_SCHEDULE_HIST  
	ADD CONSTRAINT CSST1_TO_CSH1 FOREIGN KEY ( CPS_TYP_CD )
 		REFERENCES CASE_PROV_SPL_TYPE (CPS_TYP_CD)
 		ON DELETE RESTRICT ON UPDATE RESTRICT;  
  
ALTER TABLE  CASE_SCHEDULE_HIST  
	ADD CONSTRAINT TZC_TO_CSH1 FOREIGN KEY ( TIME_ZN_CD )
		REFERENCES TIME_ZONE_CD (TIME_ZN_CD )
		ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE  CASE_SCHEDULE_HIST  
ADD CONSTRAINT CL_TO_CSH1 FOREIGN KEY ( LANG_TYP_CD )
	REFERENCES LANGUAGE_TYPE (LANG_TYP_CD )
	ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE  CASE_SCHEDULE_HIST  
	ADD CONSTRAINT CSRT1_TO_CSH1 FOREIGN KEY ( CASE_SCH_REQS_TYP_CD )
		REFERENCES CASE_SCHEDULE_REQUESTER_TYPE(CASE_SCH_REQS_TYP_CD )
		ON DELETE RESTRICT ON UPDATE RESTRICT;  
  
ALTER TABLE  CASE_SCHEDULE_HIST  
	ADD CONSTRAINT CSST2_TO_CSH1 FOREIGN KEY ( CASE_SCH_STS_TYP_CD )
		REFERENCES CASE_SCHEDULE_STATUS_TYPE (CASE_SCH_STS_TYP_CD )
		ON DELETE RESTRICT ON UPDATE RESTRICT;     

ALTER TABLE CASE_SCHEDULE_HIST
  	ADD CONSTRAINT USER_TO_CSH11 FOREIGN KEY (AUDIT_USER_ID_CREA)
  		REFERENCES USERS (USER_ID)
  		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCHEDULE_HIST
  	ADD CONSTRAINT USER_TO_CSH12 FOREIGN KEY (AUDIT_USER_ID_UPDT)
  		REFERENCES USERS (USER_ID)
  		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCHEDULE_LOCATION 
	ADD CONSTRAINT CS1_TO_CSL FOREIGN KEY (CASE_SCH_ID)
		REFERENCES CASE_SCHEDULE(CASE_SCH_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE  CASE_SCHEDULE_LOCATION  
	ADD CONSTRAINT CUSTA_TO_CSL FOREIGN KEY ( CUST_ADDR_ID )
		REFERENCES CUSTOMER_ADDRESS (CUST_ADDR_ID )
		ON DELETE RESTRICT ON UPDATE RESTRICT;   

ALTER TABLE  CASE_SCHEDULE_LOCATION  
	ADD CONSTRAINT CNTRY_TO_CSL FOREIGN KEY ( CNTRY_ID )
		REFERENCES COUNTRY (CNTRY_ID )
		ON DELETE RESTRICT ON UPDATE RESTRICT;  
  
ALTER TABLE  CASE_SCHEDULE_LOCATION  
	ADD CONSTRAINT STT_TO_CSL FOREIGN KEY ( STT_ID )
		REFERENCES STATE (STT_ID )
		ON DELETE RESTRICT ON UPDATE RESTRICT;    

ALTER TABLE CASE_SCHEDULE_LOCATION
  	ADD CONSTRAINT CJT_TO_CSL FOREIGN KEY (CASE_JUR_TYP_CD)
  		REFERENCES CASE_JURISDICTION_TYPE (CASE_JUR_TYP_CD)
  		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCHEDULE_LOCATION
  	ADD CONSTRAINT CVT_TO_CSL FOREIGN KEY (CASE_VENU_TYP_CD)
  		REFERENCES CASE_VENUE_TYPE (CASE_VENU_TYP_CD)
  		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCHEDULE_LOCATION
  	ADD CONSTRAINT CVLT_TO_CSL FOREIGN KEY (CASE_VENU_LOC_TYP_CD)
  		REFERENCES CASE_VENUE_LOCATION_TYPE (CASE_VENU_LOC_TYP_CD)
  		ON DELETE RESTRICT ON UPDATE RESTRICT;
     
ALTER TABLE CASE_SCHEDULE_LOCATION
  	ADD CONSTRAINT USER_TO_CSL1 FOREIGN KEY (AUDIT_USER_ID_CREA)
  		REFERENCES USERS (USER_ID)
  		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCHEDULE_LOCATION
  	ADD CONSTRAINT USER_TO_CSL2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
  		REFERENCES USERS (USER_ID)
  		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCHEDULE_LOCATION_HIST 
	ADD CONSTRAINT CSL_TO_CSLH FOREIGN KEY (CASE_SCH_LOC_ID)
		REFERENCES CASE_SCHEDULE_LOCATION (CASE_SCH_LOC_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT;
  
ALTER TABLE CASE_SCHEDULE_LOCATION_HIST 
	ADD CONSTRAINT CS1_TO_CSLH FOREIGN KEY (CASE_SCH_ID)
		REFERENCES CASE_SCHEDULE(CASE_SCH_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE  CASE_SCHEDULE_LOCATION_HIST  
	ADD CONSTRAINT CUSTA_TO_CSLH FOREIGN KEY ( CUST_ADDR_ID )
		REFERENCES CUSTOMER_ADDRESS (CUST_ADDR_ID )
		ON DELETE RESTRICT ON UPDATE RESTRICT;   

ALTER TABLE  CASE_SCHEDULE_LOCATION_HIST  
	ADD CONSTRAINT CNTRY_TO_CSLH FOREIGN KEY ( CNTRY_ID )
		REFERENCES COUNTRY (CNTRY_ID )
		ON DELETE RESTRICT ON UPDATE RESTRICT;  
  
ALTER TABLE  CASE_SCHEDULE_LOCATION_HIST  
	ADD CONSTRAINT STT_TO_CSLH FOREIGN KEY ( STT_ID )
		REFERENCES STATE (STT_ID )
		ON DELETE RESTRICT ON UPDATE RESTRICT;    

ALTER TABLE CASE_SCHEDULE_LOCATION_HIST
  	ADD CONSTRAINT CJT_TO_CSLH FOREIGN KEY (CASE_JUR_TYP_CD)
  		REFERENCES CASE_JURISDICTION_TYPE (CASE_JUR_TYP_CD)
     	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCHEDULE_LOCATION_HIST
  	ADD CONSTRAINT CVT_TO_CSLH FOREIGN KEY (CASE_VENU_TYP_CD)
  		REFERENCES CASE_VENUE_TYPE (CASE_VENU_TYP_CD)
  		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCHEDULE_LOCATION_HIST
  	ADD CONSTRAINT CVLT_TO_CSLH FOREIGN KEY (CASE_VENU_LOC_TYP_CD)
  		REFERENCES CASE_VENUE_LOCATION_TYPE (CASE_VENU_LOC_TYP_CD)
  		ON DELETE RESTRICT ON UPDATE RESTRICT;
     
ALTER TABLE CASE_SCHEDULE_LOCATION_HIST
  	ADD CONSTRAINT USER_TO_CSLH1 FOREIGN KEY (AUDIT_USER_ID_CREA)
  		REFERENCES USERS (USER_ID)
  		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCHEDULE_LOCATION_HIST
  	ADD CONSTRAINT USER_TO_CSLH2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
  		REFERENCES USERS (USER_ID)
  		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCHEDULE_NTF_PARTY 
	ADD CONSTRAINT CS1_TO_CSNP FOREIGN KEY (CASE_SCH_ID)
		REFERENCES CASE_SCHEDULE(CASE_SCH_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE  CASE_SCHEDULE_NTF_PARTY  
	ADD CONSTRAINT OU_TO_CSNP FOREIGN KEY ( ORG_UNT_ID )
		REFERENCES ORGANIZATIONAL_UNIT (ORG_UNT_ID )
		ON DELETE RESTRICT ON UPDATE RESTRICT;   
  
ALTER TABLE CASE_SCHEDULE_NTF_PARTY
  	ADD CONSTRAINT USER_TO_CSNP1 FOREIGN KEY (USER_ID)
  		REFERENCES USERS (USER_ID)
  		ON DELETE RESTRICT ON UPDATE RESTRICT; 
  
ALTER TABLE CASE_SCHEDULE_NTF_PARTY
  	ADD CONSTRAINT USER_TO_CSNP2 FOREIGN KEY (AUDIT_USER_ID_CREA)
  		REFERENCES USERS (USER_ID)
  		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCHEDULE_NTF_PARTY
  	ADD CONSTRAINT USER_TO_CSNP3 FOREIGN KEY (AUDIT_USER_ID_UPDT)
  		REFERENCES USERS (USER_ID)
  		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCHEDULE_NTF_PARTY_HIST 
	ADD CONSTRAINT CSNP_TO_CSNPH FOREIGN KEY (CSNP_ID)
		REFERENCES CASE_SCHEDULE_NTF_PARTY (CSNP_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT;
  
ALTER TABLE CASE_SCHEDULE_NTF_PARTY_HIST 
	ADD CONSTRAINT CS1_TO_CSNPH FOREIGN KEY (CASE_SCH_ID)
		REFERENCES CASE_SCHEDULE(CASE_SCH_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE  CASE_SCHEDULE_NTF_PARTY_HIST  
	ADD CONSTRAINT OU_TO_CSNPH FOREIGN KEY ( ORG_UNT_ID )
		REFERENCES ORGANIZATIONAL_UNIT (ORG_UNT_ID )
		ON DELETE RESTRICT ON UPDATE RESTRICT;   
  
ALTER TABLE CASE_SCHEDULE_NTF_PARTY_HIST
  	ADD CONSTRAINT USER_TO_CSNPH1 FOREIGN KEY (USER_ID)
  		REFERENCES USERS (USER_ID)
  		ON DELETE RESTRICT ON UPDATE RESTRICT; 
  
ALTER TABLE CASE_SCHEDULE_NTF_PARTY_HIST
  	ADD CONSTRAINT USER_TO_CSNPH2 FOREIGN KEY (AUDIT_USER_ID_CREA)
  		REFERENCES USERS (USER_ID)
  		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCHEDULE_NTF_PARTY_HIST
  	ADD CONSTRAINT USER_TO_CSNPH3 FOREIGN KEY (AUDIT_USER_ID_UPDT)
  		REFERENCES USERS (USER_ID)
  		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCHEDULE_ATTENDEE 
	ADD CONSTRAINT CS1_TO_CSA FOREIGN KEY (CASE_SCH_ID)
		REFERENCES CASE_SCHEDULE(CASE_SCH_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE  CASE_SCHEDULE_ATTENDEE  
	ADD CONSTRAINT CASEP_TO_CSA FOREIGN KEY ( CASE_PTCP_ID )
		REFERENCES CASE_PARTICIPANT(CASE_PTCP_ID )
		ON DELETE RESTRICT ON UPDATE RESTRICT;   
  
ALTER TABLE  CASE_SCHEDULE_ATTENDEE  
	ADD CONSTRAINT CSPT_TO_CSA FOREIGN KEY ( CASE_SCH_PRSNC_TYP_CD )
		REFERENCES CASE_SCHEDULE_PRESENCE_TYPE (CASE_SCH_PRSNC_TYP_CD )
		ON DELETE RESTRICT ON UPDATE RESTRICT;  
  
ALTER TABLE CASE_SCHEDULE_ATTENDEE
  	ADD CONSTRAINT USER_TO_CSA1 FOREIGN KEY (AUDIT_USER_ID_CREA)
  		REFERENCES USERS (USER_ID)
  		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCHEDULE_ATTENDEE
  	ADD CONSTRAINT USER_TO_CSA2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
  		REFERENCES USERS (USER_ID)
  		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCHEDULE_ATTENDEE_HIST 
	ADD CONSTRAINT CSA_TO_CSAH FOREIGN KEY (CSA_ID)
		REFERENCES CASE_SCHEDULE_ATTENDEE (CSA_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT;
  
ALTER TABLE CASE_SCHEDULE_ATTENDEE_HIST 
	ADD CONSTRAINT CS1_TO_CSAH FOREIGN KEY (CASE_SCH_ID)
		REFERENCES CASE_SCHEDULE(CASE_SCH_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE  CASE_SCHEDULE_ATTENDEE_HIST  
	ADD CONSTRAINT CASEP_TO_CSAH FOREIGN KEY ( CASE_PTCP_ID )
		REFERENCES CASE_PARTICIPANT(CASE_PTCP_ID )
		ON DELETE RESTRICT ON UPDATE RESTRICT;   
  
ALTER TABLE  CASE_SCHEDULE_ATTENDEE_HIST  
	ADD CONSTRAINT CSPT_TO_CSAH FOREIGN KEY ( CASE_SCH_PRSNC_TYP_CD )
		REFERENCES CASE_SCHEDULE_PRESENCE_TYPE (CASE_SCH_PRSNC_TYP_CD )
		ON DELETE RESTRICT ON UPDATE RESTRICT;  
  
ALTER TABLE CASE_SCHEDULE_ATTENDEE_HIST
  	ADD CONSTRAINT USER_TO_CSAH1 FOREIGN KEY (AUDIT_USER_ID_CREA)
     	REFERENCES USERS (USER_ID)
     	ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CASE_SCHEDULE_ATTENDEE_HIST
  	ADD CONSTRAINT USER_TO_CSAH2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
  		REFERENCES USERS (USER_ID)
  		ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE CLAIM_AVERAGE_WAGE
  	ADD CONSTRAINT ACT_TO_CAW FOREIGN KEY (CLM_AVG_WG_CALC_TYP)
  		REFERENCES AVG_CALC_TYP (ACT_CALC_CD)
  		ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE CONTEXT_TYPE_FNCT_ROLE_XREF
    ADD CONSTRAINT ACRT_TO_CTFRX FOREIGN KEY (ACT_CD)
    REFERENCES ASSIGNMENT_CRITERIA_TYPE (ACT_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT_ATTRIBUTE_TYPE
    ADD CONSTRAINT DT_TO_AAT FOREIGN KEY (DATA_TYP_CD)
    REFERENCES DATA_TYPE (DATA_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASSIGNMENT_ATTRIBUTE_TYPE
    ADD CONSTRAINT FT_TO_AAT FOREIGN KEY (FRMT_TYP_CD)
    REFERENCES FORMAT_TYPE (FRMT_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASGN_CRIT_ATTR_XREF
    ADD CONSTRAINT ACT_TO_ACAX FOREIGN KEY (ACT_CD)
    REFERENCES ASSIGNMENT_CRITERIA_TYPE (ACT_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ASGN_CRIT_ATTR_XREF
    ADD CONSTRAINT AAT_TO_ACAX FOREIGN KEY (AAT_CD)
    REFERENCES ASSIGNMENT_ATTRIBUTE_TYPE (AAT_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;


--BEGIN ECR-882

ALTER TABLE COMMISSION_SCHEDULE_TYPE
    ADD CONSTRAINT CST_TO_CSBT FOREIGN KEY (COMS_SCH_BS_TYP_CD)
    REFERENCES COMMISSION_SCHEDULE_BASIS_TYPE (COMS_SCH_BS_TYP_CD) ON DELETE RESTRICT ON UPDATE RESTRICT;
    
ALTER TABLE COMMISSION_TYPE_RATE_TYPE_XREF
	ADD CONSTRAINT CTRTX_TO_CMTC FOREIGN KEY (COMS_TYP_CD )
		REFERENCES COMMISSION_TYPE (COMS_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT;  
		
ALTER TABLE COMMISSION_TYPE_RATE_TYPE_XREF
	ADD CONSTRAINT CTRTX_TO_CMRT FOREIGN KEY (COMS_RT_TYP_CD )
		REFERENCES COMMISSION_RATE_TYPE (COMS_RT_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT;  
		
ALTER TABLE COMS_TYP_SCH_BS_TYP_XREF
	ADD CONSTRAINT CTSBTX_TO_CMTC FOREIGN KEY (COMS_TYP_CD )
		REFERENCES COMMISSION_TYPE (COMS_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT;  
		
ALTER TABLE COMS_TYP_SCH_BS_TYP_XREF
	ADD CONSTRAINT CTSBTX_TO_CSBT FOREIGN KEY (COMS_SCH_BS_TYP_CD )
		REFERENCES COMMISSION_SCHEDULE_BASIS_TYPE (COMS_SCH_BS_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT;
		
		

ALTER TABLE CARRIER_COMMISSION
	ADD CONSTRAINT CCOMS_TO_CMTC FOREIGN KEY (COMS_TYP_CD )
		REFERENCES COMMISSION_TYPE (COMS_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 		
		
ALTER TABLE CARRIER_COMMISSION
	ADD CONSTRAINT CCOMS_TO_CMRT FOREIGN KEY (COMS_RT_TYP_CD )
		REFERENCES COMMISSION_RATE_TYPE (COMS_RT_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
		
ALTER TABLE CARRIER_COMMISSION
	ADD CONSTRAINT CCOMS_TO_INSCT FOREIGN KEY (INS_CMPY_TYP_ID )
		REFERENCES INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
ALTER TABLE CARRIER_COMMISSION
	ADD CONSTRAINT CCOMS_TO_MT FOREIGN KEY (MRKT_TYP_CD )
		REFERENCES MARKET_TYPE (MRKT_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
ALTER TABLE CARRIER_COMMISSION
	ADD CONSTRAINT CCOMS_TO_CEST FOREIGN KEY (CTL_ELEM_SUB_TYP_ID )
		REFERENCES CONTROL_ELEMENT_SUB_TYPE (CTL_ELEM_SUB_TYP_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 	
		
ALTER TABLE CARRIER_COMMISSION
	ADD CONSTRAINT CCOMS_TO_CST FOREIGN KEY (COMS_SCH_TYP_CD )
		REFERENCES COMMISSION_SCHEDULE_TYPE (COMS_SCH_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 		 
		
		
ALTER TABLE CARRIER_COMMISSION_HIST
	ADD CONSTRAINT CCH_TO_CCOMS FOREIGN KEY (CAR_COMS_ID )
		REFERENCES CARRIER_COMMISSION (CAR_COMS_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 		
		
ALTER TABLE CARRIER_COMMISSION_HIST
	ADD CONSTRAINT CCH_TO_CMTC FOREIGN KEY (COMS_TYP_CD )
		REFERENCES COMMISSION_TYPE (COMS_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 		
		
ALTER TABLE CARRIER_COMMISSION_HIST
	ADD CONSTRAINT CCH_TO_CMRT FOREIGN KEY (COMS_RT_TYP_CD )
		REFERENCES COMMISSION_RATE_TYPE (COMS_RT_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
		
ALTER TABLE CARRIER_COMMISSION_HIST
	ADD CONSTRAINT CCH_TO_INSCT FOREIGN KEY (INS_CMPY_TYP_ID )
		REFERENCES INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
ALTER TABLE CARRIER_COMMISSION_HIST
	ADD CONSTRAINT CCH_TO_MT FOREIGN KEY (MRKT_TYP_CD )
		REFERENCES MARKET_TYPE (MRKT_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
ALTER TABLE CARRIER_COMMISSION_HIST
	ADD CONSTRAINT CCH_TO_CEST FOREIGN KEY (CTL_ELEM_SUB_TYP_ID )
		REFERENCES CONTROL_ELEMENT_SUB_TYPE (CTL_ELEM_SUB_TYP_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 	
		
ALTER TABLE CARRIER_COMMISSION_HIST
	ADD CONSTRAINT CCH_TO_CST FOREIGN KEY (COMS_SCH_TYP_CD )
		REFERENCES COMMISSION_SCHEDULE_TYPE (COMS_SCH_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 	
		
		
ALTER TABLE ROLE_AGENT_AGENCY_LOB_COMS
	ADD CONSTRAINT RAALC_TO_RAAL FOREIGN KEY (RAAL_ID )
		REFERENCES ROLE_AGENT_AGY_LOB (RAAL_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 		
		
ALTER TABLE ROLE_AGENT_AGENCY_LOB_COMS
	ADD CONSTRAINT RAALC_TO_CMTC FOREIGN KEY (COMS_TYP_CD )
		REFERENCES COMMISSION_TYPE (COMS_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 		
		
ALTER TABLE ROLE_AGENT_AGENCY_LOB_COMS
	ADD CONSTRAINT RAALC_TO_CMRT FOREIGN KEY (COMS_RT_TYP_CD )
		REFERENCES COMMISSION_RATE_TYPE (COMS_RT_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
		
ALTER TABLE ROLE_AGENT_AGENCY_LOB_COMS
	ADD CONSTRAINT RAALC_TO_INSCT FOREIGN KEY (INS_CMPY_TYP_ID )
		REFERENCES INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
ALTER TABLE ROLE_AGENT_AGENCY_LOB_COMS
	ADD CONSTRAINT RAALC_TO_MT FOREIGN KEY (MRKT_TYP_CD )
		REFERENCES MARKET_TYPE (MRKT_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
ALTER TABLE ROLE_AGENT_AGENCY_LOB_COMS
	ADD CONSTRAINT RAALC_TO_CEST FOREIGN KEY (CTL_ELEM_SUB_TYP_ID )
		REFERENCES CONTROL_ELEMENT_SUB_TYPE (CTL_ELEM_SUB_TYP_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 	
		
ALTER TABLE ROLE_AGENT_AGENCY_LOB_COMS
	ADD CONSTRAINT RAALC_TO_CST FOREIGN KEY (COMS_SCH_TYP_CD )
		REFERENCES COMMISSION_SCHEDULE_TYPE (COMS_SCH_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 	
		

ALTER TABLE ROLE_AGENT_AGY_LOB_COMS_HIST
	ADD CONSTRAINT RAALCH_TO_RAALC FOREIGN KEY (RAALC_ID )
		REFERENCES ROLE_AGENT_AGENCY_LOB_COMS (RAALC_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 	
		
ALTER TABLE ROLE_AGENT_AGY_LOB_COMS_HIST
	ADD CONSTRAINT RAALCH_TO_RAAL FOREIGN KEY (RAAL_ID )
		REFERENCES ROLE_AGENT_AGY_LOB (RAAL_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 			
		
ALTER TABLE ROLE_AGENT_AGY_LOB_COMS_HIST
	ADD CONSTRAINT RAALCH_TO_CMTC FOREIGN KEY (COMS_TYP_CD )
		REFERENCES COMMISSION_TYPE (COMS_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 		
		
ALTER TABLE ROLE_AGENT_AGY_LOB_COMS_HIST
	ADD CONSTRAINT RAALCH_TO_CMRT FOREIGN KEY (COMS_RT_TYP_CD )
		REFERENCES COMMISSION_RATE_TYPE (COMS_RT_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
		
ALTER TABLE ROLE_AGENT_AGY_LOB_COMS_HIST
	ADD CONSTRAINT RAALCH_TO_INSCT FOREIGN KEY (INS_CMPY_TYP_ID )
		REFERENCES INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
ALTER TABLE ROLE_AGENT_AGY_LOB_COMS_HIST
	ADD CONSTRAINT RAALCH_TO_MT FOREIGN KEY (MRKT_TYP_CD )
		REFERENCES MARKET_TYPE (MRKT_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
ALTER TABLE ROLE_AGENT_AGY_LOB_COMS_HIST
	ADD CONSTRAINT RAALCH_TO_CEST FOREIGN KEY (CTL_ELEM_SUB_TYP_ID )
		REFERENCES CONTROL_ELEMENT_SUB_TYPE (CTL_ELEM_SUB_TYP_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 	
		
ALTER TABLE ROLE_AGENT_AGY_LOB_COMS_HIST
	ADD CONSTRAINT RAALCH_TO_CST FOREIGN KEY (COMS_SCH_TYP_CD )
		REFERENCES COMMISSION_SCHEDULE_TYPE (COMS_SCH_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 	

 
 
 ALTER TABLE ROLE_MGA_BRKR_LOB_COMS
	ADD CONSTRAINT RMBLC_TO_RMBL FOREIGN KEY (RMBL_ID )
		REFERENCES ROLE_MGA_BRKR_LOB (RMBL_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 		
		
ALTER TABLE ROLE_MGA_BRKR_LOB_COMS
	ADD CONSTRAINT RMBLC_TO_CMTC FOREIGN KEY (COMS_TYP_CD )
		REFERENCES COMMISSION_TYPE (COMS_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 		
		
ALTER TABLE ROLE_MGA_BRKR_LOB_COMS
	ADD CONSTRAINT RMBLC_TO_CMRT FOREIGN KEY (COMS_RT_TYP_CD )
		REFERENCES COMMISSION_RATE_TYPE (COMS_RT_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
		
ALTER TABLE ROLE_MGA_BRKR_LOB_COMS
	ADD CONSTRAINT RMBLC_TO_INSCT FOREIGN KEY (INS_CMPY_TYP_ID )
		REFERENCES INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
ALTER TABLE ROLE_MGA_BRKR_LOB_COMS
	ADD CONSTRAINT RMBLC_TO_MT FOREIGN KEY (MRKT_TYP_CD )
		REFERENCES MARKET_TYPE (MRKT_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
ALTER TABLE ROLE_MGA_BRKR_LOB_COMS
	ADD CONSTRAINT RMBLC_TO_CEST FOREIGN KEY (CTL_ELEM_SUB_TYP_ID )
		REFERENCES CONTROL_ELEMENT_SUB_TYPE (CTL_ELEM_SUB_TYP_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 	
		
ALTER TABLE ROLE_MGA_BRKR_LOB_COMS
	ADD CONSTRAINT RMBLC_TO_CST FOREIGN KEY (COMS_SCH_TYP_CD )
		REFERENCES COMMISSION_SCHEDULE_TYPE (COMS_SCH_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 	
		

ALTER TABLE ROLE_MGA_BRKR_LOB_COMS_HIST
	ADD CONSTRAINT RMBLCH_TO_RMBLC FOREIGN KEY (RMBLC_ID )
		REFERENCES ROLE_MGA_BRKR_LOB_COMS (RMBLC_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 	
		
ALTER TABLE ROLE_MGA_BRKR_LOB_COMS_HIST
	ADD CONSTRAINT RMBLCH_TO_RMBL FOREIGN KEY (RMBL_ID )
		REFERENCES ROLE_MGA_BRKR_LOB (RMBL_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 					
		
ALTER TABLE ROLE_MGA_BRKR_LOB_COMS_HIST
	ADD CONSTRAINT RMBLCH_TO_CMTC FOREIGN KEY (COMS_TYP_CD )
		REFERENCES COMMISSION_TYPE (COMS_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 		
		
ALTER TABLE ROLE_MGA_BRKR_LOB_COMS_HIST
	ADD CONSTRAINT RMBLCH_TO_CMRT FOREIGN KEY (COMS_RT_TYP_CD )
		REFERENCES COMMISSION_RATE_TYPE (COMS_RT_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
ALTER TABLE ROLE_MGA_BRKR_LOB_COMS_HIST
	ADD CONSTRAINT RMBLCH_TO_INSCT FOREIGN KEY (INS_CMPY_TYP_ID )
		REFERENCES INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
ALTER TABLE ROLE_MGA_BRKR_LOB_COMS_HIST
	ADD CONSTRAINT RMBLCH_TO_MT FOREIGN KEY (MRKT_TYP_CD )
		REFERENCES MARKET_TYPE (MRKT_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
ALTER TABLE ROLE_MGA_BRKR_LOB_COMS_HIST
	ADD CONSTRAINT RMBLCH_TO_CEST FOREIGN KEY (CTL_ELEM_SUB_TYP_ID )
		REFERENCES CONTROL_ELEMENT_SUB_TYPE (CTL_ELEM_SUB_TYP_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 	
		
ALTER TABLE ROLE_MGA_BRKR_LOB_COMS_HIST
	ADD CONSTRAINT RMBLCH_TO_CST FOREIGN KEY (COMS_SCH_TYP_CD )
		REFERENCES COMMISSION_SCHEDULE_TYPE (COMS_SCH_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 	


ALTER TABLE ROLE_AGENT_AGENCY_LOB_STT_COMS
	ADD CONSTRAINT RAALSC_TO_CMTC FOREIGN KEY (COMS_TYP_CD )
		REFERENCES COMMISSION_TYPE (COMS_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 		
		
ALTER TABLE ROLE_AGENT_AGENCY_LOB_STT_COMS
	ADD CONSTRAINT RAALSC_TO_CMRT FOREIGN KEY (COMS_RT_TYP_CD )
		REFERENCES COMMISSION_RATE_TYPE (COMS_RT_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT;
		
ALTER TABLE ROLE_AGENT_AGENCY_LOB_STT_COMS
	ADD CONSTRAINT RAALSC_TO_INSCT FOREIGN KEY (INS_CMPY_TYP_ID )
		REFERENCES INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT;
		
ALTER TABLE ROLE_AGENT_AGENCY_LOB_STT_COMS
	ADD CONSTRAINT RAALSC_TO_MT FOREIGN KEY (MRKT_TYP_CD )
		REFERENCES MARKET_TYPE (MRKT_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT;
		
ALTER TABLE ROLE_AGENT_AGENCY_LOB_STT_COMS
	ADD CONSTRAINT RAALSC_TO_CEST FOREIGN KEY (CTL_ELEM_SUB_TYP_ID )
		REFERENCES CONTROL_ELEMENT_SUB_TYPE (CTL_ELEM_SUB_TYP_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 	


ALTER TABLE RAALSCH 
	ADD CONSTRAINT RAALSCH_TO_CMTC FOREIGN KEY (COMS_TYP_CD )
		REFERENCES COMMISSION_TYPE (COMS_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 		
		
ALTER TABLE RAALSCH 
	ADD CONSTRAINT RAALSCH_TO_CMRT FOREIGN KEY (COMS_RT_TYP_CD )
		REFERENCES COMMISSION_RATE_TYPE (COMS_RT_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT;
		
ALTER TABLE RAALSCH 
	ADD CONSTRAINT RAALSCH_TO_INSCT FOREIGN KEY (INS_CMPY_TYP_ID )
		REFERENCES INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT;
		
ALTER TABLE RAALSCH 
	ADD CONSTRAINT RAALSCH_TO_MT FOREIGN KEY (MRKT_TYP_CD )
		REFERENCES MARKET_TYPE (MRKT_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT;
		
ALTER TABLE RAALSCH 
	ADD CONSTRAINT RAALSCH_TO_CEST FOREIGN KEY (CTL_ELEM_SUB_TYP_ID )
		REFERENCES CONTROL_ELEMENT_SUB_TYPE (CTL_ELEM_SUB_TYP_ID)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
ALTER TABLE POLICY_PERIOD_PTCP_AGY 
	ADD CONSTRAINT PPPAGY_TO_COMST FOREIGN KEY (COMS_TYP_CD )
		REFERENCES COMMISSION_TYPE (COMS_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 	
		
ALTER TABLE POLICY_PERIOD_PTCP_AGY_HIST  
	ADD CONSTRAINT PPPAGYH_TO_COMST FOREIGN KEY (COMS_TYP_CD )
		REFERENCES COMMISSION_TYPE (COMS_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
ALTER TABLE POLICY_PRD_PTCP_AGY_STT_COMS 
	ADD CONSTRAINT PPPAGYSC_TO_COMST FOREIGN KEY (COMS_TYP_CD )
		REFERENCES COMMISSION_TYPE (COMS_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
ALTER TABLE PPPASCHIST 
	ADD CONSTRAINT PPPAGYSCH_TO_COMST FOREIGN KEY (COMS_TYP_CD )
		REFERENCES COMMISSION_TYPE (COMS_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
ALTER TABLE POLICY_PERIOD_PTCP_AGNT 
	ADD CONSTRAINT PPPAGNT_TO_COMST FOREIGN KEY (COMS_TYP_CD )
		REFERENCES COMMISSION_TYPE (COMS_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
ALTER TABLE POLICY_PERIOD_PTCP_AGNT_HIST 
	ADD CONSTRAINT PPPAH_TO_COMST FOREIGN KEY (COMS_TYP_CD )
		REFERENCES COMMISSION_TYPE (COMS_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
ALTER TABLE POLICY_PRD_PTCP_AGNT_STT_COMS 
	ADD CONSTRAINT PPPASC_TO_COMST FOREIGN KEY (COMS_TYP_CD )
		REFERENCES COMMISSION_TYPE (COMS_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
ALTER TABLE PPPASCH  
	ADD CONSTRAINT PPPASCH_TO_COMST FOREIGN KEY (COMS_TYP_CD )
		REFERENCES COMMISSION_TYPE (COMS_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
ALTER TABLE POLICY_PERIOD_PTCP_MGA  
	ADD CONSTRAINT PPPM_TO_COMST FOREIGN KEY (COMS_TYP_CD )
		REFERENCES COMMISSION_TYPE (COMS_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
ALTER TABLE POLICY_PERIOD_PTCP_MGA_HIST  
	ADD CONSTRAINT PPPMH_TO_COMST FOREIGN KEY (COMS_TYP_CD )
		REFERENCES COMMISSION_TYPE (COMS_TYP_CD)
		ON DELETE RESTRICT ON UPDATE RESTRICT; 
		
--END ECR-882	
    
ALTER TABLE WCPOLS_DOCM_XREF
   ADD CONSTRAINT DT_TO_WDX FOREIGN KEY (DOCM_TYP_ID)
      REFERENCES DOCUMENT_TYPE (DOCM_TYP_ID)    
      on delete restrict on update restrict;

   ALTER TABLE CLAIM_BLOCK
      add constraint BLK_TO_CB foreign key (BLK_ID)
         references BLOCK (BLK_ID)
         on delete restrict on update restrict;

   ALTER TABLE CLAIM_BLOCK
      add constraint CLM_TO_CB foreign key (AGRE_ID)
         references CLAIM (AGRE_ID)
         on delete restrict on update restrict;

   ALTER TABLE CLAIM_BLOCK_HISTORY
       ADD CONSTRAINT CLM_TO_CBH
       FOREIGN KEY(AGRE_ID)
       REFERENCES CLAIM(AGRE_ID)
         on delete restrict on update restrict;
-- BEGIN : Data Level Security for the BLOCK_TYPE Table.

alter table SECURITY_GROUP_CLM_BLOCK_XREF
   add constraint BT_SGCBX foreign key (BLK_TYP_CD)
      references BLOCK_TYPE (BLK_TYP_CD)
      on delete restrict on update restrict;

alter table SECURITY_GROUP_CLM_BLOCK_XREF
   add constraint PTC_SGCBX foreign key (PRMSN_TYP_ID)
      references PERMISSION_TYPE_CD (PRMSN_TYP_ID)
      on delete restrict on update restrict;

alter table SECURITY_GROUP_CLM_BLOCK_XREF
   add constraint SGC_SGCBX foreign key (SEC_GRP_CD)
      references SECURITY_GROUP_CD (SEC_GRP_CD)
      on delete restrict on update restrict;

alter table USER_CLAIM_BLOCK_XREF
   add constraint BT_UCBX foreign key (BLK_TYP_CD)
      references BLOCK_TYPE (BLK_TYP_CD)
      on delete restrict on 	update restrict;

alter table USER_CLAIM_BLOCK_XREF
   add constraint PTC_UCBX foreign key (PRMSN_TYP_ID)
      references PERMISSION_TYPE_CD (PRMSN_TYP_ID)
      on delete restrict on update restrict;

alter table USER_CLAIM_BLOCK_XREF
   add constraint U_UCBX foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;

ALTER TABLE PAYMENT_DOCUMENT_XREF ADD  CONSTRAINT DOCM_TO_PDX
 FOREIGN KEY (DOCM_ID)
  REFERENCES DOCUMENT (DOCM_ID)
  ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PAYMENT_DOCUMENT_XREF ADD  CONSTRAINT PR_TO_PDX
 FOREIGN KEY (PAY_REQS_ID)
  REFERENCES PAYMENT_REQUEST (PAY_REQS_ID)
  ON DELETE RESTRICT ON UPDATE RESTRICT;


-- END : Data Level Security for the BLOCK_TYPE Table.


 ALTER TABLE CMS_GRP_DTL ADD  CONSTRAINT CGC_TO_CGD
 FOREIGN KEY (CMS_GRP_CD)
  REFERENCES CMS_GRP_CD (CMS_GRP_CD)
  ON DELETE RESTRICT ON UPDATE RESTRICT;
  
 ALTER TABLE INSURANCE_COMPANY_TYPE_DTL ADD CONSTRAINT ICTD_TO_CGD
 FOREIGN KEY (CMS_GRP_CD)
  REFERENCES CMS_GRP_CD (CMS_GRP_CD)
  ON DELETE RESTRICT ON UPDATE RESTRICT;


  ALTER TABLE USERS_CUSTOMER_ACCESS_XREF ADD CONSTRAINT UCAST_TO_UCAX
   FOREIGN KEY (STATUS)
     REFERENCES USERS_CUST_ACCS_STS_TYP (USER_CUST_ACCS_STS_TYP_CD)
     ON DELETE RESTRICT ON UPDATE RESTRICT;
  

alter table INTERFACE_REQUEST_ACK
   add constraint IR_TO_IRA foreign key (INTFC_REQS_ID)
      references INTERFACE_REQUEST (INTFC_REQS_ID)
      on delete restrict on update restrict;

alter table PLCY_PRD_PTCP_ALT_EMPLR
   add constraint PPP_TO_PPPAE foreign key (PTCP_ID)
      references POLICY_PERIOD_PARTICIPATION (PTCP_ID)
      on delete restrict on update restrict;

alter table PLCY_PRD_PTCP_ALT_EMPLR
    add constraint USER_TO_PPPAE1 foreign key (AUDIT_USER_ID_CREA)
       references USERS (USER_ID)
       on delete restrict on update restrict;

alter table PLCY_PRD_PTCP_ALT_EMPLR
    add constraint USER_TO_PPPAE2 foreign key (AUDIT_USER_ID_UPDT)
       references USERS (USER_ID)
       on delete restrict on update restrict;

alter table PLCY_PRD_PTCP_ALT_EMPLR_STT
   add constraint PPP_TO_PPPAES foreign key (PLCY_PRD_PTCP_ALT_EMPLR_ID)
       references PLCY_PRD_PTCP_ALT_EMPLR (PLCY_PRD_PTCP_ALT_EMPLR_ID)
       on delete restrict on update restrict;

alter table PLCY_PRD_PTCP_ALT_EMPLR_HIST
   add constraint USER_TO_PPPAEH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table PLCY_PRD_PTCP_ALT_EMPLR_HIST
   add constraint USER_TO_PPPAEH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table PLCY_PTCP_ALT_EMP_STT_HIST
   add constraint USER_TO_PPPAESH1 foreign key (AUDIT_USER_ID_CREA)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table PLCY_PTCP_ALT_EMP_STT_HIST
   add constraint USER_TO_PPPAESH2 foreign key (AUDIT_USER_ID_UPDT)
      references USERS (USER_ID)
      on delete restrict on update restrict;

  ALTER TABLE LARGE_DEDUCTIBLE_DETAIL
  add constraint LDT_TO_LDD foreign key (LG_DED_TYP_CD)
       references LARGE_DEDUCTIBLE_TYPE (LG_DED_TYP_CD)
       on delete restrict on update restrict;

 ALTER TABLE LARGE_DEDUCTIBLE_DETAIL
  add constraint LDPT_TO_LDD foreign key (LG_DED_PLN_TYP_CD)
       references LARGE_DEDUCTIBLE_PLAN_TYPE (LG_DED_PLN_TYP_CD)
       on delete restrict on update restrict; 

 ALTER TABLE POLICY_PERIOD_DEDUCTIBLE_REMB
 add constraint PPRE_TO_PPDR foreign key (PPRE_ID)
      references POLICY_PERIOD_RATING_ELEMENT (PPRE_ID)
      on delete restrict on update restrict;

ALTER TABLE POLICY_PERIOD_DEDUCTIBLE_REMB
 add constraint LDD_TO_PPDR foreign key (LDD_ID)
      references LARGE_DEDUCTIBLE_DETAIL (LDD_ID)
      on delete restrict on update restrict;

ALTER TABLE POLICY_PERIOD_DEDUCTIBLE_REMB
 add constraint STT_TO_PPDR foreign key (STT_ID)
      references STATE (STT_ID)
      on delete restrict on update restrict;

ALTER TABLE POLICY_PERIOD_DEDUCTIBLE_REMB
add constraint PPDCG_TO_PPDR foreign key (PPDCG_ID)
     references POLICY_PERIOD_DED_CLM_GRP (PPDCG_ID)
     on delete restrict on update restrict;  

ALTER TABLE POLICY_PERIOD_DED_CLM_GRP
add constraint PP_TO_PPDCG foreign key (PLCY_PRD_ID)
     references POLICY_PERIOD (PLCY_PRD_ID)
     on delete restrict on update restrict;   
     
ALTER TABLE POLICY_PERIOD_DED_CLM_GRP
add constraint PPRE_TO_PPDCG foreign key (PPRE_ID)
     references POLICY_PERIOD_RATING_ELEMENT (PPRE_ID)
     on delete restrict on update restrict;

ALTER TABLE POLICY_PERIOD_DED_CLM_GRP
add constraint LDD_TO_PPDCG foreign key (LDD_ID)
     references LARGE_DEDUCTIBLE_DETAIL (LDD_ID)
     on delete restrict on update restrict;

ALTER TABLE POLICY_PERIOD_DEDUCTIBLE_AGG
add constraint PP_TO_PPDA foreign key (PLCY_PRD_ID)
     references POLICY_PERIOD (PLCY_PRD_ID)
     on delete restrict on update restrict;   
     
ALTER TABLE POLICY_PERIOD_DEDUCTIBLE_AGG
add constraint PPRE_TO_PPDA foreign key (PPRE_ID)
     references POLICY_PERIOD_RATING_ELEMENT (PPRE_ID)
     on delete restrict on update restrict;

ALTER TABLE POLICY_PERIOD_DEDUCTIBLE_AGG
add constraint LDD_TO_PPDA foreign key (LDD_ID)
     references LARGE_DEDUCTIBLE_DETAIL (LDD_ID)
     on delete restrict on update restrict;
     
     
     
ALTER TABLE INTERFACE_REQUEST_MAINT_TYP
add constraint IT_TO_IRMT foreign key (INTFC_TYP_CD)
     references INTERFACE_TYPE (INTFC_TYP_CD)
     on delete restrict on update restrict;

ALTER TABLE REQUEST_TYPE
add constraint RCT_TO_RT foreign key (REQS_CTG_TYP_CD)
     references REQUEST_CATEGORY_TYPE (REQS_CTG_TYP_CD)
     on delete restrict on update restrict;

ALTER TABLE REQUEST_APPLICATION_CNTX_XREF
add constraint RT_TO_RACX foreign key (REQS_TYP_CD)
     references REQUEST_TYPE (REQS_TYP_CD)
     on delete restrict on update restrict;

ALTER TABLE REQUEST_APPLICATION_CNTX_XREF
add constraint ACT_TO_RACX foreign key (APP_CNTX_TYP_CD)
     references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
     on delete restrict on update restrict;

ALTER TABLE LATE_PAYMENT_INTEREST_RATE
add constraint IST_TO_LPIR foreign key (INTE_SRC_TYP_CD)
     references INTEREST_SOURCE_TYPE (INTE_SRC_TYP_CD)
     on delete restrict on update restrict;

ALTER TABLE INSURANCE_COMPANY_ATTR_XREF
ADD CONSTRAINT ICT_TO_ICAX FOREIGN KEY (INS_CMPY_TYP_ID)
REFERENCES INSURANCE_COMPANY_TYPE (INS_CMPY_TYP_ID)
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE INSURANCE_COMPANY_ATTR_XREF
ADD CONSTRAINT ATTRT_TO_ICAX FOREIGN KEY (ATTR_TYP_CD)
REFERENCES ATTRIBUTE_TYPE (ATTR_TYP_CD)
ON DELETE RESTRICT ON UPDATE RESTRICT;

alter table POLICY_PERIOD_CONTRACTOR_DTL
   add constraint PP_TO_PPCD foreign key (PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_CONTRACTOR_DTL
   add constraint CUST_TO_PPCD foreign key (CNTRC_CUST_ID)
      references CUSTOMER (CUST_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_CONTRACTOR_DTL
   add constraint PLCYP_TO_PPCD foreign key (CNTRC_PLCY_PRD_ID)
      references POLICY_PERIOD (PLCY_PRD_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_CONTRACTOR_DTL
  add constraint CST_TO_PPCD foreign key (CNTRC_STS_TYP_CD)
       references CONTRACTOR_STATUS_TYPE (CNTRC_STS_TYP_CD)
   on delete restrict on update restrict;

alter table POLICY_PERIOD_CONTRACTOR_DTL
   add constraint WCS_TO_PPCD foreign key (WC_CLS_SUFX_ID)
      references WC_CLASS_SUFFIX (WC_CLS_SUFX_ID)
      on delete restrict on update restrict;

alter table POLICY_PERIOD_CONTRACTOR_DTL
   add constraint CLT_TO_PPCD foreign key (CNTRC_LBR_TYP_CD)
      references CONTRACTOR_LABOUR_TYPE (CNTRC_LBR_TYP_CD)
      on delete restrict on update restrict;

-- SNAP-5064

ALTER TABLE MESSAGE_TEMPLATE_RULE_XREF 
add constraint MSGT_TO_MTRX foreign key (MSG_TMPL_ID) 
	references MESSAGE_TEMPLATE (MSG_TMPL_ID)
	on delete restrict on update restrict;

ALTER TABLE RULE_CONDITION_ACTION_MSG_CD  
add constraint MSGT_TO_RCAMC foreign key (MSG_TMPL_ID) 
	references MESSAGE_TEMPLATE (MSG_TMPL_ID)
	on delete restrict on update restrict;
	
ALTER TABLE RULE_CONDITION_ACTION_MSG_CD  
add constraint PT_TO_RCAMC foreign key (PTCP_TYP_CD) 
	references PARTICIPATION_TYPE (PTCP_TYP_CD)
	on delete restrict on update restrict;

ALTER TABLE MESSAGE_RECIPIENT 
add constraint MSGT_TO_MR foreign key (MSG_TMPL_ID) 
	references MESSAGE_TEMPLATE (MSG_TMPL_ID)
 	on delete restrict on update restrict;
 	
ALTER TABLE MESSAGE_RECIPIENT 
add constraint PT_TO_MR foreign key (PTCP_TYP_CD) 
	references PARTICIPATION_TYPE (PTCP_TYP_CD)
 	on delete restrict on update restrict;

ALTER TABLE MESSAGE  
add constraint MSGT_TO_MSG foreign key (MSG_TMPL_ID)
     references MESSAGE_TEMPLATE (MSG_TMPL_ID) 
     on delete restrict on update restrict;

ALTER TABLE MESSAGE_TEMPLATE 
add constraint MT_TO_MSGT foreign key (MSG_TYP_CD)  
	references MESSAGE_TYPE (MSG_TYP_CD)  
	on delete restrict on update restrict;

ALTER TABLE MESSAGE_TEMPLATE  
add constraint MCT_TO_MSGT foreign key  (MSG_CTG_TYP_CD) 
	references MESSAGE_CATEGORY_TYPE (MSG_CTG_TYP_CD)
	on delete restrict on update restrict;
	
ALTER TABLE MESSAGE_TEMPLATE  
add constraint ACT_TO_MSGT foreign key  (APP_CNTX_TYP_CD) 
	references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
	on delete restrict on update restrict;
	
ALTER TABLE MESSAGE_TEMPLATE  
add constraint NTTC_TO_MSGT foreign key  (NOTE_TYP_TMPL_ID) 
	references NOTE_TYPE_TEMPLATE_CD (NOTE_TYP_TMPL_ID)
	on delete restrict on update restrict;

ALTER TABLE MESSAGE_USER 
add constraint MSG_TO_MU foreign key (MSG_ID)
	 references MESSAGE (MSG_ID)      
	 on delete restrict on update restrict;

ALTER TABLE MESSAGE_USER 
add constraint MSG_TO_USERS foreign key (USER_ID)
	 references USERS (USER_ID)      
	 on delete restrict on update restrict;

ALTER TABLE MESSAGE_CATEGORY_APP_CNTX_XREF 
add constraint MCT_MCACX foreign key (MSG_CTG_TYP_CD)
	 references MESSAGE_CATEGORY_TYPE (MSG_CTG_TYP_CD)      
	 on delete restrict on update restrict;
	 
ALTER TABLE MESSAGE_CATEGORY_APP_CNTX_XREF 
add constraint ACT_MCACX foreign key (APP_CNTX_TYP_CD)
	 references APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)      
	 on delete restrict on update restrict;

ALTER table MESSAGE_TMPL_APP_DTL_XREF
	add constraint NTTC_TO_MTADX foreign key (MSG_TYP_TMPL_ID)
	   references MESSAGE_TEMPLATE (MSG_TMPL_ID)
       on delete restrict on update restrict;
       
ALTER table MESSAGE_TMPL_APP_DTL_XREF
	add constraint ADL_TO_MTADX foreign key (APP_DTL_LVL_CD)
	   references APPLICATION_DETAIL_LEVEL (APP_DTL_LVL_CD)
       on delete restrict on update restrict;
       
ALTER table MESSAGE_APP_DETAIL_LEVEL
	add constraint PP_TO_MADL foreign key (PLCY_PRD_ID)
	   references POLICY_PERIOD (PLCY_PRD_ID)
       on delete restrict on update restrict;

alter table SECURITY_GROUP_RATING_ELE_XREF
   add constraint RET_SGREX foreign key (RT_ELEM_TYP_CD)
      references RATING_ELEMENT_TYPE (RT_ELEM_TYP_CD)
      on delete restrict on update restrict;

alter table SECURITY_GROUP_RATING_ELE_XREF
   add constraint PTC_SGREX foreign key (PRMSN_TYP_ID)
      references PERMISSION_TYPE_CD (PRMSN_TYP_ID)
      on delete restrict on update restrict;

alter table SECURITY_GROUP_RATING_ELE_XREF
   add constraint SGC_SGREX foreign key (SEC_GRP_CD)
      references SECURITY_GROUP_CD (SEC_GRP_CD)
      on delete restrict on update restrict;

alter table SECURITY_GROUP_RATING_ELE_XREF
     add constraint LMICJX_SGREX foreign key (LMICJX_ID)
            REFERENCES LOB_MRKT_INS_CMPY_JUR_XREF (LMICJX_ID)
            on delete restrict on update restrict;

alter table USER_RATING_ELEMENT_XREF
   add constraint RET_UREX foreign key (RT_ELEM_TYP_CD)
      references RATING_ELEMENT_TYPE (RT_ELEM_TYP_CD)
      on delete restrict on update restrict;

alter table USER_RATING_ELEMENT_XREF
   add constraint PTC_UREX foreign key (PRMSN_TYP_ID)
      references PERMISSION_TYPE_CD (PRMSN_TYP_ID)
      on delete restrict on update restrict;

alter table USER_RATING_ELEMENT_XREF
   add constraint U_UREX foreign key (USER_ID)
      references USERS (USER_ID)
      on delete restrict on update restrict;

alter table USER_RATING_ELEMENT_XREF
         add constraint LMICJX_UREX foreign key (LMICJX_ID)
                REFERENCES LOB_MRKT_INS_CMPY_JUR_XREF (LMICJX_ID)
                on delete restrict on update restrict;


Alter table POLICY_PRD_RT_ELEM_CNSN_TO_RT
add constraint PPRET_TO_WCPR foreign key (WC_CLS_PGM_TYP_CD)
references WC_CLASS_PROGRAM_TYPE (WC_CLS_PGM_TYP_CD)
on delete restrict on update restrict;

ALTER TABLE ECM_CTG_APP_CNTX_XREF ADD CONSTRAINT ACT_TO_ECACX FOREIGN KEY (APP_CNTX_TYP_CD)
REFERENCES APPLICATION_CONTEXT_TYPE (APP_CNTX_TYP_CD)
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ECM_CTG_APP_CNTX_XREF ADD CONSTRAINT ECT_TO_ECACX FOREIGN KEY (ECM_CTG_TYP_CD)
REFERENCES ECM_CATEGORY_TYPE (ECM_CTG_TYP_CD)
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ECM_CTG_ECM_DOCM_XREF ADD CONSTRAINT EDT_TO_ECEDX FOREIGN KEY (ECM_DOCM_TYP_CD)
REFERENCES ECM_DOCUMENT_TYPE (ECM_DOCM_TYP_CD)
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE ECM_CTG_ECM_DOCM_XREF ADD CONSTRAINT ECT_TO_ECEDX FOREIGN KEY (ECM_CTG_TYP_CD)
REFERENCES ECM_CATEGORY_TYPE (ECM_CTG_TYP_CD)
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE BATCH_DOCUMENT_DELIVERY_STG
ADD CONSTRAINT DR_TO_BDDS FOREIGN KEY (DOCM_RECIP_ID)
REFERENCES DOCUMENT_RECIPIENT (DOCM_RECIP_ID)
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE BATCH_DOCUMENT_DELIVERY_STG
ADD CONSTRAINT DOCM_TO_BDDS FOREIGN KEY (DOCM_ID)
REFERENCES DOCUMENT (DOCM_ID)
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE BATCH_MAIL_DOCUMENT_DLVR_STG
ADD CONSTRAINT DR_TO_BMDDS FOREIGN KEY (DOCM_RECIP_ID)
REFERENCES DOCUMENT_RECIPIENT (DOCM_RECIP_ID)
ON DELETE RESTRICT ON UPDATE RESTRICT;


ALTER TABLE PLCY_FNCL_TRAN_PLCY_INVC_FNCL_TRAN_XREF
  ADD CONSTRAINT PFT_TO_PFTPIFTX FOREIGN KEY (PFT_ID)
       REFERENCES POLICY_FINANCIAL_TRANSACTION (PFT_ID)
       ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PLCY_FNCL_TRAN_PLCY_INVC_FNCL_TRAN_XREF
ADD CONSTRAINT FTT_TO_PFTPIFTX FOREIGN KEY (FNCL_TRAN_TYP_ID)
   REFERENCES FINANCIAL_TRANSACTION_TYPE (FNCL_TRAN_TYP_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE PLCY_FNCL_TRAN_PLCY_INVC_FNCL_TRAN_XREF
  ADD CONSTRAINT PI_TO_PFTPIFTX FOREIGN KEY (PLCY_INVC_ID)
       REFERENCES POLICY_INVOICE (PLCY_INVC_ID)
       ON DELETE RESTRICT ON UPDATE RESTRICT;
       
alter table POLICY_PERIOD_LOC_GRP_PREM_DRV
add constraint JT_TO_PPLGPD foreign key (JUR_TYP_CD)
   references JURISDICTION_TYPE (JUR_TYP_CD)
   on delete restrict on update restrict;

alter table POLICY_PERIOD_LOC_GRP_PREM_DRV
add constraint PLCYP_TO_PPLGPD foreign key (PLCY_PRD_ID)
   references POLICY_PERIOD (PLCY_PRD_ID)
   on delete restrict on update restrict;

alter table POLICY_PERIOD_LOC_GRP_PREM_DRV
add constraint PPG_TO_PPLGPD foreign key (PLCY_PRD_GRP_ID)
   references POLICY_PERIOD_GROUP (PLCY_PRD_GRP_ID)
   on delete restrict on update restrict;

alter table POLICY_PERIOD_LOC_GRP_PREM_DRV
add constraint PREMT_TO_PPLGPD foreign key (PREM_TYP_CD)
   references PREMIUM_TYPE (PREM_TYP_CD)
   on delete restrict on update restrict;

alter table POLICY_PERIOD_LOC_GRP_PREM_DRV
add constraint RTET_TO_PPLGPD foreign key (RT_ELEM_TYP_CD)
   references RATING_ELEMENT_TYPE (RT_ELEM_TYP_CD)
   on delete restrict on update restrict;

alter table POLICY_PERIOD_LOC_GRP_PREM_DRV
add constraint USER_TO_PPLGPD1 foreign key (AUDIT_USER_ID_CREA)
   references USERS (USER_ID)
   on delete restrict on update restrict;

alter table POLICY_PERIOD_LOC_GRP_PREM_DRV
add constraint USER_TO_PPLGPD2 foreign key (AUDIT_USER_ID_UPDT)
   references USERS (USER_ID)
   on delete restrict on update restrict;

alter table PLCY_PREM_PRD_LOC_GRP_PREM_DRV
add constraint PR_TO_PPPLGPD foreign key (PYRL_RPT_ID)
   references PAYROLL_REPORT (PYRL_RPT_ID)
   on delete restrict on update restrict;
   
alter table PLCY_PREM_PRD_LOC_GRP_PREM_DRV
add constraint JT_TO_PPPLGPD foreign key (JUR_TYP_CD)
   references JURISDICTION_TYPE (JUR_TYP_CD)
   on delete restrict on update restrict;

alter table PLCY_PREM_PRD_LOC_GRP_PREM_DRV
add constraint PREMP_TO_PPPLGPD foreign key (PREM_PRD_ID)
   references PREMIUM_PERIOD (PREM_PRD_ID)
   on delete restrict on update restrict;

alter table PLCY_PREM_PRD_LOC_GRP_PREM_DRV
add constraint PPG_TO_PPPLGPD foreign key (PLCY_PRD_GRP_ID)
   references POLICY_PERIOD_GROUP (PLCY_PRD_GRP_ID)
   on delete restrict on update restrict;

alter table PLCY_PREM_PRD_LOC_GRP_PREM_DRV
add constraint PREMT_TO_PPPLGPD foreign key (PREM_TYP_CD)
   references PREMIUM_TYPE (PREM_TYP_CD)
   on delete restrict on update restrict;

alter table PLCY_PREM_PRD_LOC_GRP_PREM_DRV
add constraint RTET_TO_PPPLGPD foreign key (RT_ELEM_TYP_CD)
   references RATING_ELEMENT_TYPE (RT_ELEM_TYP_CD)
   on delete restrict on update restrict;

alter table PLCY_PREM_PRD_LOC_GRP_PREM_DRV
add constraint USER_TO_PPPLGPD1 foreign key (AUDIT_USER_ID_CREA)
   references USERS (USER_ID)
   on delete restrict on update restrict;

alter table PLCY_PREM_PRD_LOC_GRP_PREM_DRV
add constraint USER_TO_PPPLGPD2 foreign key (AUDIT_USER_ID_UPDT)
   references USERS (USER_ID)
   on delete restrict on update restrict;      

alter table RT_ELEM_LOC_GRP_PREM_DRV_RL
add constraint RTET_TO_RELGPDR foreign key (RT_ELEM_TYP_CD)
   references RATING_ELEMENT_TYPE (RT_ELEM_TYP_CD)
   on delete restrict on update restrict;

alter table RT_ELEM_LOC_GRP_PREM_DRV_RL
add constraint JT_TO_RELGPDR foreign key (JUR_TYP_CD)
   references JURISDICTION_TYPE (JUR_TYP_CD)
   on delete restrict on update restrict;

alter table POLICY_PRD_LOC_GRP_ACCT_TRAN
add constraint ATT_TO_PPLGAT foreign key (ACCT_TRAN_TYP_CD)
   references ACCOUNTING_TRANSACTION_TYPE (ACCT_TRAN_TYP_CD)
   on delete restrict on update restrict; 
   
alter table POLICY_PRD_LOC_GRP_ACCT_TRAN 
add constraint PLCYP_TO_PPLGAT foreign key (PLCY_PRD_ID)
   references POLICY_PERIOD (PLCY_PRD_ID)
   on delete restrict on update restrict;  
   
alter table POLICY_PRD_LOC_GRP_ACCT_TRAN
add constraint USER_TO_PPLGAT1 foreign key (AUDIT_USER_ID_CREA)
   references USERS (USER_ID)
   on delete restrict on update restrict;
   
alter table POLICY_PRD_LOC_GRP_ACCT_TRAN
add constraint USER_TO_PPLGAT2 foreign key (AUDIT_USER_ID_UPDT)
   references USERS (USER_ID)
   on delete restrict on update restrict;    
   
alter table POLICY_PRD_LOC_GRP_ACCT_TRAN
add constraint JT_TO_PPLGAT foreign key (JUR_TYP_CD)
   references JURISDICTION_TYPE (JUR_TYP_CD)
   on delete restrict on update restrict;    

alter table POLICY_PRD_LOC_GRP_ACCT_TRAN 
add constraint PPG_TO_PPLGAT foreign key (PLCY_PRD_GRP_ID)
   references POLICY_PERIOD_GROUP (PLCY_PRD_GRP_ID)
   on delete restrict on update restrict;

alter table POLICY_PERIOD_LOC_GRP_LOSS_RT
add constraint PLCYP_TO_PPLGLR foreign key (PLCY_PRD_ID)
   references POLICY_PERIOD (PLCY_PRD_ID)
   on delete restrict on update restrict;

alter table POLICY_PERIOD_LOC_GRP_LOSS_RT
add constraint PPG_TO_PPLGLR foreign key (PLCY_PRD_GRP_ID)
   references POLICY_PERIOD_GROUP (PLCY_PRD_GRP_ID)
   on delete restrict on update restrict;

alter table POLICY_PERIOD_LOC_GRP_LOSS_RT
add constraint USER_TO_PPLGLR1 foreign key (AUDIT_USER_ID_CREA)
   references USERS (USER_ID)
   on delete restrict on update restrict;
   
alter table POLICY_PERIOD_LOC_GRP_LOSS_RT
add constraint USER_TO_PPLGLR2 foreign key (AUDIT_USER_ID_UPDT)
   references USERS (USER_ID)
   on delete restrict on update restrict; 

alter table POLICY_PERIOD_LOC_GRP_DEPS
add constraint PLCYP_TO_PPLGD foreign key (PLCY_PRD_ID)
   references POLICY_PERIOD (PLCY_PRD_ID)
   on delete restrict on update restrict;

alter table POLICY_PERIOD_LOC_GRP_DEPS
add constraint PPG_TO_PPLGD foreign key (PLCY_PRD_GRP_ID)
   references POLICY_PERIOD_GROUP (PLCY_PRD_GRP_ID)
   on delete restrict on update restrict;

alter table POLICY_PERIOD_LOC_GRP_DEPS
add constraint USER_TO_PPLGD1 foreign key (AUDIT_USER_ID_CREA)
   references USERS (USER_ID)
   on delete restrict on update restrict;

alter table POLICY_PERIOD_LOC_GRP_DEPS
add constraint USER_TO_PPLGD2 foreign key (AUDIT_USER_ID_UPDT)
   references USERS (USER_ID)
   on delete restrict on update restrict;

alter table PLCY_PRD_LOC_GRP_DEPS_HIST
add constraint PLCYP_TO_PPLGDH foreign key (PLCY_PRD_ID)
   references POLICY_PERIOD (PLCY_PRD_ID)
   on delete restrict on update restrict;

alter table PLCY_PRD_LOC_GRP_DEPS_HIST
add constraint PPG_TO_PPLGDH foreign key (PLCY_PRD_GRP_ID)
   references POLICY_PERIOD_GROUP (PLCY_PRD_GRP_ID)
   on delete restrict on update restrict;

alter table PLCY_PRD_LOC_GRP_DEPS_HIST
add constraint USER_TO_PPLGDH1 foreign key (AUDIT_USER_ID_CREA)
   references USERS (USER_ID)
   on delete restrict on update restrict;

alter table PLCY_PRD_LOC_GRP_DEPS_HIST
add constraint USER_TO_PPLGDH2 foreign key (AUDIT_USER_ID_UPDT)
   references USERS (USER_ID)
   on delete restrict on update restrict;

alter table POLICY_PRD_LOC_GRP_EARN_PREM
add constraint PLCYP_TO_PPLGEP foreign key (PLCY_PRD_ID)
   references POLICY_PERIOD (PLCY_PRD_ID)
   on delete restrict on update restrict;

ALTER TABLE POLICY_PRD_LOC_GRP_EARN_PREM
ADD CONSTRAINT USER_TO_PPLGEP1 FOREIGN KEY (AUDIT_USER_ID_CREA )
   REFERENCES USERS (USER_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE POLICY_PRD_LOC_GRP_EARN_PREM
ADD CONSTRAINT USER_TO_PPLGEP2 FOREIGN KEY (AUDIT_USER_ID_UPDT)
   REFERENCES USERS (USER_ID)
  ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE POLICY_PRD_LOC_GRP_EARN_PREM
ADD CONSTRAINT JT_TO_PPLGEP foreign key (JUR_TYP_CD)
   REFERENCES JURISDICTION_TYPE (JUR_TYP_CD)
   ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE POLICY_PRD_LOC_GRP_EARN_PREM
ADD CONSTRAINT PPG_TO_PPLGEP foreign key (PLCY_PRD_GRP_ID)
   REFERENCES POLICY_PERIOD_GROUP (PLCY_PRD_GRP_ID)
   ON DELETE RESTRICT ON UPDATE RESTRICT;
