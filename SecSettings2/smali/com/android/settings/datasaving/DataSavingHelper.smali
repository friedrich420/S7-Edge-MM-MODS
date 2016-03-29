.class public Lcom/android/settings/datasaving/DataSavingHelper;
.super Ljava/lang/Object;
.source "DataSavingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;,
        Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;
    }
.end annotation


# static fields
.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/settings/datasaving/DataSavingHelper;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mCurrentIMSI:Ljava/lang/String;

.field private mNeedToBindSavingService:Z

.field private mNeedToBindTrafficService:Z

.field private mSavedBytes:J

.field private final mSavingListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

.field private final mSavingServiceConnection:Landroid/content/ServiceConnection;

.field private mStateListenerRegistered:Z

.field private final mTrafficListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;

.field private final mTrafficServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-object v0, Lcom/android/settings/datasaving/DataSavingHelper;->sInstance:Lcom/android/settings/datasaving/DataSavingHelper;

    .line 48
    sput-object v0, Lcom/android/settings/datasaving/DataSavingHelper;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v2, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mAppContext:Landroid/content/Context;

    .line 50
    const-wide/32 v0, 0x6400000

    iput-wide v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavedBytes:J

    .line 68
    iput-boolean v3, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mNeedToBindSavingService:Z

    .line 69
    iput-boolean v3, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mNeedToBindTrafficService:Z

    .line 71
    iput-object v2, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    .line 72
    iput-object v2, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;

    .line 73
    iput-object v2, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mCurrentIMSI:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mStateListenerRegistered:Z

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingListeners:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficListeners:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Lcom/android/settings/datasaving/DataSavingHelper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datasaving/DataSavingHelper$1;-><init>(Lcom/android/settings/datasaving/DataSavingHelper;)V

    iput-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingServiceConnection:Landroid/content/ServiceConnection;

    .line 126
    new-instance v0, Lcom/android/settings/datasaving/DataSavingHelper$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datasaving/DataSavingHelper$2;-><init>(Lcom/android/settings/datasaving/DataSavingHelper;)V

    iput-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficServiceConnection:Landroid/content/ServiceConnection;

    .line 223
    sget-object v0, Lcom/android/settings/datasaving/DataSavingHelper;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mAppContext:Landroid/content/Context;

    .line 224
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datasaving/DataSavingHelper;)Lcom/opera/max/sdk/saving/ISavingService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datasaving/DataSavingHelper;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/datasaving/DataSavingHelper;Lcom/opera/max/sdk/saving/ISavingService;)Lcom/opera/max/sdk/saving/ISavingService;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/datasaving/DataSavingHelper;
    .param p1, "x1"    # Lcom/opera/max/sdk/saving/ISavingService;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/datasaving/DataSavingHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datasaving/DataSavingHelper;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/datasaving/DataSavingHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datasaving/DataSavingHelper;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mNeedToBindSavingService:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/datasaving/DataSavingHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/datasaving/DataSavingHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mNeedToBindSavingService:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/datasaving/DataSavingHelper;)Lcom/opera/max/sdk/traffic/ITrafficService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datasaving/DataSavingHelper;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/datasaving/DataSavingHelper;Lcom/opera/max/sdk/traffic/ITrafficService;)Lcom/opera/max/sdk/traffic/ITrafficService;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/datasaving/DataSavingHelper;
    .param p1, "x1"    # Lcom/opera/max/sdk/traffic/ITrafficService;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/datasaving/DataSavingHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datasaving/DataSavingHelper;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/datasaving/DataSavingHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/datasaving/DataSavingHelper;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mNeedToBindTrafficService:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/datasaving/DataSavingHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/datasaving/DataSavingHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mNeedToBindTrafficService:Z

    return p1
.end method

.method private getCurrentDataSoltId()I
    .locals 2

    .prologue
    .line 264
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v0

    .line 265
    .local v0, "subId":I
    invoke-static {v0}, Lcom/samsung/android/telephony/MultiSimManager;->getSlotId(I)I

    move-result v1

    return v1
