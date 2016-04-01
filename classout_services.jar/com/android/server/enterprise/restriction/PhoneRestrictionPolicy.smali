.class public Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
.super Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;
.source "PhoneRestrictionPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;
    }
.end annotation


# static fields
.field private static final ACCESS_TO_PB_ADD:I = 0x1

.field private static final ACCESS_TO_PB_EDIT:I = 0x3

.field private static final ACTION_SIM_PIN_SERVICE:Ljava/lang/String; = "com.sec.enterprise.SimPinCode"

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final MSG_DELIVERY_MMS:I = 0x1

.field private static final MSG_DELIVERY_SMS:I = 0x0

.field private static final MSG_DELIVERY_SMS_MMS:I = 0x2

.field private static final SIM_PIN_BIND_TIMER:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "PhoneRestrictionPolicy"

.field private static final TYPE_MMS:I = 0x1

.field private static final TYPE_SMS:I


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDataCheckboxPreviousState:Z

.field private mDataLimitEnabled:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private volatile mIsPhoneShuttingDown:Z

.field private mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

.field private mSimPinBind:Ljava/lang/Runnable;

.field private mSimPinHandler:Landroid/os/Handler;

.field private mSimPinService:Landroid/app/enterprise/ISimPinPolicy;

.field private mSimPinServiceConn:Landroid/content/ServiceConnection;

.field private mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

.field private mTelMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 132
    invoke-direct {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;-><init>()V

    .line 107
    iput-object v3, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 111
    iput-boolean v2, p0, mDataLimitEnabled:Z

    .line 112
    iput-boolean v2, p0, mDataCheckboxPreviousState:Z

    .line 120
    new-instance v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;)V

    iput-object v1, p0, mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    .line 121
    iput-boolean v2, p0, mIsPhoneShuttingDown:Z

    .line 2486
    new-instance v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    iput-object v1, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2716
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, mSimPinHandler:Landroid/os/Handler;

    .line 2717
    new-instance v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$2;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    iput-object v1, p0, mSimPinBind:Ljava/lang/Runnable;

    .line 2728
    new-instance v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    iput-object v1, p0, mSimPinServiceConn:Landroid/content/ServiceConnection;

    .line 133
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, " >>> PhoneRestrictionPolicy.PhoneRestrictionPolicy()"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 135
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 136
    invoke-virtual {p0, v3}, getDataCallLimitEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    iput-boolean v1, p0, mDataLimitEnabled:Z

    .line 137
    invoke-direct {p0}, getDataCheckboxState()Z

    move-result v1

    iput-boolean v1, p0, mDataCheckboxPreviousState:Z

    .line 138
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    .local v0, "broadcastFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string/jumbo v1, "edm.intent.action.PHONE_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/restriction/SimDBProxy;

    move-result-object v1

    iput-object v1, p0, mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    .line 148
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1}, deliveryBlockedMsgs(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .prologue
    .line 99
    iget-object v0, p0, mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, mIsPhoneShuttingDown:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .prologue
    .line 99
    iget-object v0, p0, mSimPinBind:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .prologue
    .line 99
    iget-object v0, p0, mSimPinHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/content/ServiceConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .prologue
    .line 99
    iget-object v0, p0, mSimPinServiceConn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .prologue
    .line 99
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Landroid/app/enterprise/ISimPinPolicy;)Landroid/app/enterprise/ISimPinPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    .param p1, "x1"    # Landroid/app/enterprise/ISimPinPolicy;

    .prologue
    .line 99
    iput-object p1, p0, mSimPinService:Landroid/app/enterprise/ISimPinPolicy;

    return-object p1
.end method

.method private blockDataNetwork()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1856
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1858
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_17

    .line 1859
    const-string v2, "PhoneRestrictionPolicy"

    const-string v3, "Failed to get Telephony Manager"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    :goto_16
    return v1

    .line 1862
    :cond_17
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1864
    iput-boolean v2, p0, mDataCheckboxPreviousState:Z

    .line 1865
    iget-boolean v3, p0, mDataCheckboxPreviousState:Z

    invoke-direct {p0, v3}, putDataCheckboxState(Z)Z

    .line 1866
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :cond_27
    move v1, v2

    .line 1868
    goto :goto_16
.end method

