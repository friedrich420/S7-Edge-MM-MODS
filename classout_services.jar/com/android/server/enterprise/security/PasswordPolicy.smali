.class public Lcom/android/server/enterprise/security/PasswordPolicy;
.super Landroid/app/enterprise/IPasswordPolicy$Stub;
.source "PasswordPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final MDM_PASSWORD_EXPIRING_NOTIFICATION:Ljava/lang/String; = "edm.intent.action.internal.NOTIFICATION_PASSWORD_EXPIRED"

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "android.uid.system:1000"

.field private static final TAG:Ljava/lang/String; = "PasswordPolicy"


# instance fields
.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mService:Landroid/app/admin/IDevicePolicyManager;

.field private mTelManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 137
    invoke-direct {p0}, Landroid/app/enterprise/IPasswordPolicy$Stub;-><init>()V

    .line 156
    iput-object v4, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 636
    new-instance v0, Lcom/android/server/enterprise/security/PasswordPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/security/PasswordPolicy$1;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V

    iput-object v0, p0, mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 139
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 140
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 142
    const-string/jumbo v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    .line 145
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string/jumbo v0, "edm.intent.action.internal.NOTIFICATION_PASSWORD_EXPIRED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 153
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, mTelManager:Landroid/telephony/TelephonyManager;

    .line 154
    return-void
.end method

