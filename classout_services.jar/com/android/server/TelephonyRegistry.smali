.class Lcom/android/server/TelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TelephonyRegistry$LogSSC;,
        Lcom/android/server/TelephonyRegistry$Record;
    }
.end annotation


# static fields
.field static final CHECK_PHONE_STATE_PERMISSION_MASK:I = 0xe0

.field private static final DBG:Z = false

.field private static final DBG_LOC:Z = false

.field static final ENFORCE_PHONE_STATE_PERMISSION_MASK:I = 0x400c

.field private static final MSG_UPDATE_DEFAULT_SUB:I = 0x2

.field private static final MSG_USER_SWITCHED:I = 0x1

.field static final PHONE_STATE_PERMISSION_MASK_CDMA_DUN:I = 0xc00ec

.field static final PRECISE_PHONE_STATE_PERMISSION_MASK:I = 0x1800

.field static final SHIP_BUILD:Z

.field private static final TAG:Ljava/lang/String; = "TelephonyRegistry"

.field private static final VDBG:Z


# instance fields
.field private hasNotifySubscriptionInfoChangedOccurred:Z

.field private logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

.field private mApnBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mBackgroundCallState:I

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallForwarding:[Z

.field private mCallIncomingNumber:[Ljava/lang/String;

.field private mCallState:[I

.field private mCarrierNetworkChangeState:Z

.field private mCellInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCellLocation:[Landroid/os/Bundle;

.field private mConnectedApns:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDataActivity:[I

.field private mDataConnectionApn:[Ljava/lang/String;

.field private mDataConnectionLinkProperties:[Landroid/net/LinkProperties;

.field private mDataConnectionNetworkCapabilities:[Landroid/net/NetworkCapabilities;

.field private mDataConnectionNetworkType:[I

.field private mDataConnectionPossible:[Z

.field private mDataConnectionReason:[Ljava/lang/String;

.field private mDataConnectionState:[I

.field private mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

.field private mDefaultPhoneId:I

.field private mDefaultSubId:I

.field private mDualSimSlotActivationState:Z

.field private mDunDataActivity:I

.field private mDunDataConnectionState:I

.field private mDunNetWorkType:I

.field private mForegroundCallState:I

.field private final mHandler:Landroid/os/Handler;

.field private mMessageWaiting:[Z

.field private mNumPhones:I

.field private mOtaspMode:I

.field private mPreciseCallState:Landroid/telephony/PreciseCallState;

.field private mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mRingingCallState:I

.field private mServiceState:[Landroid/telephony/ServiceState;

.field private mSignalStrength:[Landroid/telephony/SignalStrength;

.field private mVoLteServiceState:Landroid/telephony/VoLteServiceState;

.field private next:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 101
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.product_ship"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, SHIP_BUILD:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 337
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    .line 145
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, mRemoveList:Ljava/util/ArrayList;

    .line 146
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, mRecords:Ljava/util/ArrayList;

    .line 152
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, hasNotifySubscriptionInfoChangedOccurred:Z

    .line 191
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, mOtaspMode:I

    .line 193
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, mCellInfo:Ljava/util/ArrayList;

    .line 195
    new-instance v15, Landroid/telephony/VoLteServiceState;

    invoke-direct {v15}, Landroid/telephony/VoLteServiceState;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, mVoLteServiceState:Landroid/telephony/VoLteServiceState;

    .line 197
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, mDefaultSubId:I

    .line 199
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, mDefaultPhoneId:I

    .line 201
    new-instance v15, Landroid/telephony/DataConnectionRealTimeInfo;

    invoke-direct {v15}, Landroid/telephony/DataConnectionRealTimeInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

    .line 203
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, mRingingCallState:I

    .line 205
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, mForegroundCallState:I

    .line 207
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, mBackgroundCallState:I

    .line 209
    new-instance v15, Landroid/telephony/PreciseCallState;

    invoke-direct {v15}, Landroid/telephony/PreciseCallState;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, mPreciseCallState:Landroid/telephony/PreciseCallState;

    .line 211
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, mCarrierNetworkChangeState:Z

    .line 213
    new-instance v15, Landroid/telephony/PreciseDataConnectionState;

    invoke-direct {v15}, Landroid/telephony/PreciseDataConnectionState;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 218
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, mApnBlackList:Ljava/util/ArrayList;

    .line 222
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, mDualSimSlotActivationState:Z

    .line 226
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, mDunDataActivity:I

    .line 228
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, mDunNetWorkType:I

    .line 230
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, mDunDataConnectionState:I

    .line 261
    new-instance v15, Lcom/android/server/TelephonyRegistry$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/server/TelephonyRegistry$1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    move-object/from16 v0, p0

    iput-object v15, v0, mHandler:Landroid/os/Handler;

    .line 301
    new-instance v15, Lcom/android/server/TelephonyRegistry$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/server/TelephonyRegistry$2;-><init>(Lcom/android/server/TelephonyRegistry;)V

    move-object/from16 v0, p0

    iput-object v15, v0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1964
    const/16 v15, 0xa

    new-array v15, v15, [Lcom/android/server/TelephonyRegistry$LogSSC;

    move-object/from16 v0, p0

    iput-object v15, v0, logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    .line 1965
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, next:I

    .line 338
    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v12

    .line 340
    .local v12, "location":Landroid/telephony/CellLocation;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mContext:Landroid/content/Context;

    .line 341
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 346
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v14

    .line 348
    .local v14, "numPhones":I
    move-object/from16 v0, p0

    iput v14, v0, mNumPhones:I

    .line 349
    new-array v15, v14, [I

    move-object/from16 v0, p0

    iput-object v15, v0, mCallState:[I

    .line 350
    new-array v15, v14, [I

    move-object/from16 v0, p0

    iput-object v15, v0, mDataActivity:[I

    .line 352
    new-array v15, v14, [Ljava/util/ArrayList;

    check-cast v15, [Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v15, v0, mConnectedApns:[Ljava/util/ArrayList;

    .line 354
    new-array v15, v14, [I

    move-object/from16 v0, p0

    iput-object v15, v0, mDataConnectionState:[I

    .line 355
    new-array v15, v14, [I

    move-object/from16 v0, p0

    iput-object v15, v0, mDataConnectionNetworkType:[I

    .line 356
    new-array v15, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, mCallIncomingNumber:[Ljava/lang/String;

    .line 357
    new-array v15, v14, [Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iput-object v15, v0, mServiceState:[Landroid/telephony/ServiceState;

    .line 358
    new-array v15, v14, [Landroid/telephony/SignalStrength;

    move-object/from16 v0, p0

    iput-object v15, v0, mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 359
    new-array v15, v14, [Z

    move-object/from16 v0, p0

    iput-object v15, v0, mMessageWaiting:[Z

    .line 360
    new-array v15, v14, [Z

    move-object/from16 v0, p0

    iput-object v15, v0, mDataConnectionPossible:[Z

    .line 361
    new-array v15, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, mDataConnectionReason:[Ljava/lang/String;

    .line 362
    new-array v15, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, mDataConnectionApn:[Ljava/lang/String;

    .line 363
    new-array v15, v14, [Z

    move-object/from16 v0, p0

    iput-object v15, v0, mCallForwarding:[Z

    .line 364
    new-array v15, v14, [Landroid/os/Bundle;

    move-object/from16 v0, p0

    iput-object v15, v0, mCellLocation:[Landroid/os/Bundle;

    .line 365
    new-array v15, v14, [Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    iput-object v15, v0, mDataConnectionLinkProperties:[Landroid/net/LinkProperties;

    .line 366
    new-array v15, v14, [Landroid/net/NetworkCapabilities;

    move-object/from16 v0, p0

    iput-object v15, v0, mDataConnectionNetworkCapabilities:[Landroid/net/NetworkCapabilities;

    .line 367
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, mCellInfo:Ljava/util/ArrayList;

    .line 368
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_12c
    if-ge v9, v14, :cond_1b9

    .line 369
    move-object/from16 v0, p0

    iget-object v15, v0, mCallState:[I

    const/16 v16, 0x0

    aput v16, v15, v9

    .line 370
    move-object/from16 v0, p0

    iget-object v15, v0, mDataActivity:[I

    const/16 v16, 0x0

    aput v16, v15, v9

    .line 372
    move-object/from16 v0, p0

    iget-object v15, v0, mConnectedApns:[Ljava/util/ArrayList;

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    aput-object v16, v15, v9

    .line 374
    move-object/from16 v0, p0

    iget-object v15, v0, mDataConnectionState:[I

    const/16 v16, -0x1

    aput v16, v15, v9

    .line 376
    move-object/from16 v0, p0

    iget-object v15, v0, mDataConnectionNetworkType:[I

    const/16 v16, -0x1

    aput v16, v15, v9

    .line 378
    move-object/from16 v0, p0

    iget-object v15, v0, mCallIncomingNumber:[Ljava/lang/String;

    const-string v16, ""

    aput-object v16, v15, v9

    .line 379
    move-object/from16 v0, p0

    iget-object v15, v0, mServiceState:[Landroid/telephony/ServiceState;

    new-instance v16, Landroid/telephony/ServiceState;

    invoke-direct/range {v16 .. v16}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v16, v15, v9

    .line 380
    move-object/from16 v0, p0

    iget-object v15, v0, mSignalStrength:[Landroid/telephony/SignalStrength;

    new-instance v16, Landroid/telephony/SignalStrength;

    invoke-direct/range {v16 .. v16}, Landroid/telephony/SignalStrength;-><init>()V

    aput-object v16, v15, v9

    .line 381
    move-object/from16 v0, p0

    iget-object v15, v0, mMessageWaiting:[Z

    const/16 v16, 0x0

    aput-boolean v16, v15, v9

    .line 382
    move-object/from16 v0, p0

    iget-object v15, v0, mCallForwarding:[Z

    const/16 v16, 0x0

    aput-boolean v16, v15, v9

    .line 383
    move-object/from16 v0, p0

    iget-object v15, v0, mDataConnectionPossible:[Z

    const/16 v16, 0x0

    aput-boolean v16, v15, v9

    .line 384
    move-object/from16 v0, p0

    iget-object v15, v0, mDataConnectionReason:[Ljava/lang/String;

    const-string v16, ""

    aput-object v16, v15, v9

    .line 385
    move-object/from16 v0, p0

    iget-object v15, v0, mDataConnectionApn:[Ljava/lang/String;

    const-string v16, ""

    aput-object v16, v15, v9

    .line 386
    move-object/from16 v0, p0

    iget-object v15, v0, mCellLocation:[Landroid/os/Bundle;

    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    aput-object v16, v15, v9

    .line 387
    move-object/from16 v0, p0

    iget-object v15, v0, mCellInfo:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v15, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 368
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_12c

    .line 392
    :cond_1b9
    if-eqz v12, :cond_1ca

    .line 393
    const/4 v9, 0x0

    :goto_1bc
    if-ge v9, v14, :cond_1ca

    .line 394
    move-object/from16 v0, p0

    iget-object v15, v0, mCellLocation:[Landroid/os/Bundle;

    aget-object v15, v15, v9

    invoke-virtual {v12, v15}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 393
    add-int/lit8 v9, v9, 0x1

    goto :goto_1bc

    .line 404
    :cond_1ca
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, mApnBlackList:Ljava/util/ArrayList;

    .line 406
    :try_start_1d3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1070079

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, "apnStrings":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, mApnBlackList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 409
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Block apn list: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, mApnBlackList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, log(Ljava/lang/String;)V
    :try_end_205
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1d3 .. :try_end_205} :catch_257

    .line 413
    .end local v2    # "apnStrings":[Ljava/lang/String;
    :goto_205
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_RIL_ConfigApnForHideDataIcon"

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 415
    .local v8, "hideApns":Ljava/lang/String;
    const-string v15, ""

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_261

    .line 416
    const-string v15, ","

    invoke-virtual {v8, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, "argList":[Ljava/lang/String;
    const-string v13, "Additional block apn from cscfeature :"

    .line 418
    .local v13, "logStr":Ljava/lang/String;
    move-object v5, v4

    .local v5, "arr$":[Ljava/lang/String;
    array-length v11, v5

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_224
    if-ge v10, v11, :cond_25e

    aget-object v3, v5, v10

    .line 419
    .local v3, "arg":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 420
    .local v7, "hideApn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, mApnBlackList:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_254

    .line 421
    move-object/from16 v0, p0

    iget-object v15, v0, mApnBlackList:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 418
    :cond_254
    add-int/lit8 v10, v10, 0x1

    goto :goto_224

    .line 410
    .end local v3    # "arg":Ljava/lang/String;
    .end local v4    # "argList":[Ljava/lang/String;
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v7    # "hideApn":Ljava/lang/String;
    .end local v8    # "hideApns":Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v13    # "logStr":Ljava/lang/String;
    :catch_257
    move-exception v6

    .line 411
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v15, "Block apn list not found."

    invoke-static {v15}, log(Ljava/lang/String;)V

    goto :goto_205

    .line 425
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v4    # "argList":[Ljava/lang/String;
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v8    # "hideApns":Ljava/lang/String;
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    .restart local v13    # "logStr":Ljava/lang/String;
    :cond_25e
    invoke-static {v13}, log(Ljava/lang/String;)V

    .line 429
    .end local v4    # "argList":[Ljava/lang/String;
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v13    # "logStr":Ljava/lang/String;
    :cond_261
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    const-class v16, Landroid/app/AppOpsManager;

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/AppOpsManager;

    move-object/from16 v0, p0

    iput-object v15, v0, mAppOps:Landroid/app/AppOpsManager;

    .line 430
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/TelephonyRegistry;)[Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 95
    iget-object v0, p0, mCellLocation:[Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 95
    iget-object v0, p0, mRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "x2"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/TelephonyRegistry;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 95
    invoke-direct {p0}, handleRemoveListLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/TelephonyRegistry;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 95
    iget v0, p0, mDefaultSubId:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/TelephonyRegistry;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"    # I

    .prologue
    .line 95
    iput p1, p0, mDefaultSubId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/TelephonyRegistry;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 95
    iget v0, p0, mDefaultPhoneId:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/TelephonyRegistry;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"    # I

    .prologue
    .line 95
    iput p1, p0, mDefaultPhoneId:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 95
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/TelephonyRegistry;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1}, validatePhoneId(I)Z

    move-result v0

    return v0
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;I)V
    .registers 11
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .prologue
    .line 1714
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1716
    .local v0, "ident":J
    if-nez p1, :cond_52

    .line 1717
    :try_start_6
    iget-object v3, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_58
    .catchall {:try_start_6 .. :try_end_b} :catchall_5d

    .line 1724
    :goto_b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1727
    :goto_e
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1728
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1730
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1731
    const-string/jumbo v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1736
    :cond_2f
    const/4 v3, -0x1

    if-eq p3, v3, :cond_3d

    .line 1737
    const-string v3, "android.intent.action.SUBSCRIPTION_PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1738
    const-string/jumbo v3, "subscription"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1743
    :cond_3d
    iget-object v3, p0, mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1745
    iget-object v3, p0, mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.READ_PHONE_STATE"

    const/16 v6, 0x33

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 1748
    return-void

    .line 1719
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_52
    :try_start_52
    iget-object v3, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_57} :catch_58
    .catchall {:try_start_52 .. :try_end_57} :catchall_5d

    goto :goto_b

    .line 1721
    :catch_58
    move-exception v3

    .line 1724
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_e

    :catchall_5d
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .prologue
    .line 1786
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1787
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1788
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1789
    const-string/jumbo v1, "subscription"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1790
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1791
    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ZI)V
    .registers 15
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p8, "roaming"    # Z
    .param p9, "subId"    # I

    .prologue
    const/4 v4, 0x1

    .line 1757
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1758
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1760
    if-nez p2, :cond_1e

    .line 1761
    const-string/jumbo v2, "networkUnvailable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1763
    :cond_1e
    if-eqz p3, :cond_26

    .line 1764
    const-string/jumbo v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1766
    :cond_26
    if-eqz p6, :cond_3a

    .line 1767
    const-string/jumbo v2, "linkProperties"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1768
    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1769
    .local v0, "iface":Ljava/lang/String;
    if-eqz v0, :cond_3a

    .line 1770
    const-string/jumbo v2, "iface"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1773
    .end local v0    # "iface":Ljava/lang/String;
    :cond_3a
    if-eqz p7, :cond_42

    .line 1774
    const-string/jumbo v2, "networkCapabilities"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1776
    :cond_42
    if-eqz p8, :cond_4a

    const-string/jumbo v2, "networkRoaming"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1778
    :cond_4a
    const-string v2, "apn"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1779
    const-string v2, "apnType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1780
    const-string/jumbo v2, "subscription"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1781
    iget-object v2, p0, mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1782
    return-void
.end method

.method private broadcastPreciseCallStateChanged(IIIII)V
    .registers 10
    .param p1, "ringingCallState"    # I
    .param p2, "foregroundCallState"    # I
    .param p3, "backgroundCallState"    # I
    .param p4, "disconnectCause"    # I
    .param p5, "preciseDisconnectCause"    # I

    .prologue
    .line 1795
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PRECISE_CALL_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1796
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ringing_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1797
    const-string/jumbo v1, "foreground_state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1798
    const-string v1, "background_state"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1799
    const-string/jumbo v1, "disconnect_cause"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1800
    const-string/jumbo v1, "precise_disconnect_cause"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1801
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1803
    return-void
.end method

.method private broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V
    .registers 12
    .param p1, "state"    # I
    .param p2, "networkType"    # I
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "failCause"    # Ljava/lang/String;

    .prologue
    .line 1808
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1809
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1810
    const-string/jumbo v1, "networkType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1811
    if-eqz p5, :cond_1b

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1812
    :cond_1b
    if-eqz p3, :cond_22

    const-string v1, "apnType"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1813
    :cond_22
    if-eqz p4, :cond_29

    const-string v1, "apn"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1814
    :cond_29
    if-eqz p6, :cond_31

    .line 1815
    const-string/jumbo v1, "linkProperties"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1817
    :cond_31
    if-eqz p7, :cond_39

    const-string/jumbo v1, "failCause"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1819
    :cond_39
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1821
    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .registers 13
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "subId"    # I

    .prologue
    const/4 v9, 0x1

    .line 1645
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1648
    .local v2, "ident":J
    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-le v6, v9, :cond_62

    .line 1649
    const/4 v6, -0x1

    if-le p2, v6, :cond_3f

    const v6, 0x7ffffffb

    if-ge p2, v6, :cond_3f

    .line 1650
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    .line 1651
    .local v5, "phoneId":I
    const/4 v4, 0x0

    .line 1652
    .local v4, "otherPhone":I
    if-nez v5, :cond_1f

    .line 1653
    const/4 v4, 0x1

    .line 1655
    :cond_1f
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    if-ne v6, v9, :cond_36

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v7

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getServiceState(I)I

    move-result v6

    if-ne v6, v9, :cond_3f

    .line 1658
    :cond_36
    iget-object v6, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_3f} :catch_6c
    .catchall {:try_start_5 .. :try_end_3f} :catchall_71

    .line 1668
    .end local v4    # "otherPhone":I
    .end local v5    # "phoneId":I
    :cond_3f
    :goto_3f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1671
    :goto_42
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.SERVICE_STATE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1672
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1673
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1674
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1676
    const-string/jumbo v6, "subscription"

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1677
    iget-object v6, p0, mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1678
    return-void

    .line 1662
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_62
    :try_start_62
    iget-object v6, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_6b} :catch_6c
    .catchall {:try_start_62 .. :try_end_6b} :catchall_71

    goto :goto_3f

    .line 1665
    :catch_6c
    move-exception v6

    .line 1668
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_42

    :catchall_71
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V
    .registers 9
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "subId"    # I

    .prologue
    .line 1681
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1684
    .local v2, "ident":J
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_44

    .line 1685
    const/4 v4, -0x1

    if-le p2, v4, :cond_1c

    const v4, 0x7ffffffb

    if-ge p2, v4, :cond_1c

    .line 1686
    iget-object v4, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1c} :catch_4a
    .catchall {:try_start_4 .. :try_end_1c} :catchall_4f

    .line 1695
    :cond_1c
    :goto_1c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1698
    :goto_1f
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SIG_STR"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1699
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1700
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1701
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1702
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1703
    const-string/jumbo v4, "subscription"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1704
    iget-object v4, p0, mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1705
    return-void

    .line 1689
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_44
    :try_start_44
    iget-object v4, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_49} :catch_4a
    .catchall {:try_start_44 .. :try_end_49} :catchall_4f

    goto :goto_1c

    .line 1692
    :catch_4a
    move-exception v4

    .line 1695
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1f

    :catchall_4f
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private canReadPhoneState(Ljava/lang/String;)Z
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 792
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_d

    .line 805
    :cond_c
    :goto_c
    return v0

    .line 798
    :cond_d
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_29

    .line 800
    .local v0, "canReadPhoneState":Z
    :goto_17
    if-eqz v0, :cond_c

    iget-object v2, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_c

    move v0, v1

    .line 803
    goto :goto_c

    .end local v0    # "canReadPhoneState":Z
    :cond_29
    move v0, v1

    .line 798
    goto :goto_17
.end method

.method private checkListenerPermission(I)V
    .registers 7
    .param p1, "events"    # I

    .prologue
    const/4 v4, 0x0

    .line 1863
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_c

    .line 1864
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    :cond_c
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_17

    .line 1870
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    :cond_17
    and-int/lit16 v1, p1, 0x400c

    if-eqz v1, :cond_23

    .line 1877
    :try_start_1b
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_23} :catch_3c

    .line 1895
    :cond_23
    :goto_23
    and-int/lit16 v1, p1, 0x1800

    if-eqz v1, :cond_2e

    .line 1896
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    :cond_2e
    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_3b

    .line 1902
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    :cond_3b
    return-void

    .line 1881
    :catch_3c
    move-exception v0

    .line 1882
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method

.method private checkNotifyPermission()Z
    .registers 3

    .prologue
    .line 1842
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .registers 5
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 1832
    invoke-direct {p0}, checkNotifyPermission()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1833
    const/4 v1, 0x1

    .line 1838
    :goto_7
    return v1

    .line 1835
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modify Phone State Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1838
    .local v0, "msg":Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "phoneId"    # I

    .prologue
    .line 2017
    iget v0, p1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 2019
    .local v0, "events":I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_14

    .line 2023
    :try_start_6
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/ServiceState;

    iget-object v6, p0, mServiceState:[Landroid/telephony/ServiceState;

    aget-object v6, v6, p2

    invoke-direct {v5, v6}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_93

    .line 2030
    :cond_14
    :goto_14
    and-int/lit16 v4, v0, 0x100

    if-eqz v4, :cond_26

    .line 2032
    :try_start_18
    iget-object v4, p0, mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v3, v4, p2

    .line 2036
    .local v3, "signalStrength":Landroid/telephony/SignalStrength;
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/SignalStrength;

    invoke-direct {v5, v3}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_26} :catch_9d

    .line 2042
    .end local v3    # "signalStrength":Landroid/telephony/SignalStrength;
    :cond_26
    :goto_26
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_3c

    .line 2044
    :try_start_2a
    iget-object v4, p0, mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, p2

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 2050
    .local v2, "gsmSignalStrength":I
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v5, 0x63

    if-ne v2, v5, :cond_39

    const/4 v2, -0x1

    .end local v2    # "gsmSignalStrength":I
    :cond_39
    invoke-interface {v4, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_3c} :catch_a6

    .line 2057
    :cond_3c
    :goto_3c
    const/16 v4, 0x400

    invoke-direct {p0, p1, v4}, validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 2063
    :try_start_44
    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v5, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_51} :catch_af

    .line 2069
    :cond_51
    :goto_51
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_5e

    .line 2075
    :try_start_55
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, mMessageWaiting:[Z

    aget-boolean v5, v5, p2

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5e} :catch_b8

    .line 2082
    :cond_5e
    :goto_5e
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_6b

    .line 2088
    :try_start_62
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, mCallForwarding:[Z

    aget-boolean v5, v5, p2

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_6b} :catch_c1

    .line 2095
    :cond_6b
    :goto_6b
    const/16 v4, 0x10

    invoke-direct {p0, p1, v4}, validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 2099
    :try_start_73
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/os/Bundle;

    iget-object v6, p0, mCellLocation:[Landroid/os/Bundle;

    aget-object v6, v6, p2

    invoke-direct {v5, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_81} :catch_ca

    .line 2105
    :cond_81
    :goto_81
    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_92

    .line 2113
    :try_start_85
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, mDataConnectionState:[I

    aget v5, v5, p2

    iget-object v6, p0, mDataConnectionNetworkType:[I

    aget v6, v6, p2

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_92} :catch_d3

    .line 2119
    :cond_92
    :goto_92
    return-void

    .line 2025
    :catch_93
    move-exception v1

    .line 2026
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v4, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 2037
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_9d
    move-exception v1

    .line 2038
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 2052
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_a6
    move-exception v1

    .line 2053
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 2064
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_af
    move-exception v1

    .line 2065
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 2077
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_b8
    move-exception v1

    .line 2078
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 2090
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_c1
    move-exception v1

    .line 2091
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    .line 2100
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_ca
    move-exception v1

    .line 2101
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 2115
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_d3
    move-exception v1

    .line 2116
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_92
.end method

.method private enforceCarrierPrivilege()V
    .registers 10

    .prologue
    .line 1847
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 1848
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 1849
    .local v5, "pkgs":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_15
    if-ge v1, v2, :cond_24

    aget-object v4, v0, v1

    .line 1850
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v6, v4}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_21

    .line 1852
    return-void

    .line 1849
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1856
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_24
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Carrier Privilege Permission Denial: from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1859
    .local v3, "msg":Ljava/lang/String;
    new-instance v7, Ljava/lang/SecurityException;

    invoke-direct {v7, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private enforceNotifyPermissionOrCarrierPrivilege(Ljava/lang/String;)V
    .registers 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 1824
    invoke-direct {p0}, checkNotifyPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1829
    :goto_6
    return-void

    .line 1828
    :cond_7
    invoke-direct {p0}, enforceCarrierPrivilege()V

    goto :goto_6
.end method

.method private getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;
    .registers 4
    .param p1, "record"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "phoneId"    # I

    .prologue
    .line 810
    iget-boolean v0, p1, Lcom/android/server/TelephonyRegistry$Record;->canReadPhoneState:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, mCallIncomingNumber:[Ljava/lang/String;

    aget-object v0, v0, p2

    :goto_8
    return-object v0

    :cond_9
    const-string v0, ""

    goto :goto_8
.end method

.method private handleRemoveListLocked()V
    .registers 5

    .prologue
    .line 1908
    iget-object v3, p0, mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1910
    .local v2, "size":I
    if-lez v2, :cond_23

    .line 1911
    iget-object v3, p0, mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1912
    .local v0, "b":Landroid/os/IBinder;
    invoke-direct {p0, v0}, remove(Landroid/os/IBinder;)V

    goto :goto_e

    .line 1914
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_1e
    iget-object v3, p0, mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1916
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_23
    return-void
.end method

.method private listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V
    .registers 24
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p3, "events"    # I
    .param p4, "notifyNow"    # Z
    .param p5, "subId"    # I

    .prologue
    .line 559
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 566
    .local v4, "callerUserId":I
    if-eqz p3, :cond_32f

    .line 568
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, checkListenerPermission(I)V

    .line 570
    move/from16 v0, p3

    and-int/lit16 v14, v0, 0x400c

    if-eqz v14, :cond_1e

    .line 572
    :try_start_13
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    const-string v15, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_1e} :catch_1fb

    .line 584
    :cond_1e
    move-object/from16 v0, p0

    iget-object v15, v0, mRecords:Ljava/util/ArrayList;

    monitor-enter v15

    .line 588
    :try_start_23
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 589
    .local v3, "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v14, v0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 590
    .local v2, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_30
    if-ge v8, v2, :cond_215

    .line 591
    move-object/from16 v0, p0

    iget-object v14, v0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/TelephonyRegistry$Record;

    .line 592
    .local v12, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v3, v14, :cond_211

    .line 602
    :goto_40
    move-object/from16 v0, p2

    iput-object v0, v12, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 603
    move-object/from16 v0, p1

    iput-object v0, v12, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 604
    iput v4, v12, Lcom/android/server/TelephonyRegistry$Record;->callerUserId:I

    .line 605
    move/from16 v0, p3

    and-int/lit16 v14, v0, 0x40ec

    if-eqz v14, :cond_229

    const/4 v9, 0x1

    .line 607
    .local v9, "isPhoneStateEvent":Z
    :goto_51
    if-eqz v9, :cond_22c

    invoke-direct/range {p0 .. p1}, canReadPhoneState(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_22c

    const/4 v14, 0x1

    :goto_5a
    iput-boolean v14, v12, Lcom/android/server/TelephonyRegistry$Record;->canReadPhoneState:Z

    .line 610
    invoke-static/range {p5 .. p5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v14

    if-nez v14, :cond_22f

    .line 611
    const v14, 0x7fffffff

    iput v14, v12, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 616
    :goto_67
    iget v14, v12, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v14, v0, :cond_235

    .line 617
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v14

    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v14

    iput v14, v12, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 623
    :goto_7a
    iget v11, v12, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 624
    .local v11, "phoneId":I
    move/from16 v0, p3

    iput v0, v12, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 629
    if-eqz p4, :cond_1f9

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, validatePhoneId(I)Z
    :try_end_87
    .catchall {:try_start_23 .. :try_end_87} :catchall_226

    move-result v14

    if-eqz v14, :cond_1f9

    .line 630
    and-int/lit8 v14, p3, 0x1

    if-eqz v14, :cond_a2

    .line 633
    :try_start_8e
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v16, Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v0, v0, mServiceState:[Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    invoke-direct/range {v16 .. v17}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_8e .. :try_end_a2} :catch_23f
    .catchall {:try_start_8e .. :try_end_a2} :catchall_226

    .line 639
    :cond_a2
    :goto_a2
    and-int/lit8 v14, p3, 0x2

    if-eqz v14, :cond_bc

    .line 641
    :try_start_a6
    move-object/from16 v0, p0

    iget-object v14, v0, mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v14, v14, v11

    invoke-virtual {v14}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v7

    .line 643
    .local v7, "gsmSignalStrength":I
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v16, 0x63

    move/from16 v0, v16

    if-ne v7, v0, :cond_b9

    const/4 v7, -0x1

    .end local v7    # "gsmSignalStrength":I
    :cond_b9
    invoke-interface {v14, v7}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_bc} :catch_249
    .catchall {:try_start_a6 .. :try_end_bc} :catchall_226

    .line 649
    :cond_bc
    :goto_bc
    and-int/lit8 v14, p3, 0x4

    if-eqz v14, :cond_cf

    .line 651
    :try_start_c0
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v0, v0, mMessageWaiting:[Z

    move-object/from16 v16, v0

    aget-boolean v16, v16, v11

    move/from16 v0, v16

    invoke-interface {v14, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_cf
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_cf} :catch_253
    .catchall {:try_start_c0 .. :try_end_cf} :catchall_226

    .line 657
    :cond_cf
    :goto_cf
    and-int/lit8 v14, p3, 0x8

    if-eqz v14, :cond_e2

    .line 659
    :try_start_d3
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v0, v0, mCallForwarding:[Z

    move-object/from16 v16, v0

    aget-boolean v16, v16, v11

    move/from16 v0, v16

    invoke-interface {v14, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_e2
    .catch Landroid/os/RemoteException; {:try_start_d3 .. :try_end_e2} :catch_25d
    .catchall {:try_start_d3 .. :try_end_e2} :catchall_226

    .line 665
    :cond_e2
    :goto_e2
    const/16 v14, 0x10

    :try_start_e4
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_e9
    .catchall {:try_start_e4 .. :try_end_e9} :catchall_226

    move-result v14

    if-eqz v14, :cond_100

    .line 669
    :try_start_ec
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v16, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v0, v0, mCellLocation:[Landroid/os/Bundle;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    invoke-direct/range {v16 .. v17}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_100
    .catch Landroid/os/RemoteException; {:try_start_ec .. :try_end_100} :catch_267
    .catchall {:try_start_ec .. :try_end_100} :catchall_226

    .line 675
    :cond_100
    :goto_100
    and-int/lit8 v14, p3, 0x20

    if-eqz v14, :cond_11b

    .line 677
    :try_start_104
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v0, v0, mCallState:[I

    move-object/from16 v16, v0

    aget v16, v16, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v14, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_11b
    .catch Landroid/os/RemoteException; {:try_start_104 .. :try_end_11b} :catch_271
    .catchall {:try_start_104 .. :try_end_11b} :catchall_226

    .line 683
    :cond_11b
    :goto_11b
    and-int/lit8 v14, p3, 0x40

    if-eqz v14, :cond_153

    .line 686
    :try_start_11f
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v14

    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v14

    if-eq v11, v14, :cond_13a

    .line 687
    iget v14, v12, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v14, v0, :cond_27b

    .line 688
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v14

    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v11

    .line 699
    :cond_13a
    :goto_13a
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v0, v0, mDataConnectionState:[I

    move-object/from16 v16, v0

    aget v16, v16, v11

    move-object/from16 v0, p0

    iget-object v0, v0, mDataConnectionNetworkType:[I

    move-object/from16 v17, v0

    aget v17, v17, v11

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v14, v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_153
    .catch Landroid/os/RemoteException; {:try_start_11f .. :try_end_153} :catch_2d5
    .catchall {:try_start_11f .. :try_end_153} :catchall_226

    .line 705
    :cond_153
    :goto_153
    move/from16 v0, p3

    and-int/lit16 v14, v0, 0x80

    if-eqz v14, :cond_168

    .line 707
    :try_start_159
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v0, v0, mDataActivity:[I

    move-object/from16 v16, v0

    aget v16, v16, v11

    move/from16 v0, v16

    invoke-interface {v14, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_168
    .catch Landroid/os/RemoteException; {:try_start_159 .. :try_end_168} :catch_2df
    .catchall {:try_start_159 .. :try_end_168} :catchall_226

    .line 731
    :cond_168
    :goto_168
    move/from16 v0, p3

    and-int/lit16 v14, v0, 0x100

    if-eqz v14, :cond_17d

    .line 733
    :try_start_16e
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v0, v0, mSignalStrength:[Landroid/telephony/SignalStrength;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_17d
    .catch Landroid/os/RemoteException; {:try_start_16e .. :try_end_17d} :catch_2e9
    .catchall {:try_start_16e .. :try_end_17d} :catchall_226

    .line 738
    :cond_17d
    :goto_17d
    move/from16 v0, p3

    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_190

    .line 740
    :try_start_183
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget v0, v0, mOtaspMode:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v14, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_190
    .catch Landroid/os/RemoteException; {:try_start_183 .. :try_end_190} :catch_2f3
    .catchall {:try_start_183 .. :try_end_190} :catchall_226

    .line 745
    :cond_190
    :goto_190
    const/16 v14, 0x400

    :try_start_192
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_197
    .catchall {:try_start_192 .. :try_end_197} :catchall_226

    move-result v14

    if-eqz v14, :cond_1ad

    .line 749
    :try_start_19a
    iget-object v0, v12, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v14, v0, mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_1ad
    .catch Landroid/os/RemoteException; {:try_start_19a .. :try_end_1ad} :catch_2fd
    .catchall {:try_start_19a .. :try_end_1ad} :catchall_226

    .line 754
    :cond_1ad
    :goto_1ad
    move/from16 v0, p3

    and-int/lit16 v14, v0, 0x2000

    if-eqz v14, :cond_1c0

    .line 756
    :try_start_1b3
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v0, v0, mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    :try_end_1c0
    .catch Landroid/os/RemoteException; {:try_start_1b3 .. :try_end_1c0} :catch_307
    .catchall {:try_start_1b3 .. :try_end_1c0} :catchall_226

    .line 761
    :cond_1c0
    :goto_1c0
    move/from16 v0, p3

    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_1d3

    .line 763
    :try_start_1c6
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v0, v0, mPreciseCallState:Landroid/telephony/PreciseCallState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_1d3
    .catch Landroid/os/RemoteException; {:try_start_1c6 .. :try_end_1d3} :catch_311
    .catchall {:try_start_1c6 .. :try_end_1d3} :catchall_226

    .line 768
    :cond_1d3
    :goto_1d3
    move/from16 v0, p3

    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_1e6

    .line 770
    :try_start_1d9
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v0, v0, mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_1e6
    .catch Landroid/os/RemoteException; {:try_start_1d9 .. :try_end_1e6} :catch_31b
    .catchall {:try_start_1d9 .. :try_end_1e6} :catchall_226

    .line 776
    :cond_1e6
    :goto_1e6
    const/high16 v14, 0x10000

    and-int v14, v14, p3

    if-eqz v14, :cond_1f9

    .line 778
    :try_start_1ec
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-boolean v0, v0, mCarrierNetworkChangeState:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v14, v0}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_1f9
    .catch Landroid/os/RemoteException; {:try_start_1ec .. :try_end_1f9} :catch_325
    .catchall {:try_start_1ec .. :try_end_1f9} :catchall_226

    .line 784
    :cond_1f9
    :goto_1f9
    :try_start_1f9
    monitor-exit v15
    :try_end_1fa
    .catchall {:try_start_1f9 .. :try_end_1fa} :catchall_226

    .line 789
    .end local v2    # "N":I
    .end local v3    # "b":Landroid/os/IBinder;
    .end local v8    # "i":I
    .end local v9    # "isPhoneStateEvent":Z
    .end local v11    # "phoneId":I
    .end local v12    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_1fa
    return-void

    .line 576
    :catch_1fb
    move-exception v5

    .line 577
    .local v5, "e":Ljava/lang/SecurityException;
    move-object/from16 v0, p0

    iget-object v14, v0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v15, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v14, v15, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_1e

    goto :goto_1fa

    .line 590
    .end local v5    # "e":Ljava/lang/SecurityException;
    .restart local v2    # "N":I
    .restart local v3    # "b":Landroid/os/IBinder;
    .restart local v8    # "i":I
    .restart local v12    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_211
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_30

    .line 596
    .end local v12    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_215
    :try_start_215
    new-instance v12, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v14, 0x0

    invoke-direct {v12, v14}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V

    .line 597
    .restart local v12    # "r":Lcom/android/server/TelephonyRegistry$Record;
    iput-object v3, v12, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 598
    move-object/from16 v0, p0

    iget-object v14, v0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_40

    .line 784
    .end local v2    # "N":I
    .end local v3    # "b":Landroid/os/IBinder;
    .end local v8    # "i":I
    .end local v12    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_226
    move-exception v14

    monitor-exit v15
    :try_end_228
    .catchall {:try_start_215 .. :try_end_228} :catchall_226

    throw v14

    .line 605
    .restart local v2    # "N":I
    .restart local v3    # "b":Landroid/os/IBinder;
    .restart local v8    # "i":I
    .restart local v12    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_229
    const/4 v9, 0x0

    goto/16 :goto_51

    .line 607
    .restart local v9    # "isPhoneStateEvent":Z
    :cond_22c
    const/4 v14, 0x0

    goto/16 :goto_5a

    .line 613
    :cond_22f
    :try_start_22f
    move/from16 v0, p5

    iput v0, v12, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    goto/16 :goto_67

    .line 619
    :cond_235
    iget v14, v12, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v14

    iput v14, v12, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    goto/16 :goto_7a

    .line 635
    .restart local v11    # "phoneId":I
    :catch_23f
    move-exception v6

    .line 636
    .local v6, "ex":Landroid/os/RemoteException;
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, remove(Landroid/os/IBinder;)V

    goto/16 :goto_a2

    .line 645
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_249
    move-exception v6

    .line 646
    .restart local v6    # "ex":Landroid/os/RemoteException;
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, remove(Landroid/os/IBinder;)V

    goto/16 :goto_bc

    .line 653
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_253
    move-exception v6

    .line 654
    .restart local v6    # "ex":Landroid/os/RemoteException;
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, remove(Landroid/os/IBinder;)V

    goto/16 :goto_cf

    .line 661
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_25d
    move-exception v6

    .line 662
    .restart local v6    # "ex":Landroid/os/RemoteException;
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, remove(Landroid/os/IBinder;)V

    goto/16 :goto_e2

    .line 671
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_267
    move-exception v6

    .line 672
    .restart local v6    # "ex":Landroid/os/RemoteException;
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, remove(Landroid/os/IBinder;)V

    goto/16 :goto_100

    .line 679
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_271
    move-exception v6

    .line 680
    .restart local v6    # "ex":Landroid/os/RemoteException;
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, remove(Landroid/os/IBinder;)V
    :try_end_279
    .catchall {:try_start_22f .. :try_end_279} :catchall_226

    goto/16 :goto_11b

    .line 690
    .end local v6    # "ex":Landroid/os/RemoteException;
    :cond_27b
    :try_start_27b
    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v13

    .line 691
    .local v13, "subIds":[I
    if-eqz v13, :cond_13a

    array-length v14, v13

    if-lez v14, :cond_13a

    .line 692
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v14

    const/16 v16, 0x0

    aget v16, v13, v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v10

    .line 693
    .local v10, "networkType":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "listen:  update mDataConnectionNetworkType["

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "] value : "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, mDataConnectionNetworkType:[I

    move-object/from16 v16, v0

    aget v16, v16, v11

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "->"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, log(Ljava/lang/String;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v14, v0, mDataConnectionNetworkType:[I

    aput v10, v14, v11
    :try_end_2d3
    .catch Landroid/os/RemoteException; {:try_start_27b .. :try_end_2d3} :catch_2d5
    .catchall {:try_start_27b .. :try_end_2d3} :catchall_226

    goto/16 :goto_13a

    .line 701
    .end local v10    # "networkType":I
    .end local v13    # "subIds":[I
    :catch_2d5
    move-exception v6

    .line 702
    .restart local v6    # "ex":Landroid/os/RemoteException;
    :try_start_2d6
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, remove(Landroid/os/IBinder;)V

    goto/16 :goto_153

    .line 708
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_2df
    move-exception v6

    .line 709
    .restart local v6    # "ex":Landroid/os/RemoteException;
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, remove(Landroid/os/IBinder;)V

    goto/16 :goto_168

    .line 734
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_2e9
    move-exception v6

    .line 735
    .restart local v6    # "ex":Landroid/os/RemoteException;
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, remove(Landroid/os/IBinder;)V

    goto/16 :goto_17d

    .line 741
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_2f3
    move-exception v6

    .line 742
    .restart local v6    # "ex":Landroid/os/RemoteException;
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, remove(Landroid/os/IBinder;)V

    goto/16 :goto_190

    .line 750
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_2fd
    move-exception v6

    .line 751
    .restart local v6    # "ex":Landroid/os/RemoteException;
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, remove(Landroid/os/IBinder;)V

    goto/16 :goto_1ad

    .line 757
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_307
    move-exception v6

    .line 758
    .restart local v6    # "ex":Landroid/os/RemoteException;
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, remove(Landroid/os/IBinder;)V

    goto/16 :goto_1c0

    .line 764
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_311
    move-exception v6

    .line 765
    .restart local v6    # "ex":Landroid/os/RemoteException;
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, remove(Landroid/os/IBinder;)V

    goto/16 :goto_1d3

    .line 772
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_31b
    move-exception v6

    .line 773
    .restart local v6    # "ex":Landroid/os/RemoteException;
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, remove(Landroid/os/IBinder;)V

    goto/16 :goto_1e6

    .line 779
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_325
    move-exception v6

    .line 780
    .restart local v6    # "ex":Landroid/os/RemoteException;
    iget-object v14, v12, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, remove(Landroid/os/IBinder;)V
    :try_end_32d
    .catchall {:try_start_2d6 .. :try_end_32d} :catchall_226

    goto/16 :goto_1f9

    .line 787
    .end local v2    # "N":I
    .end local v3    # "b":Landroid/os/IBinder;
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v8    # "i":I
    .end local v9    # "isPhoneStateEvent":Z
    .end local v11    # "phoneId":I
    .end local v12    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_32f
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, remove(Landroid/os/IBinder;)V

    goto/16 :goto_1fa
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1943
    const-string v0, "TelephonyRegistry"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    return-void
.end method

.method private logServiceStateChanged(Ljava/lang/String;IILandroid/telephony/ServiceState;)V
    .registers 11
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "phoneId"    # I
    .param p4, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1968
    iget-object v0, p0, logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    if-eqz v0, :cond_9

    iget-object v0, p0, logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    array-length v0, v0

    if-nez v0, :cond_a

    .line 1980
    :cond_9
    :goto_9
    return-void

    .line 1971
    :cond_a
    iget-object v0, p0, logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    iget v2, p0, next:I

    aget-object v0, v0, v2

    if-nez v0, :cond_1e

    .line 1972
    iget-object v0, p0, logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    iget v2, p0, next:I

    new-instance v3, Lcom/android/server/TelephonyRegistry$LogSSC;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/TelephonyRegistry$LogSSC;-><init>(Lcom/android/server/TelephonyRegistry$1;)V

    aput-object v3, v0, v2

    .line 1974
    :cond_1e
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 1975
    .local v1, "t":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 1976
    iget-object v0, p0, logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    iget v2, p0, next:I

    aget-object v0, v0, v2

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry$LogSSC;->set(Landroid/text/format/Time;Ljava/lang/String;IILandroid/telephony/ServiceState;)V

    .line 1977
    iget v0, p0, next:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, next:I

    iget-object v2, p0, logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    array-length v2, v2

    if-lt v0, v2, :cond_9

    .line 1978
    const/4 v0, 0x0

    iput v0, p0, next:I

    goto :goto_9
.end method

.method private remove(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 814
    iget-object v3, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 815
    :try_start_3
    iget-object v2, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 816
    .local v1, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_22

    .line 817
    iget-object v2, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_1f

    .line 823
    iget-object v2, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 824
    monitor-exit v3

    .line 828
    :goto_1e
    return-void

    .line 816
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 827
    :cond_22
    monitor-exit v3

    goto :goto_1e

    .end local v0    # "i":I
    .end local v1    # "recordCount":I
    :catchall_24
    move-exception v2

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v2
.end method

.method private toStringLogSSC(Ljava/lang/String;)V
    .registers 5
    .param p1, "prompt"    # Ljava/lang/String;

    .prologue
    .line 1983
    iget-object v1, p0, logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    if-eqz v1, :cond_15

    iget-object v1, p0, logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    array-length v1, v1

    if-eqz v1, :cond_15

    iget v1, p0, next:I

    if-nez v1, :cond_2c

    iget-object v1, p0, logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    iget v2, p0, next:I

    aget-object v1, v1, v2

    if-nez v1, :cond_2c

    .line 1984
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": logSSC is empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 2001
    :goto_2b
    return-void

    .line 1987
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": logSSC.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " next="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, next:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 1988
    iget v0, p0, next:I

    .line 1989
    .local v0, "i":I
    iget-object v1, p0, logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    aget-object v1, v1, v0

    if-nez v1, :cond_5e

    .line 1991
    const/4 v0, 0x0

    .line 1994
    :cond_5e
    iget-object v1, p0, logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/TelephonyRegistry$LogSSC;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 1995
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    array-length v1, v1

    if-lt v0, v1, :cond_71

    .line 1996
    const/4 v0, 0x0

    .line 1998
    :cond_71
    iget v1, p0, next:I

    if-ne v0, v1, :cond_5e

    .line 1999
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": ----------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, log(Ljava/lang/String;)V

    goto :goto_2b
.end method

.method private validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .registers 8
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "events"    # I

    .prologue
    .line 1920
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1921
    .local v0, "callingIdentity":J
    const/4 v3, 0x0

    .line 1923
    .local v3, "valid":Z
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 1924
    .local v2, "foregroundUser":I
    iget v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUserId:I

    if-ne v4, v2, :cond_18

    invoke-virtual {p1, p2}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_1a

    move-result v4

    if-eqz v4, :cond_18

    const/4 v3, 0x1

    .line 1931
    :goto_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1933
    return v3

    .line 1924
    :cond_18
    const/4 v3, 0x0

    goto :goto_14

    .line 1931
    .end local v2    # "foregroundUser":I
    :catchall_1a
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private validatePhoneId(I)Z
    .registers 4
    .param p1, "phoneId"    # I

    .prologue
    .line 1937
    if-ltz p1, :cond_8

    iget v1, p0, mNumPhones:I

    if-ge p1, v1, :cond_8

    const/4 v0, 0x1

    .line 1939
    .local v0, "valid":Z
    :goto_7
    return v0

    .line 1937
    .end local v0    # "valid":Z
    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .registers 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .prologue
    .line 445
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 453
    .local v2, "callerUserId":I
    :try_start_4
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v8, "addOnSubscriptionsChangedListener"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_d} :catch_40

    .line 470
    :cond_d
    iget-object v7, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v7

    .line 473
    :try_start_10
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 474
    .local v1, "b":Landroid/os/IBinder;
    iget-object v6, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 475
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1b
    if-ge v4, v0, :cond_5c

    .line 476
    iget-object v6, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/TelephonyRegistry$Record;

    .line 477
    .local v5, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget-object v6, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v1, v6, :cond_59

    .line 487
    :goto_29
    iput-object p2, v5, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 488
    iput-object p1, v5, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 489
    iput v2, v5, Lcom/android/server/TelephonyRegistry$Record;->callerUserId:I

    .line 490
    const/4 v6, 0x0

    iput v6, v5, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 491
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/TelephonyRegistry$Record;->canReadPhoneState:Z

    .line 496
    iget-boolean v6, p0, hasNotifySubscriptionInfoChangedOccurred:Z
    :try_end_37
    .catchall {:try_start_10 .. :try_end_37} :catchall_6a

    if-eqz v6, :cond_74

    .line 499
    :try_start_39
    iget-object v6, v5, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v6}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3e} :catch_6d
    .catchall {:try_start_39 .. :try_end_3e} :catchall_6a

    .line 508
    :goto_3e
    :try_start_3e
    monitor-exit v7
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_6a

    .line 509
    .end local v0    # "N":I
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v4    # "i":I
    .end local v5    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_3f
    return-void

    .line 457
    :catch_40
    move-exception v3

    .line 458
    .local v3, "e":Ljava/lang/SecurityException;
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "android.permission.READ_PHONE_STATE"

    const-string v8, "addOnSubscriptionsChangedListener"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v6, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v7, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v6, v7, v8, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_3f

    .line 475
    .end local v3    # "e":Ljava/lang/SecurityException;
    .restart local v0    # "N":I
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v4    # "i":I
    .restart local v5    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 481
    .end local v5    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_5c
    :try_start_5c
    new-instance v5, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V

    .line 482
    .restart local v5    # "r":Lcom/android/server/TelephonyRegistry$Record;
    iput-object v1, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 483
    iget-object v6, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 508
    .end local v0    # "N":I
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v4    # "i":I
    .end local v5    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_6a
    move-exception v6

    monitor-exit v7
    :try_end_6c
    .catchall {:try_start_5c .. :try_end_6c} :catchall_6a

    throw v6

    .line 501
    .restart local v0    # "N":I
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v4    # "i":I
    .restart local v5    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catch_6d
    move-exception v3

    .line 503
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_6e
    iget-object v6, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, remove(Landroid/os/IBinder;)V

    goto :goto_3e

    .line 506
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_74
    const-string/jumbo v6, "listen oscl: hasNotifySubscriptionInfoChangedOccurred==false no callback"

    invoke-static {v6}, log(Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_6e .. :try_end_7a} :catchall_6a

    goto :goto_3e
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1599
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_33

    .line 1601
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: can\'t dump telephony.registry from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1638
    :goto_32
    return-void

    .line 1605
    :cond_33
    iget-object v5, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1606
    :try_start_36
    iget-object v4, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1607
    .local v3, "recordCount":I
    const-string/jumbo v4, "last known state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1608
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_43
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v0, v4, :cond_224

    .line 1609
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Phone Id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1610
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCallState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, mCallState:[I

    aget v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1611
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCallIncomingNumber="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, mCallIncomingNumber:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1612
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mServiceState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, mServiceState:[Landroid/telephony/ServiceState;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1613
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mSignalStrength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1614
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mMessageWaiting="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, mMessageWaiting:[Z

    aget-boolean v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1615
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCallForwarding="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, mCallForwarding:[Z

    aget-boolean v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1616
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataActivity="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, mDataActivity:[I

    aget v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1617
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, mDataConnectionState:[I

    aget v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1618
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionPossible="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, mDataConnectionPossible:[Z

    aget-boolean v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1619
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionReason="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, mDataConnectionReason:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1620
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionApn="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, mDataConnectionApn:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1621
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionLinkProperties="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, mDataConnectionLinkProperties:[Landroid/net/LinkProperties;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1622
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionNetworkCapabilities="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, mDataConnectionNetworkCapabilities:[Landroid/net/NetworkCapabilities;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1624
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCellLocation="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, mCellLocation:[Landroid/os/Bundle;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1625
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCellInfo="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1627
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDefaultSubId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, mDefaultSubId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1628
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDefaultPhoneId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, mDefaultPhoneId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1629
    const-string v4, "  DEFAULT_SUBSCRIPTION_ID=2147483647"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1608
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_43

    .line 1632
    :cond_224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDcRtInfo="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1633
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registrations: count="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1634
    iget-object v4, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_259
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1635
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_259

    .line 1637
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "recordCount":I
    :catchall_27c
    move-exception v4

    monitor-exit v5
    :try_end_27e
    .catchall {:try_start_36 .. :try_end_27e} :catchall_27c

    throw v4

    .restart local v0    # "i":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "recordCount":I
    :cond_27f
    :try_start_27f
    monitor-exit v5
    :try_end_280
    .catchall {:try_start_27f .. :try_end_280} :catchall_27c

    goto/16 :goto_32
.end method

.method idMatch(III)Z
    .registers 7
    .param p1, "rSubId"    # I
    .param p2, "subId"    # I
    .param p3, "phoneId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2005
    if-gez p2, :cond_b

    .line 2007
    iget v2, p0, mDefaultPhoneId:I

    if-ne v2, p3, :cond_9

    .line 2012
    :cond_8
    :goto_8
    return v0

    :cond_9
    move v0, v1

    .line 2007
    goto :goto_8

    .line 2009
    :cond_b
    const v2, 0x7fffffff

    if-ne p1, v2, :cond_16

    .line 2010
    iget v2, p0, mDefaultSubId:I

    if-eq p2, v2, :cond_8

    move v0, v1

    goto :goto_8

    .line 2012
    :cond_16
    if-eq p1, p2, :cond_8

    move v0, v1

    goto :goto_8
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .registers 11
    .param p1, "pkgForDebug"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p3, "events"    # I
    .param p4, "notifyNow"    # Z

    .prologue
    .line 547
    const v1, 0x7fffffff

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 549
    return-void
.end method

.method public listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .registers 12
    .param p1, "subId"    # I
    .param p2, "pkgForDebug"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p4, "events"    # I
    .param p5, "notifyNow"    # Z

    .prologue
    .line 554
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p1

    invoke-direct/range {v0 .. v5}, listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V

    .line 555
    return-void
.end method

.method public notifyCallForwardingChanged(Z)V
    .registers 3
    .param p1, "cfi"    # Z

    .prologue
    .line 1114
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, notifyCallForwardingChangedForSubscriber(IZ)V

    .line 1115
    return-void
.end method

.method public notifyCallForwardingChangedForSubscriber(IZ)V
    .registers 10
    .param p1, "subId"    # I
    .param p2, "cfi"    # Z

    .prologue
    .line 1118
    const-string/jumbo v4, "notifyCallForwardingChanged()"

    invoke-direct {p0, v4}, checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1143
    :goto_9
    return-void

    .line 1125
    :cond_a
    iget-object v5, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1126
    :try_start_d
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 1127
    .local v2, "phoneId":I
    invoke-direct {p0, v2}, validatePhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 1128
    iget-object v4, p0, mCallForwarding:[Z

    aput-boolean p2, v4, v2

    .line 1129
    iget-object v4, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1130
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_21

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v4, p1, v2}, idMatch(III)Z
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_4c

    move-result v4

    if-eqz v4, :cond_21

    .line 1134
    :try_start_3d
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_42} :catch_43
    .catchall {:try_start_3d .. :try_end_42} :catchall_4c

    goto :goto_21

    .line 1135
    :catch_43
    move-exception v0

    .line 1136
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_44
    iget-object v4, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 1142
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "phoneId":I
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_4c
    move-exception v4

    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_4c

    throw v4

    .line 1141
    .restart local v2    # "phoneId":I
    :cond_4f
    :try_start_4f
    invoke-direct {p0}, handleRemoveListLocked()V

    .line 1142
    monitor-exit v5
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_4c

    goto :goto_9
.end method

.method public notifyCallState(ILjava/lang/String;)V
    .registers 10
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 831
    const-string/jumbo v4, "notifyCallState()"

    invoke-direct {p0, v4}, checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 864
    :goto_9
    return-void

    .line 839
    :cond_a
    iget-object v5, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 840
    :try_start_d
    iget-object v4, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 841
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_13

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_46

    const v6, 0x7fffffff

    if-ne v4, v6, :cond_13

    .line 845
    const/4 v4, 0x4

    if-ne p1, v4, :cond_49

    .line 846
    const/4 p1, 0x1

    .line 853
    :cond_32
    :goto_32
    :try_start_32
    iget-boolean v4, v3, Lcom/android/server/TelephonyRegistry$Record;->canReadPhoneState:Z

    if-eqz v4, :cond_53

    move-object v2, p2

    .line 854
    .local v2, "incomingNumberOrEmpty":Ljava/lang/String;
    :goto_37
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3c} :catch_3d
    .catchall {:try_start_32 .. :try_end_3c} :catchall_46

    goto :goto_13

    .line 855
    .end local v2    # "incomingNumberOrEmpty":Ljava/lang/String;
    :catch_3d
    move-exception v0

    .line 856
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_3e
    iget-object v4, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 861
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_46
    move-exception v4

    monitor-exit v5
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_46

    throw v4

    .line 847
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_49
    const/4 v4, 0x5

    if-ne p1, v4, :cond_4e

    .line 848
    const/4 p1, 0x2

    goto :goto_32

    .line 849
    :cond_4e
    const/4 v4, 0x3

    if-ne p1, v4, :cond_32

    .line 850
    const/4 p1, 0x0

    goto :goto_32

    .line 853
    :cond_53
    :try_start_53
    const-string v2, ""
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_55} :catch_3d
    .catchall {:try_start_53 .. :try_end_55} :catchall_46

    goto :goto_37

    .line 860
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_56
    :try_start_56
    invoke-direct {p0}, handleRemoveListLocked()V

    .line 861
    monitor-exit v5
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_46

    .line 862
    const/4 v4, -0x1

    invoke-direct {p0, p1, p2, v4}, broadcastCallStateChanged(ILjava/lang/String;I)V

    goto :goto_9
.end method

.method public notifyCallStateForSubscriber(IILjava/lang/String;)V
    .registers 12
    .param p1, "subId"    # I
    .param p2, "state"    # I
    .param p3, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 867
    const-string/jumbo v5, "notifyCallState()"

    invoke-direct {p0, v5}, checkNotifyPermission(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 895
    :goto_9
    return-void

    .line 874
    :cond_a
    iget-object v6, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    .line 875
    :try_start_d
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    .line 876
    .local v3, "phoneId":I
    invoke-direct {p0, v3}, validatePhoneId(I)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 877
    iget-object v5, p0, mCallState:[I

    aput p2, v5, v3

    .line 878
    iget-object v5, p0, mCallIncomingNumber:[Ljava/lang/String;

    aput-object p3, v5, v3

    .line 879
    iget-object v5, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 880
    .local v4, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v5

    if-eqz v5, :cond_25

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    if-ne v5, p1, :cond_25

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_3f
    .catchall {:try_start_d .. :try_end_3f} :catchall_57

    const v7, 0x7fffffff

    if-eq v5, v7, :cond_25

    .line 884
    :try_start_44
    invoke-direct {p0, v4, v3}, getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    move-result-object v2

    .line 885
    .local v2, "incomingNumberOrEmpty":Ljava/lang/String;
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p2, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4d} :catch_4e
    .catchall {:try_start_44 .. :try_end_4d} :catchall_57

    goto :goto_25

    .line 886
    .end local v2    # "incomingNumberOrEmpty":Ljava/lang/String;
    :catch_4e
    move-exception v0

    .line 887
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_4f
    iget-object v5, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v7, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 893
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "phoneId":I
    .end local v4    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_57
    move-exception v5

    monitor-exit v6
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_57

    throw v5

    .line 892
    .restart local v3    # "phoneId":I
    :cond_5a
    :try_start_5a
    invoke-direct {p0}, handleRemoveListLocked()V

    .line 893
    monitor-exit v6
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_57

    .line 894
    invoke-direct {p0, p2, p3, p1}, broadcastCallStateChanged(ILjava/lang/String;I)V

    goto :goto_9
.end method

.method public notifyCarrierNetworkChange(Z)V
    .registers 8
    .param p1, "active"    # Z

    .prologue
    .line 1003
    const-string/jumbo v3, "notifyCarrierNetworkChange()"

    invoke-direct {p0, v3}, enforceNotifyPermissionOrCarrierPrivilege(Ljava/lang/String;)V

    .line 1009
    iget-object v4, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1010
    :try_start_9
    iput-boolean p1, p0, mCarrierNetworkChangeState:Z

    .line 1011
    iget-object v3, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1012
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_34

    move-result v3

    if-eqz v3, :cond_11

    .line 1015
    :try_start_25
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_2b
    .catchall {:try_start_25 .. :try_end_2a} :catchall_34

    goto :goto_11

    .line 1016
    :catch_2b
    move-exception v0

    .line 1017
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2c
    iget-object v3, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 1022
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_34
    move-exception v3

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_34

    throw v3

    .line 1021
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_37
    :try_start_37
    invoke-direct {p0}, handleRemoveListLocked()V

    .line 1022
    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_34

    .line 1023
    return-void
.end method

.method public notifyCellInfo(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1026
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, notifyCellInfoForSubscriber(ILjava/util/List;)V

    .line 1027
    return-void
.end method

.method public notifyCellInfoForSubscriber(ILjava/util/List;)V
    .registers 10
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1030
    .local p2, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const-string/jumbo v4, "notifyCellInfo()"

    invoke-direct {p0, v4}, checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1058
    :goto_9
    return-void

    .line 1038
    :cond_a
    iget-object v5, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1039
    :try_start_d
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 1040
    .local v2, "phoneId":I
    invoke-direct {p0, v2}, validatePhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 1041
    iget-object v4, p0, mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1042
    iget-object v4, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1043
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x400

    invoke-direct {p0, v3, v4}, validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_22

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v4, p1, v2}, idMatch(III)Z
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_4d

    move-result v4

    if-eqz v4, :cond_22

    .line 1049
    :try_start_3e
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_43} :catch_44
    .catchall {:try_start_3e .. :try_end_43} :catchall_4d

    goto :goto_22

    .line 1050
    :catch_44
    move-exception v0

    .line 1051
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_45
    iget-object v4, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 1057
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "phoneId":I
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_4d
    move-exception v4

    monitor-exit v5
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_4d

    throw v4

    .line 1056
    .restart local v2    # "phoneId":I
    :cond_50
    :try_start_50
    invoke-direct {p0}, handleRemoveListLocked()V

    .line 1057
    monitor-exit v5
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_4d

    goto :goto_9
.end method

.method public notifyCellLocation(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "cellLocation"    # Landroid/os/Bundle;

    .prologue
    .line 1376
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V

    .line 1377
    return-void
.end method

.method public notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V
    .registers 10
    .param p1, "subId"    # I
    .param p2, "cellLocation"    # Landroid/os/Bundle;

    .prologue
    .line 1380
    sget-boolean v4, SHIP_BUILD:Z

    if-nez v4, :cond_25

    .line 1381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyCellLocationForSubscriber: subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cellLocation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, log(Ljava/lang/String;)V

    .line 1384
    :cond_25
    const-string/jumbo v4, "notifyCellLocation()"

    invoke-direct {p0, v4}, checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 1412
    :goto_2e
    return-void

    .line 1391
    :cond_2f
    iget-object v5, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1392
    :try_start_32
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 1393
    .local v2, "phoneId":I
    invoke-direct {p0, v2}, validatePhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 1394
    iget-object v4, p0, mCellLocation:[Landroid/os/Bundle;

    aput-object p2, v4, v2

    .line 1395
    iget-object v4, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_46
    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1396
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x10

    invoke-direct {p0, v3, v4}, validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_46

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v4, p1, v2}, idMatch(III)Z
    :try_end_5f
    .catchall {:try_start_32 .. :try_end_5f} :catchall_76

    move-result v4

    if-eqz v4, :cond_46

    .line 1403
    :try_start_62
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_6c} :catch_6d
    .catchall {:try_start_62 .. :try_end_6c} :catchall_76

    goto :goto_46

    .line 1404
    :catch_6d
    move-exception v0

    .line 1405
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_6e
    iget-object v4, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 1411
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "phoneId":I
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_76
    move-exception v4

    monitor-exit v5
    :try_end_78
    .catchall {:try_start_6e .. :try_end_78} :catchall_76

    throw v4

    .line 1410
    .restart local v2    # "phoneId":I
    :cond_79
    :try_start_79
    invoke-direct {p0}, handleRemoveListLocked()V

    .line 1411
    monitor-exit v5
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_76

    goto :goto_2e
.end method

.method public notifyDataActivity(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 1146
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, notifyDataActivityForSubscriber(II)V

    .line 1147
    return-void
.end method

.method public notifyDataActivityForSubscriber(II)V
    .registers 10
    .param p1, "subId"    # I
    .param p2, "state"    # I

    .prologue
    .line 1150
    const-string/jumbo v4, "notifyDataActivity()"

    invoke-direct {p0, v4}, checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1177
    :goto_9
    return-void

    .line 1153
    :cond_a
    iget-object v5, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1154
    :try_start_d
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 1155
    .local v2, "phoneId":I
    invoke-direct {p0, v2}, validatePhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 1156
    iget-object v4, p0, mDataActivity:[I

    aput p2, v4, v2

    .line 1157
    iget-object v4, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1158
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const-string v4, "DCGG"

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    const-string v4, "DGG"

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    const-string v4, "DCGS"

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    const-string v4, "DCGGS"

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    :cond_55
    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    if-ne v4, p1, :cond_21

    .line 1166
    :cond_59
    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_5e
    .catchall {:try_start_d .. :try_end_5e} :catchall_70

    move-result v4

    if-eqz v4, :cond_21

    .line 1168
    :try_start_61
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_66} :catch_67
    .catchall {:try_start_61 .. :try_end_66} :catchall_70

    goto :goto_21

    .line 1169
    :catch_67
    move-exception v0

    .line 1170
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_68
    iget-object v4, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 1176
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "phoneId":I
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_70
    move-exception v4

    monitor-exit v5
    :try_end_72
    .catchall {:try_start_68 .. :try_end_72} :catchall_70

    throw v4

    .line 1175
    .restart local v2    # "phoneId":I
    :cond_73
    :try_start_73
    invoke-direct {p0}, handleRemoveListLocked()V

    .line 1176
    monitor-exit v5
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_70

    goto :goto_9
.end method

.method public notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    .registers 21
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p8, "networkType"    # I
    .param p9, "roaming"    # Z

    .prologue
    .line 1237
    const v1, 0x7fffffff

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V

    .line 1240
    return-void
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1341
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1, p2}, notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V

    .line 1343
    return-void
.end method

.method public notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "subId"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1347
    const-string/jumbo v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1373
    :goto_9
    return-void

    .line 1354
    :cond_a
    iget-object v11, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v11

    .line 1355
    :try_start_d
    new-instance v0, Landroid/telephony/PreciseDataConnectionState;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v4, ""

    const/4 v6, 0x0

    const-string v7, ""

    move-object v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Landroid/telephony/PreciseDataConnectionState;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    iput-object v0, p0, mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 1358
    iget-object v0, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_23
    :goto_23
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/TelephonyRegistry$Record;

    .line 1359
    .local v10, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x1000

    invoke-virtual {v10, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_48

    move-result v0

    if-eqz v0, :cond_23

    .line 1362
    :try_start_37
    iget-object v0, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v1, p0, mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3e} :catch_3f
    .catchall {:try_start_37 .. :try_end_3e} :catchall_48

    goto :goto_23

    .line 1363
    :catch_3f
    move-exception v8

    .line 1364
    .local v8, "ex":Landroid/os/RemoteException;
    :try_start_40
    iget-object v0, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v1, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 1369
    .end local v8    # "ex":Landroid/os/RemoteException;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_48
    move-exception v0

    monitor-exit v11
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_48

    throw v0

    .line 1368
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_4b
    :try_start_4b
    invoke-direct {p0}, handleRemoveListLocked()V

    .line 1369
    monitor-exit v11
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_48

    .line 1370
    invoke-direct {p0, p2, p3, p1}, broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1371
    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v4, ""

    const/4 v6, 0x0

    const-string v7, ""

    move-object v0, p0

    move-object v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    .registers 28
    .param p1, "subId"    # I
    .param p2, "state"    # I
    .param p3, "isDataConnectivityPossible"    # Z
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "apn"    # Ljava/lang/String;
    .param p6, "apnType"    # Ljava/lang/String;
    .param p7, "linkProperties"    # Landroid/net/LinkProperties;
    .param p8, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p9, "networkType"    # I
    .param p10, "roaming"    # Z

    .prologue
    .line 1246
    const-string/jumbo v2, "notifyDataConnection()"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1338
    :goto_b
    return-void

    .line 1249
    :cond_c
    sget-boolean v2, SHIP_BUILD:Z

    if-nez v2, :cond_89

    .line 1250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyDataConnectionForSubscriber: subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isDataConnectivityPossible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' apn=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " networkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRecords.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, log(Ljava/lang/String;)V

    .line 1257
    :cond_89
    move-object/from16 v0, p0

    iget-object v10, v0, mRecords:Ljava/util/ArrayList;

    monitor-enter v10

    .line 1258
    :try_start_8e
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v15

    .line 1259
    .local v15, "phoneId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_1dc

    .line 1260
    const/4 v14, 0x0

    .line 1266
    .local v14, "modified":Z
    move-object/from16 v0, p0

    iget-object v2, v0, mApnBlackList:Ljava/util/ArrayList;

    if-eqz v2, :cond_ad

    move-object/from16 v0, p0

    iget-object v2, v0, mApnBlackList:Ljava/util/ArrayList;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_dc

    .line 1267
    :cond_ad
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_168

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedApns:[Ljava/util/ArrayList;

    aget-object v2, v2, v15

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_dc

    .line 1269
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedApns:[Ljava/util/ArrayList;

    aget-object v2, v2, v15

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1270
    move-object/from16 v0, p0

    iget-object v2, v0, mDataConnectionState:[I

    aget v2, v2, v15

    move/from16 v0, p2

    if-eq v2, v0, :cond_dc

    .line 1271
    move-object/from16 v0, p0

    iget-object v2, v0, mDataConnectionState:[I

    aput p2, v2, v15

    .line 1272
    const/4 v14, 0x1

    .line 1287
    :cond_dc
    :goto_dc
    move-object/from16 v0, p0

    iget-object v2, v0, mDataConnectionPossible:[Z

    aput-boolean p3, v2, v15

    .line 1288
    move-object/from16 v0, p0

    iget-object v2, v0, mDataConnectionReason:[Ljava/lang/String;

    aput-object p4, v2, v15

    .line 1289
    move-object/from16 v0, p0

    iget-object v2, v0, mDataConnectionLinkProperties:[Landroid/net/LinkProperties;

    aput-object p7, v2, v15

    .line 1290
    move-object/from16 v0, p0

    iget-object v2, v0, mDataConnectionNetworkCapabilities:[Landroid/net/NetworkCapabilities;

    aput-object p8, v2, v15

    .line 1291
    move-object/from16 v0, p0

    iget-object v2, v0, mDataConnectionNetworkType:[I

    aget v2, v2, v15

    move/from16 v0, p9

    if-eq v2, v0, :cond_105

    .line 1292
    move-object/from16 v0, p0

    iget-object v2, v0, mDataConnectionNetworkType:[I

    aput p9, v2, v15

    .line 1294
    const/4 v14, 0x1

    .line 1296
    :cond_105
    if-eqz v14, :cond_18e

    .line 1301
    move-object/from16 v0, p0

    iget-object v2, v0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_10f
    :goto_10f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/TelephonyRegistry$Record;

    .line 1302
    .local v16, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v2, 0x40

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v2

    if-eqz v2, :cond_10f

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v2, v1, v15}, idMatch(III)Z

    move-result v2

    if-nez v2, :cond_144

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_10f

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I
    :try_end_13f
    .catchall {:try_start_8e .. :try_end_13f} :catchall_165

    move-result v2

    move/from16 v0, p1

    if-ne v0, v2, :cond_10f

    .line 1310
    :cond_144
    :try_start_144
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v3, v0, mDataConnectionState:[I

    aget v3, v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, mDataConnectionNetworkType:[I

    aget v4, v4, v15

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_157
    .catch Landroid/os/RemoteException; {:try_start_144 .. :try_end_157} :catch_158
    .catchall {:try_start_144 .. :try_end_157} :catchall_165

    goto :goto_10f

    .line 1312
    :catch_158
    move-exception v12

    .line 1313
    .local v12, "ex":Landroid/os/RemoteException;
    :try_start_159
    move-object/from16 v0, p0

    iget-object v2, v0, mRemoveList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10f

    .line 1333
    .end local v12    # "ex":Landroid/os/RemoteException;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "modified":Z
    .end local v15    # "phoneId":I
    .end local v16    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_165
    move-exception v2

    monitor-exit v10
    :try_end_167
    .catchall {:try_start_159 .. :try_end_167} :catchall_165

    throw v2

    .line 1276
    .restart local v14    # "modified":Z
    .restart local v15    # "phoneId":I
    :cond_168
    :try_start_168
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedApns:[Ljava/util/ArrayList;

    aget-object v2, v2, v15

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 1277
    move-object/from16 v0, p0

    iget-object v2, v0, mConnectedApns:[Ljava/util/ArrayList;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 1278
    move-object/from16 v0, p0

    iget-object v2, v0, mDataConnectionState:[I

    aput p2, v2, v15

    .line 1279
    const/4 v14, 0x1

    goto/16 :goto_dc

    .line 1317
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_18b
    invoke-direct/range {p0 .. p0}, handleRemoveListLocked()V

    .line 1319
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_18e
    new-instance v2, Landroid/telephony/PreciseDataConnectionState;

    const-string v9, ""

    move/from16 v3, p2

    move/from16 v4, p9

    move-object/from16 v5, p6

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v9}, Landroid/telephony/PreciseDataConnectionState;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 1321
    move-object/from16 v0, p0

    iget-object v2, v0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_1ad
    :goto_1ad
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1dc

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/TelephonyRegistry$Record;

    .line 1322
    .restart local v16    # "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v2, 0x1000

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_1c0
    .catchall {:try_start_168 .. :try_end_1c0} :catchall_165

    move-result v2

    if-eqz v2, :cond_1ad

    .line 1325
    :try_start_1c3
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v3, v0, mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_1ce
    .catch Landroid/os/RemoteException; {:try_start_1c3 .. :try_end_1ce} :catch_1cf
    .catchall {:try_start_1c3 .. :try_end_1ce} :catchall_165

    goto :goto_1ad

    .line 1326
    :catch_1cf
    move-exception v12

    .line 1327
    .restart local v12    # "ex":Landroid/os/RemoteException;
    :try_start_1d0
    move-object/from16 v0, p0

    iget-object v2, v0, mRemoveList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1ad

    .line 1332
    .end local v12    # "ex":Landroid/os/RemoteException;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "modified":Z
    .end local v16    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_1dc
    invoke-direct/range {p0 .. p0}, handleRemoveListLocked()V

    .line 1333
    monitor-exit v10
    :try_end_1e0
    .catchall {:try_start_1d0 .. :try_end_1e0} :catchall_165

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p1

    .line 1334
    invoke-direct/range {v2 .. v11}, broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ZI)V

    .line 1336
    const-string v9, ""

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p9

    move-object/from16 v5, p6

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v9}, broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    goto/16 :goto_b
.end method

.method public notifyDataConnectionRealTimeInfo(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .registers 8
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    .line 1061
    const-string/jumbo v3, "notifyDataConnectionRealTimeInfo()"

    invoke-direct {p0, v3}, checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1083
    :goto_9
    return-void

    .line 1065
    :cond_a
    iget-object v4, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1066
    :try_start_d
    iput-object p1, p0, mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

    .line 1067
    iget-object v3, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1068
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x2000

    invoke-direct {p0, v2, v3}, validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_3a

    move-result v3

    if-eqz v3, :cond_15

    .line 1075
    :try_start_29
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_30} :catch_31
    .catchall {:try_start_29 .. :try_end_30} :catchall_3a

    goto :goto_15

    .line 1076
    :catch_31
    move-exception v0

    .line 1077
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_32
    iget-object v3, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 1082
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_3a
    move-exception v3

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3a

    throw v3

    .line 1081
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3d
    :try_start_3d
    invoke-direct {p0}, handleRemoveListLocked()V

    .line 1082
    monitor-exit v4
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3a

    goto :goto_9
.end method

.method public notifyDisconnectCause(II)V
    .registers 13
    .param p1, "disconnectCause"    # I
    .param p2, "preciseDisconnectCause"    # I

    .prologue
    .line 1463
    const-string/jumbo v0, "notifyDisconnectCause()"

    invoke-direct {p0, v0}, checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1482
    :goto_9
    return-void

    .line 1466
    :cond_a
    iget-object v9, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v9

    .line 1467
    :try_start_d
    new-instance v0, Landroid/telephony/PreciseCallState;

    iget v1, p0, mRingingCallState:I

    iget v2, p0, mForegroundCallState:I

    iget v3, p0, mBackgroundCallState:I

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    iput-object v0, p0, mPreciseCallState:Landroid/telephony/PreciseCallState;

    .line 1469
    iget-object v0, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_22
    :goto_22
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/TelephonyRegistry$Record;

    .line 1470
    .local v8, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x800

    invoke-virtual {v8, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_47

    move-result v0

    if-eqz v0, :cond_22

    .line 1472
    :try_start_36
    iget-object v0, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v1, p0, mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3d} :catch_3e
    .catchall {:try_start_36 .. :try_end_3d} :catchall_47

    goto :goto_22

    .line 1473
    :catch_3e
    move-exception v6

    .line 1474
    .local v6, "ex":Landroid/os/RemoteException;
    :try_start_3f
    iget-object v0, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v1, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 1479
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_47
    move-exception v0

    monitor-exit v9
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_47

    throw v0

    .line 1478
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_4a
    :try_start_4a
    invoke-direct {p0}, handleRemoveListLocked()V

    .line 1479
    monitor-exit v9
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_47

    .line 1480
    iget v1, p0, mRingingCallState:I

    iget v2, p0, mForegroundCallState:I

    iget v3, p0, mBackgroundCallState:I

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, broadcastPreciseCallStateChanged(IIIII)V

    goto :goto_9
.end method

.method public notifyDualSimSlotActivationState(Z)V
    .registers 5
    .param p1, "resultInfo"    # Z

    .prologue
    .line 1181
    const-string/jumbo v1, "notifyDualSimSlotActivationState()"

    invoke-direct {p0, v1}, checkNotifyPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1190
    :goto_9
    return-void

    .line 1184
    :cond_a
    iget-object v2, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1185
    :try_start_d
    iput-boolean p1, p0, mDualSimSlotActivationState:Z

    .line 1186
    iget-object v1, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_17
    if-ltz v0, :cond_24

    .line 1187
    iget-object v1, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TelephonyRegistry$Record;

    .line 1186
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 1189
    :cond_24
    monitor-exit v2

    goto :goto_9

    .end local v0    # "i":I
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_26

    throw v1
.end method

.method public notifyDunDataActivity(I)V
    .registers 7
    .param p1, "state"    # I

    .prologue
    .line 1195
    const-string/jumbo v3, "notifyDunDataActivity()"

    invoke-direct {p0, v3}, checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1211
    :goto_9
    return-void

    .line 1198
    :cond_a
    iget-object v4, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1199
    :try_start_d
    iput p1, p0, mDunDataActivity:I

    .line 1200
    iget-object v3, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_3b

    .line 1201
    iget-object v3, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1202
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, 0x40000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_38

    move-result v3

    if-eqz v3, :cond_2e

    .line 1204
    :try_start_29
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onDunDataActivity(I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_31
    .catchall {:try_start_29 .. :try_end_2e} :catchall_38

    .line 1200
    :cond_2e
    :goto_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 1205
    :catch_31
    move-exception v0

    .line 1206
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_32
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, remove(Landroid/os/IBinder;)V

    goto :goto_2e

    .line 1210
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_38
    move-exception v3

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_38

    throw v3

    .restart local v1    # "i":I
    :cond_3b
    :try_start_3b
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_38

    goto :goto_9
.end method

.method public notifyDunDataConnection(II)V
    .registers 8
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 1214
    const-string/jumbo v3, "notifyDunDataConnection()"

    invoke-direct {p0, v3}, checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1231
    :goto_9
    return-void

    .line 1217
    :cond_a
    iget-object v4, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1218
    :try_start_d
    iput p1, p0, mDunDataConnectionState:I

    .line 1219
    iput p2, p0, mDunNetWorkType:I

    .line 1220
    iget-object v3, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_19
    if-ltz v1, :cond_3d

    .line 1221
    iget-object v3, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1222
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_3a

    move-result v3

    if-eqz v3, :cond_30

    .line 1224
    :try_start_2b
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDunDataConnectionStateChanged(II)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_33
    .catchall {:try_start_2b .. :try_end_30} :catchall_3a

    .line 1220
    :cond_30
    :goto_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 1225
    :catch_33
    move-exception v0

    .line 1226
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_34
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, remove(Landroid/os/IBinder;)V

    goto :goto_30

    .line 1230
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_3a
    move-exception v3

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_3a

    throw v3

    .restart local v1    # "i":I
    :cond_3d
    :try_start_3d
    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3a

    goto :goto_9
.end method

.method public notifyFdnUpdated()V
    .registers 7

    .prologue
    .line 1557
    const-string/jumbo v3, "notifyFdnUpdated()"

    invoke-direct {p0, v3}, checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1573
    :goto_9
    return-void

    .line 1561
    :cond_a
    iget-object v4, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1562
    :try_start_d
    iget-object v3, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1563
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, 0x20000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_36

    move-result v3

    if-eqz v3, :cond_13

    .line 1565
    :try_start_27
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onFdnUpdated()V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_2d
    .catchall {:try_start_27 .. :try_end_2c} :catchall_36

    goto :goto_13

    .line 1566
    :catch_2d
    move-exception v0

    .line 1567
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2e
    iget-object v3, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 1572
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_36
    move-exception v3

    monitor-exit v4
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_36

    throw v3

    .line 1571
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_39
    :try_start_39
    invoke-direct {p0}, handleRemoveListLocked()V

    .line 1572
    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_36

    goto :goto_9
.end method

.method public notifyMessageWaitingChangedForPhoneId(IIZ)V
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "mwi"    # Z

    .prologue
    .line 1087
    const-string/jumbo v3, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v3}, checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1111
    :goto_9
    return-void

    .line 1094
    :cond_a
    iget-object v4, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1095
    :try_start_d
    invoke-direct {p0, p1}, validatePhoneId(I)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 1096
    iget-object v3, p0, mMessageWaiting:[Z

    aput-boolean p3, v3, p1

    .line 1097
    iget-object v3, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1098
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v3, p2, p1}, idMatch(III)Z
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_47

    move-result v3

    if-eqz v3, :cond_1d

    .line 1102
    :try_start_38
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3d} :catch_3e
    .catchall {:try_start_38 .. :try_end_3d} :catchall_47

    goto :goto_1d

    .line 1103
    :catch_3e
    move-exception v0

    .line 1104
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_3f
    iget-object v3, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 1110
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_47
    move-exception v3

    monitor-exit v4
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_47

    throw v3

    .line 1109
    :cond_4a
    :try_start_4a
    invoke-direct {p0}, handleRemoveListLocked()V

    .line 1110
    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_47

    goto :goto_9
.end method

.method public notifyOemHookRawEventForSubscriber(I[B)V
    .registers 9
    .param p1, "subId"    # I
    .param p2, "rawData"    # [B

    .prologue
    .line 1530
    const-string/jumbo v3, "notifyOemHookRawEventForSubscriber"

    invoke-direct {p0, v3}, checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1552
    :goto_9
    return-void

    .line 1534
    :cond_a
    iget-object v4, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1535
    :try_start_d
    iget-object v3, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1539
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const v3, 0x8000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_13

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    if-eq v3, p1, :cond_33

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_42

    const v5, 0x7fffffff

    if-ne v3, v5, :cond_13

    .line 1544
    :cond_33
    :try_start_33
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onOemHookRawEvent([B)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39
    .catchall {:try_start_33 .. :try_end_38} :catchall_42

    goto :goto_13

    .line 1545
    :catch_39
    move-exception v0

    .line 1546
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_3a
    iget-object v3, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 1551
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_42
    move-exception v3

    monitor-exit v4
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_42

    throw v3

    .line 1550
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_45
    :try_start_45
    invoke-direct {p0}, handleRemoveListLocked()V

    .line 1551
    monitor-exit v4
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_42

    goto :goto_9
.end method

.method public notifyOtaspChanged(I)V
    .registers 8
    .param p1, "otaspMode"    # I

    .prologue
    .line 1415
    const-string/jumbo v3, "notifyOtaspChanged()"

    invoke-direct {p0, v3}, checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1431
    :goto_9
    return-void

    .line 1418
    :cond_a
    iget-object v4, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1419
    :try_start_d
    iput p1, p0, mOtaspMode:I

    .line 1420
    iget-object v3, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1421
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_38

    move-result v3

    if-eqz v3, :cond_15

    .line 1423
    :try_start_29
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_2f
    .catchall {:try_start_29 .. :try_end_2e} :catchall_38

    goto :goto_15

    .line 1424
    :catch_2f
    move-exception v0

    .line 1425
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_30
    iget-object v3, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 1430
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_38
    move-exception v3

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_38

    throw v3

    .line 1429
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3b
    :try_start_3b
    invoke-direct {p0}, handleRemoveListLocked()V

    .line 1430
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_38

    goto :goto_9
.end method

.method public notifyPreciseCallState(III)V
    .registers 15
    .param p1, "ringingCallState"    # I
    .param p2, "foregroundCallState"    # I
    .param p3, "backgroundCallState"    # I

    .prologue
    const/4 v10, -0x1

    .line 1435
    const-string/jumbo v0, "notifyPreciseCallState()"

    invoke-direct {p0, v0}, checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1460
    :goto_a
    return-void

    .line 1438
    :cond_b
    iget-object v9, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v9

    .line 1439
    :try_start_e
    iput p1, p0, mRingingCallState:I

    .line 1440
    iput p2, p0, mForegroundCallState:I

    .line 1441
    iput p3, p0, mBackgroundCallState:I

    .line 1442
    new-instance v0, Landroid/telephony/PreciseCallState;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    iput-object v0, p0, mPreciseCallState:Landroid/telephony/PreciseCallState;

    .line 1446
    iget-object v0, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_26
    :goto_26
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/TelephonyRegistry$Record;

    .line 1447
    .local v8, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x800

    invoke-virtual {v8, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_37
    .catchall {:try_start_e .. :try_end_37} :catchall_4b

    move-result v0

    if-eqz v0, :cond_26

    .line 1449
    :try_start_3a
    iget-object v0, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v1, p0, mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_41} :catch_42
    .catchall {:try_start_3a .. :try_end_41} :catchall_4b

    goto :goto_26

    .line 1450
    :catch_42
    move-exception v6

    .line 1451
    .local v6, "ex":Landroid/os/RemoteException;
    :try_start_43
    iget-object v0, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v1, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 1456
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_4b
    move-exception v0

    monitor-exit v9
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_4b

    throw v0

    .line 1455
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_4e
    :try_start_4e
    invoke-direct {p0}, handleRemoveListLocked()V

    .line 1456
    monitor-exit v9
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_4b

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v10

    move v5, v10

    .line 1457
    invoke-direct/range {v0 .. v5}, broadcastPreciseCallStateChanged(IIIII)V

    goto :goto_a
.end method

.method public notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "failCause"    # Ljava/lang/String;

    .prologue
    .line 1486
    const-string/jumbo v0, "notifyPreciseDataConnectionFailed()"

    invoke-direct {p0, v0}, checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1507
    :goto_9
    return-void

    .line 1489
    :cond_a
    iget-object v11, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v11

    .line 1490
    :try_start_d
    new-instance v0, Landroid/telephony/PreciseDataConnectionState;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/telephony/PreciseDataConnectionState;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    iput-object v0, p0, mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 1493
    iget-object v0, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_22
    :goto_22
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/TelephonyRegistry$Record;

    .line 1494
    .local v10, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x1000

    invoke-virtual {v10, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_47

    move-result v0

    if-eqz v0, :cond_22

    .line 1497
    :try_start_36
    iget-object v0, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v1, p0, mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3d} :catch_3e
    .catchall {:try_start_36 .. :try_end_3d} :catchall_47

    goto :goto_22

    .line 1498
    :catch_3e
    move-exception v8

    .line 1499
    .local v8, "ex":Landroid/os/RemoteException;
    :try_start_3f
    iget-object v0, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v1, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 1504
    .end local v8    # "ex":Landroid/os/RemoteException;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_47
    move-exception v0

    monitor-exit v11
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_47

    throw v0

    .line 1503
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_4a
    :try_start_4a
    invoke-direct {p0}, handleRemoveListLocked()V

    .line 1504
    monitor-exit v11
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_47

    .line 1505
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V
    .registers 10
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 898
    const-string/jumbo v3, "notifyServiceState()"

    invoke-direct {p0, v3}, checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 937
    :goto_9
    return-void

    .line 902
    :cond_a
    iget-object v4, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 907
    :try_start_d
    invoke-direct {p0, p1}, validatePhoneId(I)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 908
    iget-object v3, p0, mServiceState:[Landroid/telephony/ServiceState;

    aput-object p3, v3, p1

    .line 909
    const-string/jumbo v3, "notifyServiceStateForSubscriber"

    invoke-direct {p0, v3, p2, p1, p3}, logServiceStateChanged(Ljava/lang/String;IILandroid/telephony/ServiceState;)V

    .line 912
    iget-object v3, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 917
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_23

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v3, p2, p1}, idMatch(III)Z
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_52

    move-result v3

    if-eqz v3, :cond_23

    .line 925
    :try_start_3e
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5, p3}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_48} :catch_49
    .catchall {:try_start_3e .. :try_end_48} :catchall_52

    goto :goto_23

    .line 926
    :catch_49
    move-exception v0

    .line 927
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_4a
    iget-object v3, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 935
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_52
    move-exception v3

    monitor-exit v4
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_52

    throw v3

    .line 932
    :cond_55
    :try_start_55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyServiceStateForSubscriber: INVALID phoneId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, log(Ljava/lang/String;)V

    .line 934
    :cond_6c
    invoke-direct {p0}, handleRemoveListLocked()V

    .line 935
    monitor-exit v4
    :try_end_70
    .catchall {:try_start_55 .. :try_end_70} :catchall_52

    .line 936
    invoke-direct {p0, p3, p2}, broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V

    goto :goto_9
.end method

.method public notifySignalStrength(Landroid/telephony/SignalStrength;)V
    .registers 3
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 940
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, notifySignalStrengthForSubscriber(ILandroid/telephony/SignalStrength;)V

    .line 942
    return-void
.end method

.method public notifySignalStrengthForSubscriber(ILandroid/telephony/SignalStrength;)V
    .registers 12
    .param p1, "subId"    # I
    .param p2, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 945
    const-string/jumbo v6, "notifySignalStrength()"

    invoke-direct {p0, v6}, checkNotifyPermission(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 999
    :goto_9
    return-void

    .line 953
    :cond_a
    iget-object v7, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v7

    .line 954
    :try_start_d
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    .line 955
    .local v3, "phoneId":I
    invoke-direct {p0, v3}, validatePhoneId(I)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 957
    iget-object v6, p0, mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object p2, v6, v3

    .line 958
    iget-object v6, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_93

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 963
    .local v4, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v6, 0x100

    invoke-virtual {v4, v6}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v6

    if-eqz v6, :cond_47

    iget v6, v4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v6, p1, v3}, idMatch(III)Z
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_6e

    move-result v6

    if-eqz v6, :cond_47

    .line 972
    :try_start_3d
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v8, Landroid/telephony/SignalStrength;

    invoke-direct {v8, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v6, v8}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_47} :catch_71
    .catchall {:try_start_3d .. :try_end_47} :catchall_6e

    .line 977
    :cond_47
    :goto_47
    const/4 v6, 0x2

    :try_start_48
    invoke-virtual {v4, v6}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v6

    if-eqz v6, :cond_21

    iget v6, v4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v6, p1, v3}, idMatch(III)Z
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_6e

    move-result v6

    if-eqz v6, :cond_21

    .line 980
    :try_start_56
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 981
    .local v1, "gsmSignalStrength":I
    const/16 v6, 0x63

    if-ne v1, v6, :cond_7a

    const/4 v5, -0x1

    .line 987
    .local v5, "ss":I
    :goto_5f
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v6, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_64} :catch_65
    .catchall {:try_start_56 .. :try_end_64} :catchall_6e

    goto :goto_21

    .line 988
    .end local v1    # "gsmSignalStrength":I
    .end local v5    # "ss":I
    :catch_65
    move-exception v0

    .line 989
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_66
    iget-object v6, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v8, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 997
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "phoneId":I
    .end local v4    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_6e
    move-exception v6

    monitor-exit v7
    :try_end_70
    .catchall {:try_start_66 .. :try_end_70} :catchall_6e

    throw v6

    .line 973
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "phoneId":I
    .restart local v4    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catch_71
    move-exception v0

    .line 974
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_72
    iget-object v6, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v8, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "gsmSignalStrength":I
    :cond_7a
    move v5, v1

    .line 981
    goto :goto_5f

    .line 994
    .end local v1    # "gsmSignalStrength":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_7c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifySignalStrengthForSubscriber: invalid phoneId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, log(Ljava/lang/String;)V

    .line 996
    :cond_93
    invoke-direct {p0}, handleRemoveListLocked()V

    .line 997
    monitor-exit v7
    :try_end_97
    .catchall {:try_start_72 .. :try_end_97} :catchall_6e

    .line 998
    invoke-direct {p0, p2, p1}, broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V

    goto/16 :goto_9
.end method

.method public notifySubscriptionInfoChanged()V
    .registers 7

    .prologue
    .line 521
    iget-object v4, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 522
    :try_start_3
    iget-boolean v3, p0, hasNotifySubscriptionInfoChangedOccurred:Z

    if-nez v3, :cond_24

    .line 523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifySubscriptionInfoChanged: first invocation mRecords.size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, log(Ljava/lang/String;)V

    .line 526
    :cond_24
    const/4 v3, 0x1

    iput-boolean v3, p0, hasNotifySubscriptionInfoChangedOccurred:Z

    .line 527
    iget-object v3, p0, mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 528
    iget-object v3, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_32
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 529
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->matchOnSubscriptionsChangedListener()Z
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_53

    move-result v3

    if-eqz v3, :cond_32

    .line 532
    :try_start_44
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_49} :catch_4a
    .catchall {:try_start_44 .. :try_end_49} :catchall_53

    goto :goto_32

    .line 534
    :catch_4a
    move-exception v0

    .line 536
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_4b
    iget-object v3, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 541
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_53
    move-exception v3

    monitor-exit v4
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_53

    throw v3

    .line 540
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_56
    :try_start_56
    invoke-direct {p0}, handleRemoveListLocked()V

    .line 541
    monitor-exit v4
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_53

    .line 542
    return-void
.end method

.method public notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    .registers 9
    .param p1, "lteState"    # Landroid/telephony/VoLteServiceState;

    .prologue
    .line 1510
    const-string/jumbo v3, "notifyVoLteServiceStateChanged()"

    invoke-direct {p0, v3}, checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1527
    :goto_9
    return-void

    .line 1513
    :cond_a
    iget-object v4, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1514
    :try_start_d
    iput-object p1, p0, mVoLteServiceState:Landroid/telephony/VoLteServiceState;

    .line 1515
    iget-object v3, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1516
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x4000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_3f

    move-result v3

    if-eqz v3, :cond_15

    .line 1518
    :try_start_29
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/VoLteServiceState;

    iget-object v6, p0, mVoLteServiceState:Landroid/telephony/VoLteServiceState;

    invoke-direct {v5, v6}, Landroid/telephony/VoLteServiceState;-><init>(Landroid/telephony/VoLteServiceState;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_35} :catch_36
    .catchall {:try_start_29 .. :try_end_35} :catchall_3f

    goto :goto_15

    .line 1520
    :catch_36
    move-exception v0

    .line 1521
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_37
    iget-object v3, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 1526
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_3f
    move-exception v3

    monitor-exit v4
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_3f

    throw v3

    .line 1525
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_42
    :try_start_42
    invoke-direct {p0}, handleRemoveListLocked()V

    .line 1526
    monitor-exit v4
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_3f

    goto :goto_9
.end method

.method public notifyVoiceRadioBearerHoState(I)V
    .registers 8
    .param p1, "state"    # I

    .prologue
    .line 1578
    const-string/jumbo v3, "notifyVoiceRadioBearerHoState()"

    invoke-direct {p0, v3}, checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1594
    :goto_9
    return-void

    .line 1582
    :cond_a
    iget-object v4, p0, mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1583
    :try_start_d
    iget-object v3, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1584
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, 0x100000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_36

    move-result v3

    if-eqz v3, :cond_13

    .line 1586
    :try_start_27
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoiceRadioBearerHoStateChanged(I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_2d
    .catchall {:try_start_27 .. :try_end_2c} :catchall_36

    goto :goto_13

    .line 1587
    :catch_2d
    move-exception v0

    .line 1588
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2e
    iget-object v3, p0, mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 1593
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_36
    move-exception v3

    monitor-exit v4
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_36

    throw v3

    .line 1592
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_39
    :try_start_39
    invoke-direct {p0}, handleRemoveListLocked()V

    .line 1593
    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_36

    goto :goto_9
.end method

.method public removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .registers 4
    .param p1, "pkgForDebug"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .prologue
    .line 515
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, remove(Landroid/os/IBinder;)V

    .line 516
    return-void
.end method

.method public systemRunning()V
    .registers 4

    .prologue
    .line 434
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 435
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 436
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 437
    const-string v1, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 438
    const-string/jumbo v1, "systemRunning register for intents"

    invoke-static {v1}, log(Ljava/lang/String;)V

    .line 439
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 440
    return-void
.end method