.method private changeSimPinCodeService(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "currentPinCode"    # Ljava/lang/String;
    .param p2, "newPinCode"    # Ljava/lang/String;

    .prologue
    .line 2758
    iget-object v1, p0, mSimPinService:Landroid/app/enterprise/ISimPinPolicy;

    if-eqz v1, :cond_16

    .line 2760
    :try_start_4
    iget-object v1, p0, mSimPinService:Landroid/app/enterprise/ISimPinPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISimPinPolicy;->changeSimPinCode(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2768
    :goto_a
    return v1

    .line 2761
    :catch_b
    move-exception v0

    .line 2762
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, "Failed to communicate with Sim Pin Service"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2768
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    const/16 v1, 0x64

    goto :goto_a

    .line 2766
    :cond_16
    iget-object v1, p0, mSimPinHandler:Landroid/os/Handler;

    iget-object v2, p0, mSimPinBind:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_13
.end method

.method private dataLimitCounter(Ljava/lang/String;J)V
    .registers 10
    .param p1, "period"    # Ljava/lang/String;
    .param p2, "totalBytes"    # J

    .prologue
    .line 1840
    const-wide/16 v2, 0x0

    .line 1842
    .local v2, "storageValue":J
    :try_start_2
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_b} :catch_17

    move-result-wide v2

    .line 1846
    :goto_c
    add-long/2addr v2, p2

    .line 1847
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1848
    return-void

    .line 1843
    :catch_17
    move-exception v0

    .line 1844
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v2, 0x0

    goto :goto_c
.end method

.method private deleteMessageFromStorageProvider(Ljava/lang/String;)V
    .registers 7
    .param p1, "rowId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2388
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v2, "smsMmsBlockedRowId"

    aput-object v2, v0, v3

    .line 2389
    .local v0, "columnRowId":[Ljava/lang/String;
    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    .line 2390
    .local v1, "rowIdValue":[Ljava/lang/String;
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "SMSMMSBlockedDelivery"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2392
    return-void
.end method

.method private declared-synchronized deliveryBlockedMsgs(I)V
    .registers 20
    .param p1, "type"    # I

    .prologue
    .line 2281
    monitor-enter p0

    :try_start_1
    const-string v15, "PhoneRestrictionPolicy"

    const-string v16, " >>>> deliveryBlockedMsgs"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    const/4 v15, 0x5

    new-array v2, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "smsMmsBlockedRowId"

    aput-object v16, v2, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "smsMmsSendType"

    aput-object v16, v2, v15

    const/4 v15, 0x2

    const-string/jumbo v16, "smsMmsPdu"

    aput-object v16, v2, v15

    const/4 v15, 0x3

    const-string/jumbo v16, "smsMmsTimeStamp"

    aput-object v16, v2, v15

    const/4 v15, 0x4

    const-string/jumbo v16, "smsMmsOrigAddress"

    aput-object v16, v2, v15

    .line 2291
    .local v2, "columns":[Ljava/lang/String;
    if-nez p1, :cond_69

    const-string v14, "1"

    .line 2292
    .local v14, "whereValue":Ljava/lang/String;
    :goto_2d
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 2293
    .local v13, "whereClause":Landroid/content/ContentValues;
    const-string/jumbo v15, "smsMmsType"

    invoke-virtual {v13, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2295
    move-object/from16 v0, p0

    iget-object v15, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v16, "SMSMMSBlockedDelivery"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v12

    .line 2297
    .local v12, "smsMmsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const-string v15, "PhoneRestrictionPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "cvList size "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2298
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z
    :try_end_64
    .catchall {:try_start_1 .. :try_end_64} :catchall_8a

    move-result v15

    if-eqz v15, :cond_6c

    .line 2382
    :goto_67
    monitor-exit p0

    return-void

    .line 2291
    .end local v12    # "smsMmsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v13    # "whereClause":Landroid/content/ContentValues;
    .end local v14    # "whereValue":Ljava/lang/String;
    :cond_69
    :try_start_69
    const-string v14, "0"

    goto :goto_2d

    .line 2302
    .restart local v12    # "smsMmsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v13    # "whereClause":Landroid/content/ContentValues;
    .restart local v14    # "whereValue":Ljava/lang/String;
    :cond_6c
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_70
    :goto_70
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1c2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentValues;

    .line 2303
    .local v11, "smsMms":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-boolean v15, v0, mIsPhoneShuttingDown:Z

    if-eqz v15, :cond_8d

    .line 2304
    const-string v15, "PhoneRestrictionPolicy"

    const-string v16, "Phone is shutting down ...quitting"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_69 .. :try_end_89} :catchall_8a

    goto :goto_67

    .line 2281
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v11    # "smsMms":Landroid/content/ContentValues;
    .end local v12    # "smsMmsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v13    # "whereClause":Landroid/content/ContentValues;
    .end local v14    # "whereValue":Ljava/lang/String;
    :catchall_8a
    move-exception v15

    monitor-exit p0

    throw v15

    .line 2308
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v11    # "smsMms":Landroid/content/ContentValues;
    .restart local v12    # "smsMmsList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v13    # "whereClause":Landroid/content/ContentValues;
    .restart local v14    # "whereValue":Ljava/lang/String;
    :cond_8d
    :try_start_8d
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 2312
    .local v6, "intent":Landroid/content/Intent;
    if-nez p1, :cond_135

    .line 2313
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, isBlockSmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v15

    if-eqz v15, :cond_a5

    .line 2314
    const-string v15, "PhoneRestrictionPolicy"

    const-string v16, "Block SMS with storage applies... quitting"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    .line 2320
    :cond_a5
    const-string/jumbo v15, "smsMmsOrigAddress"

    invoke-virtual {v11, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2321
    .local v7, "origAddress":Ljava/lang/String;
    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, getEmergencyCallOnly(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v15

    if-nez v15, :cond_ca

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, isIncomingSmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v15

    if-eqz v15, :cond_ca

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, canIncomingSms(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_de

    .line 2324
    :cond_ca
    const-string v15, "PhoneRestrictionPolicy"

    const-string v16, "Other incoming SMS policies apply... delete message and continue"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2325
    const-string/jumbo v15, "smsMmsBlockedRowId"

    invoke-virtual {v11, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, deleteMessageFromStorageProvider(Ljava/lang/String;)V

    goto :goto_70

    .line 2329
    :cond_de
    const-string/jumbo v15, "edm.intent.action.internal.RESTRICTION_SEND_BLOCKED_SMS"

    invoke-virtual {v6, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2357
    .end local v7    # "origAddress":Ljava/lang/String;
    :goto_e4
    const-string/jumbo v15, "smsMmsBlockedRowId"

    invoke-virtual {v11, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, deleteMessageFromStorageProvider(Ljava/lang/String;)V

    .line 2359
    const-string/jumbo v15, "smsMmsPdu"

    invoke-virtual {v11, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2360
    .local v4, "hexPdu":Ljava/lang/String;
    if-eqz v4, :cond_70

    .line 2361
    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v8

    .line 2362
    .local v8, "pdu":[B
    const/4 v9, -0x1

    .line 2363
    .local v9, "sendType":I
    const-string/jumbo v15, "smsMmsSendType"

    invoke-virtual {v11, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 2364
    .local v10, "sendTypeInteger":Ljava/lang/Integer;
    if-eqz v10, :cond_10b

    .line 2365
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2369
    :cond_10b
    const-string/jumbo v15, "extra_pdu"

    invoke-virtual {v6, v15, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2370
    const-string/jumbo v15, "send_type"

    invoke-virtual {v6, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2371
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    const-string v16, "android.permission.sec.RECEIVE_BLOCKED_SMS_MMS"

    move-object/from16 v0, v16

    invoke-virtual {v15, v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_122
    .catchall {:try_start_8d .. :try_end_122} :catchall_8a

    .line 2375
    const-wide/16 v16, 0x1f4

    :try_start_124
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_127
    .catch Ljava/lang/InterruptedException; {:try_start_124 .. :try_end_127} :catch_129
    .catchall {:try_start_124 .. :try_end_127} :catchall_8a

    goto/16 :goto_70

    .line 2376
    :catch_129
    move-exception v3

    .line 2377
    .local v3, "ex":Ljava/lang/InterruptedException;
    :try_start_12a
    const-string v15, "PhoneRestrictionPolicy"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_70

    .line 2331
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    .end local v4    # "hexPdu":Ljava/lang/String;
    .end local v8    # "pdu":[B
    .end local v9    # "sendType":I
    .end local v10    # "sendTypeInteger":Ljava/lang/Integer;
    :cond_135
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, isBlockMmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v15

    if-eqz v15, :cond_147

    .line 2332
    const-string v15, "PhoneRestrictionPolicy"

    const-string v16, "Block MMS with storage applies... quitting"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_67

    .line 2338
    :cond_147
    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, getEmergencyCallOnly(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v15

    if-nez v15, :cond_183

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, isIncomingMmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v15

    if-eqz v15, :cond_183

    move-object/from16 v0, p0

    iget-object v15, v0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v15

    if-eqz v15, :cond_175

    move-object/from16 v0, p0

    iget-object v15, v0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v15}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/enterprise/RoamingPolicy;->isRoamingPushEnabled()Z

    move-result v15

    if-eqz v15, :cond_183

    :cond_175
    move-object/from16 v0, p0

    iget-object v15, v0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v15}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/enterprise/PhoneRestrictionPolicy;->isWapPushAllowed()Z

    move-result v15

    if-nez v15, :cond_198

    .line 2343
    :cond_183
    const-string v15, "PhoneRestrictionPolicy"

    const-string v16, "Other incoming MMS policies apply... delete message and continue"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2344
    const-string/jumbo v15, "smsMmsBlockedRowId"

    invoke-virtual {v11, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, deleteMessageFromStorageProvider(Ljava/lang/String;)V

    goto/16 :goto_70

    .line 2349
    :cond_198
    const-string/jumbo v15, "extra_time_stamp"

    const-string/jumbo v16, "smsMmsTimeStamp"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2351
    const-string/jumbo v15, "extra_orig_address"

    const-string/jumbo v16, "smsMmsOrigAddress"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2353
    const-string/jumbo v15, "edm.intent.action.internal.RESTRICTION_SEND_BLOCKED_MMS"

    invoke-virtual {v6, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_e4

    .line 2381
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v11    # "smsMms":Landroid/content/ContentValues;
    :cond_1c2
    const-string v15, "PhoneRestrictionPolicy"

    const-string v16, " deliveryBlockedMsgs >>>> "

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c9
    .catchall {:try_start_12a .. :try_end_1c9} :catchall_8a

    goto/16 :goto_67
.end method

.method private enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 159
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_PHONE_RESTRICTION"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforcePhoneApp()V
    .registers 3

    .prologue
    .line 170
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_14

    .line 171
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by internal phone"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_14
    return-void
.end method

.method private enforcePhoneAppOrAdmin(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 176
    if-nez p1, :cond_b

    .line 177
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p1, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 179
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_b
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_19

    .line 180
    invoke-direct {p0, p1}, enforcePhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 183
    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_19
    return-object p1
.end method

.method private enforcePhoneAppOrOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 187
    if-nez p1, :cond_b

    .line 188
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p1, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 190
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_b
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_19

    .line 191
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 194
    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_19
    return-object p1
.end method

.method private enforcePhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 154
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_PHONE_RESTRICTION"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSms()V
    .registers 3

    .prologue
    .line 966
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_14

    .line 967
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only receive SMS by internal phone"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 969
    :cond_14
    return-void
.end method

.method private enforceSystemUser()V
    .registers 3

    .prologue
    .line 164
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 165
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_12
    return-void
.end method

.method private getDataCheckboxState()Z
    .registers 3

    .prologue
    .line 1894
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "dataCallPacketDataCheckBox"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 202
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 205
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "patternType"    # Ljava/lang/String;

    .prologue
    .line 557
    const/4 v4, 0x0

    .line 558
    .local v4, "result":Ljava/lang/String;
    if-nez p2, :cond_12

    .line 559
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 560
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "PHONERESTRICTION"

    invoke-virtual {v5, v6, v7, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 574
    :cond_11
    :goto_11
    return-object v4

    .line 563
    :cond_12
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PHONERESTRICTION"

    invoke-virtual {v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 565
    .local v3, "restrictionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, ""

    .line 566
    .local v0, "allRestriction":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 567
    .local v2, "regex":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 568
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 570
    .end local v2    # "regex":Ljava/lang/String;
    :cond_3e
    const-string/jumbo v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 571
    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_11
.end method

.method private getSmsMmsAllowed(Ljava/lang/String;)Z
    .registers 8
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 2089
    const/4 v1, 0x1

    .line 2090
    .local v1, "ret":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    invoke-virtual {v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2092
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2093
    .local v2, "value":Z
    if-nez v2, :cond_d

    .line 2094
    move v1, v2

    .line 2098
    .end local v2    # "value":Z
    :cond_20
    return v1
.end method

.method private isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 19
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "restrictionPolicy"    # Ljava/lang/String;
    .param p3, "exceptionPolicy"    # Ljava/lang/String;

    .prologue
    .line 445
    const/4 v12, 0x2

    new-array v11, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "adminUid"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p2, v11, v12

    .line 446
    .local v11, "restrictionColumn":[Ljava/lang/String;
    iget-object v12, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "PHONERESTRICTION"

    invoke-virtual {v12, v13, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 448
    .local v10, "restPatternList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v10, :cond_1b

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 449
    :cond_1b
    const/4 v12, 0x1

    .line 488
    :goto_1c
    return v12

    .line 452
    :cond_1d
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 453
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v12, "adminUid"

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 454
    .local v1, "adminId":Ljava/lang/Integer;
    if-eqz v1, :cond_21

    .line 456
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 457
    .local v9, "restPattern":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_21

    .line 462
    :try_start_41
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_44
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_41 .. :try_end_44} :catch_67

    move-result-object v8

    .line 467
    .local v8, "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 469
    .local v7, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_21

    .line 471
    iget-object v12, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string v14, "PHONERESTRICTION"

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 473
    .local v5, "exceptionPattern":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_71

    .line 474
    const/4 v12, 0x0

    goto :goto_1c

    .line 463
    .end local v5    # "exceptionPattern":Ljava/lang/String;
    .end local v7    # "match":Ljava/util/regex/Matcher;
    .end local v8    # "pattern":Ljava/util/regex/Pattern;
    :catch_67
    move-exception v3

    .line 464
    .local v3, "ex":Ljava/util/regex/PatternSyntaxException;
    const-string v12, "PhoneRestrictionPolicy"

    const-string/jumbo v13, "failed to compile pattern for restriction"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 478
    .end local v3    # "ex":Ljava/util/regex/PatternSyntaxException;
    .restart local v5    # "exceptionPattern":Ljava/lang/String;
    .restart local v7    # "match":Ljava/util/regex/Matcher;
    .restart local v8    # "pattern":Ljava/util/regex/Pattern;
    :cond_71
    :try_start_71
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_74
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_71 .. :try_end_74} :catch_83

    move-result-object v4

    .line 483
    .local v4, "excPattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 484
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-nez v12, :cond_21

    .line 485
    const/4 v12, 0x0

    goto :goto_1c

    .line 479
    .end local v4    # "excPattern":Ljava/util/regex/Pattern;
    :catch_83
    move-exception v3

    .line 480
    .restart local v3    # "ex":Ljava/util/regex/PatternSyntaxException;
    const-string v12, "PhoneRestrictionPolicy"

    const-string/jumbo v13, "failed to compile pattern for exception"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const/4 v12, 0x0

    goto :goto_1c

    .line 488
    .end local v1    # "adminId":Ljava/lang/Integer;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "ex":Ljava/util/regex/PatternSyntaxException;
    .end local v5    # "exceptionPattern":Ljava/lang/String;
    .end local v7    # "match":Ljava/util/regex/Matcher;
    .end local v8    # "pattern":Ljava/util/regex/Pattern;
    .end local v9    # "restPattern":Ljava/lang/String;
    :cond_8e
    const/4 v12, 0x1

    goto :goto_1c
.end method

.method private isSimLocked()Z
    .registers 7

    .prologue
    .line 2772
    iget-object v1, p0, mSimPinService:Landroid/app/enterprise/ISimPinPolicy;

    if-eqz v1, :cond_15

    .line 2774
    :try_start_4
    iget-object v1, p0, mSimPinService:Landroid/app/enterprise/ISimPinPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISimPinPolicy;->isSimLocked()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2782
    :goto_a
    return v1

    .line 2775
    :catch_b
    move-exception v0

    .line 2776
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, "Failed to communicate with Sim Pin Service"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2782
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    const/4 v1, 0x0

    goto :goto_a

    .line 2780
    :cond_15
    iget-object v1, p0, mSimPinHandler:Landroid/os/Handler;

    iget-object v2, p0, mSimPinBind:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_13
.end method

.method private putDataCheckboxState(Z)Z
    .registers 5
    .param p1, "state"    # Z

    .prologue
    .line 1899
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "dataCallPacketDataCheckBox"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private restorePacketDataNetworkSetting()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1877
    iget-boolean v3, p0, mDataCheckboxPreviousState:Z

    if-eqz v3, :cond_39

    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1878
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1880
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_29

    .line 1881
    const-string v2, "PhoneRestrictionPolicy"

    const-string v3, "Failed to get Telephony Manager"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :goto_28
    return v1

    .line 1884
    .restart local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_29
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v3

    if-nez v3, :cond_32

    .line 1885
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 1887
    :cond_32
    iput-boolean v1, p0, mDataCheckboxPreviousState:Z

    .line 1888
    iget-boolean v1, p0, mDataCheckboxPreviousState:Z

    invoke-direct {p0, v1}, putDataCheckboxState(Z)Z

    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_39
    move v1, v2

    .line 1890
    goto :goto_28
.end method

.method private setIccLockEnabled(ZLjava/lang/String;)I
    .registers 9
    .param p1, "lock"    # Z
    .param p2, "pinCode"    # Ljava/lang/String;

    .prologue
    .line 2744
    iget-object v1, p0, mSimPinService:Landroid/app/enterprise/ISimPinPolicy;

    if-eqz v1, :cond_16

    .line 2746
    :try_start_4
    iget-object v1, p0, mSimPinService:Landroid/app/enterprise/ISimPinPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISimPinPolicy;->setIccLockEnabled(ZLjava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2754
    :goto_a
    return v1

    .line 2747
    :catch_b
    move-exception v0

    .line 2748
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, "Failed to communicate with Sim Pin Service"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2754
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    const/16 v1, 0x64

    goto :goto_a

    .line 2752
    :cond_16
    iget-object v1, p0, mSimPinHandler:Landroid/os/Handler;

    iget-object v2, p0, mSimPinBind:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_13
.end method

.method private updateDateAndCounters()V
    .registers 14

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1470
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, ">>> PhoneRestrictionPolicy.updateDateAndCounters()"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1473
    .local v0, "calendarCurrent":Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1474
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1475
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1476
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1479
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1480
    .local v1, "calendarDay":Ljava/util/Calendar;
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dateDay"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1483
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1484
    .local v3, "calendarWeek":Ljava/util/Calendar;
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dateWeek"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1487
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1488
    .local v2, "calendarMonth":Ljava/util/Calendar;
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dateMonth"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1491
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1494
    .local v4, "time":J
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_111

    .line 1495
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dateDay"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1497
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "incomingCallCountDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1499
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "outgoingCallCountDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1503
    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_ab

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_cf

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_cf

    .line 1508
    :cond_ab
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dateWeek"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1510
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "incomingCallCountWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1513
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "outgoingCallCountWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1519
    :cond_cf
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_ed

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_111

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_111

    .line 1522
    :cond_ed
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dateMonth"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1524
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "incomingCallCountMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1527
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "outgoingCallCountMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1532
    :cond_111
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, "PhoneRestrictionPolicy.updateDateAndCounters() >>>"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    return-void
.end method

.method private updateDateAndCountersSms()V
    .registers 14

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1072
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, ">>> SmsRestrictionPolicy.updateDateAndCountersSms()"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1075
    .local v0, "calendarCurrent":Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1076
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1077
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1078
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1081
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1082
    .local v1, "calendarDay":Ljava/util/Calendar;
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "smsDateDay"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1085
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1086
    .local v3, "calendarWeek":Ljava/util/Calendar;
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "smsDateWeek"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1089
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1090
    .local v2, "calendarMonth":Ljava/util/Calendar;
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "smsDateMonth"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1092
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1094
    .local v4, "time":J
    const-string v6, "PhoneRestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "current time "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12a

    .line 1097
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "smsDateDay"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1099
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "incomingSmsCountDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1101
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "outgoingSmsCountDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1105
    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_c4

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_e8

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_e8

    .line 1110
    :cond_c4
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "smsDateWeek"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1112
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "incomingSmsCountWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1115
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "outgoingSmsCountWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1121
    :cond_e8
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_106

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_12a

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_12a

    .line 1124
    :cond_106
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "smsDateMonth"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1126
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "incomingSmsCountMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1129
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "outgoingSmsCountMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1134
    :cond_12a
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, "SmsRestrictionPolicy.updateDateAndCountersSms() >>>"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    return-void
.end method

.method private validatePinCode(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pinCode"    # Ljava/lang/String;

    .prologue
    .line 2513
    const/4 v1, 0x1

    .line 2514
    .local v1, "ret":Z
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_14

    .line 2516
    :cond_12
    const/4 v1, 0x0

    .line 2526
    :cond_13
    :goto_13
    return v1

    .line 2519
    :cond_14
    :try_start_14
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_17} :catch_1c

    move-result v2

    if-gez v2, :cond_13

    .line 2520
    const/4 v1, 0x0

    goto :goto_13

    .line 2522
    :catch_1c
    move-exception v0

    .line 2523
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_13
.end method


# virtual methods
.method public addIncomingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 2858
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> PhoneRestrictionPolicy.addIncomingCallExceptionPattern()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2859
    if-nez p2, :cond_b

    const/4 v3, 0x0

    .line 2876
    :cond_a
    :goto_a
    return v3

    .line 2861
    :cond_b
    invoke-virtual {p0, p1}, getIncomingCallExceptionPatterns(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v2

    .line 2862
    .local v2, "regex":Ljava/lang/String;
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 2863
    :cond_17
    invoke-virtual {p0, p1, p2}, setIncomingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    goto :goto_a

    .line 2865
    :cond_1c
    const-string/jumbo v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, setIncomingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    .line 2866
    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 2867
    .local v4, "userId":I
    if-eqz v3, :cond_a

    if-nez v4, :cond_a

    .line 2868
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2870
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_3a
    const-string v5, "PhoneRestriction"

    const-string v6, "addIncomingCallExceptionPattern"

    invoke-virtual {v1, v5, v6, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "addIncomingCallExceptionPattern calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_48} :catch_49

    goto :goto_a

    .line 2872
    :catch_49
    move-exception v0

    .line 2873
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public addIncomingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 281
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> PhoneRestrictionPolicy.addIncomingCallRestriction()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    if-nez p2, :cond_b

    .line 299
    :cond_a
    :goto_a
    return v3

    .line 284
    :cond_b
    invoke-virtual {p0, p1, v3}, getIncomingCallRestriction(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "regex":Ljava/lang/String;
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 286
    :cond_17
    invoke-virtual {p0, p1, p2}, setIncomingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    goto :goto_a

    .line 288
    :cond_1c
    const-string/jumbo v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, setIncomingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    .line 289
    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 290
    .local v4, "userId":I
    if-eqz v3, :cond_a

    if-nez v4, :cond_a

    .line 291
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 293
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_3a
    const-string v5, "PhoneRestriction"

    const-string v6, "addIncomingCallRestriction"

    invoke-virtual {v1, v5, v6, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "addIncomingCallRestriction calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_48} :catch_49

    goto :goto_a

    .line 295
    :catch_49
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public addIncomingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 2992
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> PhoneRestrictionPolicy.addIncomingSmsExceptionPattern()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2993
    if-nez p2, :cond_b

    const/4 v3, 0x0

    .line 3010
    :cond_a
    :goto_a
    return v3

    .line 2995
    :cond_b
    invoke-virtual {p0, p1}, getIncomingSmsExceptionPatterns(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v2

    .line 2996
    .local v2, "regex":Ljava/lang/String;
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 2997
    :cond_17
    invoke-virtual {p0, p1, p2}, setIncomingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    goto :goto_a

    .line 2999
    :cond_1c
    const-string/jumbo v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, setIncomingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    .line 3000
    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 3001
    .local v4, "userId":I
    if-eqz v3, :cond_a

    if-nez v4, :cond_a

    .line 3002
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 3004
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_3a
    const-string v5, "PhoneRestriction"

    const-string v6, "addIncomingSmsExceptionPattern"

    invoke-virtual {v1, v5, v6, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "addIncomingSmsExceptionPattern calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_48} :catch_49

    goto :goto_a

    .line 3006
    :catch_49
    move-exception v0

    .line 3007
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public addIncomingSmsRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 643
    if-nez p2, :cond_4

    .line 650
    :goto_3
    return v1

    .line 645
    :cond_4
    const-string/jumbo v2, "smsRestrictionIncomingPattern"

    invoke-direct {p0, p1, v1, v2}, getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "regex":Ljava/lang/String;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 648
    :cond_13
    invoke-virtual {p0, p1, p2}, setIncomingSmsRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_3

    .line 650
    :cond_18
    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, setIncomingSmsRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_3
.end method

.method public addNumberOfIncomingCalls()Z
    .registers 12

    .prologue
    .line 1337
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, ">>> PhoneRestrictionPolicy.addNumberOfIncomingCalls()"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    invoke-direct {p0}, enforcePhoneApp()V

    .line 1339
    iget-object v8, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v8

    if-nez v8, :cond_14

    .line 1340
    const/4 v4, 0x0

    .line 1379
    :cond_13
    :goto_13
    return v4

    .line 1342
    :cond_14
    const/4 v4, 0x0

    .line 1343
    .local v4, "ret":Z
    const/4 v0, 0x0

    .line 1344
    .local v0, "countDay":I
    const/4 v2, 0x0

    .line 1345
    .local v2, "countWeek":I
    const/4 v1, 0x0

    .line 1346
    .local v1, "countMonth":I
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, isLimitNumberOfCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1349
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "incomingCallCountDay"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1351
    .local v5, "strCountDay":Ljava/lang/String;
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "incomingCallCountWeek"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1353
    .local v7, "strCountWeek":Ljava/lang/String;
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "incomingCallCountMonth"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1355
    .local v6, "strCountMonth":Ljava/lang/String;
    if-eqz v5, :cond_4c

    if-eqz v7, :cond_4c

    if-eqz v6, :cond_4c

    .line 1357
    :try_start_40
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1358
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1359
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_4b} :catch_83

    move-result v1

    .line 1365
    :cond_4c
    :goto_4c
    add-int/lit8 v0, v0, 0x1

    .line 1366
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "incomingCallCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1369
    add-int/lit8 v2, v2, 0x1

    .line 1370
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "incomingCallCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v4, v8

    .line 1374
    add-int/lit8 v1, v1, 0x1

    .line 1375
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "incomingCallCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v4, v8

    .line 1378
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "PhoneRestrictionPolicy.addNumberOfIncomingCalls() >>>"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 1360
    :catch_83
    move-exception v3

    .line 1361
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "addNumberOfIncomingCalls - exception"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c
.end method

.method public addNumberOfIncomingSms()Z
    .registers 9

    .prologue
    .line 873
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> SMSRestrictionPolicy.addNumberOfIncomingSMS()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    invoke-direct {p0}, enforceSms()V

    .line 875
    const/4 v3, 0x0

    .line 876
    .local v3, "ret":Z
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-nez v5, :cond_14

    move v4, v3

    .line 900
    .end local v3    # "ret":Z
    .local v4, "ret":I
    :goto_13
    return v4

    .line 880
    .end local v4    # "ret":I
    .restart local v3    # "ret":Z
    :cond_14
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "incomingSmsCountDay"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 882
    .local v0, "countDay":I
    add-int/lit8 v0, v0, 0x1

    .line 883
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "incomingSmsCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 886
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "incomingSmsCountWeek"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 888
    .local v2, "countWeek":I
    add-int/lit8 v2, v2, 0x1

    .line 889
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "incomingSmsCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 893
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "incomingSmsCountMonth"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 895
    .local v1, "countMonth":I
    add-int/lit8 v1, v1, 0x1

    .line 896
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "incomingSmsCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 899
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "SMSRestrictionPolicy.addNumberOfIncomingSMS() >>>"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 900
    .restart local v4    # "ret":I
    goto :goto_13
.end method

.method public addNumberOfOutgoingCalls()Z
    .registers 12

    .prologue
    .line 1388
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, ">>> PhoneRestrictionPolicy.addNumberOfOutgoingCalls()"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    invoke-direct {p0}, enforcePhoneApp()V

    .line 1390
    iget-object v8, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v8

    if-nez v8, :cond_14

    .line 1391
    const/4 v4, 0x0

    .line 1430
    :cond_13
    :goto_13
    return v4

    .line 1393
    :cond_14
    const/4 v4, 0x0

    .line 1394
    .local v4, "ret":Z
    const/4 v0, 0x0

    .line 1395
    .local v0, "countDay":I
    const/4 v2, 0x0

    .line 1396
    .local v2, "countWeek":I
    const/4 v1, 0x0

    .line 1397
    .local v1, "countMonth":I
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, isLimitNumberOfCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1400
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "outgoingCallCountDay"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1402
    .local v5, "strCountDay":Ljava/lang/String;
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "outgoingCallCountWeek"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1404
    .local v7, "strCountWeek":Ljava/lang/String;
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "outgoingCallCountMonth"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1406
    .local v6, "strCountMonth":Ljava/lang/String;
    if-eqz v5, :cond_4c

    if-eqz v7, :cond_4c

    if-eqz v6, :cond_4c

    .line 1408
    :try_start_40
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1409
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1410
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_4b} :catch_83

    move-result v1

    .line 1416
    :cond_4c
    :goto_4c
    add-int/lit8 v0, v0, 0x1

    .line 1417
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "outgoingCallCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1420
    add-int/lit8 v2, v2, 0x1

    .line 1421
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "outgoingCallCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v4, v8

    .line 1425
    add-int/lit8 v1, v1, 0x1

    .line 1426
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "outgoingCallCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    and-int/2addr v4, v8

    .line 1429
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "PhoneRestrictionPolicy.addNumberOfOutgoingCalls >>>"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 1411
    :catch_83
    move-exception v3

    .line 1412
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, "addNumberOfOutgoingCalls - exception"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c
.end method

.method public addNumberOfOutgoingSms()Z
    .registers 9

    .prologue
    .line 904
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> SmsRestrictionPolicy.addNumberOfOutgoingSms()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    invoke-direct {p0}, enforceSms()V

    .line 906
    const/4 v3, 0x0

    .line 907
    .local v3, "ret":Z
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-nez v5, :cond_14

    move v4, v3

    .line 931
    .end local v3    # "ret":Z
    .local v4, "ret":I
    :goto_13
    return v4

    .line 911
    .end local v4    # "ret":I
    .restart local v3    # "ret":Z
    :cond_14
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingSmsCountDay"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 913
    .local v0, "countDay":I
    add-int/lit8 v0, v0, 0x1

    .line 914
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingSmsCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 917
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingSmsCountWeek"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 919
    .local v2, "countWeek":I
    add-int/lit8 v2, v2, 0x1

    .line 920
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingSmsCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 924
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingSmsCountMonth"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 926
    .local v1, "countMonth":I
    add-int/lit8 v1, v1, 0x1

    .line 927
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingSmsCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 930
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "SmsRestrictionPolicy.addNumberOfOutgoingSms >>>"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 931
    .restart local v4    # "ret":I
    goto :goto_13
.end method

.method public addOutgoingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 2837
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> PhoneRestrictionPolicy.addOutgoingCallExceptionPattern()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2838
    if-nez p2, :cond_b

    const/4 v3, 0x0

    .line 2855
    :cond_a
    :goto_a
    return v3

    .line 2840
    :cond_b
    invoke-virtual {p0, p1}, getOutgoingCallExceptionPatterns(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v2

    .line 2841
    .local v2, "regex":Ljava/lang/String;
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 2842
    :cond_17
    invoke-virtual {p0, p1, p2}, setOutgoingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    goto :goto_a

    .line 2844
    :cond_1c
    const-string/jumbo v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, setOutgoingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    .line 2845
    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 2846
    .local v4, "userId":I
    if-eqz v3, :cond_a

    if-nez v4, :cond_a

    .line 2847
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2849
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_3a
    const-string v5, "PhoneRestriction"

    const-string v6, "addOutgoingCallExceptionPattern"

    invoke-virtual {v1, v5, v6, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "addOutgoingCallExceptionPattern calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_48} :catch_49

    goto :goto_a

    .line 2851
    :catch_49
    move-exception v0

    .line 2852
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public addOutgoingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 259
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> PhoneRestrictionPolicy.addOutgoingCallRestriction()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    if-nez p2, :cond_b

    .line 277
    :cond_a
    :goto_a
    return v3

    .line 262
    :cond_b
    invoke-virtual {p0, p1, v3}, getOutgoingCallRestriction(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "regex":Ljava/lang/String;
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 264
    :cond_17
    invoke-virtual {p0, p1, p2}, setOutgoingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    goto :goto_a

    .line 266
    :cond_1c
    const-string/jumbo v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, setOutgoingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    .line 267
    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 268
    .local v4, "userId":I
    if-eqz v3, :cond_a

    if-nez v4, :cond_a

    .line 269
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 271
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_3a
    const-string v5, "PhoneRestriction"

    const-string v6, "addOutgoingCallRestriction"

    invoke-virtual {v1, v5, v6, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "addOutgoingCallRestriction calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_48} :catch_49

    goto :goto_a

    .line 273
    :catch_49
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public addOutgoingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 2971
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> PhoneRestrictionPolicy.addOutgoingSmsExceptionPattern()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2972
    if-nez p2, :cond_b

    const/4 v3, 0x0

    .line 2989
    :cond_a
    :goto_a
    return v3

    .line 2974
    :cond_b
    invoke-virtual {p0, p1}, getOutgoingSmsExceptionPatterns(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v2

    .line 2975
    .local v2, "regex":Ljava/lang/String;
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 2976
    :cond_17
    invoke-virtual {p0, p1, p2}, setOutgoingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    goto :goto_a

    .line 2978
    :cond_1c
    const-string/jumbo v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, setOutgoingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    .line 2979
    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 2980
    .local v4, "userId":I
    if-eqz v3, :cond_a

    if-nez v4, :cond_a

    .line 2981
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2983
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_3a
    const-string v5, "PhoneRestriction"

    const-string v6, "addOutgoingSmsExceptionPattern"

    invoke-virtual {v1, v5, v6, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "addOutgoingSmsExceptionPattern calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_48} :catch_49

    goto :goto_a

    .line 2985
    :catch_49
    move-exception v0

    .line 2986
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public addOutgoingSmsRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 627
    if-nez p2, :cond_4

    .line 634
    :goto_3
    return v1

    .line 629
    :cond_4
    const-string/jumbo v2, "smsRestrictionOutgoingPattern"

    invoke-direct {p0, p1, v1, v2}, getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "regex":Ljava/lang/String;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 632
    :cond_13
    invoke-virtual {p0, p1, p2}, setOutgoingSmsRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_3

    .line 634
    :cond_18
    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, setOutgoingSmsRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_3
.end method

.method public allowCallerIDDisplay(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 2444
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2445
    const/4 v2, 0x0

    .line 2447
    .local v2, "success":Z
    :try_start_5
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string v7, "allowCallerID"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_33

    move-result v2

    .line 2454
    :goto_11
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2455
    .local v3, "userId":I
    if-eqz v2, :cond_32

    if-nez v3, :cond_32

    .line 2456
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2458
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_20
    const-string v4, "PhoneRestriction"

    const-string v5, "allowCallerIDDisplay"

    invoke-virtual {p0, p1}, isCallerIDDisplayAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2459
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "allowCallerIDDisplay calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_32} :catch_3e

    .line 2464
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_32
    :goto_32
    return v2

    .line 2450
    .end local v3    # "userId":I
    :catch_33
    move-exception v0

    .line 2451
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "PhoneRestrictionPolicy"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 2460
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v3    # "userId":I
    :catch_3e
    move-exception v0

    .line 2461
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32
.end method

.method public allowCopyContactToSim(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 15
    .param p1, "ctx"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1981
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object v1

    .line 1982
    .local v1, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    iget v0, v1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1983
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1984
    .local v6, "token":J
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "PHONERESTRICTION"

    const-string v11, "copyContactToSimEnabled"

    invoke-virtual {v9, v0, v10, v11, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 1989
    .local v4, "success":Z
    const-string v9, "content://com.sec.knox.provider2/PhoneRestrictionPolicy"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1991
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_26

    .line 1992
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1995
    :cond_26
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 1996
    .local v8, "userId":I
    if-eqz v4, :cond_47

    if-nez v8, :cond_47

    .line 1997
    new-instance v3, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1999
    .local v3, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_35
    const-string v9, "PhoneRestriction"

    const-string v10, "allowCopyContactToSim"

    invoke-virtual {p0, v1}, isCopyContactToSimAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v11

    invoke-virtual {v3, v9, v10, v11}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2000
    const-string v9, "PhoneRestrictionPolicy"

    const-string v10, "allowCopyContactToSim calling gearPolicyManager  "

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_47} :catch_4b

    .line 2005
    .end local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_47
    :goto_47
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2006
    return v4

    .line 2001
    .restart local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_4b
    move-exception v2

    .line 2002
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47
.end method

.method public allowIncomingMms(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 2055
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2056
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2058
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_b
    const-string v2, "PhoneRestriction"

    const-string v3, "allowIncomingMms"

    invoke-virtual {v1, v2, v3, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetCombinationTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2059
    const-string v2, "PhoneRestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GearPolicy SetCombinationTypePolicy allowIncomingMms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2a} :catch_37

    .line 2063
    :goto_2a
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "PHONERESTRICTION"

    const-string v5, "allowIncomingMms"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    return v2

    .line 2060
    :catch_37
    move-exception v0

    .line 2061
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method public allowIncomingSms(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1941
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1942
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1944
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_b
    const-string v2, "PhoneRestriction"

    const-string v3, "allowIncomingSms"

    invoke-virtual {v1, v2, v3, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetCombinationTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1945
    const-string v2, "PhoneRestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GearPolicy SetCombinationTypePolicy allowIncomingSms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2a} :catch_37

    .line 1949
    :goto_2a
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "PHONERESTRICTION"

    const-string v5, "allowIncomingSms"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    return v2

    .line 1946
    :catch_37
    move-exception v0

    .line 1947
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method public allowOutgoingMms(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 2068
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2069
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2071
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_b
    const-string v2, "PhoneRestriction"

    const-string v3, "allowOutgoingMms"

    invoke-virtual {v1, v2, v3, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetCombinationTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2072
    const-string v2, "PhoneRestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GearPolicy SetCombinationTypePolicy allowOutgoingMms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2a} :catch_37

    .line 2076
    :goto_2a
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "PHONERESTRICTION"

    const-string v5, "allowOutgoingMms"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    return v2

    .line 2073
    :catch_37
    move-exception v0

    .line 2074
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method public allowOutgoingSms(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1955
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1956
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1958
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_b
    const-string v2, "PhoneRestriction"

    const-string v3, "allowOutgoingSms"

    invoke-virtual {v1, v2, v3, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetCombinationTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1959
    const-string v2, "PhoneRestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GearPolicy SetCombinationTypePolicy allowOutgoingSms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2a} :catch_37

    .line 1963
    :goto_2a
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "PHONERESTRICTION"

    const-string v5, "allowOutgoingSms"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    return v2

    .line 1960
    :catch_37
    move-exception v0

    .line 1961
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method public allowWapPush(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 2402
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2403
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string/jumbo v7, "wapPushEnabled"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 2405
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2406
    .local v3, "userId":I
    if-eqz v2, :cond_32

    if-nez v3, :cond_32

    .line 2407
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2409
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_20
    const-string v4, "PhoneRestriction"

    const-string v5, "allowWapPush"

    invoke-virtual {p0, p1}, isWapPushAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2410
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "allowWapPush calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_32} :catch_33

    .line 2415
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_32
    :goto_32
    return v2

    .line 2411
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_33
    move-exception v0

    .line 2412
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32
.end method

.method public blockMmsWithStorage(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "block"    # Z

    .prologue
    .line 2140
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2141
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "PHONERESTRICTION"

    const-string v8, "blockMmsWithStorage"

    invoke-virtual {v5, v6, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 2144
    .local v3, "ret":Z
    if-nez p2, :cond_26

    if-eqz v3, :cond_26

    invoke-virtual {p0, p1}, isBlockMmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 2145
    iget-object v5, p0, mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 2146
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    invoke-virtual {v5, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2148
    .end local v2    # "msg":Landroid/os/Message;
    :cond_26
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 2149
    .local v4, "userId":I
    if-eqz v3, :cond_47

    if-nez v4, :cond_47

    .line 2150
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2152
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_35
    const-string v5, "PhoneRestriction"

    const-string v6, "blockMmsWithStorage"

    invoke-virtual {p0, p1}, isBlockMmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2153
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "blockMmsWithStorage calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_47} :catch_48

    .line 2158
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_47
    :goto_47
    return v3

    .line 2154
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_48
    move-exception v0

    .line 2155
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47
.end method

.method public blockSmsWithStorage(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "block"    # Z

    .prologue
    .line 2105
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2106
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "PHONERESTRICTION"

    const-string v8, "blockSmsWithStorage"

    invoke-virtual {v5, v6, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 2109
    .local v3, "ret":Z
    if-nez p2, :cond_26

    if-eqz v3, :cond_26

    invoke-virtual {p0, p1}, isBlockSmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 2110
    iget-object v5, p0, mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 2111
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    invoke-virtual {v5, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2113
    .end local v2    # "msg":Landroid/os/Message;
    :cond_26
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 2114
    .local v4, "userId":I
    if-eqz v3, :cond_47

    if-nez v4, :cond_47

    .line 2115
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2117
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_35
    const-string v5, "PhoneRestriction"

    const-string v6, "blockSmsWithStorage"

    invoke-virtual {p0, p1}, isBlockSmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2118
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "blockSmsWithStorage calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_47} :catch_48

    .line 2123
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_47
    :goto_47
    return v3

    .line 2119
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_48
    move-exception v0

    .line 2120
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47
.end method

.method public canIncomingCall(Ljava/lang/String;)Z
    .registers 16
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 394
    iget-object v11, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v11

    if-nez v11, :cond_a

    .line 395
    const/4 v7, 0x1

    .line 439
    :goto_9
    return v7

    .line 398
    :cond_a
    if-nez p1, :cond_e

    .line 399
    const/4 v7, 0x1

    goto :goto_9

    .line 401
    :cond_e
    iget-object v11, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v11

    if-eqz v11, :cond_26

    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/enterprise/RoamingPolicy;->isRoamingVoiceCallsEnabled()Z

    move-result v11

    if-nez v11, :cond_26

    .line 402
    const/4 v7, 0x0

    goto :goto_9

    .line 405
    :cond_26
    const-string/jumbo v11, "incomingPattern"

    const-string/jumbo v12, "incomingCallExceptionPattern"

    invoke-direct {p0, p1, v11, v12}, isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 408
    .local v0, "canCall":Z
    const/4 v10, 0x0

    .line 409
    .local v10, "underLimit":Z
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, isLimitNumberOfCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v11

    if-eqz v11, :cond_af

    .line 410
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 412
    .local v8, "token":J
    :try_start_3c
    invoke-direct {p0}, updateDateAndCounters()V

    .line 413
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, getLimitOfIncomingCalls(Landroid/app/enterprise/ContextInfo;I)I

    move-result v4

    .line 414
    .local v4, "limitDay":I
    iget-object v11, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "incomingCallCountDay"

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 416
    .local v1, "countDay":I
    if-lt v1, v4, :cond_57

    const/4 v11, 0x1

    if-ge v4, v11, :cond_88

    .line 417
    :cond_57
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, getLimitOfIncomingCalls(Landroid/app/enterprise/ContextInfo;I)I

    move-result v6

    .line 418
    .local v6, "limitWeek":I
    iget-object v11, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "incomingCallCountWeek"

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 421
    .local v3, "countWeek":I
    if-lt v3, v6, :cond_6f

    const/4 v11, 0x1

    if-ge v6, v11, :cond_88

    .line 422
    :cond_6f
    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {p0, v11, v12}, getLimitOfIncomingCalls(Landroid/app/enterprise/ContextInfo;I)I

    move-result v5

    .line 423
    .local v5, "limitMonth":I
    iget-object v11, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "incomingCallCountMonth"

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_3c .. :try_end_81} :catchall_aa

    move-result v2

    .line 426
    .local v2, "countMonth":I
    if-lt v2, v5, :cond_87

    const/4 v11, 0x1

    if-ge v5, v11, :cond_88

    .line 427
    :cond_87
    const/4 v10, 0x1

    .line 432
    .end local v2    # "countMonth":I
    .end local v3    # "countWeek":I
    .end local v5    # "limitMonth":I
    .end local v6    # "limitWeek":I
    :cond_88
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 437
    .end local v1    # "countDay":I
    .end local v4    # "limitDay":I
    .end local v8    # "token":J
    :goto_8b
    if-eqz v0, :cond_b1

    if-eqz v10, :cond_b1

    const/4 v7, 0x1

    .line 438
    .local v7, "result":Z
    :goto_90
    const-string v11, "PhoneRestrictionPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PhoneRestrictionPolicy.canIncomingCall >>>>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 432
    .end local v7    # "result":Z
    .restart local v8    # "token":J
    :catchall_aa
    move-exception v11

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .line 435
    .end local v8    # "token":J
    :cond_af
    const/4 v10, 0x1

    goto :goto_8b

    .line 437
    :cond_b1
    const/4 v7, 0x0

    goto :goto_90
.end method

.method public canIncomingSms(Ljava/lang/String;)Z
    .registers 15
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 976
    if-nez p1, :cond_4

    .line 977
    const/4 v10, 0x1

    .line 1016
    :goto_3
    return v10

    .line 978
    :cond_4
    const-string/jumbo v10, "smsRestrictionIncomingPattern"

    const-string/jumbo v11, "incomingSmsExceptionPattern"

    invoke-direct {p0, p1, v10, v11}, isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 982
    .local v0, "canReceive":Z
    const/4 v7, 0x0

    .line 983
    .local v7, "underLimit":Z
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v10

    if-eqz v10, :cond_b3

    .line 984
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 986
    .local v8, "token":J
    :try_start_1a
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "Limit of sms is enabled!!!"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    invoke-direct {p0}, updateDateAndCountersSms()V

    .line 988
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, getLimitOfIncomingSms(Landroid/app/enterprise/ContextInfo;I)I

    move-result v4

    .line 989
    .local v4, "limitDay":I
    const-string v10, "PhoneRestrictionPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "canIncomingSms - limitDay = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "incomingSmsCountDay"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 992
    .local v1, "countDay":I
    const-string v10, "PhoneRestrictionPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "canIncomingSms - countDay = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    if-lt v1, v4, :cond_6c

    const/4 v10, 0x1

    if-ge v4, v10, :cond_a4

    .line 994
    :cond_6c
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, getLimitOfIncomingSms(Landroid/app/enterprise/ContextInfo;I)I

    move-result v6

    .line 995
    .local v6, "limitWeek":I
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "incomingSmsCountWeek"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 997
    .local v3, "countWeek":I
    if-lt v3, v6, :cond_84

    const/4 v10, 0x1

    if-ge v6, v10, :cond_a4

    .line 998
    :cond_84
    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {p0, v10, v11}, getLimitOfIncomingSms(Landroid/app/enterprise/ContextInfo;I)I

    move-result v5

    .line 999
    .local v5, "limitMonth":I
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "incomingSmsCountMonth"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1002
    .local v2, "countMonth":I
    if-lt v2, v5, :cond_9c

    const/4 v10, 0x1

    if-ge v5, v10, :cond_a4

    .line 1003
    :cond_9c
    const/4 v7, 0x1

    .line 1004
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "canIncomingSms - limit = true"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a4
    .catchall {:try_start_1a .. :try_end_a4} :catchall_ae

    .line 1009
    .end local v2    # "countMonth":I
    .end local v3    # "countWeek":I
    .end local v5    # "limitMonth":I
    .end local v6    # "limitWeek":I
    :cond_a4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1016
    .end local v1    # "countDay":I
    .end local v4    # "limitDay":I
    .end local v8    # "token":J
    :goto_a7
    if-eqz v0, :cond_b5

    if-eqz v7, :cond_b5

    const/4 v10, 0x1

    goto/16 :goto_3

    .line 1009
    .restart local v8    # "token":J
    :catchall_ae
    move-exception v10

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .line 1012
    .end local v8    # "token":J
    :cond_b3
    const/4 v7, 0x1

    goto :goto_a7

    .line 1016
    :cond_b5
    const/4 v10, 0x0

    goto/16 :goto_3
.end method

.method public canOutgoingCall(Ljava/lang/String;)Z
    .registers 16
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 345
    if-nez p1, :cond_4

    .line 346
    const/4 v7, 0x1

    .line 390
    :goto_3
    return v7

    .line 347
    :cond_4
    iget-object v11, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v11

    if-nez v11, :cond_e

    .line 348
    const/4 v7, 0x1

    goto :goto_3

    .line 351
    :cond_e
    iget-object v11, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v11

    if-eqz v11, :cond_26

    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/enterprise/RoamingPolicy;->isRoamingVoiceCallsEnabled()Z

    move-result v11

    if-nez v11, :cond_26

    .line 352
    const/4 v7, 0x0

    goto :goto_3

    .line 355
    :cond_26
    const-string/jumbo v11, "outgoingPattern"

    const-string/jumbo v12, "outgoingCallExceptionPattern"

    invoke-direct {p0, p1, v11, v12}, isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 359
    .local v0, "canCall":Z
    const/4 v10, 0x0

    .line 360
    .local v10, "underLimit":Z
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, isLimitNumberOfCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v11

    if-eqz v11, :cond_af

    .line 361
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 363
    .local v8, "token":J
    :try_start_3c
    invoke-direct {p0}, updateDateAndCounters()V

    .line 364
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, getLimitOfOutgoingCalls(Landroid/app/enterprise/ContextInfo;I)I

    move-result v4

    .line 365
    .local v4, "limitDay":I
    iget-object v11, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "outgoingCallCountDay"

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 367
    .local v1, "countDay":I
    if-lt v1, v4, :cond_57

    const/4 v11, 0x1

    if-ge v4, v11, :cond_88

    .line 368
    :cond_57
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, getLimitOfOutgoingCalls(Landroid/app/enterprise/ContextInfo;I)I

    move-result v6

    .line 369
    .local v6, "limitWeek":I
    iget-object v11, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "outgoingCallCountWeek"

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 372
    .local v3, "countWeek":I
    if-lt v3, v6, :cond_6f

    const/4 v11, 0x1

    if-ge v6, v11, :cond_88

    .line 373
    :cond_6f
    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {p0, v11, v12}, getLimitOfOutgoingCalls(Landroid/app/enterprise/ContextInfo;I)I

    move-result v5

    .line 374
    .local v5, "limitMonth":I
    iget-object v11, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v12, "outgoingCallCountMonth"

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_3c .. :try_end_81} :catchall_aa

    move-result v2

    .line 377
    .local v2, "countMonth":I
    if-lt v2, v5, :cond_87

    const/4 v11, 0x1

    if-ge v5, v11, :cond_88

    .line 378
    :cond_87
    const/4 v10, 0x1

    .line 383
    .end local v2    # "countMonth":I
    .end local v3    # "countWeek":I
    .end local v5    # "limitMonth":I
    .end local v6    # "limitWeek":I
    :cond_88
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 388
    .end local v1    # "countDay":I
    .end local v4    # "limitDay":I
    .end local v8    # "token":J
    :goto_8b
    if-eqz v0, :cond_b1

    if-eqz v10, :cond_b1

    const/4 v7, 0x1

    .line 389
    .local v7, "result":Z
    :goto_90
    const-string v11, "PhoneRestrictionPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PhoneRestrictionPolicy.canOutgoingCall >>>> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 383
    .end local v7    # "result":Z
    .restart local v8    # "token":J
    :catchall_aa
    move-exception v11

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .line 386
    .end local v8    # "token":J
    :cond_af
    const/4 v10, 0x1

    goto :goto_8b

    .line 388
    :cond_b1
    const/4 v7, 0x0

    goto :goto_90
.end method

.method public canOutgoingSms(Ljava/lang/String;)Z
    .registers 15
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1024
    if-nez p1, :cond_4

    .line 1025
    const/4 v10, 0x1

    .line 1063
    :goto_3
    return v10

    .line 1026
    :cond_4
    const-string/jumbo v10, "smsRestrictionOutgoingPattern"

    const-string/jumbo v11, "outgoingSmsExceptionPattern"

    invoke-direct {p0, p1, v10, v11}, isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1030
    .local v0, "canSend":Z
    const/4 v7, 0x0

    .line 1031
    .local v7, "underLimit":Z
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v10

    if-eqz v10, :cond_d5

    .line 1032
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1034
    .local v8, "token":J
    :try_start_1a
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "Limit of sms is enabled!!!"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    invoke-direct {p0}, updateDateAndCountersSms()V

    .line 1036
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, getLimitOfOutgoingSms(Landroid/app/enterprise/ContextInfo;I)I

    move-result v4

    .line 1037
    .local v4, "limitDay":I
    const-string v10, "PhoneRestrictionPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "canOutgoingSms - limitDay = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "outgoingSmsCountDay"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1040
    .local v1, "countDay":I
    const-string v10, "PhoneRestrictionPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "canOutgoingSms - countDay = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    if-lt v1, v4, :cond_6c

    const/4 v10, 0x1

    if-ge v4, v10, :cond_a4

    .line 1042
    :cond_6c
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, getLimitOfOutgoingSms(Landroid/app/enterprise/ContextInfo;I)I

    move-result v6

    .line 1043
    .local v6, "limitWeek":I
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "outgoingSmsCountWeek"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1045
    .local v3, "countWeek":I
    if-lt v3, v6, :cond_84

    const/4 v10, 0x1

    if-ge v6, v10, :cond_a4

    .line 1046
    :cond_84
    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {p0, v10, v11}, getLimitOfOutgoingSms(Landroid/app/enterprise/ContextInfo;I)I

    move-result v5

    .line 1047
    .local v5, "limitMonth":I
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "outgoingSmsCountMonth"

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1050
    .local v2, "countMonth":I
    if-lt v2, v5, :cond_9c

    const/4 v10, 0x1

    if-ge v5, v10, :cond_a4

    .line 1051
    :cond_9c
    const/4 v7, 0x1

    .line 1052
    const-string v10, "PhoneRestrictionPolicy"

    const-string v11, "canOutgoingSms - limit = true"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a4
    .catchall {:try_start_1a .. :try_end_a4} :catchall_d0

    .line 1057
    .end local v2    # "countMonth":I
    .end local v3    # "countWeek":I
    .end local v5    # "limitMonth":I
    .end local v6    # "limitWeek":I
    :cond_a4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1062
    .end local v1    # "countDay":I
    .end local v4    # "limitDay":I
    .end local v8    # "token":J
    :goto_a7
    const-string v10, "PhoneRestrictionPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SmsRestrictionPolicy.canOutgoingSms >>>>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " >>> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    if-eqz v0, :cond_d7

    if-eqz v7, :cond_d7

    const/4 v10, 0x1

    goto/16 :goto_3

    .line 1057
    .restart local v8    # "token":J
    :catchall_d0
    move-exception v10

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .line 1060
    .end local v8    # "token":J
    :cond_d5
    const/4 v7, 0x1

    goto :goto_a7

    .line 1063
    :cond_d7
    const/4 v10, 0x0

    goto/16 :goto_3
.end method

.method public changeSimPinCode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "currentPinCode"    # Ljava/lang/String;
    .param p3, "newPinCode"    # Ljava/lang/String;

    .prologue
    .line 2625
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2626
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2629
    .local v4, "uid":I
    invoke-direct {p0, p2}, validatePinCode(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-direct {p0, p3}, validatePinCode(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 2630
    :cond_12
    const/4 v2, 0x2

    .line 2665
    :cond_13
    :goto_13
    return v2

    .line 2634
    :cond_14
    iget-object v5, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 2635
    .local v1, "icc":Ljava/lang/String;
    if-nez v1, :cond_1f

    .line 2636
    const/16 v2, 0x9

    goto :goto_13

    .line 2640
    :cond_1f
    invoke-direct {p0}, isSimLocked()Z

    move-result v5

    if-nez v5, :cond_27

    .line 2641
    const/4 v2, 0x5

    goto :goto_13

    .line 2647
    :cond_27
    iget-object v5, p0, mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v5, v1}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getAdminBySimcard(Ljava/lang/String;)I

    move-result v3

    .line 2648
    .local v3, "simOwner":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_35

    if-eq v3, v4, :cond_35

    .line 2649
    const/16 v2, 0xc

    goto :goto_13

    .line 2653
    :cond_35
    invoke-direct {p0, p2, p3}, changeSimPinCodeService(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2654
    .local v2, "result":I
    if-nez v2, :cond_13

    .line 2655
    const/4 v0, 0x1

    .line 2656
    .local v0, "databaseRet":Z
    invoke-virtual {p0, v1}, isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 2657
    iget-object v5, p0, mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v5, v4, v1, p3}, Lcom/android/server/enterprise/restriction/SimDBProxy;->addSimcard(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2661
    :goto_48
    if-nez v0, :cond_13

    .line 2662
    const/16 v2, 0xa

    goto :goto_13

    .line 2659
    :cond_4d
    iget-object v5, p0, mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v5, v4, v1, p3}, Lcom/android/server/enterprise/restriction/SimDBProxy;->setPincode(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_48
.end method

.method public checkDataCallLimit()Z
    .registers 19

    .prologue
    .line 1698
    invoke-direct/range {p0 .. p0}, enforceSystemUser()V

    .line 1700
    move-object/from16 v0, p0

    iget-boolean v7, v0, mDataLimitEnabled:Z

    if-nez v7, :cond_b

    .line 1701
    const/4 v7, 0x0

    .line 1741
    :goto_a
    return v7

    .line 1704
    :cond_b
    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v7, v1}, getLimitOfDataCalls(Landroid/app/enterprise/ContextInfo;I)J

    move-result-wide v4

    .line 1705
    .local v4, "dayLimit":J
    const/4 v7, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v7, v1}, getLimitOfDataCalls(Landroid/app/enterprise/ContextInfo;I)J

    move-result-wide v14

    .line 1706
    .local v14, "weekLimit":J
    const/4 v7, 0x0

    const/16 v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v7, v1}, getLimitOfDataCalls(Landroid/app/enterprise/ContextInfo;I)J

    move-result-wide v10

    .line 1708
    .local v10, "monthLimit":J
    const-wide/16 v2, 0x0

    .line 1709
    .local v2, "dayCurrent":J
    const-wide/16 v12, 0x0

    .line 1710
    .local v12, "weekCurrent":J
    const-wide/16 v8, 0x0

    .line 1714
    .local v8, "monthCurrent":J
    :try_start_32
    move-object/from16 v0, p0

    iget-object v7, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v16, "dataCallBytesCountByDay"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_42} :catch_85

    move-result-wide v2

    .line 1721
    :goto_43
    :try_start_43
    move-object/from16 v0, p0

    iget-object v7, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v16, "dataCallBytesCountByWeek"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_53} :catch_90

    move-result-wide v12

    .line 1728
    :goto_54
    :try_start_54
    move-object/from16 v0, p0

    iget-object v7, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v16, "dataCallByteCountByMonth"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_64
    .catch Ljava/lang/NumberFormatException; {:try_start_54 .. :try_end_64} :catch_9b

    move-result-wide v8

    .line 1736
    :goto_65
    const-wide/16 v16, 0x0

    cmp-long v7, v16, v4

    if-gez v7, :cond_6f

    cmp-long v7, v2, v4

    if-gtz v7, :cond_83

    :cond_6f
    const-wide/16 v16, 0x0

    cmp-long v7, v16, v14

    if-gez v7, :cond_79

    cmp-long v7, v12, v14

    if-gtz v7, :cond_83

    :cond_79
    const-wide/16 v16, 0x0

    cmp-long v7, v16, v10

    if-gez v7, :cond_a6

    cmp-long v7, v8, v10

    if-lez v7, :cond_a6

    .line 1739
    :cond_83
    const/4 v7, 0x1

    goto :goto_a

    .line 1716
    :catch_85
    move-exception v6

    .line 1717
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string v7, "PhoneRestrictionPolicy"

    const-string v16, "Could not read from Storage"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    .line 1723
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :catch_90
    move-exception v6

    .line 1724
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const-string v7, "PhoneRestrictionPolicy"

    const-string v16, "Could not read from Storage"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    .line 1730
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :catch_9b
    move-exception v6

    .line 1731
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const-string v7, "PhoneRestrictionPolicy"

    const-string v16, "Could not read from Storage"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65

    .line 1741
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_a6
    const/4 v7, 0x0

    goto/16 :goto_a
.end method

.method public checkEnableUseOfPacketData(Z)Z
    .registers 8
    .param p1, "showMsg"    # Z

    .prologue
    .line 1670
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1671
    .local v2, "token":J
    const/4 v0, 0x0

    .line 1672
    .local v0, "ret":Z
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, updateDateAndDataCallCounters(J)V

    .line 1673
    invoke-virtual {p0}, checkDataCallLimit()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1674
    :cond_1e
    if-eqz p1, :cond_26

    .line 1675
    const v1, 0x1040b7a

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1678
    :cond_26
    const/4 v0, 0x0

    .line 1682
    :goto_27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1683
    return v0

    .line 1680
    :cond_2b
    const/4 v0, 0x1

    goto :goto_27
.end method

.method public clearStoredBlockedMms(Landroid/app/enterprise/ContextInfo;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2195
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 2197
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v6, "smsMmsType"

    aput-object v6, v0, v7

    .line 2198
    .local v0, "columnType":[Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v4, v7

    .line 2199
    .local v4, "type":[Ljava/lang/String;
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "SMSMMSBlockedDelivery"

    invoke-virtual {v6, v7, v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    .line 2200
    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2201
    .local v5, "userId":I
    if-eqz v3, :cond_38

    if-nez v5, :cond_38

    .line 2202
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2204
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_29
    const-string v6, "PhoneRestriction"

    const-string v7, "clearStoredBlockedMms"

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2205
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, "clearStoredBlockedMms calling gearPolicyManager  "

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_38} :catch_39

    .line 2210
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_38
    :goto_38
    return v3

    .line 2206
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_39
    move-exception v1

    .line 2207
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38
.end method

.method public clearStoredBlockedSms(Landroid/app/enterprise/ContextInfo;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2175
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 2177
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v6, "smsMmsType"

    aput-object v6, v0, v7

    .line 2178
    .local v0, "columnType":[Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v4, v7

    .line 2179
    .local v4, "type":[Ljava/lang/String;
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "SMSMMSBlockedDelivery"

    invoke-virtual {v6, v7, v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    .line 2181
    .local v3, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2182
    .local v5, "userId":I
    if-eqz v3, :cond_38

    if-nez v5, :cond_38

    .line 2183
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2185
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_29
    const-string v6, "PhoneRestriction"

    const-string v7, "clearStoredBlockedSms"

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2186
    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, "clearStoredBlockedSms calling gearPolicyManager  "

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_38} :catch_39

    .line 2191
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_38
    :goto_38
    return v3

    .line 2187
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_39
    move-exception v1

    .line 2188
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38
.end method

.method public decreaseNumberOfOutgoingSms()Z
    .registers 9

    .prologue
    .line 935
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, ">>> SmsRestrictionPolicy.decreaseNumberOfOutgoingSms()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    invoke-direct {p0}, enforceSms()V

    .line 937
    const/4 v3, 0x0

    .line 938
    .local v3, "ret":Z
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-nez v5, :cond_14

    move v4, v3

    .line 962
    .end local v3    # "ret":Z
    .local v4, "ret":I
    :goto_13
    return v4

    .line 942
    .end local v4    # "ret":I
    .restart local v3    # "ret":Z
    :cond_14
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingSmsCountDay"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 944
    .local v0, "countDay":I
    add-int/lit8 v0, v0, -0x1

    .line 945
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingSmsCountDay"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 948
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingSmsCountWeek"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 950
    .local v2, "countWeek":I
    add-int/lit8 v2, v2, -0x1

    .line 951
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingSmsCountWeek"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 955
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingSmsCountMonth"

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 957
    .local v1, "countMonth":I
    add-int/lit8 v1, v1, -0x1

    .line 958
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingSmsCountMonth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 961
    const-string v5, "PhoneRestrictionPolicy"

    const-string v6, "SmsRestrictionPolicy.addNumberOfOutgoingSms >>>"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 962
    .restart local v4    # "ret":I
    goto :goto_13
.end method

.method public enableLimitNumberOfCalls(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z

    .prologue
    .line 1143
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, " >>>> enableLimitNumberOfCalls "

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1145
    iget-object v8, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v8

    if-nez v8, :cond_15

    .line 1146
    const/4 v4, 0x0

    .line 1179
    :cond_14
    :goto_14
    return v4

    .line 1148
    :cond_15
    const/4 v3, 0x1

    .line 1149
    .local v3, "ret":Z
    if-eqz p2, :cond_72

    invoke-virtual {p0, p1}, isLimitNumberOfCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-nez v8, :cond_72

    .line 1150
    invoke-virtual {p0, p1}, resetCallsCount(Landroid/app/enterprise/ContextInfo;)Z

    .line 1151
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1152
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v8, 0xb

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1153
    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1154
    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1155
    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1156
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 1157
    .local v6, "time":J
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "dateDay"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1159
    if-eqz v3, :cond_b7

    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "dateWeek"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b7

    const/4 v3, 0x1

    .line 1162
    :goto_60
    if-eqz v3, :cond_b9

    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "dateMonth"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b9

    const/4 v3, 0x1

    .line 1166
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v6    # "time":J
    :cond_72
    :goto_72
    const-string v8, "PhoneRestrictionPolicy"

    const-string/jumbo v9, "enableLimitNumberOfCalls  >>>>>"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    if-eqz v3, :cond_bb

    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v10, "PHONERESTRICTION"

    const-string/jumbo v11, "limitCallEnable"

    invoke-virtual {v8, v9, v10, v11, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_bb

    const/4 v4, 0x1

    .line 1169
    .local v4, "success":Z
    :goto_8c
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 1170
    .local v5, "userId":I
    if-eqz v4, :cond_14

    if-nez v5, :cond_14

    .line 1171
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1173
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_9b
    const-string v8, "PhoneRestriction"

    const-string/jumbo v9, "enableLimitNumberOfCalls"

    invoke-virtual {p0, p1}, isLimitNumberOfCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v10

    invoke-virtual {v2, v8, v9, v10}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1174
    const-string v8, "PhoneRestrictionPolicy"

    const-string/jumbo v9, "enableLimitNumberOfCalls calling gearPolicyManager  "

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_af} :catch_b1

    goto/16 :goto_14

    .line 1175
    :catch_b1
    move-exception v1

    .line 1176
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_14

    .line 1159
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v4    # "success":Z
    .end local v5    # "userId":I
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v6    # "time":J
    :cond_b7
    const/4 v3, 0x0

    goto :goto_60

    .line 1162
    :cond_b9
    const/4 v3, 0x0

    goto :goto_72

    .line 1167
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v6    # "time":J
    :cond_bb
    const/4 v4, 0x0

    goto :goto_8c
.end method

.method public enableLimitNumberOfSms(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z

    .prologue
    .line 699
    const-string v8, "PhoneRestrictionPolicy"

    const-string v9, " >>>> enableLimitNumberOfSMS "

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 701
    const/4 v3, 0x1

    .line 702
    .local v3, "ret":Z
    if-eqz p2, :cond_68

    invoke-virtual {p0, p1}, isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-nez v8, :cond_68

    .line 703
    invoke-virtual {p0, p1}, resetSmsCount(Landroid/app/enterprise/ContextInfo;)Z

    .line 704
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 705
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v8, 0xb

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 706
    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 707
    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 708
    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 709
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 710
    .local v6, "time":J
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "smsDateDay"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 712
    if-eqz v3, :cond_a6

    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "smsDateWeek"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a6

    const/4 v3, 0x1

    .line 715
    :goto_56
    if-eqz v3, :cond_a8

    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "smsDateMonth"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a8

    const/4 v3, 0x1

    .line 719
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v6    # "time":J
    :cond_68
    :goto_68
    const-string v8, "PhoneRestrictionPolicy"

    const-string/jumbo v9, "enableLimitNumberOfSMS  >>>>>"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    if-eqz v3, :cond_aa

    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v10, "PHONERESTRICTION"

    const-string/jumbo v11, "limitSmsEnable"

    invoke-virtual {v8, v9, v10, v11, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_aa

    const/4 v4, 0x1

    .line 722
    .local v4, "success":Z
    :goto_82
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 723
    .local v5, "userId":I
    if-eqz v4, :cond_a5

    if-nez v5, :cond_a5

    .line 724
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 726
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_91
    const-string v8, "PhoneRestriction"

    const-string/jumbo v9, "enableLimitNumberOfSms"

    invoke-virtual {p0, p1}, isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v10

    invoke-virtual {v2, v8, v9, v10}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 727
    const-string v8, "PhoneRestrictionPolicy"

    const-string/jumbo v9, "enableLimitNumberOfSms calling gearPolicyManager  "

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_a5} :catch_ac

    .line 732
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_a5
    :goto_a5
    return v4

    .line 712
    .end local v4    # "success":Z
    .end local v5    # "userId":I
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v6    # "time":J
    :cond_a6
    const/4 v3, 0x0

    goto :goto_56

    .line 715
    :cond_a8
    const/4 v3, 0x0

    goto :goto_68

    .line 720
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v6    # "time":J
    :cond_aa
    const/4 v4, 0x0

    goto :goto_82

    .line 728
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v4    # "success":Z
    .restart local v5    # "userId":I
    :catch_ac
    move-exception v1

    .line 729
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a5
.end method

.method public getDataCallLimitEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1579
    const/4 v1, 0x0

    .line 1580
    .local v1, "ret":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "enableLimitDataCall"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1583
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1584
    .local v2, "value":Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_10

    .line 1585
    move v1, v2

    .line 1589
    .end local v2    # "value":Z
    :cond_24
    return v1
.end method

.method public getEmergencyCallOnly(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    const/4 v5, 0x0

    .line 513
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v7, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 514
    const-string v7, "PhoneRestrictionPolicy"

    const-string v8, " getEmergencyCallOnly calls from Profile return default value"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_10
    :goto_10
    return v5

    .line 517
    :cond_11
    iget-object v7, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 520
    const/4 v5, 0x0

    .line 522
    .local v5, "result":Z
    if-nez p2, :cond_6c

    .line 523
    :try_start_1c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 525
    .local v6, "userId":I
    if-nez p1, :cond_2c

    .line 526
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v1, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .local v1, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    move-object p1, v1

    .line 530
    .end local v1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_2c
    if-nez v6, :cond_3a

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-nez v7, :cond_3a

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    if-lez v7, :cond_5e

    .line 533
    :cond_3a
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "Operation supported only on owner space"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_42} :catch_42

    .line 548
    .end local v6    # "userId":I
    :catch_42
    move-exception v2

    .line 549
    .local v2, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 552
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_44
    :goto_44
    const-string v7, "PhoneRestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getEmergencyCall >>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 535
    .restart local v6    # "userId":I
    :cond_5e
    :try_start_5e
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v9, "PHONERESTRICTION"

    const-string/jumbo v10, "emergencyCallOnly"

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 538
    goto :goto_44

    .line 539
    .end local v6    # "userId":I
    :cond_6c
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "PHONERESTRICTION"

    const-string/jumbo v9, "emergencyCallOnly"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 542
    .local v4, "restrictionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_7b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 543
    .local v0, "block":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_8a} :catch_42

    move-result v7

    if-eqz v7, :cond_7b

    .line 544
    const/4 v5, 0x1

    goto :goto_10
.end method

.method public getIncomingCallExceptionPatterns(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2799
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getIncomingCallExceptionPatterns()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2800
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2801
    iget-object v0, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2802
    const/4 v0, 0x0

    .line 2804
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x1

    const-string/jumbo v1, "incomingCallExceptionPattern"

    invoke-direct {p0, p1, v0, v1}, getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public getIncomingCallRestriction(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    .line 218
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getIncomingCallRestriction()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 220
    iget-object v0, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_15

    .line 221
    const/4 v0, 0x0

    .line 223
    :goto_14
    return-object v0

    :cond_15
    const-string/jumbo v0, "incomingPattern"

    invoke-direct {p0, p1, p2, v0}, getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public getIncomingSmsExceptionPatterns(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2933
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getIncomingSmsExceptionPatterns()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2934
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2935
    iget-object v0, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2936
    const/4 v0, 0x0

    .line 2938
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x1

    const-string/jumbo v1, "incomingSmsExceptionPattern"

    invoke-direct {p0, p1, v0, v1}, getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public getIncomingSmsRestriction(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    .line 597
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 598
    iget-object v0, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_e

    .line 599
    const/4 v0, 0x0

    .line 601
    :goto_d
    return-object v0

    :cond_e
    const-string/jumbo v0, "smsRestrictionIncomingPattern"

    invoke-direct {p0, p1, p2, v0}, getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public getLimitOfDataCalls(Landroid/app/enterprise/ContextInfo;I)J
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # I

    .prologue
    const-wide/16 v10, 0x0

    .line 1610
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1611
    const/4 v1, 0x0

    .line 1613
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    packed-switch p2, :pswitch_data_60

    .line 1630
    const-wide/16 v2, -0x1

    .line 1639
    :cond_b
    return-wide v2

    .line 1615
    :pswitch_c
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    const-string/jumbo v8, "dataCallByDay"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1617
    const-wide/16 v2, 0x0

    .line 1632
    .local v2, "res":J
    :goto_19
    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    .line 1633
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1634
    .local v4, "value":J
    cmp-long v6, v4, v10

    if-eqz v6, :cond_25

    cmp-long v6, v4, v2

    if-ltz v6, :cond_41

    cmp-long v6, v2, v10

    if-nez v6, :cond_25

    .line 1635
    :cond_41
    move-wide v2, v4

    goto :goto_25

    .line 1620
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "res":J
    .end local v4    # "value":J
    :pswitch_43
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    const-string/jumbo v8, "dataCallByWeek"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1622
    const-wide/16 v2, 0x0

    .line 1623
    .restart local v2    # "res":J
    goto :goto_19

    .line 1625
    .end local v2    # "res":J
    :pswitch_51
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "PHONERESTRICTION"

    const-string/jumbo v8, "dataCallByMonth"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1627
    const-wide/16 v2, 0x0

    .line 1628
    .restart local v2    # "res":J
    goto :goto_19

    .line 1613
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_c
        :pswitch_43
        :pswitch_51
    .end packed-switch
.end method

.method public getLimitOfIncomingCalls(Landroid/app/enterprise/ContextInfo;I)I
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # I

    .prologue
    const/4 v2, -0x1

    .line 1232
    invoke-direct {p0, p1}, enforcePhoneAppOrOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1233
    iget-object v4, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1264
    :cond_c
    :goto_c
    return v2

    .line 1236
    :cond_d
    const/4 v1, 0x0

    .line 1238
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    packed-switch p2, :pswitch_data_64

    goto :goto_c

    .line 1240
    :pswitch_12
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingCallByDay"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1242
    const/4 v2, 0x0

    .line 1257
    .local v2, "res":I
    :goto_1e
    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 1258
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1259
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v2, :cond_44

    if-nez v2, :cond_2a

    .line 1260
    :cond_44
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2a

    .line 1245
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "res":I
    .end local v3    # "value":Ljava/lang/Integer;
    :pswitch_49
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingCallByWeek"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1247
    const/4 v2, 0x0

    .line 1248
    .restart local v2    # "res":I
    goto :goto_1e

    .line 1250
    .end local v2    # "res":I
    :pswitch_56
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingCallByMonth"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1252
    const/4 v2, 0x0

    .line 1253
    .restart local v2    # "res":I
    goto :goto_1e

    .line 1238
    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_12
        :pswitch_49
        :pswitch_56
    .end packed-switch
.end method

.method public getLimitOfIncomingSms(Landroid/app/enterprise/ContextInfo;I)I
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # I

    .prologue
    .line 792
    invoke-direct {p0, p1}, enforcePhoneAppOrOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 793
    const/4 v1, 0x0

    .line 795
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    packed-switch p2, :pswitch_data_5a

    .line 812
    const/4 v2, -0x1

    .line 821
    :cond_8
    return v2

    .line 797
    :pswitch_9
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingSmsByDay"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 799
    const/4 v2, 0x0

    .line 814
    .local v2, "res":I
    :goto_15
    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 815
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 816
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v2, :cond_3b

    if-nez v2, :cond_21

    .line 817
    :cond_3b
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_21

    .line 802
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "res":I
    .end local v3    # "value":Ljava/lang/Integer;
    :pswitch_40
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingSmsByWeek"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 804
    const/4 v2, 0x0

    .line 805
    .restart local v2    # "res":I
    goto :goto_15

    .line 807
    .end local v2    # "res":I
    :pswitch_4d
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingSmsByMonth"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 809
    const/4 v2, 0x0

    .line 810
    .restart local v2    # "res":I
    goto :goto_15

    .line 795
    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_40
        :pswitch_4d
    .end packed-switch
.end method

.method public getLimitOfOutgoingCalls(Landroid/app/enterprise/ContextInfo;I)I
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # I

    .prologue
    const/4 v2, -0x1

    .line 1296
    invoke-direct {p0, p1}, enforcePhoneAppOrOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1297
    iget-object v4, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1328
    :cond_c
    :goto_c
    return v2

    .line 1300
    :cond_d
    const/4 v1, 0x0

    .line 1302
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    packed-switch p2, :pswitch_data_64

    goto :goto_c

    .line 1304
    :pswitch_12
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingCallByDay"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1306
    const/4 v2, 0x0

    .line 1321
    .local v2, "res":I
    :goto_1e
    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 1322
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1323
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v2, :cond_44

    if-nez v2, :cond_2a

    .line 1324
    :cond_44
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2a

    .line 1309
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "res":I
    .end local v3    # "value":Ljava/lang/Integer;
    :pswitch_49
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingCallByWeek"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1311
    const/4 v2, 0x0

    .line 1312
    .restart local v2    # "res":I
    goto :goto_1e

    .line 1314
    .end local v2    # "res":I
    :pswitch_56
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingCallByMonth"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1316
    const/4 v2, 0x0

    .line 1317
    .restart local v2    # "res":I
    goto :goto_1e

    .line 1302
    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_12
        :pswitch_49
        :pswitch_56
    .end packed-switch
.end method

.method public getLimitOfOutgoingSms(Landroid/app/enterprise/ContextInfo;I)I
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # I

    .prologue
    .line 840
    invoke-direct {p0, p1}, enforcePhoneAppOrOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 841
    const/4 v1, 0x0

    .line 843
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    packed-switch p2, :pswitch_data_5a

    .line 860
    const/4 v2, -0x1

    .line 869
    :cond_8
    return v2

    .line 845
    :pswitch_9
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingSmsByDay"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 847
    const/4 v2, 0x0

    .line 862
    .local v2, "res":I
    :goto_15
    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 863
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 864
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v2, :cond_3b

    if-nez v2, :cond_21

    .line 865
    :cond_3b
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_21

    .line 850
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "res":I
    .end local v3    # "value":Ljava/lang/Integer;
    :pswitch_40
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingSmsByWeek"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 852
    const/4 v2, 0x0

    .line 853
    .restart local v2    # "res":I
    goto :goto_15

    .line 855
    .end local v2    # "res":I
    :pswitch_4d
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingSmsByMonth"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 857
    const/4 v2, 0x0

    .line 858
    .restart local v2    # "res":I
    goto :goto_15

    .line 843
    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_40
        :pswitch_4d
    .end packed-switch
.end method

.method public getOutgoingCallExceptionPatterns(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2791
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getOutgoingCallExceptionPatterns()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2792
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2793
    iget-object v0, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2794
    const/4 v0, 0x0

    .line 2796
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x1

    const-string/jumbo v1, "outgoingCallExceptionPattern"

    invoke-direct {p0, p1, v0, v1}, getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public getOutgoingCallRestriction(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    .line 209
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getOutgoingCallRestriction()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 211
    iget-object v0, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_15

    .line 212
    const/4 v0, 0x0

    .line 214
    :goto_14
    return-object v0

    :cond_15
    const-string/jumbo v0, "outgoingPattern"

    invoke-direct {p0, p1, p2, v0}, getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public getOutgoingSmsExceptionPatterns(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2925
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getOutgoingSmsExceptionPatterns()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2926
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2927
    iget-object v0, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2928
    const/4 v0, 0x0

    .line 2930
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x1

    const-string/jumbo v1, "outgoingSmsExceptionPattern"

    invoke-direct {p0, p1, v0, v1}, getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public getOutgoingSmsRestriction(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    .line 583
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 584
    iget-object v0, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_e

    .line 585
    const/4 v0, 0x0

    .line 587
    :goto_d
    return-object v0

    :cond_e
    const-string/jumbo v0, "smsRestrictionOutgoingPattern"

    invoke-direct {p0, p1, p2, v0}, getRestrictionPattern(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public getPinCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 2673
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2674
    .local v2, "callingUid":I
    const/4 v6, -0x1

    .line 2675
    .local v6, "sysUiUid":I
    const/4 v5, 0x0

    .line 2677
    .local v5, "isSystemUi":Z
    :try_start_7
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.android.systemui"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_13} :catch_50

    move-result v6

    .line 2681
    :goto_14
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2682
    .local v0, "callingAppId":I
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 2683
    .local v1, "callingPkg":Ljava/lang/String;
    if-eqz v1, :cond_3c

    .line 2684
    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 2685
    .local v4, "index":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_31

    .line 2686
    invoke-virtual {v1, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2688
    :cond_31
    const-string v7, "android.uid.systemui"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    if-ne v0, v6, :cond_3c

    .line 2689
    const/4 v5, 0x1

    .line 2693
    .end local v4    # "index":I
    :cond_3c
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    if-eq v2, v7, :cond_59

    const/16 v7, 0x3e9

    if-eq v2, v7, :cond_59

    if-nez v5, :cond_59

    .line 2695
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "Can only be called by System, Phone or System UI"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2678
    .end local v0    # "callingAppId":I
    .end local v1    # "callingPkg":Ljava/lang/String;
    :catch_50
    move-exception v3

    .line 2679
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "PhoneRestrictionPolicy"

    const-string v8, "Unable to resolve SystemUI\'s UID."

    invoke-static {v7, v8, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 2698
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "callingAppId":I
    .restart local v1    # "callingPkg":Ljava/lang/String;
    :cond_59
    iget-object v7, p0, mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v7, p1}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getPincode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public isBlockMmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2162
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2163
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, " isBlockMmsWithStorageEnabled calls from Profile return default value"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    const/4 v1, 0x0

    .line 2171
    :goto_10
    return v1

    .line 2166
    :cond_11
    invoke-direct {p0, p1}, enforcePhoneAppOrOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 2168
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "blockMmsWithStorage"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2171
    .local v0, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_10
.end method

.method public isBlockSmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2127
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2128
    const-string v1, "PhoneRestrictionPolicy"

    const-string v2, " isBlockSmsWithStorageEnabled calls from Profile return default value"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    const/4 v1, 0x0

    .line 2136
    :goto_10
    return v1

    .line 2131
    :cond_11
    invoke-direct {p0, p1}, enforcePhoneAppOrOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 2133
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "blockSmsWithStorage"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2136
    .local v0, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_10
.end method

.method public isCallerIDDisplayAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2468
    const/4 v2, 0x1

    .line 2470
    .local v2, "ret":Z
    :try_start_1
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PHONERESTRICTION"

    const-string v7, "allowCallerID"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 2473
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_23

    move-result v3

    .line 2474
    .local v3, "value":Z
    if-nez v3, :cond_f

    .line 2475
    move v2, v3

    .line 2483
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Z
    .end local v4    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_22
    :goto_22
    return v2

    .line 2479
    :catch_23
    move-exception v0

    .line 2480
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "PhoneRestrictionPolicy"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method

.method public isCopyContactToSimAllowed(I)Z
    .registers 9
    .param p1, "message"    # I

    .prologue
    .line 2011
    const/4 v1, 0x1

    .line 2012
    .local v1, "isCopyAllowed":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "copyContactToSimEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2015
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2016
    .local v2, "value":Z
    if-nez v2, :cond_f

    .line 2017
    move v1, v2

    .line 2021
    .end local v2    # "value":Z
    :cond_22
    if-nez v1, :cond_40

    .line 2022
    packed-switch p1, :pswitch_data_5e

    .line 2032
    :pswitch_27
    const-string v4, "PhoneRestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isCopyContactToSimAllowed wrong message value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    :cond_40
    :goto_40
    return v1

    .line 2024
    :pswitch_41
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "Access to PB ADD "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2025
    const v4, 0x1040b84

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_40

    .line 2028
    :pswitch_4f
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "Access to PB Edit "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    const v4, 0x1040b85

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_40

    .line 2022
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_41
        :pswitch_27
        :pswitch_4f
    .end packed-switch
.end method

.method public isCopyContactToSimAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1967
    const/4 v1, 0x1

    .line 1968
    .local v1, "ret":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string v6, "copyContactToSimEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1971
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1972
    .local v2, "value":Z
    if-nez v2, :cond_f

    .line 1973
    move v1, v2

    .line 1977
    .end local v2    # "value":Z
    :cond_22
    return v1
.end method

.method public isIncomingMmsAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2081
    const-string v0, "allowIncomingMms"

    invoke-direct {p0, v0}, getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIncomingSmsAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2039
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2040
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, " isIncomingSmsAllowed calls from Profile return default value"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    const/4 v0, 0x0

    .line 2043
    :goto_10
    return v0

    :cond_11
    const-string v0, "allowIncomingSms"

    invoke-direct {p0, v0}, getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result v0

    goto :goto_10
.end method

.method public isLimitNumberOfCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v3, 0x0

    .line 1187
    iget-object v4, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1200
    :cond_9
    :goto_9
    return v3

    .line 1190
    :cond_a
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "limitCallEnable"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1193
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1194
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1195
    .local v0, "enable":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1196
    const/4 v3, 0x1

    goto :goto_9
.end method

.method public isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 736
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "PHONERESTRICTION"

    const-string/jumbo v5, "limitSmsEnable"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 739
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_29

    .line 740
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 741
    .local v0, "enable":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 742
    const/4 v3, 0x1

    .line 746
    .end local v0    # "enable":Ljava/lang/Boolean;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_28
    return v3

    :cond_29
    const/4 v3, 0x0

    goto :goto_28
.end method

.method public isOutgoingMmsAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2085
    const-string v0, "allowOutgoingMms"

    invoke-direct {p0, v0}, getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOutgoingSmsAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2047
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2048
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, " isOutgoingSmsAllowed calls from Profile return default value"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    const/4 v0, 0x0

    .line 2051
    :goto_10
    return v0

    :cond_11
    const-string v0, "allowOutgoingSms"

    invoke-direct {p0, v0}, getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result v0

    goto :goto_10
.end method

.method public isSimLockedByAdmin(Ljava/lang/String;)Z
    .registers 4
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    .line 2702
    if-nez p1, :cond_9

    .line 2703
    iget-object v1, p0, mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/restriction/SimDBProxy;->hasAnySimcard()Z

    move-result v1

    .line 2709
    :goto_8
    return v1

    .line 2705
    :cond_9
    iget-object v1, p0, mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getPincode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2706
    .local v0, "pincode":Ljava/lang/String;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 2707
    const/4 v1, 0x1

    goto :goto_8

    .line 2709
    :cond_19
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public isWapPushAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2427
    const/4 v1, 0x1

    .line 2428
    .local v1, "ret":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "wapPushEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2431
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

    .line 2432
    .local v2, "value":Z
    if-nez v2, :cond_10

    .line 2433
    move v1, v2

    .line 2438
    .end local v2    # "value":Z
    :cond_23
    const-string v4, "PhoneRestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isWapPushAllowed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    return v1
.end method

.method public declared-synchronized lockUnlockCorporateSimCard(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)I
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pinCode"    # Ljava/lang/String;
    .param p3, "lock"    # Z

    .prologue
    const/16 v5, 0xc

    const/4 v9, 0x5

    const/4 v11, -0x1

    .line 2533
    monitor-enter p0

    :try_start_5
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2534
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2537
    .local v7, "uid":I
    invoke-direct {p0, p2}, validatePinCode(Ljava/lang/String;)Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_77

    move-result v10

    if-nez v10, :cond_14

    .line 2538
    const/4 v5, 0x2

    .line 2618
    :cond_12
    :goto_12
    monitor-exit p0

    return v5

    .line 2542
    :cond_14
    :try_start_14
    iget-object v10, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v3

    .line 2543
    .local v3, "icc":Ljava/lang/String;
    if-nez v3, :cond_1f

    .line 2544
    const/16 v5, 0x9

    goto :goto_12

    .line 2548
    :cond_1f
    iget-object v10, p0, mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v10, v3}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getAdminBySimcard(Ljava/lang/String;)I

    move-result v6

    .line 2549
    .local v6, "simOwner":I
    invoke-direct {p0}, isSimLocked()Z

    move-result v4

    .line 2550
    .local v4, "isLocked":Z
    if-eqz p3, :cond_7d

    .line 2551
    if-eqz v4, :cond_6d

    .line 2552
    if-ne v6, v11, :cond_31

    .line 2553
    const/4 v5, 0x4

    goto :goto_12

    .line 2554
    :cond_31
    if-ne v6, v7, :cond_36

    .line 2555
    const/16 v5, 0xb

    goto :goto_12

    .line 2556
    :cond_36
    if-ne v6, v7, :cond_12

    .line 2590
    :cond_38
    :goto_38
    invoke-direct {p0, p3, p2}, setIccLockEnabled(ZLjava/lang/String;)I

    move-result v5

    .line 2591
    .local v5, "result":I
    if-nez v5, :cond_12

    .line 2592
    const/4 v0, 0x1

    .line 2593
    .local v0, "databaseRet":Z
    if-eqz p3, :cond_9f

    .line 2594
    if-ne v6, v11, :cond_98

    .line 2595
    iget-object v9, p0, mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v9, v7, v3, p2}, Lcom/android/server/enterprise/restriction/SimDBProxy;->addSimcard(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2604
    :cond_49
    :goto_49
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 2605
    .local v8, "userId":I
    if-eqz v0, :cond_68

    if-nez v8, :cond_68

    .line 2606
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_58
    .catchall {:try_start_14 .. :try_end_58} :catchall_77

    .line 2608
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_58
    const-string v9, "PhoneRestriction"

    const-string/jumbo v10, "lockUnlockCorporateSimCard"

    invoke-virtual {v2, v9, v10, p2, p3}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringAndBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2609
    const-string v9, "PhoneRestrictionPolicy"

    const-string/jumbo v10, "enableLimitNumberOfCalls calling gearPolicyManager  "

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_68} :catch_a8
    .catchall {:try_start_58 .. :try_end_68} :catchall_77

    .line 2614
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_68
    :goto_68
    if-nez v0, :cond_12

    .line 2615
    const/16 v5, 0xa

    goto :goto_12

    .line 2560
    .end local v0    # "databaseRet":Z
    .end local v5    # "result":I
    .end local v8    # "userId":I
    :cond_6d
    if-eq v6, v11, :cond_38

    .line 2562
    if-ne v6, v7, :cond_7a

    .line 2564
    :try_start_71
    iget-object v9, p0, mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v9, v7, v3}, Lcom/android/server/enterprise/restriction/SimDBProxy;->removeSimcard(ILjava/lang/String;)Z
    :try_end_76
    .catchall {:try_start_71 .. :try_end_76} :catchall_77

    goto :goto_38

    .line 2533
    .end local v3    # "icc":Ljava/lang/String;
    .end local v4    # "isLocked":Z
    .end local v6    # "simOwner":I
    .end local v7    # "uid":I
    :catchall_77
    move-exception v9

    monitor-exit p0

    throw v9

    .line 2565
    .restart local v3    # "icc":Ljava/lang/String;
    .restart local v4    # "isLocked":Z
    .restart local v6    # "simOwner":I
    .restart local v7    # "uid":I
    :cond_7a
    if-eq v6, v7, :cond_38

    goto :goto_12

    .line 2570
    :cond_7d
    if-eqz v4, :cond_86

    .line 2571
    if-eq v6, v11, :cond_38

    .line 2573
    if-eq v6, v7, :cond_38

    .line 2575
    if-eq v6, v7, :cond_38

    goto :goto_12

    .line 2579
    :cond_86
    if-ne v6, v11, :cond_8a

    move v5, v9

    .line 2580
    goto :goto_12

    .line 2581
    :cond_8a
    if-ne v6, v7, :cond_93

    .line 2582
    :try_start_8c
    iget-object v10, p0, mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v10, v7, v3}, Lcom/android/server/enterprise/restriction/SimDBProxy;->removeSimcard(ILjava/lang/String;)Z

    move v5, v9

    .line 2583
    goto :goto_12

    .line 2584
    :cond_93
    if-eq v6, v7, :cond_38

    move v5, v9

    .line 2585
    goto/16 :goto_12

    .line 2597
    .restart local v0    # "databaseRet":Z
    .restart local v5    # "result":I
    :cond_98
    iget-object v9, p0, mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v9, v7, v3, p2}, Lcom/android/server/enterprise/restriction/SimDBProxy;->setPincode(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_49

    .line 2600
    :cond_9f
    if-eq v6, v11, :cond_49

    .line 2601
    iget-object v9, p0, mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v9, v7, v3}, Lcom/android/server/enterprise/restriction/SimDBProxy;->removeSimcard(ILjava/lang/String;)Z

    move-result v0

    goto :goto_49

    .line 2610
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v8    # "userId":I
    :catch_a8
    move-exception v1

    .line 2611
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ac
    .catchall {:try_start_8c .. :try_end_ac} :catchall_77

    goto :goto_68
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1913
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 1917
    invoke-virtual {p0}, updateDataLimitState()V

    .line 1921
    iget-object v1, p0, mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1922
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1923
    iget-object v1, p0, mSimDBProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/restriction/SimDBProxy;->removeSimcardsByAdmin(I)Z

    .line 1925
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1935
    return-void
.end method

.method public removeIncomingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2822
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.removeIncomingCallExceptionPattern()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2823
    const-string v4, ""

    invoke-virtual {p0, p1, v4}, setIncomingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .line 2824
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2825
    .local v3, "userId":I
    if-eqz v2, :cond_2d

    if-nez v3, :cond_2d

    .line 2826
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2828
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1c
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "removeIncomingCallExceptionPattern"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2829
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "removeIncomingCallExceptionPattern calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2d} :catch_2e

    .line 2834
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_2d
    :goto_2d
    return v2

    .line 2830
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_2e
    move-exception v0

    .line 2831
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d
.end method

.method public removeIncomingCallRestriction(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 243
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.removeIncomingCallRestriction()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v4, ""

    invoke-virtual {p0, p1, v4}, setIncomingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .line 245
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 246
    .local v3, "userId":I
    if-eqz v2, :cond_2d

    if-nez v3, :cond_2d

    .line 247
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 249
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1c
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "removeIncomingCallRestriction"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 250
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "removeIncomingCallRestriction calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2d} :catch_2e

    .line 255
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_2d
    :goto_2d
    return v2

    .line 251
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_2e
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d
.end method

.method public removeIncomingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2956
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.removeIncomingSmsExceptionPattern()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2957
    const-string v4, ""

    invoke-virtual {p0, p1, v4}, setIncomingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .line 2958
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2959
    .local v3, "userId":I
    if-eqz v2, :cond_2d

    if-nez v3, :cond_2d

    .line 2960
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2962
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1c
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "removeIncomingSmsExceptionPattern"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2963
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "removeIncomingSmsExceptionPattern calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2d} :catch_2e

    .line 2968
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_2d
    :goto_2d
    return v2

    .line 2964
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_2e
    move-exception v0

    .line 2965
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d
.end method

.method public removeIncomingSmsRestriction(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 618
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, setIncomingSmsRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeOutgoingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2807
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.removeOutgoingCallExceptionPattern()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2808
    const-string v4, ""

    invoke-virtual {p0, p1, v4}, setOutgoingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .line 2809
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2810
    .local v3, "userId":I
    if-eqz v2, :cond_2d

    if-nez v3, :cond_2d

    .line 2811
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2813
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1c
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "removeOutgoingCallExceptionPattern"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2814
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "removeOutgoingCallExceptionPattern calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2d} :catch_2e

    .line 2819
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_2d
    :goto_2d
    return v2

    .line 2815
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_2e
    move-exception v0

    .line 2816
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d
.end method

.method public removeOutgoingCallRestriction(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 227
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.removeOutgoingCallRestriction()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v4, ""

    invoke-virtual {p0, p1, v4}, setOutgoingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .line 229
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 230
    .local v3, "userId":I
    if-eqz v2, :cond_2d

    if-nez v3, :cond_2d

    .line 231
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 233
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1c
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "removeOutgoingCallRestriction"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 234
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "removeOutgoingCallRestriction calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2d} :catch_2e

    .line 239
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_2d
    :goto_2d
    return v2

    .line 235
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_2e
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d
.end method

.method public removeOutgoingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2941
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.removeOutgoingSmsExceptionPattern()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2942
    const-string v4, ""

    invoke-virtual {p0, p1, v4}, setOutgoingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    .line 2943
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2944
    .local v3, "userId":I
    if-eqz v2, :cond_2d

    if-nez v3, :cond_2d

    .line 2945
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2947
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1c
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "removeOutgoingSmsExceptionPattern"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2948
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "removeOutgoingSmsExceptionPattern calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2d} :catch_2e

    .line 2953
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_2d
    :goto_2d
    return v2

    .line 2949
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_2e
    move-exception v0

    .line 2950
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d
.end method

.method public removeOutgoingSmsRestriction(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 610
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, setOutgoingSmsRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resetCallsCount(Landroid/app/enterprise/ContextInfo;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v4, 0x0

    .line 1435
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1436
    iget-object v5, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v5

    if-nez v5, :cond_e

    move v2, v4

    .line 1461
    :cond_d
    :goto_d
    return v2

    .line 1439
    :cond_e
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "incomingCallCountDay"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1441
    .local v2, "ret":Z
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingCallCountDay"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 1443
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "incomingCallCountWeek"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 1445
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingCallCountWeek"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 1447
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "incomingCallCountMonth"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 1449
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "outgoingCallCountMonth"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    .line 1451
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1452
    .local v3, "userId":I
    if-eqz v2, :cond_d

    if-nez v3, :cond_d

    .line 1453
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1455
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_70
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "resetCallsCount"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1456
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "resetCallsCount calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_81} :catch_82

    goto :goto_d

    .line 1457
    :catch_82
    move-exception v0

    .line 1458
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public resetDataCallLimitCounter(Landroid/app/enterprise/ContextInfo;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x0

    .line 1643
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1644
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "dataCallBytesCountByDay"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1646
    .local v2, "ret":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "dataCallBytesCountByWeek"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    .line 1648
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "dataCallByteCountByMonth"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    .line 1650
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1651
    .local v3, "userId":I
    if-eqz v2, :cond_4d

    if-nez v3, :cond_4d

    .line 1652
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1654
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_3c
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "resetDataCallLimitCounter"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1655
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "resetDataCallLimitCounter calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4d} :catch_4e

    .line 1660
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_4d
    :goto_4d
    return v2

    .line 1656
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_4e
    move-exception v0

    .line 1657
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4d
.end method

.method public resetSmsCount(Landroid/app/enterprise/ContextInfo;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x0

    .line 750
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 751
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "incomingSmsCountDay"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 753
    .local v2, "ret":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "outgoingSmsCountDay"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    .line 755
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "incomingSmsCountWeek"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    .line 757
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "outgoingSmsCountWeek"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    .line 759
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "incomingSmsCountMonth"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    .line 761
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "outgoingSmsCountMonth"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    .line 763
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 764
    .local v3, "userId":I
    if-eqz v2, :cond_77

    if-nez v3, :cond_77

    .line 765
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 767
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_66
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "resetSmsCount"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 768
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "resetSmsCount calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_77} :catch_78

    .line 773
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_77
    :goto_77
    return v2

    .line 769
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_78
    move-exception v0

    .line 770
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_77
.end method

.method public setDataCallLimitEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "status"    # Z

    .prologue
    const/4 v10, 0x0

    .line 1537
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1538
    const/4 v3, 0x1

    .line 1539
    .local v3, "ret":Z
    if-eqz p2, :cond_55

    iget-boolean v9, p0, mDataLimitEnabled:Z

    if-nez v9, :cond_55

    .line 1540
    invoke-virtual {p0, p1}, resetDataCallLimitCounter(Landroid/app/enterprise/ContextInfo;)Z

    .line 1541
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1542
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v9, 0xb

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1543
    const/16 v9, 0xc

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1544
    const/16 v9, 0xd

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1545
    const/16 v9, 0xe

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 1546
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1547
    .local v4, "time":J
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "dataCallDateDay"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    and-int/2addr v3, v9

    .line 1549
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "dataCallDateWeek"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    and-int/2addr v3, v9

    .line 1551
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v10, "dataCallDateMonth"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    and-int/2addr v3, v9

    .line 1554
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v4    # "time":J
    :cond_55
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v11, "PHONERESTRICTION"

    const-string/jumbo v12, "enableLimitDataCall"

    invoke-virtual {v9, v10, v11, v12, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    and-int/2addr v3, v9

    .line 1556
    if-eqz v3, :cond_84

    .line 1557
    invoke-virtual {p0, p1}, getDataCallLimitEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v9

    iput-boolean v9, p0, mDataLimitEnabled:Z

    .line 1558
    iget-boolean v9, p0, mDataLimitEnabled:Z

    if-nez v9, :cond_79

    .line 1559
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1560
    .local v6, "token":J
    invoke-direct {p0}, restorePacketDataNetworkSetting()Z

    .line 1561
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1563
    .end local v6    # "token":J
    :cond_79
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getDeviceInventory()Landroid/app/enterprise/DeviceInventory;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/DeviceInventory;->dataUsageTimerActivation()V

    .line 1565
    :cond_84
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 1566
    .local v8, "userId":I
    if-eqz v3, :cond_a7

    if-nez v8, :cond_a7

    .line 1567
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1569
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_93
    const-string v9, "PhoneRestriction"

    const-string/jumbo v10, "setDataCallLimitEnabled"

    invoke-virtual {p0, p1}, getDataCallLimitEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v11

    invoke-virtual {v2, v9, v10, v11}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1570
    const-string v9, "PhoneRestrictionPolicy"

    const-string/jumbo v10, "setDataCallLimitEnabled calling gearPolicyManager  "

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_a7} :catch_a8

    .line 1575
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_a7
    :goto_a7
    return v3

    .line 1571
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_a8
    move-exception v1

    .line 1572
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a7
.end method

.method public setEmergencyCallOnly(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 492
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 493
    iget-object v4, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_e

    .line 494
    const/4 v2, 0x0

    .line 509
    :cond_d
    :goto_d
    return v2

    .line 496
    :cond_e
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string/jumbo v7, "emergencyCallOnly"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 499
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 500
    .local v3, "userId":I
    if-eqz v2, :cond_d

    if-nez v3, :cond_d

    .line 501
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 503
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_2a
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "setEmergencyCallOnly"

    const/4 v6, 0x1

    invoke-virtual {p0, p1, v6}, getEmergencyCallOnly(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 504
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "setEmergencyCallOnly calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3f} :catch_40

    goto :goto_d

    .line 505
    :catch_40
    move-exception v0

    .line 506
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public setIncomingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 2899
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.setIncomingCallExceptionPattern()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2900
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2901
    iget-object v4, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_15

    .line 2902
    const/4 v2, 0x0

    .line 2916
    :cond_14
    :goto_14
    return v2

    .line 2904
    :cond_15
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string/jumbo v7, "incomingCallExceptionPattern"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 2906
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2907
    .local v3, "userId":I
    if-eqz v2, :cond_14

    if-nez v3, :cond_14

    .line 2908
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2910
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_31
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "setIncomingCallExceptionPattern"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "setIncomingCallExceptionPattern calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_41} :catch_42

    goto :goto_14

    .line 2912
    :catch_42
    move-exception v0

    .line 2913
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14
.end method

.method public setIncomingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 324
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.setIncomingCallRestriction()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 326
    iget-object v4, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_15

    .line 327
    const/4 v2, 0x0

    .line 341
    :cond_14
    :goto_14
    return v2

    .line 329
    :cond_15
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string/jumbo v7, "incomingPattern"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 331
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 332
    .local v3, "userId":I
    if-eqz v2, :cond_14

    if-nez v3, :cond_14

    .line 333
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 335
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_31
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "setIncomingCallRestriction"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "setIncomingCallRestriction calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_41} :catch_42

    goto :goto_14

    .line 337
    :catch_42
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14
.end method

.method public setIncomingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 3033
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.setOutgoingSmsExceptionPattern()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3034
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3035
    iget-object v4, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_15

    .line 3036
    const/4 v2, 0x0

    .line 3050
    :cond_14
    :goto_14
    return v2

    .line 3038
    :cond_15
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string/jumbo v7, "incomingSmsExceptionPattern"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 3040
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 3041
    .local v3, "userId":I
    if-eqz v2, :cond_14

    if-nez v3, :cond_14

    .line 3042
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 3044
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_31
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "setIncomingSmsExceptionPattern"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "setIncomingSmsExceptionPattern calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_41} :catch_42

    goto :goto_14

    .line 3046
    :catch_42
    move-exception v0

    .line 3047
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14
.end method

.method public setIncomingSmsRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 681
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 682
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string/jumbo v7, "smsRestrictionIncomingPattern"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 684
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 685
    .local v3, "userId":I
    if-eqz v2, :cond_30

    if-nez v3, :cond_30

    .line 686
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 688
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_20
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "setIncomingSmsRestriction"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "setIncomingSmsRestriction calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_30} :catch_31

    .line 694
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_30
    :goto_30
    return v2

    .line 690
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_31
    move-exception v0

    .line 691
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30
.end method

.method public setLimitOfDataCalls(Landroid/app/enterprise/ContextInfo;JJJ)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "limitByDay"    # J
    .param p4, "limitByWeek"    # J
    .param p6, "limitByMonth"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 1593
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1594
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1596
    .local v1, "callingUid":I
    cmp-long v0, p2, v2

    if-ltz v0, :cond_14

    cmp-long v0, p4, v2

    if-ltz v0, :cond_14

    cmp-long v0, p6, v2

    if-gez v0, :cond_16

    .line 1597
    :cond_14
    const/4 v6, 0x0

    .line 1606
    :goto_15
    return v6

    .line 1600
    :cond_16
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "dataCallByDay"

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v6

    .line 1602
    .local v6, "ret":Z
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "dataCallByWeek"

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1604
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "dataCallByMonth"

    move-wide v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1606
    goto :goto_15
.end method

.method public setLimitOfIncomingCalls(Landroid/app/enterprise/ContextInfo;III)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "limitByDay"    # I
    .param p3, "limitByWeek"    # I
    .param p4, "limitByMonth"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1209
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1210
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1211
    .local v0, "callingUid":I
    iget-object v4, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_11

    .line 1221
    :cond_10
    :goto_10
    return v3

    .line 1214
    :cond_11
    if-ltz p2, :cond_10

    if-ltz p3, :cond_10

    if-ltz p4, :cond_10

    .line 1216
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingCallByDay"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 1218
    .local v1, "ret":Z
    if-eqz v1, :cond_43

    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingCallByWeek"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_43

    move v1, v2

    .line 1221
    :goto_32
    if-eqz v1, :cond_45

    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingCallByMonth"

    invoke-virtual {v4, v0, v5, v6, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_45

    :goto_41
    move v3, v2

    goto :goto_10

    :cond_43
    move v1, v3

    .line 1218
    goto :goto_32

    :cond_45
    move v2, v3

    .line 1221
    goto :goto_41
.end method

.method public setLimitOfIncomingSms(Landroid/app/enterprise/ContextInfo;III)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "limitByDay"    # I
    .param p3, "limitByWeek"    # I
    .param p4, "limitByMonth"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 777
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 778
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 779
    .local v0, "callingUid":I
    if-ltz p2, :cond_e

    if-ltz p3, :cond_e

    if-gez p4, :cond_10

    :cond_e
    move v2, v3

    .line 786
    :cond_f
    :goto_f
    return v2

    .line 781
    :cond_10
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingSmsByDay"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 783
    .local v1, "ret":Z
    if-eqz v1, :cond_3c

    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingSmsByWeek"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3c

    move v1, v2

    .line 786
    :goto_2b
    if-eqz v1, :cond_3a

    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "incomingSmsByMonth"

    invoke-virtual {v4, v0, v5, v6, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_f

    :cond_3a
    move v2, v3

    goto :goto_f

    :cond_3c
    move v1, v3

    .line 783
    goto :goto_2b
.end method

.method public setLimitOfOutgoingCalls(Landroid/app/enterprise/ContextInfo;III)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "limitByDay"    # I
    .param p3, "limitByWeek"    # I
    .param p4, "limitByMonth"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1273
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1274
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1275
    .local v0, "callingUid":I
    iget-object v4, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_11

    .line 1285
    :cond_10
    :goto_10
    return v3

    .line 1278
    :cond_11
    if-ltz p2, :cond_10

    if-ltz p3, :cond_10

    if-ltz p4, :cond_10

    .line 1280
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingCallByDay"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 1282
    .local v1, "ret":Z
    if-eqz v1, :cond_43

    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingCallByWeek"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_43

    move v1, v2

    .line 1285
    :goto_32
    if-eqz v1, :cond_45

    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingCallByMonth"

    invoke-virtual {v4, v0, v5, v6, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_45

    :goto_41
    move v3, v2

    goto :goto_10

    :cond_43
    move v1, v3

    .line 1282
    goto :goto_32

    :cond_45
    move v2, v3

    .line 1285
    goto :goto_41
.end method

.method public setLimitOfOutgoingSms(Landroid/app/enterprise/ContextInfo;III)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "limitByDay"    # I
    .param p3, "limitByWeek"    # I
    .param p4, "limitByMonth"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 825
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 826
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 827
    .local v0, "callingUid":I
    if-ltz p2, :cond_e

    if-ltz p3, :cond_e

    if-gez p4, :cond_10

    :cond_e
    move v2, v3

    .line 834
    :cond_f
    :goto_f
    return v2

    .line 829
    :cond_10
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingSmsByDay"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 831
    .local v1, "ret":Z
    if-eqz v1, :cond_3c

    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingSmsByWeek"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3c

    move v1, v2

    .line 834
    :goto_2b
    if-eqz v1, :cond_3a

    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "PHONERESTRICTION"

    const-string/jumbo v6, "outgoingSmsByMonth"

    invoke-virtual {v4, v0, v5, v6, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_f

    :cond_3a
    move v2, v3

    goto :goto_f

    :cond_3c
    move v1, v3

    .line 831
    goto :goto_2b
.end method

.method public setOutgoingCallExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 2879
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.setOutgoingCallExceptionPattern()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2880
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2881
    iget-object v4, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_15

    .line 2882
    const/4 v2, 0x0

    .line 2896
    :cond_14
    :goto_14
    return v2

    .line 2884
    :cond_15
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string/jumbo v7, "outgoingCallExceptionPattern"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 2886
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2887
    .local v3, "userId":I
    if-eqz v2, :cond_14

    if-nez v3, :cond_14

    .line 2888
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2890
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_31
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "setOutgoingCallExceptionPattern"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "setOutgoingCallExceptionPattern calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_41} :catch_42

    goto :goto_14

    .line 2892
    :catch_42
    move-exception v0

    .line 2893
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14
.end method

.method public setOutgoingCallRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 303
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.setOutgoingCallRestriction()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 305
    iget-object v4, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_15

    .line 306
    const/4 v2, 0x0

    .line 320
    :cond_14
    :goto_14
    return v2

    .line 308
    :cond_15
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string/jumbo v7, "outgoingPattern"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 310
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 311
    .local v3, "userId":I
    if-eqz v2, :cond_14

    if-nez v3, :cond_14

    .line 312
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 314
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_31
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "setOutgoingCallRestriction"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "setOutgoingCallRestriction calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_41} :catch_42

    goto :goto_14

    .line 316
    :catch_42
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14
.end method

.method public setOutgoingSmsExceptionPattern(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 3013
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, ">>> PhoneRestrictionPolicy.setOutgoingSmsExceptionPattern()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3014
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3015
    iget-object v4, p0, mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_15

    .line 3016
    const/4 v2, 0x0

    .line 3030
    :cond_14
    :goto_14
    return v2

    .line 3018
    :cond_15
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string/jumbo v7, "outgoingSmsExceptionPattern"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 3020
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 3021
    .local v3, "userId":I
    if-eqz v2, :cond_14

    if-nez v3, :cond_14

    .line 3022
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 3024
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_31
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "setOutgoingSmsExceptionPattern"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "setOutgoingSmsExceptionPattern calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_41} :catch_42

    goto :goto_14

    .line 3026
    :catch_42
    move-exception v0

    .line 3027
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14
.end method

.method public setOutgoingSmsRestriction(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "pattern"    # Ljava/lang/String;

    .prologue
    .line 659
    invoke-direct {p0, p1}, enforceOwnerOnlyAndPhonePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 660
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "PHONERESTRICTION"

    const-string/jumbo v7, "smsRestrictionOutgoingPattern"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 662
    .local v2, "success":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 663
    .local v3, "userId":I
    if-eqz v2, :cond_30

    if-nez v3, :cond_30

    .line 664
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 666
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_20
    const-string v4, "PhoneRestriction"

    const-string/jumbo v5, "setOutgoingSmsRestriction"

    invoke-virtual {v1, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "setOutgoingSmsRestriction calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_30} :catch_31

    .line 672
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_30
    :goto_30
    return v2

    .line 668
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_31
    move-exception v0

    .line 669
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30
.end method

.method public storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V
    .registers 12
    .param p1, "isSms"    # Z
    .param p2, "pdu"    # [B
    .param p3, "srcAddress"    # Ljava/lang/String;
    .param p4, "sendType"    # I
    .param p5, "timeStamp"    # Ljava/lang/String;

    .prologue
    .line 2221
    invoke-direct {p0}, enforcePhoneApp()V

    .line 2224
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 2227
    .local v2, "hexPdu":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2228
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "SMSMMSBlockedDelivery"

    .line 2229
    .local v3, "tableName":Ljava/lang/String;
    const-string/jumbo v4, "smsMmsPdu"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    const-string/jumbo v4, "smsMmsSendType"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2231
    const-string/jumbo v5, "smsMmsType"

    if-eqz p1, :cond_47

    const/4 v4, 0x1

    :goto_24
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2232
    const-string/jumbo v4, "smsMmsOrigAddress"

    invoke-virtual {v0, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    if-nez p1, :cond_39

    .line 2234
    const-string/jumbo v4, "smsMmsTimeStamp"

    invoke-virtual {v0, v4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    :cond_39
    :try_start_39
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 2237
    const-string v4, "PhoneRestrictionPolicy"

    const-string/jumbo v5, "sms/mms stored successfully"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_46} :catch_49

    .line 2241
    :goto_46
    return-void

    .line 2231
    :cond_47
    const/4 v4, 0x0

    goto :goto_24

    .line 2238
    :catch_49
    move-exception v1

    .line 2239
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "could not write sms/mms into edm database"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 1930
    return-void
.end method

.method public updateDataLimitState()V
    .registers 2

    .prologue
    .line 1905
    invoke-direct {p0}, enforceSystemUser()V

    .line 1906
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, getDataCallLimitEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    iput-boolean v0, p0, mDataLimitEnabled:Z

    .line 1907
    return-void
.end method

.method public updateDateAndDataCallCounters(J)V
    .registers 16
    .param p1, "bytes"    # J

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1750
    invoke-direct {p0}, enforceSystemUser()V

    .line 1752
    iget-boolean v6, p0, mDataLimitEnabled:Z

    if-nez v6, :cond_c

    .line 1831
    :goto_b
    return-void

    .line 1757
    :cond_c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1758
    .local v0, "calendarCurrent":Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1759
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1760
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1761
    const/16 v6, 0xe

    invoke-virtual {v0, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 1764
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1766
    .local v1, "calendarDay":Ljava/util/Calendar;
    :try_start_28
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dataCallDateDay"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_38} :catch_11c

    .line 1771
    :goto_38
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1773
    .local v3, "calendarWeek":Ljava/util/Calendar;
    :try_start_3c
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dataCallDateWeek"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_4c} :catch_119

    .line 1778
    :goto_4c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1780
    .local v2, "calendarMonth":Ljava/util/Calendar;
    :try_start_50
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dataCallDateMonth"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_60
    .catch Ljava/lang/NumberFormatException; {:try_start_50 .. :try_end_60} :catch_116

    .line 1785
    :goto_60
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1788
    .local v4, "time":J
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ee

    .line 1789
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dataCallDateDay"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1791
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dataCallBytesCountByDay"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1795
    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_a0

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_b8

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_b8

    .line 1800
    :cond_a0
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dataCallDateWeek"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1802
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dataCallBytesCountByWeek"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1808
    :cond_b8
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_d6

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_ee

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_ee

    .line 1811
    :cond_d6
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dataCallDateMonth"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1814
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "dataCallByteCountByMonth"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1819
    :cond_ee
    const-wide/16 v6, 0x0

    cmp-long v6, v6, p1

    if-gez v6, :cond_106

    .line 1820
    const-string/jumbo v6, "dataCallBytesCountByDay"

    invoke-direct {p0, v6, p1, p2}, dataLimitCounter(Ljava/lang/String;J)V

    .line 1821
    const-string/jumbo v6, "dataCallBytesCountByWeek"

    invoke-direct {p0, v6, p1, p2}, dataLimitCounter(Ljava/lang/String;J)V

    .line 1822
    const-string/jumbo v6, "dataCallByteCountByMonth"

    invoke-direct {p0, v6, p1, p2}, dataLimitCounter(Ljava/lang/String;J)V

    .line 1826
    :cond_106
    invoke-virtual {p0}, checkDataCallLimit()Z

    move-result v6

    if-eqz v6, :cond_111

    .line 1827
    invoke-direct {p0}, blockDataNetwork()Z

    goto/16 :goto_b

    .line 1829
    :cond_111
    invoke-direct {p0}, restorePacketDataNetworkSetting()Z

    goto/16 :goto_b

    .line 1782
    .end local v4    # "time":J
    :catch_116
    move-exception v6

    goto/16 :goto_60

    .line 1775
    .end local v2    # "calendarMonth":Ljava/util/Calendar;
    :catch_119
    move-exception v6

    goto/16 :goto_4c

    .line 1768
    .end local v3    # "calendarWeek":Ljava/util/Calendar;
    :catch_11c
    move-exception v6

    goto/16 :goto_38
.end method