.end method

.method private getDefaultDataIMSI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/android/settings/datasaving/DataSavingHelper;->isSupportMultiSIM()Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    sget-object v1, Lcom/android/settings/datasaving/DataSavingHelper;->sContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 241
    .local v0, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 243
    .end local v0    # "tel":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/datasaving/DataSavingHelper;->getCurrentDataSoltId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/datasaving/DataSavingHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    sget-object v0, Lcom/android/settings/datasaving/DataSavingHelper;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 159
    sput-object p0, Lcom/android/settings/datasaving/DataSavingHelper;->sContext:Landroid/content/Context;

    .line 161
    :cond_0
    sget-object v0, Lcom/android/settings/datasaving/DataSavingHelper;->sInstance:Lcom/android/settings/datasaving/DataSavingHelper;

    if-nez v0, :cond_1

    .line 162
    new-instance v0, Lcom/android/settings/datasaving/DataSavingHelper;

    invoke-direct {v0}, Lcom/android/settings/datasaving/DataSavingHelper;-><init>()V

    sput-object v0, Lcom/android/settings/datasaving/DataSavingHelper;->sInstance:Lcom/android/settings/datasaving/DataSavingHelper;

    .line 165
    :cond_1
    sget-object v0, Lcom/android/settings/datasaving/DataSavingHelper;->sInstance:Lcom/android/settings/datasaving/DataSavingHelper;

    return-object v0
.end method

.method private getSavingServiceIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 426
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.opera.max.sdk.saving.SavingService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.oupeng.max.sdk"

    const-string v2, "com.opera.max.sdk.saving.SavingService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string v1, "EXTRA_SHOW_NOTIFICATION"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 429
    const-string v1, "EXTRA_HIDE_NOTIFICATION_AFTER_SAVING_OFF"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 430
    const-string v1, "EXTRA_DISABLE_BACKGROUND_PING"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 431
    return-object v0
.end method

.method private getTrafficServiceIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 462
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.opera.max.sdk.traffic.TrafficService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 463
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.oupeng.max.sdk"

    const-string v2, "com.opera.max.sdk.traffic.TrafficService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    return-object v0
.end method

.method public static getUsageText(J)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 384
    sget-object v0, Lcom/android/settings/datasaving/DataSavingHelper;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 385
    const/4 v0, 0x0

    .line 387
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/settings/datasaving/DataSavingHelper;->sContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isSupportMultiSIM()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 255
    sget-object v3, Lcom/android/settings/datasaving/DataSavingHelper;->sContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 257
    .local v0, "tel":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 260
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 258
    goto :goto_0

    :cond_1
    move v1, v2

    .line 260
    goto :goto_0
.end method


# virtual methods
.method public bindSavingService()Z
    .locals 8

    .prologue
    .line 395
    const/4 v3, 0x1

    .line 396
    .local v3, "result":Z
    invoke-virtual {p0}, Lcom/android/settings/datasaving/DataSavingHelper;->isSavingServiceBound()Z

    move-result v4

    if-nez v4, :cond_1

    .line 398
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mAppContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/datasaving/DataSavingHelper;->getSavingServiceIntent()Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingServiceConnection:Landroid/content/ServiceConnection;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 400
    const-string v4, "DataSavingHelper"

    const-string v5, "bindSavingService failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    const/4 v3, 0x0

    .line 414
    :cond_0
    :goto_0
    return v3

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "DataSavingHelper"

    const-string v5, "bindSavingService failed with exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v3, 0x0

    .line 406
    goto :goto_0

    .line 408
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;

    .line 409
    .local v2, "listener":Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;
    if-eqz v2, :cond_2

    .line 410
    iget-object v4, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    invoke-interface {v2, v4}, Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;->onConnected(Lcom/opera/max/sdk/saving/ISavingService;)V

    goto :goto_1
.end method

