.class public Lcom/android/server/enterprise/auditlog/AuditLogService;
.super Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;
.source "AuditLogService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final AUDIT_LOG_SERVICE:Ljava/lang/String; = "AuditLogService"

.field private static final TAG:Ljava/lang/String; = "AuditLogService"

.field private static final UID_AUDITD:I = 0x7cf

.field private static final swComponentWhitelist:[Ljava/lang/String;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContainerOwnerCache:Landroid/content/ContentValues;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

.field private volatile mIsBootCompleted:Z

.field private mLinkedHashMap:Ljava/util/Map;

.field private final mPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 80
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SKMM"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "KeyStore"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "keystore"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AndroidKeyPairGenerator"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "OkHostnameVerifier"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "OpenSSLSocketImpl"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "OpenSSLRandom"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "PKIXRevocationChecker"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Connection"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SocketConnector"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CertPathValidator"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "ecryptfs"

    aput-object v2, v0, v1

    sput-object v0, swComponentWhitelist:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/sec/enterprise/knox/auditlog/IAuditLog$Stub;-><init>()V

    .line 142
    new-instance v4, Lcom/android/server/enterprise/auditlog/AuditLogService$1;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/auditlog/AuditLogService$1;-><init>(Lcom/android/server/enterprise/auditlog/AuditLogService;)V

    iput-object v4, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 113
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 114
    new-instance v4, Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-direct {v4}, Lcom/android/server/enterprise/auditlog/IptablesLogging;-><init>()V

    iput-object v4, p0, mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    .line 115
    const/4 v4, 0x0

    iput-boolean v4, p0, mIsBootCompleted:Z

    .line 116
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, mLinkedHashMap:Ljava/util/Map;

    .line 117
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iput-object v4, p0, mContainerOwnerCache:Landroid/content/ContentValues;

    .line 118
    invoke-direct {p0}, createAdmins()V

    .line 119
    const-string v4, "(^Admin) ([0-9]+) (.*$)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iput-object v4, p0, mPattern:Ljava/util/regex/Pattern;

    .line 120
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v4

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/auditlog/InformFailure;->setContext(Landroid/content/Context;)V

    .line 122
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .local v1, "IFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v4, "android.intent.action.REBOOT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v4, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    const/4 v2, 0x0

    .line 129
    .local v2, "admin":Lcom/android/server/enterprise/auditlog/Admin;
    iget-object v5, p0, mLinkedHashMap:Ljava/util/Map;

    monitor-enter v5

    .line 131
    :try_start_64
    iget-object v4, p0, mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 132
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/Admin;>;"
    :cond_6e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_87

    .line 133
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v2, v0

    .line 134
    invoke-virtual {v2}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 135
    iget-object v4, p0, mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-virtual {v4}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->turnNetworkLogOn()V

    .line 139
    :cond_87
    monitor-exit v5

    .line 140
    return-void

    .line 139
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/enterprise/auditlog/Admin;>;"
    :catchall_89
    move-exception v4

    monitor-exit v5
    :try_end_8b
    .catchall {:try_start_64 .. :try_end_8b} :catchall_89

    throw v4
.end method

.method private AuditLoggerInternal(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 31
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "pid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;
    .param p8, "userId"    # I
    .param p9, "asUser"    # Z

    .prologue
    .line 964
    if-nez p9, :cond_4a

    .line 965
    invoke-direct/range {p0 .. p0}, checkIptablesEnabledForAdmins()Z

    move-result v17

    .line 966
    .local v17, "isIptablesNeeded":Z
    if-eqz p1, :cond_144

    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 967
    .local v15, "callingUid":I
    :goto_c
    const/16 v16, 0x0

    .line 972
    .local v16, "isChangedByIptables":Z
    if-eqz v17, :cond_14a

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2}, isIptablesMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14a

    .line 973
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, getCorrectUserForIptables(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p8

    .line 975
    const/16 v16, 0x1

    .line 976
    const-string v4, "IPT_MDM_LOG"

    const-string v5, "IPT_MDM_LOG "

    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p7

    .line 990
    :goto_34
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-eq v4, v5, :cond_46

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    move/from16 v0, p5

    if-ne v0, v4, :cond_4a

    :cond_46
    if-nez v16, :cond_4a

    .line 992
    const/16 p8, -0x1

    .line 999
    .end local v15    # "callingUid":I
    .end local v16    # "isChangedByIptables":Z
    .end local v17    # "isIptablesNeeded":Z
    :cond_4a
    move-object/from16 v0, p0

    iget-object v4, v0, mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_154

    .line 1000
    move-object/from16 v0, p0

    iget-object v4, v0, mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    .line 1001
    .local v14, "c":Ljava/util/Collection;
    const/4 v12, 0x0

    .line 1002
    .local v12, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    move-object/from16 v0, p0

    iget-object v0, v0, mLinkedHashMap:Ljava/util/Map;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1003
    :try_start_64
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 1004
    .local v18, "it":Ljava/util/Iterator;
    :cond_68
    :goto_68
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_153

    .line 1005
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v12, v0

    .line 1006
    invoke-virtual {v12}, Lcom/android/server/enterprise/auditlog/Admin;->getUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 1009
    .local v13, "adminUserId":I
    const/4 v4, -0x1

    move/from16 v0, p8

    if-eq v0, v4, :cond_9f

    if-nez v13, :cond_8b

    const/16 v4, 0x64

    move/from16 v0, p8

    if-lt v0, v4, :cond_9f

    :cond_8b
    move/from16 v0, p8

    if-ne v13, v0, :cond_91

    if-nez v13, :cond_9f

    :cond_91
    invoke-virtual {v12}, Lcom/android/server/enterprise/auditlog/Admin;->getUid()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-direct {v0, v1, v4}, checkOwnContainerOrSelf(II)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 1017
    :cond_9f
    invoke-virtual {v12}, Lcom/android/server/enterprise/auditlog/Admin;->getAuditLogRulesInfo()Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    move-result-object v5

    move-object/from16 v4, p0

    move/from16 v6, p2

    move/from16 v7, p4

    move/from16 v8, p3

    move-object/from16 v9, p6

    move/from16 v10, p8

    move-object/from16 v11, p7

    invoke-direct/range {v4 .. v12}, filterLoggingMessage(Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;IZILjava/lang/String;ILjava/lang/String;Lcom/android/server/enterprise/auditlog/Admin;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 1019
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 1020
    .local v19, "messageBuilder":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1021
    const-string v4, " "

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1023
    const-string v4, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1025
    const-string v4, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_150

    const-string v4, "1"

    :goto_f4
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    const-string v4, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    move-object/from16 v0, v19

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1029
    const-string v4, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    move-object/from16 v0, v19

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1031
    const-string v4, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    move-object/from16 v0, v19

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    const-string v4, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    const-string v4, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/server/enterprise/auditlog/Admin;->write(Ljava/lang/String;)V

    goto/16 :goto_68

    .line 1040
    .end local v13    # "adminUserId":I
    .end local v18    # "it":Ljava/util/Iterator;
    .end local v19    # "messageBuilder":Ljava/lang/StringBuilder;
    :catchall_141
    move-exception v4

    monitor-exit v20
    :try_end_143
    .catchall {:try_start_64 .. :try_end_143} :catchall_141

    throw v4

    .line 966
    .end local v12    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v14    # "c":Ljava/util/Collection;
    .restart local v17    # "isIptablesNeeded":Z
    :cond_144
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    goto/16 :goto_c

    .line 984
    .restart local v15    # "callingUid":I
    .restart local v16    # "isChangedByIptables":Z
    :cond_14a
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p8

    goto/16 :goto_34

    .line 1026
    .end local v15    # "callingUid":I
    .end local v16    # "isChangedByIptables":Z
    .end local v17    # "isIptablesNeeded":Z
    .restart local v12    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .restart local v13    # "adminUserId":I
    .restart local v14    # "c":Ljava/util/Collection;
    .restart local v18    # "it":Ljava/util/Iterator;
    .restart local v19    # "messageBuilder":Ljava/lang/StringBuilder;
    :cond_150
    :try_start_150
    const-string v4, "0"

    goto :goto_f4

    .line 1040
    .end local v13    # "adminUserId":I
    .end local v19    # "messageBuilder":Ljava/lang/StringBuilder;
    :cond_153
    monitor-exit v20
    :try_end_154
    .catchall {:try_start_150 .. :try_end_154} :catchall_141

    .line 1042
    .end local v12    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v14    # "c":Ljava/util/Collection;
    .end local v18    # "it":Ljava/util/Iterator;
    :cond_154
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/auditlog/AuditLogService;

    .prologue
    .line 75
    iget-object v0, p0, mLinkedHashMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/auditlog/AuditLogService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/auditlog/AuditLogService;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, mIsBootCompleted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/auditlog/AuditLogService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/auditlog/AuditLogService;

    .prologue
    .line 75
    invoke-direct {p0}, updateEDMNativeHelperStatus()V

    return-void
.end method

.method private appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 928
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 929
    .local v5, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 930
    .local v4, "callingPid":I
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 931
    .local v3, "callingPackageFromUid":Ljava/lang/String;
    const/4 v2, 0x0

    .line 932
    .local v2, "callingPackage":Ljava/lang/String;
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string v12, "activity"

    invoke-virtual {v9, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 934
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_4d

    .line 935
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 936
    .local v10, "token":J
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 938
    .local v1, "appProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :try_start_28
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_48

    move-result-object v1

    .line 940
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 942
    if-eqz v1, :cond_4d

    .line 943
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_35
    :goto_35
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 944
    .local v8, "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v9, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v9, :cond_35

    .line 945
    iget-object v2, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_35

    .line 940
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catchall_48
    move-exception v9

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 948
    .end local v1    # "appProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v10    # "token":J
    :cond_4d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 949
    .local v7, "messageBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    const-string v9, "\n[logged by: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    const-string v9, ", pid: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 956
    const-string v9, "]"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method private checkAuditPrivilegedAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "swComponent"    # Ljava/lang/String;
    .param p2, "logMessage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 906
    invoke-virtual {p0}, isAuditServiceRunning()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 908
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 909
    :cond_13
    const-string v5, "AuditLogService"

    const-string v6, "Error: Invalid auditlog parameters!"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    :cond_1a
    :goto_1a
    return v0

    .line 913
    :cond_1b
    const/4 v0, 0x0

    .line 914
    .local v0, "allowed":Z
    sget-object v1, swComponentWhitelist:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_20
    if-ge v2, v3, :cond_1a

    aget-object v4, v1, v2

    .line 915
    .local v4, "swComponentAllowed":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 916
    const/4 v0, 0x1

    .line 917
    goto :goto_1a

    .line 914
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_20
.end method

.method private checkIptablesEnabledForAdmins()Z
    .registers 10

    .prologue
    .line 747
    iget-object v7, p0, mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 748
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 749
    .local v3, "isIptablesLogsEnabled":Z
    const/4 v1, 0x0

    .line 750
    .local v1, "isAuditEnabled":Z
    const/4 v5, 0x0

    .line 751
    .local v5, "ret":Z
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 752
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 753
    .local v6, "uid":I
    iget-object v7, p0, mLinkedHashMap:Ljava/util/Map;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 754
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v2

    .line 755
    .local v2, "isIptablesEnables":Z
    move v3, v2

    .line 756
    invoke-direct {p0, v6}, isAuditLogEnabledInternal(I)Z

    move-result v1

    .line 757
    if-eqz v3, :cond_3a

    if-eqz v1, :cond_3a

    const/4 v7, 0x1

    :goto_38
    or-int/2addr v5, v7

    .line 758
    goto :goto_d

    .line 757
    :cond_3a
    const/4 v7, 0x0

    goto :goto_38

    .line 759
    .end local v0    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v2    # "isIptablesEnables":Z
    .end local v6    # "uid":I
    :cond_3c
    return v5
.end method

.method private checkKernelEnabledForAdmins()Z
    .registers 8

    .prologue
    .line 729
    iget-object v6, p0, mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 730
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 731
    .local v1, "isKernelEnabled":Z
    const/4 v0, 0x0

    .line 732
    .local v0, "isAuditEnabled":Z
    const/4 v3, 0x0

    .line 733
    .local v3, "ret":Z
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 734
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 735
    .local v5, "uid":I
    invoke-direct {p0, v5}, getRulesInfoFromDB(I)Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    move-result-object v4

    .line 736
    .local v4, "rulesInfo":Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
    invoke-virtual {v4}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->isKernelLogsEnabled()Z

    move-result v1

    .line 737
    invoke-direct {p0, v5}, isAuditLogEnabledInternal(I)Z

    move-result v0

    .line 738
    if-eqz v1, :cond_30

    if-eqz v0, :cond_30

    const/4 v6, 0x1

    :goto_2e
    or-int/2addr v3, v6

    .line 739
    goto :goto_d

    .line 738
    :cond_30
    const/4 v6, 0x0

    goto :goto_2e

    .line 740
    .end local v4    # "rulesInfo":Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
    .end local v5    # "uid":I
    :cond_32
    return v3
.end method

.method private checkOwnContainerOrSelf(II)Z
    .registers 11
    .param p1, "containerId"    # I
    .param p2, "adminUid"    # I

    .prologue
    const/4 v4, 0x1

    .line 1045
    const/16 v5, 0x64

    if-lt p1, v5, :cond_57

    .line 1047
    iget-object v5, p0, mContainerOwnerCache:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1048
    iget-object v5, p0, mContainerOwnerCache:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1051
    .local v3, "ownerUid":I
    if-ne v3, p2, :cond_22

    .line 1079
    .end local v3    # "ownerUid":I
    :cond_21
    :goto_21
    return v4

    .line 1055
    .restart local v3    # "ownerUid":I
    :cond_22
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1056
    .local v2, "ownerAppId":I
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1057
    .local v0, "adminAppId":I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1058
    .local v1, "adminUserId":I
    if-ne v2, v0, :cond_32

    if-eq p1, v1, :cond_21

    .line 1064
    .end local v0    # "adminAppId":I
    .end local v1    # "adminUserId":I
    .end local v2    # "ownerAppId":I
    .end local v3    # "ownerUid":I
    :cond_32
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v3

    .line 1065
    .restart local v3    # "ownerUid":I
    iget-object v5, p0, mContainerOwnerCache:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1067
    if-eq v3, p2, :cond_21

    .line 1071
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1072
    .restart local v2    # "ownerAppId":I
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1073
    .restart local v0    # "adminAppId":I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1074
    .restart local v1    # "adminUserId":I
    if-ne v2, v0, :cond_57

    if-eq p1, v1, :cond_21

    .line 1079
    .end local v0    # "adminAppId":I
    .end local v1    # "adminUserId":I
    .end local v2    # "ownerAppId":I
    .end local v3    # "ownerUid":I
    :cond_57
    const/4 v4, 0x0

    goto :goto_21
.end method

.method private createAdmins()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 223
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "AUDITLOG"

    invoke-virtual {v6, v7, v8, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 226
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v1, 0x0

    .line 227
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 228
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a3

    .line 229
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 230
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v6, "adminUid"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 231
    .local v5, "uid":I
    const-string v6, "auditLogEnabled"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 232
    new-instance v0, Lcom/android/server/enterprise/auditlog/Admin;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, getAdminPackageNameForUid(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v5, v6, v7}, Lcom/android/server/enterprise/auditlog/Admin;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    .line 233
    .local v0, "admin":Lcom/android/server/enterprise/auditlog/Admin;
    const-string v6, "auditCriticalSize"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/auditlog/Admin;->setCriticalLogSize(I)V

    .line 234
    const-string v6, "auditMaximumSize"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/auditlog/Admin;->setMaximumLogSize(I)V

    .line 235
    const-string v6, "auditLogIptables"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/auditlog/Admin;->setIptablesLogging(Z)V

    .line 236
    const-string v6, "auditLogMDM"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/auditlog/Admin;->setMDMLogging(Z)V

    .line 237
    const-string v6, "auditLogBufferSize"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/android/server/enterprise/auditlog/Admin;->setBufferSize(J)V

    .line 239
    invoke-direct {p0, v1}, extractRulesFromCv(Landroid/content/ContentValues;)Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/auditlog/Admin;->setAuditLogRulesInfo(Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)V

    .line 241
    iget-object v6, p0, mLinkedHashMap:Ljava/util/Map;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-direct {p0}, getDeviceInfo()Ljava/util/List;

    move-result-object v4

    .line 243
    .local v4, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/auditlog/Admin;->setDeviceInfo(Ljava/util/List;)V

    goto/16 :goto_e

    .line 246
    .end local v0    # "admin":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v4    # "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "uid":I
    :cond_a3
    return-void
.end method

.method private enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 569
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceLoggerPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 561
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private extractRulesFromCv(Landroid/content/ContentValues;)Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
    .registers 16
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 249
    new-instance v7, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    invoke-direct {v7}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;-><init>()V

    .line 250
    .local v7, "rulesInfo":Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
    if-eqz p1, :cond_87

    .line 251
    const-string v12, "auditLogRuleSeverity"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 252
    .local v9, "severityRule":I
    const-string v12, "auditLogRuleOutcome"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 253
    .local v6, "outcomeRule":I
    const-string v12, "auditLogKernelEnabled"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    const-string/jumbo v13, "true"

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 255
    .local v1, "enableKernelLogs":Z
    const-string v12, "auditLogRuleGroups"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "groupsRuleString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 257
    .local v2, "groupsRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_50

    .line 258
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "groupsRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .restart local v2    # "groupsRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v12, ","

    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_42
    if-ge v4, v5, :cond_50

    aget-object v8, v0, v4

    .line 260
    .local v8, "s":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 264
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_50
    const-string v12, "auditLogRuleUsers"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 265
    .local v11, "usersRuleString":Ljava/lang/String;
    const/4 v10, 0x0

    .line 266
    .local v10, "usersRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_78

    .line 267
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "usersRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .restart local v10    # "usersRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_6a
    if-ge v4, v5, :cond_78

    aget-object v8, v0, v4

    .line 269
    .restart local v8    # "s":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v4, v4, 0x1

    goto :goto_6a

    .line 273
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_78
    invoke-virtual {v7, v9}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->setSeverityRule(I)V

    .line 274
    invoke-virtual {v7, v6}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->setOutcomeRule(I)V

    .line 275
    invoke-virtual {v7, v2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->setGroupsRule(Ljava/util/List;)V

    .line 276
    invoke-virtual {v7, v1}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->setKernelLogsEnabled(Z)V

    .line 277
    invoke-virtual {v7, v10}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->setUsersRule(Ljava/util/List;)V

    .line 279
    .end local v1    # "enableKernelLogs":Z
    .end local v2    # "groupsRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "groupsRuleString":Ljava/lang/String;
    .end local v6    # "outcomeRule":I
    .end local v9    # "severityRule":I
    .end local v10    # "usersRule":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "usersRuleString":Ljava/lang/String;
    :cond_87
    return-object v7
.end method

.method private filterByGroup(ILcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)Z
    .registers 5
    .param p1, "group"    # I
    .param p2, "auditLogRulesInfo"    # Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    .prologue
    .line 1355
    invoke-virtual {p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1358
    :cond_1e
    const/4 v0, 0x1

    .line 1360
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private filterByOutcome(ZLcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)Z
    .registers 6
    .param p1, "outcome"    # Z
    .param p2, "auditLogRulesInfo"    # Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    .prologue
    const/4 v0, 0x1

    .line 1343
    invoke-virtual {p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_18

    if-ne p1, v0, :cond_10

    invoke-virtual {p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v1

    if-eq v1, v0, :cond_18

    :cond_10
    if-nez p1, :cond_19

    invoke-virtual {p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v1

    if-nez v1, :cond_19

    .line 1350
    :cond_18
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private filterBySeverity(ILcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)Z
    .registers 4
    .param p1, "severityGrade"    # I
    .param p2, "auditLogRulesInfo"    # Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    .prologue
    .line 1336
    invoke-virtual {p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getSeverityRule()I

    move-result v0

    if-gt p1, v0, :cond_8

    .line 1337
    const/4 v0, 0x1

    .line 1339
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private filterByUser(ILcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "auditLogRulesInfo"    # Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    .prologue
    .line 1364
    invoke-virtual {p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, -0x1

    if-ne p1, v0, :cond_23

    .line 1368
    :cond_21
    const/4 v0, 0x1

    .line 1370
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private filterKernel(Ljava/lang/String;Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;Ljava/lang/String;Lcom/android/server/enterprise/auditlog/Admin;)Z
    .registers 8
    .param p1, "swComponent"    # Ljava/lang/String;
    .param p2, "auditLogRulesInfo"    # Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
    .param p3, "logMessage"    # Ljava/lang/String;
    .param p4, "admin"    # Lcom/android/server/enterprise/auditlog/Admin;

    .prologue
    const/4 v1, 0x1

    .line 1381
    const-string v2, "KERNEL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1385
    const-string v2, "IPT"

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1386
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_19

    .line 1387
    invoke-virtual {p4}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1400
    .end local v0    # "index":I
    :cond_18
    :goto_18
    return v1

    .line 1390
    .restart local v0    # "index":I
    :cond_19
    invoke-virtual {p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->isKernelLogsEnabled()Z

    move-result v2

    if-nez v2, :cond_18

    .line 1400
    :cond_1f
    const/4 v1, 0x0

    goto :goto_18
.end method

.method private filterLoggingMessage(Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;IZILjava/lang/String;ILjava/lang/String;Lcom/android/server/enterprise/auditlog/Admin;)Z
    .registers 10
    .param p1, "auditLogRulesInfo"    # Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
    .param p2, "severityGrade"    # I
    .param p3, "outcome"    # Z
    .param p4, "group"    # I
    .param p5, "swComponent"    # Ljava/lang/String;
    .param p6, "userId"    # I
    .param p7, "logMessage"    # Ljava/lang/String;
    .param p8, "admin"    # Lcom/android/server/enterprise/auditlog/Admin;

    .prologue
    .line 1322
    invoke-direct {p0, p2, p1}, filterBySeverity(ILcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0, p3, p1}, filterByOutcome(ZLcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0, p4, p1}, filterByGroup(ILcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0, p6, p1}, filterByUser(ILcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0, p5, p1, p7, p8}, filterKernel(Ljava/lang/String;Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;Ljava/lang/String;Lcom/android/server/enterprise/auditlog/Admin;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1327
    const/4 v0, 0x1

    .line 1329
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private getAdminPackageNameForUid(I)Ljava/lang/String;
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 1307
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1308
    .local v0, "appUid":I
    const/16 v2, 0x3e8

    if-eq p1, v2, :cond_13

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_10

    const/16 v2, 0x4e1f

    if-le v0, v2, :cond_13

    .line 1309
    :cond_10
    const-string v1, "com.sec.enterprise.knox.cloudmdm.smdms"

    .line 1316
    :cond_12
    :goto_12
    return-object v1

    .line 1312
    :cond_13
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 1313
    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_12

    .line 1314
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_12
.end method

.method private getCorrectUserForIptables(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9
    .param p1, "swComponent"    # Ljava/lang/String;
    .param p2, "logMessage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 1407
    const-string v3, "UID="

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1408
    .local v1, "init":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_24

    .line 1409
    move v0, v1

    .line 1410
    .local v0, "end":I
    :goto_a
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_15

    .line 1411
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1413
    :cond_15
    add-int/lit8 v3, v1, 0x4

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1414
    .local v2, "uid":I
    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_25

    .line 1415
    const/4 p3, -0x1

    .line 1420
    .end local v0    # "end":I
    .end local v2    # "uid":I
    :cond_24
    :goto_24
    return p3

    .line 1417
    .restart local v0    # "end":I
    .restart local v2    # "uid":I
    :cond_25
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    goto :goto_24
.end method

.method private getDeviceInfo()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getDeviceInventory()Landroid/app/enterprise/DeviceInventory;

    move-result-object v1

    .line 195
    .local v1, "deviceInventory":Landroid/app/enterprise/DeviceInventory;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v3, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, " -----------------------------------------\n"

    .line 198
    .local v2, "separator":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OEM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/enterprise/DeviceInventory;->getDeviceMaker()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEVICE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/enterprise/DeviceInventory;->getModelNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PLATFORM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/enterprise/DeviceInventory;->getDevicePlatform()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/enterprise/DeviceInventory;->getDeviceOS()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OS VERSION: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/enterprise/DeviceInventory;->getDeviceOSVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {v1}, Landroid/app/enterprise/DeviceInventory;->getModemFirmware()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "baseband":Ljava/lang/String;
    if-eqz v0, :cond_b0

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BASEBAND: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_b0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEVICE ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/enterprise/DeviceInventory;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    return-object v3
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 577
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 578
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 581
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getRulesInfoFromDB(I)Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
    .registers 9
    .param p1, "uid"    # I

    .prologue
    .line 475
    new-instance v3, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    invoke-direct {v3}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;-><init>()V

    .line 476
    .local v3, "ruleInfo":Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 477
    .local v1, "filterValues":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 478
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "AUDITLOG"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    .line 480
    .local v2, "returnedValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 481
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 482
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-direct {p0, v0}, extractRulesFromCv(Landroid/content/ContentValues;)Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    move-result-object v3

    .line 484
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_2d
    return-object v3
.end method

.method private isAuditLogEnabledInternal(I)Z
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 320
    iget-object v0, p0, mLinkedHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 321
    const/4 v0, 0x1

    .line 323
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isIptablesMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "swComponent"    # Ljava/lang/String;
    .param p2, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 1427
    const-string v1, "KERNEL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1428
    const-string v1, "IPT_MDM_LOG"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1429
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    .line 1430
    const/4 v1, 0x1

    .line 1433
    .end local v0    # "index":I
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private setAvailableSize(I)J
    .registers 26
    .param p1, "uid"    # I

    .prologue
    .line 655
    const-wide/16 v22, -0x1

    .line 657
    .local v22, "ret":J
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v20

    .line 658
    .local v20, "path":Ljava/io/File;
    new-instance v21, Landroid/os/StatFs;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 660
    .local v21, "stat":Landroid/os/StatFs;
    invoke-virtual/range {v21 .. v21}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 661
    .local v16, "blockSize":J
    invoke-virtual/range {v21 .. v21}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v14, v2

    .line 662
    .local v14, "availableBlocks":J
    mul-long v18, v14, v16

    .line 664
    .local v18, "freeBytesInternal":J
    const-wide/16 v2, 0x5

    mul-long v2, v2, v18

    const-wide/16 v4, 0x64

    div-long v6, v2, v4

    .line 666
    .local v6, "availableSpace":J
    const-wide/32 v2, 0xa00000

    cmp-long v2, v6, v2

    if-ltz v2, :cond_48

    const-wide/32 v2, 0x3200000

    cmp-long v2, v6, v2

    if-gtz v2, :cond_48

    .line 667
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "AUDITLOG"

    const-string v5, "auditLogBufferSize"

    move/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 669
    move-wide/from16 v22, v6

    .line 678
    :cond_47
    :goto_47
    return-wide v22

    .line 672
    :cond_48
    const-wide/32 v2, 0x3200000

    cmp-long v2, v6, v2

    if-ltz v2, :cond_47

    .line 673
    move-object/from16 v0, p0

    iget-object v8, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "AUDITLOG"

    const-string v11, "auditLogBufferSize"

    const-wide/32 v12, 0x3200000

    move/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 675
    const-wide/32 v22, 0x3200000

    goto :goto_47
.end method

.method private updateEDMNativeHelperStatus()V
    .registers 2

    .prologue
    .line 176
    invoke-virtual {p0}, isAuditServiceRunning()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/enterprise/internal/EDMNativeHelper;->setAuditEnabled(Z)V

    .line 177
    invoke-direct {p0}, checkKernelEnabledForAdmins()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/enterprise/internal/EDMNativeHelper;->setKernelLogsEnabled(Z)V

    .line 179
    invoke-direct {p0}, checkIptablesEnabledForAdmins()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 180
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/enterprise/internal/EDMNativeHelper;->setIptablesLogsEnabled(Z)V

    .line 181
    iget-object v0, p0, mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->turnNetworkLogOff()V

    .line 186
    :goto_1d
    return-void

    .line 183
    :cond_1e
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/enterprise/internal/EDMNativeHelper;->setIptablesLogsEnabled(Z)V

    .line 184
    iget-object v0, p0, mIptablesLogging:Lcom/android/server/enterprise/auditlog/IptablesLogging;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/IptablesLogging;->turnNetworkLogOn()V

    goto :goto_1d
.end method

.method private validateRulesParameters(Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)Z
    .registers 6
    .param p1, "auditLogRulesInfo"    # Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1438
    if-nez p1, :cond_5

    .line 1449
    :cond_4
    :goto_4
    return v0

    .line 1441
    :cond_5
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getSeverityRule()I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_4

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getSeverityRule()I

    move-result v2

    if-lt v2, v1, :cond_4

    .line 1445
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v2

    if-ltz v2, :cond_4

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_4

    move v0, v1

    .line 1449
    goto :goto_4
.end method


# virtual methods
.method public AuditLogger(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    .registers 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "uid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 819
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {p0, p1, v0, v1}, checkAuditLogEnforce(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .line 821
    .local v12, "checkPermission":Z
    if-eqz v12, :cond_1c

    .line 822
    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v11}, AuditLoggerInternal(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;IZ)V

    .line 825
    :cond_1c
    return-void
.end method

.method public AuditLoggerAsUser(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V
    .registers 26
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "uid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;
    .param p8, "userId"    # I

    .prologue
    .line 840
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, checkAuditLogEnforce(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 841
    .local v15, "checkPermission":Z
    if-eqz v15, :cond_6e

    .line 846
    move-object/from16 v0, p0

    iget-object v4, v0, mPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 847
    .local v16, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 848
    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 849
    .local v14, "appUid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "$1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " $3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    .line 853
    .end local v14    # "appUid":I
    :cond_58
    const/4 v13, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v4 .. v13}, AuditLoggerInternal(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;IZ)V

    .line 856
    .end local v16    # "matcher":Ljava/util/regex/Matcher;
    :cond_6e
    return-void
.end method

.method public AuditLoggerPrivileged(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    .registers 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "pid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 873
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-direct {p0, v0, v1}, checkAuditPrivilegedAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 874
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 876
    .local v9, "appendedMessage":Ljava/lang/String;
    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v11}, AuditLoggerInternal(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;IZ)V

    .line 879
    .end local v9    # "appendedMessage":Ljava/lang/String;
    :cond_1f
    return-void
.end method

.method public AuditLoggerPrivilegedAsUser(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V
    .registers 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "severityGrade"    # I
    .param p3, "moduleGroup"    # I
    .param p4, "outcome"    # Z
    .param p5, "pid"    # I
    .param p6, "swComponent"    # Ljava/lang/String;
    .param p7, "logMessage"    # Ljava/lang/String;
    .param p8, "userId"    # I

    .prologue
    .line 897
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-direct {p0, v0, v1}, checkAuditPrivilegedAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 898
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 900
    .local v9, "appendedMessage":Ljava/lang/String;
    const/4 v11, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v10, p8

    invoke-direct/range {v2 .. v11}, AuditLoggerInternal(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;IZ)V

    .line 903
    .end local v9    # "appendedMessage":Ljava/lang/String;
    :cond_20
    return-void
.end method

.method public checkAuditLogEnforce(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "swComponent"    # Ljava/lang/String;
    .param p3, "logMessage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 764
    invoke-virtual {p0}, isAuditServiceRunning()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 766
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 767
    :cond_13
    const-string v5, "AuditLogService"

    const-string v6, "Error: Invalid auditlog parameters!"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :cond_1a
    :goto_1a
    return v4

    .line 770
    :cond_1b
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 771
    const-string v5, "AuditLogService"

    const-string v6, " AuditLogger calls from Profile return default value"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 775
    :cond_2b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 776
    .local v1, "callingUid":I
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "callingPackage":Ljava/lang/String;
    const/4 v3, 0x1

    .line 780
    .local v3, "isEnforce":Z
    const-string v4, "com.android.mms"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    const/16 v4, 0x7cf

    if-ne v1, v4, :cond_47

    .line 781
    :cond_46
    const/4 v3, 0x0

    .line 784
    :cond_47
    if-eqz v3, :cond_4c

    .line 787
    :try_start_49
    invoke-direct {p0, p1}, enforceLoggerPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_4c
    .catch Ljava/lang/SecurityException; {:try_start_49 .. :try_end_4c} :catch_4e

    .line 800
    :cond_4c
    :goto_4c
    const/4 v4, 0x1

    goto :goto_1a

    .line 788
    :catch_4e
    move-exception v2

    .line 791
    .local v2, "ex":Ljava/lang/SecurityException;
    const-string v4, "com.android.chrome"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6f

    .line 792
    const-string v4, "AuditLogService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AuditLogger: Module does not have AuditLog permission. Package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :cond_6f
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v4

    const-string v5, "AuditLogService"

    const-string v6, "AuditLogger"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c
.end method

.method public disableAuditLog(Landroid/app/enterprise/ContextInfo;)Z
    .registers 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 687
    invoke-direct/range {p0 .. p1}, enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 688
    move-object/from16 v0, p1

    iget v14, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 689
    .local v14, "uid":I
    const/4 v13, 0x1

    .line 690
    .local v13, "ret":Z
    move-object/from16 v0, p0

    iget-object v1, v0, mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/auditlog/Admin;

    .line 692
    .local v10, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v10, :cond_63

    .line 693
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 694
    .local v11, "changeValues":Landroid/content/ContentValues;
    const-string v1, "auditLogEnabled"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 696
    .local v12, "filterValues":Landroid/content/ContentValues;
    const-string v1, "adminUid"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 697
    move-object/from16 v0, p0

    iget-object v1, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "AUDITLOG"

    invoke-virtual {v1, v2, v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v15

    .line 698
    .local v15, "updated":I
    if-lez v15, :cond_7c

    .line 699
    invoke-virtual {v10}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    .line 700
    move-object/from16 v0, p0

    iget-object v1, v0, mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    invoke-direct/range {p0 .. p0}, updateEDMNativeHelperStatus()V

    .line 703
    move-object/from16 v0, p0

    iget-object v1, v0, mContext:Landroid/content/Context;

    const-string v2, "AuditLog/isAuditLogEnabled"

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 707
    const/4 v13, 0x1

    .line 713
    .end local v11    # "changeValues":Landroid/content/ContentValues;
    .end local v12    # "filterValues":Landroid/content/ContentValues;
    .end local v15    # "updated":I
    :cond_63
    :goto_63
    if-eqz v13, :cond_7b

    .line 714
    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "AuditLogService"

    const-string v8, "AuditLog status has changed to  disable"

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v9}, AuditLoggerAsUser(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 719
    :cond_7b
    return v13

    .line 709
    .restart local v11    # "changeValues":Landroid/content/ContentValues;
    .restart local v12    # "filterValues":Landroid/content/ContentValues;
    .restart local v15    # "updated":I
    :cond_7c
    const/4 v13, 0x0

    goto :goto_63
.end method

.method public disableIPTablesLogging(Landroid/app/enterprise/ContextInfo;)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v2, 0x0

    .line 368
    invoke-direct {p0, p1}, enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 369
    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 370
    .local v12, "uid":I
    iget-object v0, p0, mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/auditlog/Admin;

    .line 371
    .local v9, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    const/4 v11, 0x0

    .line 373
    .local v11, "ret":Z
    if-eqz v9, :cond_1e

    .line 374
    invoke-virtual {v9}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v0

    if-nez v0, :cond_35

    .line 375
    const/4 v11, 0x1

    .line 386
    :cond_1e
    :goto_1e
    if-eqz v11, :cond_34

    .line 387
    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "AuditLogService"

    const-string v7, "AuditLog iptables log status has changed to disabled"

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, AuditLoggerAsUser(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 391
    :cond_34
    return v11

    .line 377
    :cond_35
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 378
    .local v10, "cv":Landroid/content/ContentValues;
    const-string v0, "auditLogIptables"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "AUDITLOG"

    invoke-virtual {v0, v12, v1, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v11

    .line 380
    if-eqz v11, :cond_1e

    .line 381
    invoke-virtual {v9, v2}, Lcom/android/server/enterprise/auditlog/Admin;->setIptablesLogging(Z)V

    .line 382
    invoke-direct {p0}, updateEDMNativeHelperStatus()V

    goto :goto_1e
.end method

.method public declared-synchronized dumpLogFile(Landroid/app/enterprise/ContextInfo;JJLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .registers 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "begin"    # J
    .param p4, "end"    # J
    .param p6, "filter"    # Ljava/lang/String;
    .param p7, "outputFile"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 1211
    monitor-enter p0

    if-eqz p7, :cond_13

    :try_start_3
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->valid()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 1213
    :cond_13
    const-string v4, "AuditLogService"

    const-string/jumbo v5, "invalid output file"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_80

    .line 1214
    const/4 v4, 0x0

    .line 1244
    :goto_1c
    monitor-exit p0

    return v4

    .line 1216
    :cond_1e
    :try_start_1e
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->canDetectErrors()Z
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_80

    move-result v4

    if-eqz v4, :cond_2e

    .line 1218
    :try_start_24
    const-string v4, "AuditLogService"

    const-string v5, "check error"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->checkError()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2e} :catch_5f
    .catchall {:try_start_24 .. :try_end_2e} :catchall_80

    .line 1227
    :cond_2e
    :try_start_2e
    new-instance v9, Ljava/lang/SecurityManager;

    invoke-direct {v9}, Ljava/lang/SecurityManager;-><init>()V

    .line 1228
    .local v9, "sm":Ljava/lang/SecurityManager;
    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/SecurityManager;->checkWrite(Ljava/io/FileDescriptor;)V
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_2e .. :try_end_3a} :catch_6a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_80

    .line 1233
    :try_start_3a
    invoke-direct {p0, p1}, enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1234
    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1235
    .local v10, "uid":I
    iget-object v4, p0, mLinkedHashMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1236
    .local v3, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v3, :cond_7e

    .line 1237
    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/Admin;->getDumpState()Z

    move-result v4

    if-nez v4, :cond_7e

    .line 1238
    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/auditlog/Admin;->setFilter(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_74

    .line 1239
    const/4 v4, 0x0

    goto :goto_1c

    .line 1220
    .end local v3    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v9    # "sm":Ljava/lang/SecurityManager;
    .end local v10    # "uid":I
    :catch_5f
    move-exception v2

    .line 1221
    .local v2, "ex":Ljava/lang/Exception;
    const-string v4, "AuditLogService"

    const-string/jumbo v5, "error checking file descriptor"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    const/4 v4, 0x0

    goto :goto_1c

    .line 1229
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_6a
    move-exception v2

    .line 1230
    .local v2, "ex":Ljava/lang/SecurityException;
    const-string v4, "AuditLogService"

    const-string v5, "can\'t write to file descriptor"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    const/4 v4, 0x0

    goto :goto_1c

    .end local v2    # "ex":Ljava/lang/SecurityException;
    .restart local v3    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .restart local v9    # "sm":Ljava/lang/SecurityManager;
    .restart local v10    # "uid":I
    :cond_74
    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p7

    .line 1241
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/auditlog/Admin;->dump(JJLandroid/os/ParcelFileDescriptor;)Z
    :try_end_7c
    .catchall {:try_start_3a .. :try_end_7c} :catchall_80

    move-result v4

    goto :goto_1c

    .line 1244
    :cond_7e
    const/4 v4, 0x0

    goto :goto_1c

    .line 1211
    .end local v3    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v9    # "sm":Ljava/lang/SecurityManager;
    .end local v10    # "uid":I
    :catchall_80
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public enableAuditLog(Landroid/app/enterprise/ContextInfo;)Z
    .registers 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 591
    const/16 v17, 0x0

    .line 592
    .local v17, "ret":Z
    invoke-direct/range {p0 .. p1}, enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 593
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v18, v0

    .line 596
    .local v18, "uid":I
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, mLinkedHashMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 597
    const/4 v2, 0x1

    .line 645
    :goto_1e
    return v2

    .line 599
    :cond_1f
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 600
    .local v14, "cv":Landroid/content/ContentValues;
    const-string v2, "auditLogEnabled"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "AUDITLOG"

    move/from16 v0, v18

    invoke-virtual {v2, v0, v3, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v17

    .line 603
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, setAvailableSize(I)J

    move-result-wide v12

    .line 604
    .local v12, "allocatedSize":J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-gez v2, :cond_4a

    .line 605
    const/16 v17, 0x0

    .line 607
    :cond_4a
    if-eqz v17, :cond_ba

    .line 608
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 609
    .local v16, "filterValue":Landroid/content/ContentValues;
    const-string v2, "adminUid"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 611
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsBootCompleted:Z

    .line 612
    new-instance v11, Lcom/android/server/enterprise/auditlog/Admin;

    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, getAdminPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v18

    invoke-direct {v11, v0, v2, v3}, Lcom/android/server/enterprise/auditlog/Admin;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    .line 613
    .local v11, "adm":Lcom/android/server/enterprise/auditlog/Admin;
    invoke-direct/range {p0 .. p0}, getDeviceInfo()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/android/server/enterprise/auditlog/Admin;->setDeviceInfo(Ljava/util/List;)V

    .line 614
    move-object/from16 v0, p0

    iget-object v3, v0, mLinkedHashMap:Ljava/util/Map;

    monitor-enter v3
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_80} :catch_d9

    .line 615
    :try_start_80
    move-object/from16 v0, p0

    iget-object v2, v0, mLinkedHashMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    move/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    monitor-exit v3
    :try_end_8f
    .catchall {:try_start_80 .. :try_end_8f} :catchall_d6

    .line 618
    :try_start_8f
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsBootCompleted:Z

    invoke-virtual {v11, v2}, Lcom/android/server/enterprise/auditlog/Admin;->setBootCompleted(Z)V

    .line 620
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, getRulesInfoFromDB(I)Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/android/server/enterprise/auditlog/Admin;->setAuditLogRulesInfo(Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)V

    .line 622
    invoke-virtual {v11, v12, v13}, Lcom/android/server/enterprise/auditlog/Admin;->setBufferSize(J)V

    .line 624
    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/Admin;->createBubbleDirectory()V

    .line 625
    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/Admin;->createBubbleFile()V

    .line 627
    invoke-direct/range {p0 .. p0}, updateEDMNativeHelperStatus()V

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string v3, "AuditLog/isAuditLogEnabled"

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_ba} :catch_d9

    .line 638
    .end local v11    # "adm":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v12    # "allocatedSize":J
    .end local v14    # "cv":Landroid/content/ContentValues;
    .end local v16    # "filterValue":Landroid/content/ContentValues;
    :cond_ba
    :goto_ba
    if-eqz v17, :cond_d2

    .line 639
    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "AuditLogService"

    const-string v9, "AuditLog status has changed to  enable"

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v10}, AuditLoggerAsUser(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_d2
    move/from16 v2, v17

    .line 645
    goto/16 :goto_1e

    .line 616
    .restart local v11    # "adm":Lcom/android/server/enterprise/auditlog/Admin;
    .restart local v12    # "allocatedSize":J
    .restart local v14    # "cv":Landroid/content/ContentValues;
    .restart local v16    # "filterValue":Landroid/content/ContentValues;
    :catchall_d6
    move-exception v2

    :try_start_d7
    monitor-exit v3
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d6

    :try_start_d8
    throw v2
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_d9} :catch_d9

    .line 633
    .end local v11    # "adm":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v12    # "allocatedSize":J
    .end local v14    # "cv":Landroid/content/ContentValues;
    .end local v16    # "filterValue":Landroid/content/ContentValues;
    :catch_d9
    move-exception v15

    .line 634
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 635
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, getAdminPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_ba
.end method

.method public enableIPTablesLogging(Landroid/app/enterprise/ContextInfo;)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v4, 0x1

    .line 339
    invoke-direct {p0, p1}, enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 340
    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 341
    .local v12, "uid":I
    iget-object v0, p0, mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/auditlog/Admin;

    .line 342
    .local v9, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    const/4 v11, 0x0

    .line 343
    .local v11, "ret":Z
    if-eqz v9, :cond_3c

    .line 344
    invoke-virtual {v9}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 361
    :goto_1d
    return v4

    .line 347
    :cond_1e
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 348
    .local v10, "cv":Landroid/content/ContentValues;
    const-string v0, "auditLogIptables"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "AUDITLOG"

    invoke-virtual {v0, v12, v1, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v11

    .line 350
    if-eqz v11, :cond_3c

    .line 351
    invoke-virtual {v9, v4}, Lcom/android/server/enterprise/auditlog/Admin;->setIptablesLogging(Z)V

    .line 352
    invoke-direct {p0}, updateEDMNativeHelperStatus()V

    .line 356
    .end local v10    # "cv":Landroid/content/ContentValues;
    :cond_3c
    if-eqz v11, :cond_51

    .line 357
    const/4 v2, 0x5

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "AuditLogService"

    const-string v7, "AuditLog iptables log status has changed to enabled"

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, AuditLoggerAsUser(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_51
    move v4, v11

    .line 361
    goto :goto_1d
.end method

.method public getAuditLogRules(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 412
    invoke-direct {p0, p1}, enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 413
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 414
    .local v1, "uid":I
    iget-object v2, p0, mLinkedHashMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 415
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_1a

    .line 416
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getAuditLogRulesInfo()Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    move-result-object v2

    .line 418
    :goto_19
    return-object v2

    :cond_1a
    invoke-direct {p0, v1}, getRulesInfoFromDB(I)Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    move-result-object v2

    goto :goto_19
.end method

.method public getCriticalLogSize(Landroid/app/enterprise/ContextInfo;)I
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1139
    invoke-direct {p0, p1}, enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1140
    iget-object v1, p0, mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1142
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_1a

    .line 1143
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getCriticalLogSize()I

    move-result v1

    .line 1145
    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public getCurrentLogFileSize(Landroid/app/enterprise/ContextInfo;)I
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1087
    invoke-direct {p0, p1}, enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1088
    iget-object v1, p0, mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1090
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_1a

    .line 1091
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getCurrentLogFileSize()I

    move-result v1

    .line 1094
    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public getMaximumLogSize(Landroid/app/enterprise/ContextInfo;)I
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1189
    invoke-direct {p0, p1}, enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1190
    iget-object v1, p0, mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1192
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_1a

    .line 1193
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getMaximumLogSize()I

    move-result v1

    .line 1195
    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public isAuditLogEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 285
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 286
    const-string v0, "AuditLogService"

    const-string v1, " isAuditLogEnabled calls from Profile return default value"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v0, 0x0

    .line 290
    :goto_10
    return v0

    .line 289
    :cond_11
    invoke-direct {p0, p1}, enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 290
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v0}, isAuditLogEnabledInternal(I)Z

    move-result v0

    goto :goto_10
.end method

.method public isAuditLogEnabledAsUser(I)Z
    .registers 7
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x1

    .line 297
    iget-object v3, p0, mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 298
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 299
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 300
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 301
    .local v0, "adminUserId":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_24

    move v3, v4

    .line 316
    .end local v0    # "adminUserId":I
    .end local v2    # "uid":I
    :goto_23
    return v3

    .line 304
    .restart local v0    # "adminUserId":I
    .restart local v2    # "uid":I
    :cond_24
    const/16 v3, 0x64

    if-ge p1, v3, :cond_2e

    .line 305
    if-eqz v0, :cond_2c

    if-ne v0, p1, :cond_b

    :cond_2c
    move v3, v4

    .line 307
    goto :goto_23

    .line 310
    :cond_2e
    invoke-direct {p0, p1, v2}, checkOwnContainerOrSelf(II)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v4

    .line 312
    goto :goto_23

    .line 316
    .end local v0    # "adminUserId":I
    .end local v2    # "uid":I
    :cond_36
    const/4 v3, 0x0

    goto :goto_23
.end method

.method public isAuditServiceRunning()Z
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 331
    const/4 v0, 0x0

    .line 332
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isIPTablesLoggingEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v1, 0x0

    .line 398
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 399
    const-string v2, "AuditLogService"

    const-string v3, " isIPTablesLoggingEnabled calls from Profile return default value"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_10
    :goto_10
    return v1

    .line 402
    :cond_11
    invoke-direct {p0, p1}, enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 403
    iget-object v2, p0, mLinkedHashMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 405
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_10

    .line 406
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->getIptablesLogging()Z

    move-result v1

    goto :goto_10
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1268
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 1294
    iget-object v1, p0, mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1295
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_22

    .line 1296
    iget-object v1, p0, mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->shutdown()V

    .line 1298
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    .line 1299
    invoke-direct {p0}, updateEDMNativeHelperStatus()V

    .line 1301
    :cond_22
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 1277
    iget-object v1, p0, mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1278
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v0, :cond_22

    .line 1279
    iget-object v1, p0, mLinkedHashMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->shutdown()V

    .line 1281
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    .line 1282
    invoke-direct {p0}, updateEDMNativeHelperStatus()V

    .line 1284
    :cond_22
    return-void
.end method

.method public setAuditLogRules(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)Z
    .registers 23
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "auditLogRulesInfo"    # Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    .prologue
    .line 422
    invoke-direct/range {p0 .. p1}, enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 423
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v19, v0

    .line 424
    .local v19, "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, validateRulesParameters(Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 425
    const/4 v15, 0x0

    .line 471
    :cond_15
    :goto_15
    return v15

    .line 427
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, mLinkedHashMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, v19

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/auditlog/Admin;

    .line 428
    .local v11, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    const/4 v15, 0x0

    .line 429
    .local v15, "ret":Z
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 430
    .local v14, "insertionValues":Landroid/content/ContentValues;
    if-eqz v11, :cond_39

    .line 431
    const-string v2, "auditLogEnabled"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_39
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .local v16, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7f

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7f

    .line 435
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_56
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 436
    .local v12, "i":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 439
    .end local v12    # "i":Ljava/lang/Integer;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_7f
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .local v17, "sbUsersRule":Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_c5

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c5

    .line 441
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_9c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 442
    .restart local v12    # "i":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9c

    .line 445
    .end local v12    # "i":Ljava/lang/Integer;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_c5
    const-string v2, "auditLogRuleOutcome"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getOutcomeRule()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 446
    const-string v2, "auditLogRuleSeverity"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->getSeverityRule()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    const-string v2, "auditLogRuleGroups"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v2, "auditLogKernelEnabled"

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->isKernelLogsEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v2, "auditLogRuleUsers"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 452
    .local v18, "selectionValues":Landroid/content/ContentValues;
    const-string v2, "adminUid"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "AUDITLOG"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v14, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v15

    .line 454
    if-nez v15, :cond_129

    .line 455
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v2

    const-string v3, "Cannot set filter on Database"

    invoke-virtual {v11}, Lcom/android/server/enterprise/auditlog/Admin;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_129
    if-eqz v11, :cond_133

    .line 460
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/android/server/enterprise/auditlog/Admin;->setAuditLogRulesInfo(Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)V

    .line 461
    invoke-direct/range {p0 .. p0}, updateEDMNativeHelperStatus()V

    .line 464
    :cond_133
    if-eqz v15, :cond_15

    .line 465
    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "AuditLogService"

    const-string v9, "AuditLog filter rules has changed."

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v10}, AuditLoggerAsUser(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_15
.end method

.method public setCriticalLogSize(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "percentageValue"    # I

    .prologue
    const/4 v4, 0x1

    .line 1105
    const/4 v10, 0x0

    .line 1107
    .local v10, "ret":Z
    if-lt p2, v4, :cond_8

    const/16 v0, 0x63

    if-le p2, v0, :cond_a

    :cond_8
    move v11, v10

    .line 1130
    .end local v10    # "ret":Z
    .local v11, "ret":I
    :goto_9
    return v11

    .line 1110
    .end local v11    # "ret":I
    .restart local v10    # "ret":Z
    :cond_a
    invoke-direct {p0, p1}, enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1111
    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1112
    .local v12, "uid":I
    iget-object v0, p0, mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1114
    .local v9, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v9, :cond_3b

    .line 1115
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "AUDITLOG"

    const-string v2, "auditCriticalSize"

    invoke-virtual {v0, v12, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    .line 1117
    if-nez v10, :cond_38

    .line 1118
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    const-string v1, "Cannot set critcal log size on Databank"

    invoke-virtual {v9}, Lcom/android/server/enterprise/auditlog/Admin;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    :cond_38
    invoke-virtual {v9, p2}, Lcom/android/server/enterprise/auditlog/Admin;->setCriticalLogSize(I)V

    .line 1124
    :cond_3b
    if-eqz v10, :cond_61

    .line 1125
    const/4 v2, 0x5

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "AuditLogService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuditLog critical size has changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, AuditLoggerAsUser(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_61
    move v11, v10

    .line 1130
    .restart local v11    # "ret":I
    goto :goto_9
.end method

.method public setMaximumLogSize(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "percentageValue"    # I

    .prologue
    const/4 v4, 0x1

    .line 1155
    const/4 v10, 0x0

    .line 1157
    .local v10, "ret":Z
    if-lt p2, v4, :cond_8

    const/16 v0, 0x63

    if-le p2, v0, :cond_a

    :cond_8
    move v11, v10

    .line 1180
    .end local v10    # "ret":Z
    .local v11, "ret":I
    :goto_9
    return v11

    .line 1160
    .end local v11    # "ret":I
    .restart local v10    # "ret":Z
    :cond_a
    invoke-direct {p0, p1}, enforceAuditLogPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1161
    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1162
    .local v12, "uid":I
    iget-object v0, p0, mLinkedHashMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/auditlog/Admin;

    .line 1164
    .local v9, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    if-eqz v9, :cond_3b

    .line 1165
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "AUDITLOG"

    const-string v2, "auditMaximumSize"

    invoke-virtual {v0, v12, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    .line 1167
    if-nez v10, :cond_38

    .line 1168
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    const-string v1, "Cannot set maximum log size on databank"

    invoke-virtual {v9}, Lcom/android/server/enterprise/auditlog/Admin;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    :cond_38
    invoke-virtual {v9, p2}, Lcom/android/server/enterprise/auditlog/Admin;->setMaximumLogSize(I)V

    .line 1174
    :cond_3b
    if-eqz v10, :cond_61

    .line 1175
    const/4 v2, 0x5

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "AuditLogService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuditLog maximum size has changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, AuditLoggerAsUser(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_61
    move v11, v10

    .line 1180
    .restart local v11    # "ret":I
    goto :goto_9
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 1258
    return-void
.end method