.method private ChooseNewPasswordOwner(Landroid/app/enterprise/ContextInfo;)I
    .registers 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1491
    const/16 v18, -0x1

    .line 1492
    .local v18, "validAdmin":I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1493
    .local v8, "containerId":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v17

    .line 1495
    .local v17, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1497
    .local v5, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string/jumbo v20, "passwordOwnerHistory"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 1499
    .local v16, "ownerHistory":Ljava/lang/String;
    if-eqz v16, :cond_10e

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_10e

    .line 1500
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1502
    .local v9, "historyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v19, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1503
    .local v6, "admins":[Ljava/lang/String;
    move-object v7, v6

    .local v7, "arr$":[Ljava/lang/String;
    array-length v13, v7

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_41
    if-ge v11, v13, :cond_55

    aget-object v4, v7, v11

    .line 1504
    .local v4, "admin":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1503
    add-int/lit8 v11, v11, 0x1

    goto :goto_41

    .line 1507
    .end local v4    # "admin":Ljava/lang/String;
    :cond_55
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1510
    const/4 v12, 0x0

    .line 1511
    .local v12, "isValidAdmin":Z
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v10, v19, -0x1

    .end local v11    # "i$":I
    .local v10, "i":I
    :goto_67
    if-ltz v10, :cond_9c

    if-nez v12, :cond_9c

    .line 1512
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_6f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_94

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1513
    .local v4, "admin":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_6f

    .line 1514
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1515
    const/4 v12, 0x1

    .line 1520
    .end local v4    # "admin":Ljava/lang/Integer;
    :cond_94
    if-nez v12, :cond_9c

    .line 1521
    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1511
    add-int/lit8 v10, v10, -0x1

    goto :goto_67

    .line 1527
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_9c
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_10f

    .line 1528
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1529
    .local v15, "newHistorySb":Ljava/lang/StringBuilder;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_ab
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_d4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1530
    .restart local v4    # "admin":Ljava/lang/Integer;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ab

    .line 1532
    .end local v4    # "admin":Ljava/lang/Integer;
    :cond_d4
    const/16 v19, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1533
    .local v14, "newHistory":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string/jumbo v20, "passwordOwnerHistory"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string/jumbo v20, "passwordPatternOwner"

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1545
    .end local v6    # "admins":[Ljava/lang/String;
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v9    # "historyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "isValidAdmin":Z
    .end local v13    # "len$":I
    .end local v14    # "newHistory":Ljava/lang/String;
    .end local v15    # "newHistorySb":Ljava/lang/StringBuilder;
    :cond_10e
    :goto_10e
    return v18

    .line 1539
    .restart local v6    # "admins":[Ljava/lang/String;
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v9    # "historyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "i":I
    .restart local v12    # "isValidAdmin":Z
    .restart local v13    # "len$":I
    :cond_10f
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string/jumbo v20, "passwordOwnerHistory"

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v19, v0

    const-string/jumbo v20, "passwordPatternOwner"

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_10e
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/security/PasswordPolicy;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, enforcePwdChangeIfNeededOnTimeout(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/security/PasswordPolicy;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, enforcePwdChangeIfNeededOnStart(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/security/PasswordPolicy;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, enforcePwdChangeIfNeededOnSwitch(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;

    .prologue
    .line 122
    iget-object v0, p0, mTelManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/security/PasswordPolicy;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, enforcePwdChangeIfNeededAfterCall(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/Intent;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, isMDMAdmin(Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/security/PasswordPolicy;II)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/security/PasswordPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, enforcePwdChangeForUser(II)Z

    move-result v0

    return v0
.end method

.method private addOwnerToStack(Landroid/app/enterprise/ContextInfo;)V
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1583
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1584
    .local v0, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1586
    .local v2, "userId":I
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "passwordPatternOwner"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1590
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "passwordOwnerHistory"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1592
    .local v1, "stack":Ljava/lang/String;
    if-eqz v1, :cond_45

    .line 1593
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1598
    :goto_3c
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "passwordOwnerHistory"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1600
    return-void

    .line 1595
    :cond_45
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3c
.end method

.method private changePasswordAsUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 832
    :try_start_0
    invoke-direct {p0, p1}, isPersona(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 833
    invoke-direct {p0, p1}, postPwdResetEventToPersona(I)Z

    .line 857
    :cond_9
    :goto_9
    return-void

    .line 836
    :cond_a
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    if-ne v3, p1, :cond_9

    .line 840
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 841
    .local v2, "uh":Landroid/os/UserHandle;
    invoke-direct {p0, p1}, hasPassword(I)Z

    move-result v3

    if-nez v3, :cond_46

    .line 842
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 843
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.ChooseLockPassword"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 846
    const/high16 v3, 0x400000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 847
    const/high16 v3, 0x800000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 848
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    goto :goto_9

    .line 854
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uh":Landroid/os/UserHandle;
    :catch_3c
    move-exception v0

    .line 855
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PasswordPolicy"

    const-string/jumbo v4, "handled expected Exception in changePasswordAsUser()."

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 850
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "uh":Landroid/os/UserHandle;
    :cond_46
    :try_start_46
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "secedm.src.android.app.enterprise.action.DO_KEYGUARD"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 851
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_53} :catch_3c

    goto :goto_9
.end method

.method private checkPackageCallerOrEnforcePermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_15

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 186
    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :goto_14
    return-object p1

    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_15
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    goto :goto_14
.end method

.method private checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 196
    :goto_16
    return-void

    .line 195
    :cond_17
    invoke-direct {p0}, enforceSystemUser()V

    goto :goto_16
.end method

.method private checkRegex(Ljava/lang/String;)Z
    .registers 4
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    .line 325
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    .line 329
    const/4 v1, 0x1

    :goto_4
    return v1

    .line 326
    :catch_5
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private computeLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 12
    .param p1, "str1"    # Ljava/lang/CharSequence;
    .param p2, "str2"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 1804
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    filled-new-array {v3, v5}, [I

    move-result-object v3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 1806
    .local v0, "distance":[[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v1, v3, :cond_27

    .line 1807
    aget-object v3, v0, v1

    aput v1, v3, v4

    .line 1806
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1808
    :cond_27
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_28
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v2, v3, :cond_35

    .line 1809
    aget-object v3, v0, v4

    aput v2, v3, v2

    .line 1808
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1811
    :cond_35
    const/4 v1, 0x1

    :goto_36
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v1, v3, :cond_7f

    .line 1812
    const/4 v2, 0x1

    :goto_3d
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v2, v3, :cond_7c

    .line 1813
    aget-object v5, v0, v1

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v0, v3

    aget v3, v3, v2

    add-int/lit8 v3, v3, 0x1

    aget-object v6, v0, v1

    add-int/lit8 v7, v2, -0x1

    aget v6, v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v0, v3

    add-int/lit8 v7, v2, -0x1

    aget v7, v3, v7

    add-int/lit8 v3, v1, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v8, v2, -0x1

    invoke-interface {p2, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v3, v8, :cond_7a

    move v3, v4

    :goto_70
    add-int/2addr v3, v7

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v5, v2

    .line 1812
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 1813
    :cond_7a
    const/4 v3, 0x1

    goto :goto_70

    .line 1811
    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 1817
    :cond_7f
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    aget-object v3, v0, v3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    aget v3, v3, v4

    return v3
.end method

.method private containsForbiddenCharacterSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    .line 1845
    invoke-virtual {p0, p1}, getMaximumCharacterSequenceLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 1847
    .local v4, "length":I
    if-nez v4, :cond_8

    .line 1848
    const/4 v10, 0x0

    .line 1899
    :goto_7
    return v10

    .line 1850
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\\w(?=\\w{"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",})"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 1852
    .local v6, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v6, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 1853
    .local v5, "match":Ljava/util/regex/Matcher;
    :cond_29
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_a6

    .line 1855
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    .line 1859
    .local v9, "start":I
    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1862
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v10

    if-eqz v10, :cond_29

    .line 1866
    const/4 v2, 0x0

    .line 1867
    .local v2, "flag":I
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {p2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    sub-int v1, v10, v0

    .line 1868
    .local v1, "charDiff":I
    if-nez v1, :cond_9a

    const/4 v8, 0x0

    .line 1871
    .local v8, "sequencePattern":I
    :goto_49
    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v10, v4, 0x5

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1872
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/16 v10, 0x5c

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1873
    const/16 v10, 0x51

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1874
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1875
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5e
    if-ge v3, v4, :cond_78

    .line 1876
    add-int v10, v0, v8

    int-to-char v0, v10

    .line 1879
    add-int v10, v9, v3

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v10

    if-eqz v10, :cond_77

    invoke-static {v0}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v10

    if-nez v10, :cond_a0

    .line 1880
    :cond_77
    const/4 v2, 0x1

    .line 1889
    :cond_78
    const/4 v10, 0x1

    if-eq v2, v10, :cond_29

    .line 1893
    const/16 v10, 0x5c

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1894
    const/16 v10, 0x45

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1896
    add-int v10, v9, v4

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_29

    .line 1897
    const/4 v10, 0x1

    goto/16 :goto_7

    .line 1868
    .end local v3    # "i":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "sequencePattern":I
    :cond_9a
    if-lez v1, :cond_9e

    const/4 v8, 0x1

    goto :goto_49

    :cond_9e
    const/4 v8, -0x1

    goto :goto_49

    .line 1884
    .restart local v3    # "i":I
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "sequencePattern":I
    :cond_a0
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1875
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 1899
    .end local v0    # "c":C
    .end local v1    # "charDiff":I
    .end local v2    # "flag":I
    .end local v3    # "i":I
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "sequencePattern":I
    .end local v9    # "start":I
    :cond_a6
    const/4 v10, 0x0

    goto/16 :goto_7
.end method

.method private containsForbiddenData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1361
    invoke-virtual {p0, p1, v3}, getForbiddenStrings(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 1363
    .local v0, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_10

    :cond_e
    move v3, v4

    .line 1371
    :goto_f
    return v3

    .line 1366
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1367
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_14

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    goto :goto_f

    .end local v2    # "s":Ljava/lang/String;
    :cond_2d
    move v3, v4

    .line 1371
    goto :goto_f
.end method

.method private containsForbiddenNumericSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    .line 1235
    invoke-virtual {p0, p1}, getMaximumNumericSequenceLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1237
    .local v3, "length":I
    if-nez v3, :cond_8

    .line 1238
    const/4 v9, 0x0

    .line 1267
    :goto_7
    return v9

    .line 1240
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\\d(?=\\d{"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",})"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 1241
    .local v5, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v5, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1242
    .local v4, "match":Ljava/util/regex/Matcher;
    :cond_29
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_86

    .line 1244
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    .line 1248
    .local v8, "start":I
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1249
    .local v0, "c":C
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int v1, v9, v0

    .line 1250
    .local v1, "charDiff":I
    if-nez v1, :cond_62

    const/4 v7, 0x0

    .line 1252
    .local v7, "sequencePattern":I
    :goto_42
    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v9, v3, 0x5

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1253
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/16 v9, 0x5c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1254
    const/16 v9, 0x51

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1255
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1256
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_57
    if-ge v2, v3, :cond_68

    .line 1257
    add-int v9, v0, v7

    int-to-char v0, v9

    .line 1258
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1256
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 1250
    .end local v2    # "i":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "sequencePattern":I
    :cond_62
    if-lez v1, :cond_66

    const/4 v7, 0x1

    goto :goto_42

    :cond_66
    const/4 v7, -0x1

    goto :goto_42

    .line 1261
    .restart local v2    # "i":I
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v7    # "sequencePattern":I
    :cond_68
    const/16 v9, 0x5c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1262
    const/16 v9, 0x45

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1264
    add-int v9, v8, v3

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_29

    .line 1265
    const/4 v9, 0x1

    goto :goto_7

    .line 1267
    .end local v0    # "c":C
    .end local v1    # "charDiff":I
    .end local v2    # "i":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "sequencePattern":I
    .end local v8    # "start":I
    :cond_86
    const/4 v9, 0x0

    goto :goto_7
.end method

.method private containsForbiddenStringDistance(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "storedPwd"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1828
    if-nez p3, :cond_4

    .line 1835
    :cond_3
    :goto_3
    return v1

    .line 1831
    :cond_4
    invoke-virtual {p0, p1}, getMinimumCharacterChangeLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1832
    .local v0, "minDistance":I
    if-eqz v0, :cond_3

    .line 1835
    invoke-direct {p0, p3, p2}, computeLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    if-ge v2, v0, :cond_3

    const/4 v1, 0x1

    goto :goto_3
.end method

.method private containsMaxRepeatedCharacters(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1439
    invoke-virtual {p0, p1}, getMaximumCharacterOccurences(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 1441
    .local v7, "rptCount":I
    if-nez v7, :cond_a

    move v8, v9

    .line 1458
    :goto_9
    return v8

    .line 1444
    :cond_a
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1445
    .local v4, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 1446
    .local v2, "ca":[C
    move-object v0, v2

    .local v0, "arr$":[C
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_16
    if-ge v5, v6, :cond_6e

    aget-char v1, v0, v5

    .line 1447
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_62

    .line 1448
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1449
    .local v3, "cnt":I
    if-ne v3, v7, :cond_52

    .line 1450
    const-string v8, "PasswordPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v10

    .line 1451
    goto :goto_9

    .line 1453
    :cond_52
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    .end local v3    # "cnt":I
    :goto_5f
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 1455
    :cond_62
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    .end local v1    # "c":C
    :cond_6e
    move v8, v9

    .line 1458
    goto :goto_9
.end method

.method private enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 177
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforcePwdChangeForUser(II)Z
    .registers 13
    .param p1, "containerId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 560
    const/4 v4, 0x1

    .line 562
    .local v4, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 569
    .local v6, "token":J
    :try_start_5
    invoke-direct {p0, p2}, isPersona(I)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 570
    invoke-direct {p0, p2}, postPwdResetEventToPersona(I)Z

    move-result v3

    .line 571
    .local v3, "ret":Z
    if-eqz v3, :cond_15

    .line 572
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5, p2}, setPwdChangeRequestedForUser(III)Z

    .line 574
    :cond_15
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 617
    .end local v3    # "ret":Z
    :goto_18
    return v3

    .line 577
    :cond_19
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5, p2}, setPwdChangeRequestedForUser(III)Z

    .line 580
    invoke-direct {p0, p2}, hasPassword(I)Z

    move-result v2

    .line 581
    .local v2, "isLockPwdEnabled":Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 582
    .local v0, "currentUserId":I
    if-nez v2, :cond_64

    .line 584
    const/4 v5, 0x3

    invoke-virtual {p0, p1, v5, p2}, setPwdChangeRequestedForUser(III)Z

    .line 588
    iget-object v5, p0, mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-eqz v5, :cond_35

    if-eq p2, v0, :cond_3d

    .line 590
    :cond_35
    invoke-direct {p0, p2}, changePasswordAsUser(I)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_38} :catch_42

    .line 616
    .end local v0    # "currentUserId":I
    .end local v2    # "isLockPwdEnabled":Z
    :goto_38
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v4

    .line 617
    goto :goto_18

    .line 594
    .restart local v0    # "currentUserId":I
    .restart local v2    # "isLockPwdEnabled":Z
    :cond_3d
    const/4 v5, -0x4

    :try_start_3e
    invoke-virtual {p0, p1, v5, p2}, setPwdChangeRequestedForUser(III)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_38

    .line 611
    .end local v0    # "currentUserId":I
    .end local v2    # "isLockPwdEnabled":Z
    :catch_42
    move-exception v1

    .line 612
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 613
    const-string v5, "PasswordPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception during password enforcement: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38

    .line 601
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentUserId":I
    .restart local v2    # "isLockPwdEnabled":Z
    :cond_64
    :try_start_64
    iget-object v5, p0, mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-eqz v5, :cond_6e

    if-eq p2, v0, :cond_72

    .line 603
    :cond_6e
    invoke-direct {p0, p2}, changePasswordAsUser(I)V

    goto :goto_38

    .line 607
    :cond_72
    const/4 v5, -0x2

    invoke-virtual {p0, p1, v5, p2}, setPwdChangeRequestedForUser(III)Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_76} :catch_42

    goto :goto_38
.end method

.method private enforcePwdChangeIfNeededAfterCall(I)V
    .registers 5
    .param p1, "currentUserId"    # I

    .prologue
    .line 794
    invoke-virtual {p0, p1}, isChangeRequestedAsUser(I)I

    move-result v0

    .line 795
    .local v0, "changeRequired":I
    const/4 v1, 0x0

    .line 800
    .local v1, "newEnforceValue":I
    packed-switch v0, :pswitch_data_18

    .line 818
    :goto_8
    if-lez v1, :cond_11

    .line 819
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, p1}, setPwdChangeRequestedForUser(III)Z

    .line 821
    invoke-direct {p0, p1}, changePasswordAsUser(I)V

    .line 823
    :cond_11
    return-void

    .line 803
    :pswitch_12
    const/4 v1, 0x3

    .line 804
    goto :goto_8

    .line 807
    :pswitch_14
    const/4 v1, 0x2

    .line 808
    goto :goto_8

    .line 811
    :pswitch_16
    const/4 v1, 0x1

    .line 812
    goto :goto_8

    .line 800
    :pswitch_data_18
    .packed-switch -0x4
        :pswitch_12
        :pswitch_14
        :pswitch_16
    .end packed-switch
.end method

.method private enforcePwdChangeIfNeededOnStart(I)V
    .registers 5
    .param p1, "currentUserId"    # I

    .prologue
    .line 708
    invoke-virtual {p0, p1}, isChangeRequestedAsUser(I)I

    move-result v0

    .line 709
    .local v0, "changeRequired":I
    const/4 v1, 0x0

    .line 715
    .local v1, "newEnforceValue":I
    packed-switch v0, :pswitch_data_16

    .line 734
    :goto_8
    if-eqz v1, :cond_e

    .line 735
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, p1}, setPwdChangeRequestedForUser(III)Z

    .line 739
    :cond_e
    return-void

    .line 718
    :pswitch_f
    const/4 v1, 0x3

    .line 719
    goto :goto_8

    .line 723
    :pswitch_11
    const/4 v1, 0x2

    .line 724
    goto :goto_8

    .line 727
    :pswitch_13
    const/4 v1, 0x1

    .line 728
    goto :goto_8

    .line 715
    nop

    :pswitch_data_16
    .packed-switch -0x4
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_11
    .end packed-switch
.end method

.method private enforcePwdChangeIfNeededOnSwitch(I)V
    .registers 4
    .param p1, "newCurrentUserId"    # I

    .prologue
    .line 749
    invoke-virtual {p0, p1}, isChangeRequestedAsUser(I)I

    move-result v0

    .line 751
    .local v0, "changeRequired":I
    invoke-direct {p0, p1}, hasPassword(I)Z

    move-result v1

    .line 755
    .local v1, "hasPassword":Z
    if-lez v0, :cond_f

    if-nez v1, :cond_f

    .line 756
    invoke-direct {p0, p1}, changePasswordAsUser(I)V

    .line 759
    :cond_f
    return-void
.end method

.method private enforcePwdChangeIfNeededOnTimeout(I)V
    .registers 6
    .param p1, "sendingUserId"    # I

    .prologue
    const/4 v3, 0x0

    .line 767
    invoke-virtual {p0, p1}, isChangeRequestedAsUser(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1d

    .line 770
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 773
    .local v0, "currentUserId":I
    iget-object v1, p0, mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_16

    if-eq p1, v0, :cond_1e

    .line 776
    :cond_16
    const/4 v1, 0x2

    invoke-virtual {p0, v3, v1, p1}, setPwdChangeRequestedForUser(III)Z

    .line 778
    invoke-direct {p0, p1}, changePasswordAsUser(I)V

    .line 786
    .end local v0    # "currentUserId":I
    :cond_1d
    :goto_1d
    return-void

    .line 782
    .restart local v0    # "currentUserId":I
    :cond_1e
    const/4 v1, -0x3

    invoke-virtual {p0, v3, v1, p1}, setPwdChangeRequestedForUser(III)Z

    goto :goto_1d
.end method

.method private enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 172
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSystemUser()V
    .registers 4

    .prologue
    .line 483
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 484
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_16

    .line 485
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Can only be called by system user"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 487
    :cond_16
    return-void
.end method

.method private getCurrentPasswordOwner(Landroid/app/enterprise/ContextInfo;)I
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1468
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 1470
    .local v5, "userId":I
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "passwordPatternOwner"

    invoke-virtual {v7, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1472
    .local v3, "owner":Ljava/lang/String;
    const/4 v6, -0x1

    .line 1473
    .local v6, "validAdmin":I
    if-eqz v3, :cond_41

    .line 1474
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1475
    .local v4, "ownerAdmin":Ljava/lang/Integer;
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1476
    .local v1, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1477
    .local v0, "admin":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_22

    .line 1478
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1483
    .end local v0    # "admin":Ljava/lang/Integer;
    .end local v1    # "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "ownerAdmin":Ljava/lang/Integer;
    :goto_3c
    return v7

    .line 1481
    .restart local v1    # "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "ownerAdmin":Ljava/lang/Integer;
    :cond_3d
    invoke-direct {p0, p1}, ChooseNewPasswordOwner(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .end local v1    # "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "ownerAdmin":Ljava/lang/Integer;
    :cond_41
    move v7, v6

    .line 1483
    goto :goto_3c
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 161
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 164
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1062
    if-nez p1, :cond_b

    .line 1063
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p1, v5}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 1065
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_b
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1066
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_45

    .line 1067
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1068
    .local v1, "index":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_27

    .line 1069
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1072
    :cond_27
    const-string v5, "android.uid.systemui"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    if-ne v5, v6, :cond_45

    .line 1074
    :cond_39
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1075
    .local v2, "token":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 1076
    .local v4, "userId":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1080
    .end local v1    # "index":I
    .end local v2    # "token":J
    .end local v4    # "userId":I
    :goto_44
    return v4

    :cond_45
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    goto :goto_44
.end method

.method private hasPassword(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 624
    invoke-direct {p0, p1}, isPersona(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 632
    :cond_7
    :goto_7
    return v0

    .line 627
    :cond_8
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android"

    invoke-static {v2, v3, v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v1

    .line 629
    .local v1, "userCtx":Landroid/content/Context;
    if-eqz v1, :cond_7

    .line 631
    new-instance v2, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;

    invoke-direct {v2, v1}, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/adapterlayer/LockPatternUtilsAdapter;->isLockPasswordEnabled(I)Z

    move-result v0

    .line 632
    .local v0, "hasPassword":Z
    goto :goto_7
.end method

.method private isMDMAdmin(Landroid/content/Intent;I)Z
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    .line 944
    const-string/jumbo v15, "pkgName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 947
    .local v12, "pkgName":Ljava/lang/String;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    .line 948
    .local v14, "userContext":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    const-string v16, "android"

    const/16 v17, 0x0

    new-instance v18, Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual/range {v15 .. v18}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v14

    .line 951
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 952
    .local v11, "pkgMgr":Landroid/content/pm/PackageManager;
    const/16 v15, 0x1000

    invoke-virtual {v11, v12, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 955
    .local v10, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v2, v10, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_30
    if-ge v5, v7, :cond_ad

    aget-object v9, v2, v5

    .line 956
    .local v9, "perm":Ljava/lang/String;
    const-string v15, "android.permission.sec.MDM_APP_MGMT"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_84

    const-string v15, "android.permission.sec.MDM_BLUETOOTH"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_84

    const-string v15, "android.permission.sec.MDM_INVENTORY"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_84

    const-string v15, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_84

    const-string v15, "android.permission.sec.MDM_ROAMING"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_84

    const-string v15, "android.permission.sec.MDM_WIFI"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_84

    const-string v15, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_84

    const-string v15, "android.permission.sec.MDM_PHONE_RESTRICTION"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_84

    const-string v15, "android.permission.sec.ENTERPRISE_DEVICE_ADMIN"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_84

    const-string v15, "android.permission.sec.MDM_HW_CONTROL"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8d

    .line 966
    :cond_84
    const-string v15, "PasswordPolicy"

    const-string v16, "**** An MDM Admin ****"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_8b} :catch_90
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_8b} :catch_c7

    .line 967
    const/4 v15, 0x1

    .line 998
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "perm":Ljava/lang/String;
    .end local v10    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v11    # "pkgMgr":Landroid/content/pm/PackageManager;
    .end local v14    # "userContext":Landroid/content/Context;
    :goto_8c
    return v15

    .line 955
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v7    # "len$":I
    .restart local v9    # "perm":Ljava/lang/String;
    .restart local v10    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v11    # "pkgMgr":Landroid/content/pm/PackageManager;
    .restart local v14    # "userContext":Landroid/content/Context;
    :cond_8d
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 971
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "perm":Ljava/lang/String;
    .end local v10    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v11    # "pkgMgr":Landroid/content/pm/PackageManager;
    .end local v14    # "userContext":Landroid/content/Context;
    :catch_90
    move-exception v4

    .line 972
    .local v4, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v15, "PasswordPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Could not retrieve user context for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    .end local v4    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_ad
    :goto_ad
    :try_start_ad
    const-string/jumbo v15, "enterprise_license_policy"

    invoke-static {v15}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 981
    .local v13, "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    if-eqz v13, :cond_f2

    .line 982
    invoke-virtual {v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getAllLicenseInfo()[Landroid/app/enterprise/license/LicenseInfo;

    move-result-object v8

    .line 983
    .local v8, "list":[Landroid/app/enterprise/license/LicenseInfo;
    if-nez v8, :cond_d2

    .line 984
    const-string v15, "PasswordPolicy"

    const-string v16, "LicenseInfo list is null"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_c5} :catch_e8

    .line 985
    const/4 v15, 0x0

    goto :goto_8c

    .line 973
    .end local v8    # "list":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v13    # "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :catch_c7
    move-exception v3

    .line 974
    .local v3, "e":Ljava/lang/Exception;
    const-string v15, "PasswordPolicy"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ad

    .line 987
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v8    # "list":[Landroid/app/enterprise/license/LicenseInfo;
    .restart local v13    # "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :cond_d2
    move-object v2, v8

    .local v2, "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    :try_start_d3
    array-length v7, v2

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_d5
    if-ge v5, v7, :cond_f2

    aget-object v6, v2, v5

    .line 988
    .local v6, "info":Landroid/app/enterprise/license/LicenseInfo;
    invoke-virtual {v6}, Landroid/app/enterprise/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_e0} :catch_e8

    move-result v15

    if-eqz v15, :cond_e5

    .line 989
    const/4 v15, 0x1

    goto :goto_8c

    .line 987
    :cond_e5
    add-int/lit8 v5, v5, 0x1

    goto :goto_d5

    .line 993
    .end local v2    # "arr$":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v5    # "i$":I
    .end local v6    # "info":Landroid/app/enterprise/license/LicenseInfo;
    .end local v7    # "len$":I
    .end local v8    # "list":[Landroid/app/enterprise/license/LicenseInfo;
    .end local v13    # "service":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    :catch_e8
    move-exception v3

    .line 994
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v15, "PasswordPolicy"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_f2
    const-string v15, "PasswordPolicy"

    const-string v16, "**** Not an MDM Admin ****"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const/4 v15, 0x0

    goto :goto_8c
.end method

.method private isPersona(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 931
    const/4 v1, 0x0

    .line 932
    .local v1, "ret":Z
    if-eqz p1, :cond_15

    .line 933
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 934
    .local v0, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v0, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 935
    const/4 v1, 0x1

    .line 938
    .end local v0    # "pm":Landroid/os/PersonaManager;
    :cond_15
    return v1
.end method

.method private isValidBioAuth(I)Z
    .registers 6
    .param p1, "bioAuth"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2658
    if-ne p1, v1, :cond_5

    .line 2672
    :cond_4
    :goto_4
    return v1

    .line 2661
    :cond_5
    if-eqz p1, :cond_9

    if-gez p1, :cond_b

    :cond_9
    move v1, v2

    .line 2662
    goto :goto_4

    .line 2665
    :cond_b
    move v0, p1

    .line 2666
    .local v0, "temp":I
    :goto_c
    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_13

    .line 2667
    div-int/lit8 v0, v0, 0x2

    goto :goto_c

    .line 2669
    :cond_13
    if-eq v0, v1, :cond_4

    move v1, v2

    .line 2672
    goto :goto_4
.end method

.method private lockSdp(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 2703
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$2;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2730
    return-void
.end method

.method private postPersonaEvent(ILandroid/content/pm/PersonaNewEvent;)Z
    .registers 5
    .param p1, "personaId"    # I
    .param p2, "event"    # Landroid/content/pm/PersonaNewEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 866
    const-string/jumbo v1, "persona"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    .line 868
    .local v0, "service":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v0, :cond_10

    .line 869
    invoke-virtual {v0, p2, p1}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;

    .line 870
    const/4 v1, 0x1

    .line 873
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private postPwdResetEventToPersona(I)Z
    .registers 9
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 897
    const/4 v3, 0x0

    .line 898
    .local v3, "retVal":Z
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 900
    .local v1, "pm":Landroid/os/PersonaManager;
    :try_start_d
    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .line 901
    .local v0, "info":Landroid/content/pm/PersonaInfo;
    if-nez v0, :cond_14

    .line 924
    .end local v0    # "info":Landroid/content/pm/PersonaInfo;
    :goto_13
    return v4

    .line 905
    .restart local v0    # "info":Landroid/content/pm/PersonaInfo;
    :cond_14
    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v5

    sget-object v6, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v5, v6}, Landroid/os/PersonaManager$StateManager;->isAttribute(Landroid/content/pm/PersonaAttribute;)Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v5

    sget-object v6, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v5, v6}, Landroid/os/PersonaManager$StateManager;->isAttribute(Landroid/content/pm/PersonaAttribute;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 907
    const-string v5, "PasswordPolicy"

    const-string/jumbo v6, "postPwdResetEventToPersona :: Already enforced request pending..."

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_34} :catch_35

    goto :goto_13

    .line 920
    .end local v0    # "info":Landroid/content/pm/PersonaInfo;
    :catch_35
    move-exception v2

    .line 921
    .local v2, "re":Landroid/os/RemoteException;
    const-string v4, "PasswordPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception during postPwdResetEventToPersona: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_52
    move v4, v3

    .line 924
    goto :goto_13

    .line 911
    .restart local v0    # "info":Landroid/content/pm/PersonaInfo;
    :cond_54
    :try_start_54
    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v4

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v4, v5}, Landroid/os/PersonaManager$StateManager;->isAttribute(Landroid/content/pm/PersonaAttribute;)Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v4

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v4, v5}, Landroid/os/PersonaManager$StateManager;->isAttribute(Landroid/content/pm/PersonaAttribute;)Z

    move-result v4

    if-nez v4, :cond_7a

    .line 913
    const-string v4, "PasswordPolicy"

    const-string/jumbo v5, "postPwdResetEventToPersona :: Reset request pending... clear the state..."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    sget-object v4, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5}, setPersonaAttribute(ILandroid/content/pm/PersonaAttribute;Z)Z

    .line 917
    :cond_7a
    sget-object v4, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, setPersonaAttribute(ILandroid/content/pm/PersonaAttribute;Z)Z

    move-result v3

    .line 918
    if-eqz v3, :cond_89

    sget-object v4, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, setPersonaAttribute(ILandroid/content/pm/PersonaAttribute;Z)Z

    .line 919
    :cond_89
    const-string v4, "PasswordPolicy"

    const-string/jumbo v5, "postPwdResetEventToPersona :: Enforced request has been set..."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_91} :catch_35

    goto :goto_52
.end method

.method private removeOwnerFromStack(Landroid/app/enterprise/ContextInfo;)V
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1553
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1554
    .local v3, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v10

    .line 1556
    .local v10, "userId":I
    iget-object v11, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "passwordOwnerHistory"

    invoke-virtual {v11, v12, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 1558
    .local v9, "stack":Ljava/lang/String;
    if-eqz v9, :cond_5f

    .line 1560
    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1561
    .local v1, "admins":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1562
    .local v7, "newStackSb":Ljava/lang/StringBuilder;
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1f
    if-ge v4, v5, :cond_4c

    aget-object v0, v2, v4

    .line 1563
    .local v0, "admin":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1564
    .local v8, "owner":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eq v11, v12, :cond_49

    .line 1565
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 1568
    .end local v0    # "admin":Ljava/lang/String;
    .end local v8    # "owner":Ljava/lang/Integer;
    :cond_4c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1569
    .local v6, "newStack":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_60

    .line 1570
    const/4 v6, 0x0

    .line 1574
    :goto_57
    iget-object v11, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "passwordOwnerHistory"

    invoke-virtual {v11, v12, v6, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1577
    .end local v1    # "admins":[Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "newStack":Ljava/lang/String;
    .end local v7    # "newStackSb":Ljava/lang/StringBuilder;
    :cond_5f
    return-void

    .line 1572
    .restart local v1    # "admins":[Ljava/lang/String;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "newStack":Ljava/lang/String;
    .restart local v7    # "newStackSb":Ljava/lang/StringBuilder;
    :cond_60
    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_57
.end method

.method private setPersonaAttribute(ILandroid/content/pm/PersonaAttribute;Z)Z
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "attribute"    # Landroid/content/pm/PersonaAttribute;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 881
    const-string/jumbo v1, "persona"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    .line 883
    .local v0, "service":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v0, :cond_13

    .line 884
    invoke-virtual {v0, p2, p3, p1}, Lcom/android/server/pm/PersonaManagerService;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 885
    const/4 v1, 0x1

    .line 888
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private unlockSdp(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 2735
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/security/PasswordPolicy$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$3;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2760
    return-void
.end method


# virtual methods
.method public addRequiredPasswordPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "regex"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 308
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 309
    :cond_c
    const/4 v0, 0x0

    .line 318
    :goto_d
    return v0

    .line 311
    :cond_e
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string/jumbo v4, "passwordRequiredPattern"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 313
    .local v5, "oldRegex":Ljava/lang/String;
    if-eqz v5, :cond_47

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 318
    :goto_37
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string/jumbo v4, "passwordRequiredPattern"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_d

    .line 316
    :cond_47
    move-object v5, p2

    goto :goto_37
.end method

.method public deleteAllRestrictions(Landroid/app/enterprise/ContextInfo;)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 339
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 340
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string/jumbo v4, "passwordRequiredPattern"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 342
    .local v9, "oldRegex":Ljava/lang/String;
    const/4 v10, 0x1

    .line 343
    .local v10, "ret":Z
    if-eqz v9, :cond_50

    .line 344
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string/jumbo v4, "passwordRequiredPattern"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 346
    if-eqz v10, :cond_50

    .line 347
    invoke-direct {p0, p1}, getCurrentPasswordOwner(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 348
    .local v6, "currentOwner":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-ne v6, v0, :cond_51

    .line 349
    invoke-direct {p0, p1}, ChooseNewPasswordOwner(Landroid/app/enterprise/ContextInfo;)I

    .line 359
    :goto_33
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    .line 361
    .local v11, "userId":I
    if-nez v11, :cond_50

    .line 362
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 365
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_40
    const-string v0, "Password"

    const-string/jumbo v1, "deleteAllRestrictions"

    const/4 v2, 0x1

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 366
    const-string v0, "PasswordPolicy"

    const-string v1, "GearPolicy deleteAllRestrictions"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_50} :catch_55

    .line 373
    .end local v6    # "currentOwner":I
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v11    # "userId":I
    :cond_50
    :goto_50
    return v10

    .line 353
    .restart local v6    # "currentOwner":I
    :cond_51
    invoke-direct {p0, p1}, removeOwnerFromStack(Landroid/app/enterprise/ContextInfo;)V

    goto :goto_33

    .line 367
    .restart local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v11    # "userId":I
    :catch_55
    move-exception v7

    .line 368
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_50
.end method

.method enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2015
    if-eqz p2, :cond_3f

    .line 2016
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2017
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_3f

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-ne v2, v1, :cond_3f

    .line 2018
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getActiveAdminComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2019
    .local v0, "callingCN":Landroid/content/ComponentName;
    if-eqz v0, :cond_3f

    invoke-virtual {v0, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 2020
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component name voilation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2024
    .end local v0    # "callingCN":Landroid/content/ComponentName;
    .end local v1    # "uid":I
    :cond_3f
    return-void
.end method

.method public enforcePwdChange(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 539
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 540
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 541
    .local v3, "userId":I
    const/4 v2, 0x1

    .line 542
    .local v2, "ret":Z
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v4, v3}, enforcePwdChangeForUser(II)Z

    move-result v2

    .line 544
    if-eqz v2, :cond_2a

    .line 545
    if-nez v3, :cond_2a

    .line 546
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 549
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1a
    const-string v4, "Password"

    const-string/jumbo v5, "enforcePwdChange"

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 550
    const-string v4, "PasswordPolicy"

    const-string v5, "GearPolicy enforcePwdChange"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2a} :catch_2b

    .line 556
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_2a
    :goto_2a
    return v2

    .line 551
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_2b
    move-exception v0

    .line 552
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method public excludeExternalStorageForFailedPasswordsWipe(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1966
    const/4 v2, 0x0

    .line 1967
    .local v2, "result":Z
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1968
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1970
    .local v3, "userId":I
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PASSWORD"

    const-string/jumbo v7, "excludeExternalStorageWipe"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 1974
    if-eqz v2, :cond_4b

    .line 1975
    if-nez v3, :cond_4b

    .line 1976
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1979
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_23
    const-string v4, "Password"

    const-string/jumbo v5, "excludeExternalStorageForFailedPasswordsWipe"

    invoke-virtual {p0, p1}, isExternalStorageForFailedPasswordsWipeExcluded(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1980
    const-string v4, "PasswordPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GearPolicy excludeExternalStorageForFailedPasswordsWipe : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1}, isExternalStorageForFailedPasswordsWipeExcluded(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_4b} :catch_4c

    .line 1986
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_4b
    :goto_4b
    return v2

    .line 1981
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_4c
    move-exception v0

    .line 1982
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4b
.end method

.method public getCurrentFailedPasswordAttempts(Landroid/app/enterprise/ContextInfo;)I
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2430
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2432
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2433
    .local v2, "token":J
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_27

    .line 2435
    :try_start_c
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/app/admin/IDevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_17} :catch_1c
    .catchall {:try_start_c .. :try_end_17} :catchall_29

    move-result v1

    .line 2440
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2444
    :goto_1b
    return v1

    .line 2437
    :catch_1c
    move-exception v0

    .line 2438
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1d
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_29

    .line 2440
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2444
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_27
    const/4 v1, -0x1

    goto :goto_1b

    .line 2440
    :catchall_29
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getForbiddenStrings(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1325
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1326
    const-string v6, "PasswordPolicy"

    const-string v7, " getForbiddenStrings calls from Profile return default value"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    :cond_10
    :goto_10
    return-object v2

    .line 1329
    :cond_11
    const-string v6, "android.uid.system:1000"

    invoke-direct {p0, p1, v6}, checkPackageCallerOrEnforcePermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1331
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 1333
    .local v5, "userId":I
    if-eqz p2, :cond_58

    .line 1334
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "PASSWORD"

    const-string/jumbo v8, "passwordForbiddenStrings"

    invoke-virtual {v6, v7, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 1337
    .local v1, "forbiddenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_10

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_10

    .line 1338
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1339
    .local v2, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1340
    .local v4, "str":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_39

    .line 1346
    .end local v1    # "forbiddenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "str":Ljava/lang/String;
    :cond_58
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v8, "PASSWORD"

    const-string/jumbo v9, "passwordForbiddenStrings"

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1348
    .local v0, "adminStrings":Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 1349
    new-instance v2, Ljava/util/ArrayList;

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_10
.end method

.method public getKeyguardDisabledFeatures(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2793
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2794
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2796
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2798
    .local v2, "token":J
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_2a

    .line 2800
    :try_start_f
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2c

    move-result v1

    .line 2805
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2809
    :goto_1e
    return v1

    .line 2802
    :catch_1f
    move-exception v0

    .line 2803
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2c

    .line 2805
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2809
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const/4 v1, 0x0

    goto :goto_1e

    .line 2805
    :catchall_2c
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getKeyguardDisabledFeaturesInternal(Landroid/content/ComponentName;I)I
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2815
    const/4 v1, 0x0

    .line 2818
    .local v1, "features":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "keyguardDisabledFeatures"

    invoke-virtual {v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_28

    move-result v1

    .line 2824
    :goto_e
    const-string v2, "PasswordPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getKeyguardDisabledFeatures() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2825
    return v1

    .line 2820
    :catch_28
    move-exception v0

    .line 2821
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PasswordPolicy"

    const-string/jumbo v3, "getKeyguardDisabledFeatures() failed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2822
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method public getMaximumCharacterOccurences(Landroid/app/enterprise/ContextInfo;)I
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1415
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1417
    .local v2, "userId":I
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PASSWORD"

    const-string/jumbo v7, "passwordMaximumCharacterOccurences"

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1421
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1422
    .local v0, "count":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1423
    .local v3, "value":I
    if-nez v0, :cond_28

    .line 1424
    move v0, v3

    goto :goto_14

    .line 1425
    :cond_28
    if-eqz v3, :cond_14

    if-le v0, v3, :cond_14

    .line 1426
    move v0, v3

    goto :goto_14

    .line 1429
    .end local v3    # "value":I
    :cond_2e
    return v0
.end method

.method public getMaximumCharacterSequenceLength(Landroid/app/enterprise/ContextInfo;)I
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1715
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1717
    .local v2, "userId":I
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v7, "PASSWORD"

    const-string/jumbo v8, "passwordMaximumCharacterSequenceLength"

    invoke-virtual {v5, v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1720
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 1721
    .local v1, "length":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1722
    .local v3, "value":I
    if-nez v1, :cond_2a

    .line 1723
    move v1, v3

    goto :goto_16

    .line 1724
    :cond_2a
    if-eqz v3, :cond_16

    if-le v1, v3, :cond_16

    .line 1725
    move v1, v3

    goto :goto_16

    .line 1728
    .end local v3    # "value":I
    :cond_30
    return v1
.end method

.method public getMaximumFailedPasswordsForDisable(Landroid/app/enterprise/ContextInfo;)I
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1152
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1154
    .local v2, "userId":I
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PASSWORD"

    const-string/jumbo v7, "passwordAttemptDeviceDisable"

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1157
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 1158
    .local v1, "lMaxNumFailedAttempt":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1159
    .local v3, "value":I
    if-nez v1, :cond_28

    .line 1160
    move v1, v3

    goto :goto_14

    .line 1161
    :cond_28
    if-eqz v3, :cond_14

    if-le v1, v3, :cond_14

    .line 1162
    move v1, v3

    goto :goto_14

    .line 1165
    .end local v3    # "value":I
    :cond_2e
    return v1
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2473
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2474
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2476
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2478
    .local v2, "token":J
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_2a

    .line 2480
    :try_start_f
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2c

    move-result v1

    .line 2485
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2489
    :goto_1e
    return v1

    .line 2482
    :catch_1f
    move-exception v0

    .line 2483
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2c

    .line 2485
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2489
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const/4 v1, 0x0

    goto :goto_1e

    .line 2485
    :catchall_2c
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getMaximumNumericSequenceLength(Landroid/app/enterprise/ContextInfo;)I
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1213
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1215
    .local v2, "userId":I
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PASSWORD"

    const-string/jumbo v7, "passwordMaximumNumericSequenceLength"

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1218
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 1219
    .local v1, "length":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1220
    .local v3, "value":I
    if-nez v1, :cond_28

    .line 1221
    move v1, v3

    goto :goto_14

    .line 1222
    :cond_28
    if-eqz v3, :cond_14

    if-le v1, v3, :cond_14

    .line 1223
    move v1, v3

    goto :goto_14

    .line 1226
    .end local v3    # "value":I
    :cond_2e
    return v1
.end method

.method public getMaximumTimeToLock(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)J
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2537
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2538
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2540
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2542
    .local v2, "token":J
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_2a

    .line 2544
    :try_start_f
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2d

    move-result-wide v4

    .line 2549
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2553
    :goto_1e
    return-wide v4

    .line 2546
    :catch_1f
    move-exception v0

    .line 2547
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2d

    .line 2549
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2553
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const-wide/16 v4, 0x0

    goto :goto_1e

    .line 2549
    :catchall_2d
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getMinimumCharacterChangeLength(Landroid/app/enterprise/ContextInfo;)I
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1778
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1780
    .local v2, "userId":I
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v7, "PASSWORD"

    const-string/jumbo v8, "passwordMinimumCharacterChangeUpdatingPasswordLength"

    invoke-virtual {v5, v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1783
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1784
    .local v0, "count":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1785
    .local v3, "value":I
    if-nez v0, :cond_2a

    .line 1786
    move v0, v3

    goto :goto_16

    .line 1787
    :cond_2a
    if-eqz v3, :cond_16

    if-ge v0, v3, :cond_16

    .line 1792
    move v0, v3

    goto :goto_16

    .line 1795
    .end local v3    # "value":I
    :cond_30
    return v0
.end method

.method public getPasswordChangeTimeout(Landroid/app/enterprise/ContextInfo;)I
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 521
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 523
    .local v2, "userId":I
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v7, "PASSWORD"

    const-string/jumbo v8, "passwordChangeTimeout"

    invoke-virtual {v5, v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 525
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    .line 526
    .local v1, "lowerTimeout":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 527
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_16

    .line 530
    const/4 v5, -0x1

    if-eq v1, v5, :cond_31

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v1, :cond_16

    .line 531
    :cond_31
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_16

    .line 534
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_36
    if-gtz v1, :cond_39

    const/4 v1, 0x0

    .end local v1    # "lowerTimeout":I
    :cond_39
    return v1
.end method

.method public getPasswordExpiration(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)J
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2394
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2395
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2396
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2397
    .local v2, "token":J
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_2a

    .line 2399
    :try_start_f
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;I)J
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2d

    move-result-wide v4

    .line 2404
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2408
    :goto_1e
    return-wide v4

    .line 2401
    :catch_1f
    move-exception v0

    .line 2402
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2d

    .line 2404
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2408
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const-wide/16 v4, 0x0

    goto :goto_1e

    .line 2404
    :catchall_2d
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getPasswordExpirationTimeout(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)J
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2376
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2377
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2378
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2379
    .local v2, "token":J
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_2a

    .line 2381
    :try_start_f
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2d

    move-result-wide v4

    .line 2386
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2390
    :goto_1e
    return-wide v4

    .line 2383
    :catch_1f
    move-exception v0

    .line 2384
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2d

    .line 2386
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2390
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const-wide/16 v4, 0x0

    goto :goto_1e

    .line 2386
    :catchall_2d
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getPasswordHistoryLength(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2334
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2335
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2336
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2337
    .local v2, "token":J
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_2a

    .line 2339
    :try_start_f
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2c

    move-result v1

    .line 2344
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2348
    :goto_1e
    return v1

    .line 2341
    :catch_1f
    move-exception v0

    .line 2342
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2c

    .line 2344
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2348
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const/4 v1, 0x0

    goto :goto_1e

    .line 2344
    :catchall_2c
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getPasswordLockDelay(Landroid/app/enterprise/ContextInfo;)I
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v4, -0x1

    .line 236
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v7, "PASSWORD"

    const-string/jumbo v8, "unlockDelay"

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 238
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    .line 239
    .local v1, "lowerPeriod":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 240
    .local v2, "value":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_13

    .line 243
    if-eq v1, v4, :cond_2d

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v1, :cond_13

    .line 246
    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_13

    .line 249
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_32
    if-gez v1, :cond_35

    move v1, v4

    .end local v1    # "lowerPeriod":I
    :cond_35
    return v1
.end method

.method public getPasswordMinimumLength(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2088
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2089
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2090
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2091
    .local v2, "token":J
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_2a

    .line 2093
    :try_start_f
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2c

    move-result v1

    .line 2098
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2102
    :goto_1e
    return v1

    .line 2095
    :catch_1f
    move-exception v0

    .line 2096
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2c

    .line 2098
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2102
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const/4 v1, 0x0

    goto :goto_1e

    .line 2098
    :catchall_2c
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getPasswordMinimumLetters(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2190
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2191
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2192
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2193
    .local v2, "token":J
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_2a

    .line 2195
    :try_start_f
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2c

    move-result v1

    .line 2200
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2204
    :goto_1e
    return v1

    .line 2197
    :catch_1f
    move-exception v0

    .line 2198
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2c

    .line 2200
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2204
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const/4 v1, 0x0

    goto :goto_1e

    .line 2200
    :catchall_2c
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getPasswordMinimumLowerCase(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2156
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2157
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2158
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2159
    .local v2, "token":J
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_2a

    .line 2161
    :try_start_f
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2c

    move-result v1

    .line 2166
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2170
    :goto_1e
    return v1

    .line 2163
    :catch_1f
    move-exception v0

    .line 2164
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2c

    .line 2166
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2170
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const/4 v1, 0x0

    goto :goto_1e

    .line 2166
    :catchall_2c
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getPasswordMinimumNonLetter(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2292
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2293
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2294
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2295
    .local v2, "token":J
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_2a

    .line 2297
    :try_start_f
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2c

    move-result v1

    .line 2302
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2306
    :goto_1e
    return v1

    .line 2299
    :catch_1f
    move-exception v0

    .line 2300
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2c

    .line 2302
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2306
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const/4 v1, 0x0

    goto :goto_1e

    .line 2302
    :catchall_2c
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getPasswordMinimumNumeric(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2224
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2225
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2226
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2227
    .local v2, "token":J
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_2a

    .line 2229
    :try_start_f
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2c

    move-result v1

    .line 2234
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2238
    :goto_1e
    return v1

    .line 2231
    :catch_1f
    move-exception v0

    .line 2232
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2c

    .line 2234
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2238
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const/4 v1, 0x0

    goto :goto_1e

    .line 2234
    :catchall_2c
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getPasswordMinimumSymbols(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2258
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2259
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2260
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2261
    .local v2, "token":J
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_2a

    .line 2263
    :try_start_f
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2c

    move-result v1

    .line 2268
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2272
    :goto_1e
    return v1

    .line 2265
    :catch_1f
    move-exception v0

    .line 2266
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2c

    .line 2268
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2272
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const/4 v1, 0x0

    goto :goto_1e

    .line 2268
    :catchall_2c
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getPasswordMinimumUpperCase(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2122
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2123
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2124
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2125
    .local v2, "token":J
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_2a

    .line 2127
    :try_start_f
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2c

    move-result v1

    .line 2132
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2136
    :goto_1e
    return v1

    .line 2129
    :catch_1f
    move-exception v0

    .line 2130
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2c

    .line 2132
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2136
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const/4 v1, 0x0

    goto :goto_1e

    .line 2132
    :catchall_2c
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getPasswordQuality(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 2054
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2055
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2056
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2057
    .local v2, "token":J
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_2a

    .line 2059
    :try_start_f
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, v4}, Landroid/app/admin/IDevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1f
    .catchall {:try_start_f .. :try_end_1a} :catchall_2c

    move-result v1

    .line 2064
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2068
    :goto_1e
    return v1

    .line 2061
    :catch_1f
    move-exception v0

    .line 2062
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2c

    .line 2064
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2068
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    const/4 v1, 0x0

    goto :goto_1e

    .line 2064
    :catchall_2c
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getRequiredPwdPatternRestrictions(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    const/4 v1, 0x0

    .line 382
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 383
    const-string v2, "PasswordPolicy"

    const-string v3, " getRequiredPwdPatternRestrictions calls from Profile return default value"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_10
    :goto_10
    return-object v1

    .line 386
    :cond_11
    const-string v2, "android.uid.system:1000"

    invoke-direct {p0, p1, v2}, checkPackageCallerOrEnforcePermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 387
    if-eqz p2, :cond_2e

    .line 388
    invoke-direct {p0, p1}, getCurrentPasswordOwner(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 389
    .local v0, "owner":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_10

    .line 390
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string/jumbo v4, "passwordRequiredPattern"

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    .line 395
    .end local v0    # "owner":I
    :cond_2e
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v4, "PASSWORD"

    const-string/jumbo v5, "passwordRequiredPattern"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_10
.end method

.method public getSupportedBiometricAuthentications(Landroid/app/enterprise/ContextInfo;)Ljava/util/Map;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2685
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 2686
    .local v2, "userId":I
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2687
    .local v1, "pkgMgr":Landroid/content/pm/PackageManager;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2689
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v1, :cond_25

    if-eqz v0, :cond_25

    .line 2690
    const-string v3, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 2692
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Fingerprint"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2696
    :cond_25
    return-object v0
.end method

.method public hasForbiddenCharacterSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 418
    const-string v0, "android.uid.system:1000"

    invoke-direct {p0, v0}, checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    .line 419
    invoke-direct {p0, p1, p2}, containsForbiddenCharacterSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 420
    const/4 v0, 0x1

    .line 421
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public hasForbiddenData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 443
    const-string v0, "android.uid.system:1000"

    invoke-direct {p0, v0}, checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    .line 444
    invoke-direct {p0, p1, p2}, containsForbiddenData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 445
    const/4 v0, 0x1

    .line 446
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public hasForbiddenNumericSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 406
    const-string v0, "android.uid.system:1000"

    invoke-direct {p0, v0}, checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    .line 407
    invoke-direct {p0, p1, p2}, containsForbiddenNumericSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 408
    const/4 v0, 0x1

    .line 409
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public hasForbiddenStringDistance(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "oldPassword"    # Ljava/lang/String;

    .prologue
    .line 431
    const-string v0, "android.uid.system:1000"

    invoke-direct {p0, v0}, checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    .line 432
    invoke-direct {p0, p1, p2, p3}, containsForbiddenStringDistance(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 433
    const/4 v0, 0x1

    .line 434
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public hasMaxRepeatedCharacters(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 456
    const-string v0, "android.uid.system:1000"

    invoke-direct {p0, v0}, checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    .line 457
    invoke-direct {p0, p1, p2}, containsMaxRepeatedCharacters(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 458
    const/4 v0, 0x1

    .line 459
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isActivePasswordSufficient(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2412
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2414
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2415
    .local v2, "token":J
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_27

    .line 2417
    :try_start_c
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/app/admin/IDevicePolicyManager;->isActivePasswordSufficient(I)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_17} :catch_1c
    .catchall {:try_start_c .. :try_end_17} :catchall_29

    move-result v1

    .line 2422
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2426
    :goto_1b
    return v1

    .line 2419
    :catch_1c
    move-exception v0

    .line 2420
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1d
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_29

    .line 2422
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2426
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_27
    const/4 v1, 0x0

    goto :goto_1b

    .line 2422
    :catchall_29
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public isBiometricAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "bioAuth"    # I

    .prologue
    .line 2614
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 2616
    .local v0, "userId":I
    invoke-virtual {p0, v0, p2}, isBiometricAuthenticationEnabledAsUser(II)Z

    move-result v1

    return v1
.end method

.method public isBiometricAuthenticationEnabledAsUser(II)Z
    .registers 13
    .param p1, "userId"    # I
    .param p2, "bioAuth"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2621
    const/4 v0, 0x0

    .line 2623
    .local v0, "hasValue":Z
    invoke-direct {p0, p2}, isValidBioAuth(I)Z

    move-result v7

    if-nez v7, :cond_22

    .line 2624
    const-string v6, "PasswordPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bioAuth is wrong value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2654
    :cond_21
    :goto_21
    return v5

    .line 2628
    :cond_22
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "PASSWORD"

    const-string/jumbo v9, "passwordBioAuthEnabled"

    invoke-virtual {v7, v8, v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 2630
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_31
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2631
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ltz v7, :cond_31

    .line 2633
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    and-int/2addr v7, p2

    if-ne v7, p2, :cond_21

    .line 2635
    const/4 v0, 0x1

    .line 2636
    goto :goto_31

    .line 2638
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_4c
    if-eqz v0, :cond_58

    .line 2639
    const-string v5, "PasswordPolicy"

    const-string/jumbo v7, "isBiometricAuthenticationEnabled: return true (hasValue)"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 2640
    goto :goto_21

    .line 2643
    :cond_58
    if-ne p2, v6, :cond_21

    const/16 v7, 0x64

    if-lt p1, v7, :cond_62

    const/16 v7, 0xc8

    if-le p1, v7, :cond_21

    .line 2645
    :cond_62
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Security_ConfigLockLevelODE"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2646
    .local v2, "mCscFeature":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7a

    const-string v7, "NoFingerprint"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_21

    .line 2648
    :cond_7a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_88

    const-string v7, "Fingerprint"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 2649
    :cond_88
    const-string v5, "PasswordPolicy"

    const-string/jumbo v7, "isBiometricAuthenticationEnabled: return true (CSC)"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 2650
    goto :goto_21
.end method

.method public isChangeRequested(Landroid/app/enterprise/ContextInfo;)I
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1085
    invoke-direct {p0, p1}, getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1086
    .local v0, "userId":I
    invoke-virtual {p0, v0}, isChangeRequestedAsUser(I)I

    move-result v1

    return v1
.end method

.method public isChangeRequestedAsUser(I)I
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1090
    const/4 v0, 0x0

    .line 1091
    .local v0, "flag":I
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "passwordChangeRequested"

    invoke-virtual {v2, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1093
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 1094
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1097
    :cond_10
    return v0
.end method

.method public isExternalStorageForFailedPasswordsWipeExcluded(Landroid/app/enterprise/ContextInfo;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1993
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1995
    .local v2, "userId":I
    const/4 v1, 0x1

    .line 1997
    .local v1, "ret":Z
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PASSWORD"

    const-string/jumbo v7, "excludeExternalStorageWipe"

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 2000
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v4, :cond_18

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_22

    .line 2001
    :cond_18
    const-string v5, "PasswordPolicy"

    const-string/jumbo v6, "isExternalStorageForFailedPasswordsWipeExcluded() : no admin enforce password policy. "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    const/4 v5, 0x0

    .line 2010
    :goto_21
    return v5

    .line 2004
    :cond_22
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2005
    .local v3, "value":Z
    if-nez v3, :cond_26

    .line 2006
    move v1, v3

    .end local v3    # "value":Z
    :cond_39
    move v5, v1

    .line 2010
    goto :goto_21
.end method

.method public isMDMDisabledFP(I)Z
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 2597
    const/4 v1, 0x0

    .line 2598
    .local v1, "hasValue":Z
    const/4 v0, 0x1

    .line 2600
    .local v0, "bioAuth":I
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PASSWORD"

    const-string/jumbo v7, "passwordBioAuthEnabled"

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 2602
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2603
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_11

    .line 2605
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/2addr v5, v0

    if-eq v5, v0, :cond_11

    .line 2606
    const/4 v1, 0x1

    goto :goto_11

    .line 2609
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_2c
    return v1
.end method

.method public isPasswordPatternMatched(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 470
    const-string v4, "android.uid.system:1000"

    invoke-direct {p0, v4}, checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V

    .line 471
    const/4 v3, 0x1

    .line 473
    .local v3, "result":Z
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, getRequiredPwdPatternRestrictions(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, "patternSet":Ljava/lang/String;
    if-eqz v2, :cond_19

    .line 475
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 476
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 477
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    .line 479
    .end local v0    # "match":Ljava/util/regex/Matcher;
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    :cond_19
    return v3
.end method

.method public isPasswordTableExist(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2677
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 2679
    .local v0, "userId":I
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PASSWORD"

    const-string/jumbo v4, "passwordBioAuthEnabled"

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 2681
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public isPasswordVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1941
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1942
    .local v0, "userId":I
    invoke-virtual {p0, v0}, isPasswordVisibilityEnabledAsUser(I)Z

    move-result v1

    return v1
.end method

.method public isPasswordVisibilityEnabledAsUser(I)Z
    .registers 9
    .param p1, "userId"    # I

    .prologue
    .line 1946
    const/4 v1, 0x1

    .line 1948
    .local v1, "ret":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PASSWORD"

    const-string/jumbo v6, "passwordVisibilityEnabled"

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1951
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1952
    .local v2, "value":Z
    if-nez v2, :cond_10

    .line 1953
    move v1, v2

    .line 1957
    .end local v2    # "value":Z
    :cond_23
    return v1
.end method

.method public isScreenLockPatternVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1653
    const/4 v1, 0x1

    .line 1655
    .local v1, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 1657
    .local v2, "userId":I
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PASSWORD"

    const-string/jumbo v7, "screenLockPatternVisibility"

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1659
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1660
    .local v3, "value":Z
    if-nez v3, :cond_14

    .line 1661
    move v1, v3

    .line 1665
    .end local v3    # "value":Z
    :cond_27
    return v1
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1604
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1608
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1616
    return-void
.end method

.method public reboot(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 2855
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 2857
    .local v2, "userId":I
    if-nez v2, :cond_2e

    .line 2858
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2860
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_d
    const-string v3, "Password"

    const-string/jumbo v4, "reboot"

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2861
    const-string v3, "PasswordPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GearPolicy SetBooleanTypePolicy reboot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2e} :catch_2f

    .line 2866
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_2e
    :goto_2e
    return-void

    .line 2862
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_2f
    move-exception v0

    .line 2863
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e
.end method

.method public resetPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    .line 2493
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2495
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2497
    .local v2, "token":J
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_27

    .line 2499
    :try_start_c
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->resetPasswordMDM(Ljava/lang/String;II)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_17} :catch_1c
    .catchall {:try_start_c .. :try_end_17} :catchall_29

    move-result v1

    .line 2504
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2508
    :goto_1b
    return v1

    .line 2501
    :catch_1c
    move-exception v0

    .line 2502
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1d
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_29

    .line 2504
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2508
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_27
    const/4 v1, 0x0

    goto :goto_1b

    .line 2504
    :catchall_29
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setBiometricAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;IZ)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "bioAuth"    # I
    .param p3, "enable"    # Z

    .prologue
    .line 2557
    if-gez p2, :cond_4

    .line 2558
    const/4 v2, 0x0

    .line 2592
    :cond_3
    :goto_3
    return v2

    .line 2559
    :cond_4
    const/4 v2, 0x1

    .line 2560
    .local v2, "result":Z
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2561
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 2563
    .local v3, "userId":I
    const/4 v4, 0x0

    .line 2565
    .local v4, "value":I
    :try_start_10
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "PASSWORD"

    const-string/jumbo v8, "passwordBioAuthEnabled"

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_6d

    move-result v4

    .line 2569
    :goto_1d
    if-gez v4, :cond_20

    .line 2570
    const/4 v4, 0x0

    .line 2572
    :cond_20
    if-eqz p3, :cond_69

    .line 2573
    or-int/2addr v4, p2

    .line 2577
    :goto_23
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "PASSWORD"

    const-string/jumbo v8, "passwordBioAuthEnabled"

    invoke-virtual {v5, v6, v7, v8, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 2580
    if-eqz v2, :cond_3

    .line 2581
    if-nez v3, :cond_3

    .line 2582
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2585
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_3b
    const-string v5, "Password"

    const-string/jumbo v6, "setBiometricAuthenticationEnabled"

    invoke-virtual {p0, p1, p2}, isBiometricAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2586
    const-string v5, "PasswordPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GearPolicy setBiometricAuthenticationEnabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, p1, p2}, isBiometricAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_63} :catch_64

    goto :goto_3

    .line 2587
    :catch_64
    move-exception v0

    .line 2588
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 2575
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_69
    xor-int/lit8 v5, p2, -0x1

    and-int/2addr v4, v5

    goto :goto_23

    .line 2567
    :catch_6d
    move-exception v5

    goto :goto_1d
.end method

.method public setForbiddenStrings(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 23
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1274
    .local p2, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1275
    const/4 v13, 0x0

    .line 1278
    .local v13, "ret":Z
    :try_start_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1280
    .local v15, "sb":Ljava/lang/StringBuilder;
    if-nez p2, :cond_89

    .line 1281
    const-string v2, ""

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    :cond_11
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1290
    .local v10, "forbiddenStringVals":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "PASSWORD"

    const-string/jumbo v5, "passwordForbiddenStrings"

    invoke-virtual {v2, v3, v4, v5, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 1292
    if-eqz v13, :cond_88

    .line 1293
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1294
    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_33} :catch_b9

    move-result-wide v18

    .line 1296
    .local v18, "token":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_37
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "PasswordPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Admin "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v17, " has changed password forbidden strings to "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_69
    .catchall {:try_start_37 .. :try_end_69} :catchall_c3

    .line 1301
    :try_start_69
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1303
    if-nez v8, :cond_88

    .line 1304
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_77} :catch_b9

    .line 1307
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_77
    const-string v2, "Password"

    const-string/jumbo v3, "setForbiddenStrings"

    move-object/from16 v0, p2

    invoke-virtual {v11, v2, v3, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    .line 1308
    const-string v2, "PasswordPolicy"

    const-string v3, "GearPolicy setForbiddenStrings"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_88} :catch_c8

    .line 1318
    .end local v8    # "userId":I
    .end local v10    # "forbiddenStringVals":Ljava/lang/String;
    .end local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .end local v18    # "token":J
    :cond_88
    :goto_88
    return v13

    .line 1284
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_89
    :try_start_89
    new-instance v16, Ljava/util/TreeSet;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 1286
    .local v16, "stringSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_96
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1287
    .local v14, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_b8} :catch_b9

    goto :goto_96

    .line 1314
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "s":Ljava/lang/String;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .end local v16    # "stringSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_b9
    move-exception v9

    .line 1315
    .local v9, "e":Ljava/lang/Exception;
    const-string v2, "PasswordPolicy"

    const-string/jumbo v3, "setForbiddenStrings() failed."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_88

    .line 1301
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "userId":I
    .restart local v10    # "forbiddenStringVals":Ljava/lang/String;
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    .restart local v18    # "token":J
    :catchall_c3
    move-exception v2

    :try_start_c4
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1309
    .restart local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_c8
    move-exception v9

    .line 1310
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_cc} :catch_b9

    goto :goto_88
.end method

.method public setKeyguardDisabledFeatures(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "which"    # I

    .prologue
    .line 2764
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2765
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2769
    sparse-switch p3, :sswitch_data_52

    .line 2787
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid features "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for container"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2773
    :sswitch_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2774
    .local v2, "token":J
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_3f

    .line 2776
    :try_start_31
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setKeyguardDisabledFeaturesMDM(Landroid/content/ComponentName;II)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3c} :catch_40
    .catchall {:try_start_31 .. :try_end_3c} :catchall_4c

    .line 2781
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2790
    :cond_3f
    :goto_3f
    return-void

    .line 2778
    :catch_40
    move-exception v0

    .line 2779
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_41
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_4c

    .line 2781
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3f

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_4c
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 2769
    nop

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_29
        0x10 -> :sswitch_29
    .end sparse-switch
.end method

.method public setKeyguardDisabledFeaturesInternal(Landroid/content/ComponentName;II)V
    .registers 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "which"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2831
    invoke-direct {p0}, enforceSystemUser()V

    .line 2833
    if-eqz p2, :cond_23

    and-int/lit8 v1, p2, 0x10

    if-nez v1, :cond_23

    .line 2835
    const-string v1, "PasswordPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setKeyguardDisabledFeatures() which not supported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2850
    :goto_22
    return-void

    .line 2840
    :cond_23
    :try_start_23
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "keyguardDisabledFeatures"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 2842
    const-string v1, "PasswordPolicy"

    const-string/jumbo v2, "setKeyguardDisabledFeatures() true"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3b} :catch_3c

    goto :goto_22

    .line 2846
    :catch_3c
    move-exception v0

    .line 2847
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PasswordPolicy"

    const-string/jumbo v2, "setKeyguardDisabledFeatures() failed"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2848
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22

    .line 2844
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_49
    :try_start_49
    const-string v1, "PasswordPolicy"

    const-string/jumbo v2, "setKeyguardDisabledFeatures() false"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_51} :catch_3c

    goto :goto_22
.end method

.method public setMaximumCharacterOccurrences(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "count"    # I

    .prologue
    .line 1378
    if-gez p2, :cond_4

    .line 1379
    const/4 v9, 0x0

    .line 1408
    :cond_3
    :goto_3
    return v9

    .line 1382
    :cond_4
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1383
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "PASSWORD"

    const-string/jumbo v3, "passwordMaximumCharacterOccurences"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    .line 1386
    .local v9, "ret":Z
    if-eqz v9, :cond_3

    .line 1387
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1388
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1390
    .local v10, "token":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_24
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "PasswordPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " has changed password maximum character occurences to "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_4c
    .catchall {:try_start_24 .. :try_end_4c} :catchall_87

    .line 1395
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1397
    if-nez v6, :cond_3

    .line 1398
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1401
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_58
    const-string v0, "Password"

    const-string/jumbo v1, "setMaximumCharacterOccurrences"

    invoke-virtual {p0, p1}, getMaximumCharacterOccurences(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetIntTypePolicy(Ljava/lang/String;Ljava/lang/String;I)I

    .line 1402
    const-string v0, "PasswordPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GearPolicy setMaximumCharacterOccurrences : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, getMaximumCharacterOccurences(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_80} :catch_81

    goto :goto_3

    .line 1403
    :catch_81
    move-exception v7

    .line 1404
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 1395
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catchall_87
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setMaximumCharacterSequenceLength(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "length"    # I

    .prologue
    .line 1675
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1677
    if-gez p2, :cond_8

    .line 1678
    const/4 v9, 0x0

    .line 1706
    :cond_7
    :goto_7
    return v9

    .line 1681
    :cond_8
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string/jumbo v4, "passwordMaximumCharacterSequenceLength"

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    .line 1684
    .local v9, "ret":Z
    if-eqz v9, :cond_7

    .line 1685
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1686
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1688
    .local v10, "token":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_27
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "PasswordPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " has changed password maximum character sequence length to "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_4f
    .catchall {:try_start_27 .. :try_end_4f} :catchall_8a

    .line 1693
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1695
    if-nez v6, :cond_7

    .line 1696
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1699
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_5b
    const-string v0, "Password"

    const-string/jumbo v1, "setMaximumCharacterSequenceLength"

    invoke-virtual {p0, p1}, getMaximumCharacterSequenceLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetIntTypePolicy(Ljava/lang/String;Ljava/lang/String;I)I

    .line 1700
    const-string v0, "PasswordPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GearPolicy setMaximumCharacterSequenceLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, getMaximumCharacterSequenceLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_83} :catch_84

    goto :goto_7

    .line 1701
    :catch_84
    move-exception v7

    .line 1702
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 1693
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catchall_8a
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setMaximumFailedPasswordsForDisable(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "num"    # I

    .prologue
    .line 1112
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1113
    if-gez p2, :cond_8

    .line 1114
    const/4 v9, 0x0

    .line 1141
    :cond_7
    :goto_7
    return v9

    .line 1116
    :cond_8
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "PASSWORD"

    const-string/jumbo v3, "passwordAttemptDeviceDisable"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    .line 1119
    .local v9, "result":Z
    if-eqz v9, :cond_7

    .line 1120
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1121
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1123
    .local v10, "token":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_24
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "PasswordPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " has changed maximum failed passwords for disable to "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_4c
    .catchall {:try_start_24 .. :try_end_4c} :catchall_86

    .line 1127
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1130
    if-nez v6, :cond_7

    .line 1131
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1134
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_58
    const-string v0, "Password"

    const-string/jumbo v1, "setMaximumFailedPasswordsForDeviceDisable"

    invoke-virtual {p0, p1}, getMaximumFailedPasswordsForDisable(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetIntTypePolicy(Ljava/lang/String;Ljava/lang/String;I)I

    .line 1135
    const-string v0, "PasswordPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GearPolicy setMaximumFailedPasswordsForDeviceDisable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, getMaximumFailedPasswordsForDisable(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_80} :catch_81

    goto :goto_7

    .line 1136
    :catch_81
    move-exception v7

    .line 1137
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 1127
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catchall_86
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "num"    # I

    .prologue
    .line 2448
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2449
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2450
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2452
    .local v4, "token":J
    iget-object v3, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_48

    .line 2454
    :try_start_f
    iget-object v3, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-interface {v3, p2, p3, v6}, Landroid/app/admin/IDevicePolicyManager;->setMaximumFailedPasswordsForWipeMDM(Landroid/content/ComponentName;II)V

    .line 2456
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_21} :catch_4e
    .catchall {:try_start_f .. :try_end_21} :catchall_5a

    .line 2458
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_21
    invoke-virtual {p0, p1, p2}, getMaximumFailedPasswordsForWipe(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I

    move-result v2

    .line 2459
    .local v2, "result":I
    const-string v3, "Password"

    const-string/jumbo v6, "setMaximumFailedPasswordsForWipe"

    invoke-virtual {v1, v3, v6, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetIntTypePolicy(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2460
    const-string v3, "PasswordPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GearPolicy SetIntTypePolicy setMaximumFailedPasswordsForWipe: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_45} :catch_49
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_45} :catch_4e
    .catchall {:try_start_21 .. :try_end_45} :catchall_5a

    .line 2467
    .end local v2    # "result":I
    :goto_45
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2470
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_48
    :goto_48
    return-void

    .line 2461
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_49
    move-exception v0

    .line 2462
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4d} :catch_4e
    .catchall {:try_start_4a .. :try_end_4d} :catchall_5a

    goto :goto_45

    .line 2464
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_4e
    move-exception v0

    .line 2465
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4f
    const-string v3, "PasswordPolicy"

    const-string v6, "Failed talking with device policy service"

    invoke-static {v3, v6, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_5a

    .line 2467
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_48

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_5a
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setMaximumNumericSequenceLength(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "length"    # I

    .prologue
    .line 1173
    if-gez p2, :cond_4

    .line 1174
    const/4 v9, 0x0

    .line 1205
    :cond_3
    :goto_3
    return v9

    .line 1177
    :cond_4
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1179
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "PASSWORD"

    const-string/jumbo v3, "passwordMaximumNumericSequenceLength"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    .line 1182
    .local v9, "ret":Z
    if-eqz v9, :cond_3

    .line 1183
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1184
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1186
    .local v10, "token":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_24
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "PasswordPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " has changed password maximum numeric sequence to "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_4c
    .catchall {:try_start_24 .. :try_end_4c} :catchall_87

    .line 1190
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1193
    if-nez v6, :cond_3

    .line 1194
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1196
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_58
    const-string v0, "Password"

    const-string/jumbo v1, "setMaximumNumericSequenceLength"

    invoke-virtual {p0, p1}, getMaximumNumericSequenceLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetIntTypePolicy(Ljava/lang/String;Ljava/lang/String;I)I

    .line 1197
    const-string v0, "PasswordPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GearPolicy setMaximumNumericSequenceLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, getMaximumNumericSequenceLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_80} :catch_81

    goto :goto_3

    .line 1198
    :catch_81
    move-exception v7

    .line 1199
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 1190
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catchall_87
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setMaximumTimeToLock(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;J)V
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "timeMs"    # J

    .prologue
    .line 2512
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2513
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2514
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2516
    .local v4, "token":J
    iget-object v6, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v6, :cond_48

    .line 2518
    :try_start_f
    iget-object v6, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-interface {v6, p2, p3, p4, v7}, Landroid/app/admin/IDevicePolicyManager;->setMaximumTimeToLockMDM(Landroid/content/ComponentName;JI)V

    .line 2520
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_21} :catch_4e
    .catchall {:try_start_f .. :try_end_21} :catchall_5a

    .line 2522
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_21
    invoke-virtual {p0, p1, p2}, getMaximumTimeToLock(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 2523
    .local v2, "result":J
    const-string v6, "Password"

    const-string/jumbo v7, "setMaximumTimeToLock"

    invoke-virtual {v1, v6, v7, v2, v3}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetLongTypePolicy(Ljava/lang/String;Ljava/lang/String;J)I

    .line 2524
    const-string v6, "PasswordPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GearPolicy SetLongTypePolicy setMaximumTimeToLock: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_45} :catch_49
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_45} :catch_4e
    .catchall {:try_start_21 .. :try_end_45} :catchall_5a

    .line 2531
    .end local v2    # "result":J
    :goto_45
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2534
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_48
    :goto_48
    return-void

    .line 2525
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_49
    move-exception v0

    .line 2526
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4d} :catch_4e
    .catchall {:try_start_4a .. :try_end_4d} :catchall_5a

    goto :goto_45

    .line 2528
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_4e
    move-exception v0

    .line 2529
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4f
    const-string v6, "PasswordPolicy"

    const-string v7, "Failed talking with device policy service"

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_5a

    .line 2531
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_48

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_5a
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setMinimumCharacterChangeLength(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "length"    # I

    .prologue
    .line 1737
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1740
    if-gez p2, :cond_8

    .line 1741
    const/4 v9, 0x0

    .line 1768
    :cond_7
    :goto_7
    return v9

    .line 1744
    :cond_8
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "PASSWORD"

    const-string/jumbo v4, "passwordMinimumCharacterChangeUpdatingPasswordLength"

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(IILjava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    .line 1746
    .local v9, "ret":Z
    if-eqz v9, :cond_7

    .line 1747
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1748
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1750
    .local v10, "token":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_27
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "PasswordPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " has changed password minimum character sequence length to "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_4f
    .catchall {:try_start_27 .. :try_end_4f} :catchall_8a

    .line 1755
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1757
    if-nez v6, :cond_7

    .line 1758
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1761
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_5b
    const-string v0, "Password"

    const-string/jumbo v1, "setMinimumCharacterChangeLength"

    invoke-virtual {p0, p1}, getMinimumCharacterChangeLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetIntTypePolicy(Ljava/lang/String;Ljava/lang/String;I)I

    .line 1762
    const-string v0, "PasswordPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GearPolicy setMinimumCharacterChangeLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, getMinimumCharacterChangeLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_83} :catch_84

    goto :goto_7

    .line 1763
    :catch_84
    move-exception v7

    .line 1764
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 1755
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catchall_8a
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setPasswordChangeTimeout(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "timeout"    # I

    .prologue
    .line 490
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 493
    if-gez p2, :cond_8

    .line 494
    const/4 v3, 0x0

    .line 516
    :cond_7
    :goto_7
    return v3

    .line 496
    :cond_8
    const/4 v3, 0x1

    .line 497
    .local v3, "ret":Z
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 498
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "passwordChangeTimeout"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v8, "PASSWORD"

    invoke-virtual {v5, v6, v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    .line 501
    if-eqz v3, :cond_7

    .line 502
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 504
    .local v4, "userId":I
    if-nez v4, :cond_7

    .line 505
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 508
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_33
    const-string v5, "Password"

    const-string/jumbo v6, "setPasswordChangeTimeout"

    invoke-virtual {p0, p1}, getPasswordChangeTimeout(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetIntTypePolicy(Ljava/lang/String;Ljava/lang/String;I)I

    .line 509
    const-string v5, "PasswordPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GearPolicy setPasswordChangeTimeout : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, p1}, getPasswordChangeTimeout(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_5b} :catch_5c

    goto :goto_7

    .line 510
    :catch_5c
    move-exception v1

    .line 511
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public setPasswordExpirationTimeout(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;J)V
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "timeout"    # J

    .prologue
    .line 2352
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2353
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2354
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2355
    .local v4, "token":J
    iget-object v6, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v6, :cond_48

    .line 2357
    :try_start_f
    iget-object v6, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-interface {v6, p2, p3, p4, v7}, Landroid/app/admin/IDevicePolicyManager;->setPasswordExpirationTimeoutMDM(Landroid/content/ComponentName;JI)V

    .line 2359
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_21} :catch_4e
    .catchall {:try_start_f .. :try_end_21} :catchall_5a

    .line 2361
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_21
    invoke-virtual {p0, p1, p2}, getPasswordExpirationTimeout(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 2362
    .local v2, "result":J
    const-string v6, "Password"

    const-string/jumbo v7, "setPasswordExpirationTimeout"

    invoke-virtual {v1, v6, v7, v2, v3}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetLongTypePolicy(Ljava/lang/String;Ljava/lang/String;J)I

    .line 2363
    const-string v6, "PasswordPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GearPolicy SetLongTypePolicy setPasswordExpirationTimeout: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_45} :catch_49
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_45} :catch_4e
    .catchall {:try_start_21 .. :try_end_45} :catchall_5a

    .line 2370
    .end local v2    # "result":J
    :goto_45
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2373
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_48
    :goto_48
    return-void

    .line 2364
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_49
    move-exception v0

    .line 2365
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4d} :catch_4e
    .catchall {:try_start_4a .. :try_end_4d} :catchall_5a

    goto :goto_45

    .line 2367
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_4e
    move-exception v0

    .line 2368
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4f
    const-string v6, "PasswordPolicy"

    const-string v7, "Failed talking with device policy service"

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_5a

    .line 2370
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_48

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_5a
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setPasswordHistoryLength(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 2310
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2311
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2312
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2313
    .local v4, "token":J
    iget-object v3, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_48

    .line 2315
    :try_start_f
    iget-object v3, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-interface {v3, p2, p3, v6}, Landroid/app/admin/IDevicePolicyManager;->setPasswordHistoryLengthMDM(Landroid/content/ComponentName;II)V

    .line 2317
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_21} :catch_4e
    .catchall {:try_start_f .. :try_end_21} :catchall_5a

    .line 2319
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_21
    invoke-virtual {p0, p1, p2}, getPasswordHistoryLength(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I

    move-result v2

    .line 2320
    .local v2, "result":I
    const-string v3, "Password"

    const-string/jumbo v6, "setPasswordHistoryLength"

    invoke-virtual {v1, v3, v6, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetIntTypePolicy(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2321
    const-string v3, "PasswordPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GearPolicy SetIntTypePolicy setPasswordHistoryLength: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_45} :catch_49
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_45} :catch_4e
    .catchall {:try_start_21 .. :try_end_45} :catchall_5a

    .line 2328
    .end local v2    # "result":I
    :goto_45
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2331
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_48
    :goto_48
    return-void

    .line 2322
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_49
    move-exception v0

    .line 2323
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4d} :catch_4e
    .catchall {:try_start_4a .. :try_end_4d} :catchall_5a

    goto :goto_45

    .line 2325
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_4e
    move-exception v0

    .line 2326
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4f
    const-string v3, "PasswordPolicy"

    const-string v6, "Failed talking with device policy service"

    invoke-static {v3, v6, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_5a

    .line 2328
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_48

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_5a
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setPasswordLockDelay(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "time"    # I

    .prologue
    .line 209
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 210
    const/4 v5, -0x1

    if-ge p2, v5, :cond_9

    .line 211
    const/4 v3, 0x0

    .line 231
    :cond_8
    :goto_8
    return v3

    .line 212
    :cond_9
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 213
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "unlockDelay"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v8, "PASSWORD"

    invoke-virtual {v5, v6, v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    .line 217
    .local v3, "result":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 219
    .local v4, "userId":I
    if-eqz v3, :cond_8

    .line 220
    if-nez v4, :cond_8

    .line 221
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 224
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_33
    const-string v5, "Password"

    const-string/jumbo v6, "setPasswordLockDelay"

    invoke-virtual {p0, p1}, getPasswordLockDelay(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetIntTypePolicy(Ljava/lang/String;Ljava/lang/String;I)I

    .line 225
    const-string v5, "PasswordPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GearPolicy setPasswordLockDelay : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, p1}, getPasswordLockDelay(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_5b} :catch_5c

    goto :goto_8

    .line 226
    :catch_5c
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method public setPasswordMinimumLength(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 2072
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2073
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2074
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2075
    .local v2, "token":J
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1d

    .line 2077
    :try_start_f
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLengthMDM(Landroid/content/ComponentName;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1e
    .catchall {:try_start_f .. :try_end_1a} :catchall_2a

    .line 2082
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2085
    :cond_1d
    :goto_1d
    return-void

    .line 2079
    :catch_1e
    move-exception v0

    .line 2080
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1f
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_2a

    .line 2082
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_2a
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setPasswordMinimumLetters(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 2174
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2175
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2176
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2177
    .local v2, "token":J
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1d

    .line 2179
    :try_start_f
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLettersMDM(Landroid/content/ComponentName;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1e
    .catchall {:try_start_f .. :try_end_1a} :catchall_2a

    .line 2184
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2187
    :cond_1d
    :goto_1d
    return-void

    .line 2181
    :catch_1e
    move-exception v0

    .line 2182
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1f
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_2a

    .line 2184
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_2a
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setPasswordMinimumLowerCase(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 2140
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2141
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2143
    .local v2, "token":J
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1d

    .line 2145
    :try_start_f
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLowerCaseMDM(Landroid/content/ComponentName;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1e
    .catchall {:try_start_f .. :try_end_1a} :catchall_2a

    .line 2150
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2153
    :cond_1d
    :goto_1d
    return-void

    .line 2147
    :catch_1e
    move-exception v0

    .line 2148
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1f
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_2a

    .line 2150
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_2a
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setPasswordMinimumNonLetter(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 2276
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2277
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2278
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2279
    .local v2, "token":J
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1d

    .line 2281
    :try_start_f
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNonLetterMDM(Landroid/content/ComponentName;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1e
    .catchall {:try_start_f .. :try_end_1a} :catchall_2a

    .line 2286
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2289
    :cond_1d
    :goto_1d
    return-void

    .line 2283
    :catch_1e
    move-exception v0

    .line 2284
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1f
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_2a

    .line 2286
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_2a
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setPasswordMinimumNumeric(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 2208
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2209
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2210
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2211
    .local v2, "token":J
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1d

    .line 2213
    :try_start_f
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNumericMDM(Landroid/content/ComponentName;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1e
    .catchall {:try_start_f .. :try_end_1a} :catchall_2a

    .line 2218
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2221
    :cond_1d
    :goto_1d
    return-void

    .line 2215
    :catch_1e
    move-exception v0

    .line 2216
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1f
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_2a

    .line 2218
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_2a
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setPasswordMinimumSymbols(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 2242
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2243
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2244
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2245
    .local v2, "token":J
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1d

    .line 2247
    :try_start_f
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumSymbolsMDM(Landroid/content/ComponentName;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1e
    .catchall {:try_start_f .. :try_end_1a} :catchall_2a

    .line 2252
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2255
    :cond_1d
    :goto_1d
    return-void

    .line 2249
    :catch_1e
    move-exception v0

    .line 2250
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1f
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_2a

    .line 2252
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_2a
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setPasswordMinimumUpperCase(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "length"    # I

    .prologue
    .line 2106
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2107
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2108
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2109
    .local v2, "token":J
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1d

    .line 2111
    :try_start_f
    iget-object v1, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, p2, p3, v4}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumUpperCaseMDM(Landroid/content/ComponentName;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1a} :catch_1e
    .catchall {:try_start_f .. :try_end_1a} :catchall_2a

    .line 2116
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2119
    :cond_1d
    :goto_1d
    return-void

    .line 2113
    :catch_1e
    move-exception v0

    .line 2114
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1f
    const-string v1, "PasswordPolicy"

    const-string v4, "Failed talking with device policy service"

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_2a

    .line 2116
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_2a
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setPasswordQuality(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;I)V
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "quality"    # I

    .prologue
    .line 2028
    invoke-virtual {p0, p1, p2}, enforceComponentCheck(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)V

    .line 2029
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2030
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2032
    .local v4, "token":J
    iget-object v3, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v3, :cond_48

    .line 2034
    :try_start_f
    iget-object v3, p0, mService:Landroid/app/admin/IDevicePolicyManager;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-interface {v3, p2, p3, v6}, Landroid/app/admin/IDevicePolicyManager;->setPasswordQualityMDM(Landroid/content/ComponentName;II)V

    .line 2036
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_21} :catch_4e
    .catchall {:try_start_f .. :try_end_21} :catchall_5a

    .line 2038
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_21
    invoke-virtual {p0, p1, p2}, getPasswordQuality(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I

    move-result v2

    .line 2039
    .local v2, "result":I
    const-string v3, "Password"

    const-string/jumbo v6, "setPasswordQuality"

    invoke-virtual {v1, v3, v6, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetIntTypePolicy(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2040
    const-string v3, "PasswordPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GearPolicy SetIntTypePolicy setPasswordQuality: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_45} :catch_49
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_45} :catch_4e
    .catchall {:try_start_21 .. :try_end_45} :catchall_5a

    .line 2047
    .end local v2    # "result":I
    :goto_45
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2050
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_48
    :goto_48
    return-void

    .line 2041
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_49
    move-exception v0

    .line 2042
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4d} :catch_4e
    .catchall {:try_start_4a .. :try_end_4d} :catchall_5a

    goto :goto_45

    .line 2044
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_4e
    move-exception v0

    .line 2045
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4f
    const-string v3, "PasswordPolicy"

    const-string v6, "Failed talking with device policy service"

    invoke-static {v3, v6, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_5a

    .line 2047
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_48

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_5a
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setPasswordVisibilityEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1906
    const/4 v2, 0x1

    .line 1907
    .local v2, "result":Z
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1908
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1910
    .local v3, "userId":I
    invoke-virtual {p0, v3}, isPasswordVisibilityEnabledAsUser(I)Z

    move-result v6

    if-eqz v6, :cond_27

    if-nez p2, :cond_27

    .line 1911
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1912
    .local v4, "token":J
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "show_password"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1914
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1917
    .end local v4    # "token":J
    :cond_27
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v8, "PASSWORD"

    const-string/jumbo v9, "passwordVisibilityEnabled"

    invoke-virtual {v6, v7, v8, v9, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 1920
    if-eqz v2, :cond_67

    .line 1921
    if-nez v3, :cond_67

    .line 1922
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1925
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_3f
    const-string v6, "Password"

    const-string/jumbo v7, "setPasswordVisibilityEnabled"

    invoke-virtual {p0, p1}, isPasswordVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1926
    const-string v6, "PasswordPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GearPolicy setPasswordVisibilityEnabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p1}, isPasswordVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_67} :catch_68

    .line 1932
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_67
    :goto_67
    return v2

    .line 1927
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_68
    move-exception v0

    .line 1928
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_67
.end method

.method public setPwdChangeRequested(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "flag"    # I

    .prologue
    .line 1003
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1004
    .local v0, "userId":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {p0, v1, p2, v0}, setPwdChangeRequestedForUser(III)Z

    move-result v1

    return v1
.end method

.method public declared-synchronized setPwdChangeRequestedForUser(III)Z
    .registers 24
    .param p1, "containerId"    # I
    .param p2, "flag"    # I
    .param p3, "userId"    # I

    .prologue
    .line 1008
    monitor-enter p0

    :try_start_1
    const-string v15, "android.uid.system:1000"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, checkPackageCallerOrEnforceSystemUser(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_c7

    .line 1009
    const/4 v13, 0x1

    .line 1014
    .local v13, "success":Z
    if-nez p2, :cond_b9

    .line 1015
    :try_start_b
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, unlockSdp(I)V

    .line 1022
    :cond_12
    :goto_12
    move-object/from16 v0, p0

    iget-object v15, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v18, "passwordChangeRequested"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p3

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1026
    move-object/from16 v0, p0

    iget-object v15, v0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v15}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v15

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v15

    if-nez v15, :cond_b7

    .line 1027
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1029
    .local v16, "token":J
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    const-string v18, "activity"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 1032
    .local v5, "am":Landroid/app/ActivityManager;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 1033
    .local v4, "Iam":Landroid/app/IActivityManager;
    const/16 v15, 0xc

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v5, v15, v0, v1}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v11

    .line 1035
    .local v11, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const-string v12, "com.android.settings"

    .line 1036
    .local v12, "settingsPkg":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_ca

    .line 1037
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_66
    :goto_66
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_ca

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1038
    .local v14, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v9, v14, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 1039
    .local v9, "origInt":Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 1040
    .local v6, "cmp":Landroid/content/ComponentName;
    if-eqz v6, :cond_66

    .line 1041
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 1042
    .local v10, "packageName":Ljava/lang/String;
    const-string v15, "PasswordPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "packageName "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    if-eqz v10, :cond_66

    const-string v15, "com.android.settings"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_66

    .line 1045
    const-string v15, "com.android.settings"

    move/from16 v0, p3

    invoke-interface {v4, v15, v0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 1046
    iget v15, v14, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v5, v15}, Landroid/app/ActivityManager;->removeTask(I)Z
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b1} :catch_b2
    .catchall {:try_start_b .. :try_end_b1} :catchall_c7

    goto :goto_66

    .line 1053
    .end local v4    # "Iam":Landroid/app/IActivityManager;
    .end local v5    # "am":Landroid/app/ActivityManager;
    .end local v6    # "cmp":Landroid/content/ComponentName;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "origInt":Landroid/content/Intent;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v12    # "settingsPkg":Ljava/lang/String;
    .end local v14    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v16    # "token":J
    :catch_b2
    move-exception v7

    .line 1054
    .local v7, "e":Ljava/lang/Exception;
    :try_start_b3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_c7

    .line 1055
    const/4 v13, 0x0

    .line 1057
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_b7
    :goto_b7
    monitor-exit p0

    return v13

    .line 1016
    :cond_b9
    const/4 v15, 0x1

    move/from16 v0, p2

    if-ne v0, v15, :cond_12

    .line 1017
    :try_start_be
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, lockSdp(I)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c5} :catch_b2
    .catchall {:try_start_be .. :try_end_c5} :catchall_c7

    goto/16 :goto_12

    .line 1008
    .end local v13    # "success":Z
    :catchall_c7
    move-exception v15

    monitor-exit p0

    throw v15

    .line 1051
    .restart local v4    # "Iam":Landroid/app/IActivityManager;
    .restart local v5    # "am":Landroid/app/ActivityManager;
    .restart local v11    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .restart local v12    # "settingsPkg":Ljava/lang/String;
    .restart local v13    # "success":Z
    .restart local v16    # "token":J
    :cond_ca
    :try_start_ca
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_cd} :catch_b2
    .catchall {:try_start_ca .. :try_end_cd} :catchall_c7

    goto :goto_b7
.end method

.method public setRequiredPasswordPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "regex"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-direct/range {p0 .. p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 261
    if-eqz p2, :cond_16

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, checkRegex(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 262
    :cond_16
    const/4 v12, 0x0

    .line 296
    :cond_17
    :goto_17
    return v12

    .line 264
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v5, "PASSWORD"

    const-string/jumbo v6, "passwordRequiredPattern"

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .line 266
    .local v12, "ret":Z
    if-eqz v12, :cond_17

    .line 267
    invoke-direct/range {p0 .. p1}, getCurrentPasswordOwner(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 268
    .local v9, "currentOwner":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eq v9, v2, :cond_41

    .line 271
    invoke-direct/range {p0 .. p1}, removeOwnerFromStack(Landroid/app/enterprise/ContextInfo;)V

    .line 273
    invoke-direct/range {p0 .. p1}, addOwnerToStack(Landroid/app/enterprise/ContextInfo;)V

    .line 275
    :cond_41
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 276
    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 278
    .local v14, "token":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_50
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "PasswordPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Admin "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, " has changed password required pattern to "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_7c
    .catchall {:try_start_50 .. :try_end_7c} :catchall_b6

    .line 282
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 285
    if-nez v8, :cond_17

    .line 286
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 289
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_8a
    const-string v2, "Password"

    const-string/jumbo v3, "setRequiredPasswordPattern"

    move-object/from16 v0, p2

    invoke-virtual {v11, v2, v3, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v2, "PasswordPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GearPolicy setRequiredPasswordPattern : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_ae} :catch_b0

    goto/16 :goto_17

    .line 291
    :catch_b0
    move-exception v10

    .line 292
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_17

    .line 282
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catchall_b6
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setScreenLockPatternVisibilityEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v10, 0x0

    .line 1619
    const/4 v2, 0x0

    .line 1620
    .local v2, "result":Z
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1623
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v8, "PASSWORD"

    const-string/jumbo v9, "screenLockPatternVisibility"

    invoke-virtual {v6, v7, v8, v9, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 1626
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1628
    .local v3, "userId":I
    if-eqz v2, :cond_3d

    invoke-virtual {p0, p1}, isScreenLockPatternVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 1629
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1630
    .local v4, "token":J
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "lock_pattern_visible_pattern"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    .line 1632
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v10, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 1634
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1637
    .end local v4    # "token":J
    :cond_3d
    if-eqz v2, :cond_70

    .line 1638
    if-nez v3, :cond_70

    .line 1639
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1642
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_48
    const-string v6, "Password"

    const-string/jumbo v7, "setScreenLockPatternVisibilityEnabled"

    invoke-virtual {p0, p1}, isScreenLockPatternVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1643
    const-string v6, "PasswordPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GearPolicy setScreenLockPatternVisibilityEnabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p1}, isScreenLockPatternVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_70} :catch_71

    .line 1649
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_70
    :goto_70
    return v2

    .line 1644
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_71
    move-exception v0

    .line 1645
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_70
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 1612
    return-void
.end method