.method public bindServices()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mAppContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/android/settings/datasaving/DataSavingHelper;->getDefaultDataIMSI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mCurrentIMSI:Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/datasaving/DataSavingHelper;->bindSavingService()Z

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/datasaving/DataSavingHelper;->bindTrafficService()V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    const-string v0, "DataSavingHelper"

    const-string v1, "mAppContext is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bindTrafficService()V
    .locals 7

    .prologue
    .line 435
    iget-object v3, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;

    if-nez v3, :cond_1

    .line 437
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mAppContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/datasaving/DataSavingHelper;->getTrafficServiceIntent()Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficServiceConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 439
    const-string v3, "DataSavingHelper"

    const-string v4, "bindTrafficService failed"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DataSavingHelper"

    const-string v4, "bindTrafficService failed with exception"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 445
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;

    .line 446
    .local v2, "listener":Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;
    if-eqz v2, :cond_2

    .line 447
    iget-object v3, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;

    invoke-interface {v2, v3}, Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;->onConnected(Lcom/opera/max/sdk/traffic/ITrafficService;)V

    goto :goto_1
.end method

.method public getIMSIBySoltId(I)Ljava/lang/String;
    .locals 1
    .param p1, "soltId"    # I

    .prologue
    .line 251
    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSavedBytesByUid(IJJ)J
    .locals 14
    .param p1, "uid"    # I
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 363
    const-wide/16 v12, 0x0

    .line 364
    .local v12, "savedBytes":J
    const-string v3, "DataSavingHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "endTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v3, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;

    if-eqz v3, :cond_0

    .line 366
    const-string v3, "DataSavingHelper"

    const-string v4, "try to get saved data by UID"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;

    iget-object v4, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mCurrentIMSI:Ljava/lang/String;

    const/4 v10, 0x1

    move v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    invoke-interface/range {v3 .. v10}, Lcom/opera/max/sdk/traffic/ITrafficService;->getTrafficSummaryByUid(Ljava/lang/String;IJJZ)Lcom/opera/max/sdk/traffic/TrafficEntry;

    move-result-object v11

    .line 370
    .local v11, "entry":Lcom/opera/max/sdk/traffic/TrafficEntry;
    if-eqz v11, :cond_0

    .line 371
    iget-wide v12, v11, Lcom/opera/max/sdk/traffic/TrafficEntry;->saveBytes:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v11    # "entry":Lcom/opera/max/sdk/traffic/TrafficEntry;
    :cond_0
    :goto_0
    const-string v3, "DataSavingHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "by UID savedBytes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-wide v12

    .line 373
    :catch_0
    move-exception v2

    .line 374
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "DataSavingHelper"

    const-string v4, "Exception occured when get  saved data by UID"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSavedBytesForAllUid(JJ)J
    .locals 17
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 339
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavedBytes:J

    .line 340
    const-string v2, "DataSavingHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "endTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;

    if-eqz v2, :cond_1

    .line 343
    :try_start_0
    const-string v2, "DataSavingHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to get saved data for all UID + mCurrentIMSI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datasaving/DataSavingHelper;->mCurrentIMSI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datasaving/DataSavingHelper;->mCurrentIMSI:Ljava/lang/String;

    const/4 v8, 0x1

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-interface/range {v2 .. v8}, Lcom/opera/max/sdk/traffic/ITrafficService;->getTrafficSummaryForAllUids(Ljava/lang/String;JJZ)Ljava/util/Map;

    move-result-object v15

    .line 346
    .local v15, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/opera/max/sdk/traffic/TrafficEntry;>;"
    if-eqz v15, :cond_0

    .line 347
    invoke-interface {v15}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v11, v2, [Lcom/opera/max/sdk/traffic/TrafficEntry;

    .line 348
    .local v11, "entries":[Lcom/opera/max/sdk/traffic/TrafficEntry;
    invoke-interface {v15}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 349
    move-object v9, v11

    .local v9, "arr$":[Lcom/opera/max/sdk/traffic/TrafficEntry;
    array-length v14, v9

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    if-ge v13, v14, :cond_0

    aget-object v12, v9, v13

    .line 350
    .local v12, "entry":Lcom/opera/max/sdk/traffic/TrafficEntry;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavedBytes:J

    iget-wide v4, v12, Lcom/opera/max/sdk/traffic/TrafficEntry;->saveBytes:J

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavedBytes:J

    .line 349
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 353
    .end local v9    # "arr$":[Lcom/opera/max/sdk/traffic/TrafficEntry;
    .end local v11    # "entries":[Lcom/opera/max/sdk/traffic/TrafficEntry;
    .end local v12    # "entry":Lcom/opera/max/sdk/traffic/TrafficEntry;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    :cond_0
    const-string v2, "DataSavingHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSavedBytes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavedBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .end local v15    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/opera/max/sdk/traffic/TrafficEntry;>;"
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavedBytes:J

    return-wide v2

    .line 354
    :catch_0
    move-exception v10

    .line 355
    .local v10, "e":Landroid/os/RemoteException;
    const-string v2, "DataSavingHelper"

    const-string v3, "Exception occured when get all saved data"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public isSavingServiceBound()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerSavingStateListener(Lcom/opera/max/sdk/saving/IStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/opera/max/sdk/saving/IStateListener;

    .prologue
    .line 193
    iget-boolean v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mStateListenerRegistered:Z

    if-eqz v1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    if-eqz v1, :cond_0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    invoke-interface {v1, p1}, Lcom/opera/max/sdk/saving/ISavingService;->registerStateListener(Lcom/opera/max/sdk/saving/IStateListener;)V

    .line 200
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mStateListenerRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerServiceConnectionListener(Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;)V
    .locals 1
    .param p1, "savingServiceConnectionListener"    # Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;
    .param p2, "trafficServiceConnectionListener"    # Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method

.method public setCurrentIMSI(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentIMSI"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mCurrentIMSI:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setIMSIForTrafficService()V
    .locals 3

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;

    if-nez v1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 231
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficService:Lcom/opera/max/sdk/traffic/ITrafficService;

    invoke-direct {p0}, Lcom/android/settings/datasaving/DataSavingHelper;->getDefaultDataIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/opera/max/sdk/traffic/ITrafficService;->setImsi(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startSaving()V
    .locals 3

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    if-eqz v1, :cond_0

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    invoke-interface {v1}, Lcom/opera/max/sdk/saving/ISavingService;->startSaving()V

    .line 272
    const-string v1, "DataSavingHelper"

    const-string v2, "startSaving "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DataSavingHelper"

    const-string v2, "exception happen when start saving"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 278
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "DataSavingHelper"

    const-string v2, "mSavingService is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopSaving()V
    .locals 3

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    if-eqz v1, :cond_0

    .line 285
    :try_start_0
    const-string v1, "DataSavingHelper"

    const-string v2, "stopSaving "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    invoke-interface {v1}, Lcom/opera/max/sdk/saving/ISavingService;->stopSaving()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DataSavingHelper"

    const-string v2, "exception happen when sttop saving"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 292
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "DataSavingHelper"

    const-string v2, "mSavingService is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unRegisterServiceConnectionListener(Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;)V
    .locals 1
    .param p1, "savingServiceConnectionListener"    # Lcom/android/settings/datasaving/DataSavingHelper$SavingServiceConnectionListener;
    .param p2, "trafficServiceConnectionListener"    # Lcom/android/settings/datasaving/DataSavingHelper$TrafficServiceConnectionListener;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mTrafficListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method

.method public unregisterSavingStateListener(Lcom/opera/max/sdk/saving/IStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/opera/max/sdk/saving/IStateListener;

    .prologue
    .line 208
    iget-boolean v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mStateListenerRegistered:Z

    if-nez v1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    if-eqz v1, :cond_0

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mSavingService:Lcom/opera/max/sdk/saving/ISavingService;

    invoke-interface {v1, p1}, Lcom/opera/max/sdk/saving/ISavingService;->unregisterStateListener(Lcom/opera/max/sdk/saving/IStateListener;)V

    .line 215
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/datasaving/DataSavingHelper;->mStateListenerRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
