.class public Lcom/android/systemui/qs/tiles/DefaultDataTile;
.super Lcom/android/systemui/qs/QSTile;
.source "DefaultDataTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DELAYREADY:I = 0x0

.field private static final NOTREADY:I = -0x1

.field private static final READY:I = 0x1

.field private static final SLOT0:I = 0x0

.field private static final SLOT1:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final UNKNOWN:I = -0x1


# instance fields
.field private final mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDataPhoneId:I

.field private mDelayHandler:Landroid/os/Handler;

.field private mIsAirPlaneMode:Z

.field private mIsDataEnabled:Z

.field private mIsSwitchReady:Z

.field private final mMobileDataSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceState:[I

.field private mSimCount:I

.field private mTM:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 6
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 68
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTM:Landroid/telephony/TelephonyManager;

    .line 71
    iput v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSimCount:I

    .line 73
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsSwitchReady:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsDataEnabled:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsAirPlaneMode:Z

    .line 77
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDataPhoneId:I

    .line 82
    new-instance v2, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 314
    new-instance v2, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile$4;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;

    .line 142
    new-instance v2, Lcom/android/systemui/qs/tiles/DefaultDataTile$2;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v5, "airplane_mode_on"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/systemui/qs/tiles/DefaultDataTile$2;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 151
    new-instance v2, Lcom/android/systemui/qs/tiles/DefaultDataTile$3;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v5, "mobile_data"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/systemui/qs/tiles/DefaultDataTile$3;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileDataSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 161
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsAirPlaneMode:Z

    .line 162
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->getMobileDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsDataEnabled:Z

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getDefaultDataPhoneId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDataPhoneId:I

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->registerPhoneStateListener()V

    .line 165
    return-void

    :cond_0
    move v0, v1

    .line 161
    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDataPhoneId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->unregisterPhoneStateListener()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/DefaultDataTile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDataPhoneId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->registerPhoneStateListener()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsAirPlaneMode:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsAirPlaneMode:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState()V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsSwitchReady:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getDefaultDataPhoneId()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsDataEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsDataEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/DefaultDataTile;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->setDataPhoneId(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DefaultDataTile;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState()V

    return-void
.end method

.method private getDefaultDataPhoneId()I
    .locals 4

    .prologue
    .line 309
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    .line 310
    .local v0, "defaultPhoneId":I
    sget-object v1, Lcom/android/systemui/qs/tiles/DefaultDataTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultDataPhoneId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsDataEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsDataEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return v0
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 365
    new-instance v0, Lcom/android/systemui/qs/tiles/DefaultDataTile$5;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/DefaultDataTile$5;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;I)V

    .line 379
    .local v0, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private getQSTileMultiState()I
    .locals 3

    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsAirPlaneMode:Z

    if-eqz v1, :cond_1

    .line 247
    :cond_0
    const/4 v0, 0x2

    .line 258
    :goto_0
    return v0

    .line 250
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsSwitchReady:Z

    if-nez v1, :cond_2

    .line 251
    const/4 v0, 0x3

    .local v0, "ret":I
    goto :goto_0

    .line 252
    .end local v0    # "ret":I
    :cond_2
    iget v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDataPhoneId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsDataEnabled:Z

    if-nez v1, :cond_4

    .line 253
    :cond_3
    const/4 v0, 0x2

    .restart local v0    # "ret":I
    goto :goto_0

    .line 255
    .end local v0    # "ret":I
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "ret":I
    goto :goto_0
.end method

.method private registerPhoneStateListener()V
    .locals 9

    .prologue
    const/16 v8, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 330
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTM:Landroid/telephony/TelephonyManager;

    .line 331
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/DeviceState;->getNumberOfSim(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSimCount:I

    .line 332
    sget-object v3, Lcom/android/systemui/qs/tiles/DefaultDataTile;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerPhoneStateListener: mSimCount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSimCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSimCount:I

    new-array v3, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 334
    iget v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSimCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mServiceState:[I

    .line 335
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSimCount:I

    if-ge v0, v3, :cond_5

    .line 336
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 337
    .local v2, "subIdtemp":[I
    if-eqz v2, :cond_0

    .line 338
    aget v1, v2, v5

    .line 339
    .local v1, "subId":I
    sget-object v3, Lcom/android/systemui/qs/tiles/DefaultDataTile;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerPhoneStateListener subId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    if-lez v1, :cond_1

    .line 341
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v6

    aput-object v6, v3, v0

    .line 342
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v6, v6, v0

    invoke-virtual {v3, v6, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 351
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mServiceState:[I

    aput v5, v3, v0

    .line 335
    .end local v1    # "subId":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    .restart local v1    # "subId":I
    :cond_1
    iget v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSimCount:I

    if-nez v3, :cond_2

    move v6, v4

    :goto_2
    if-nez v0, :cond_3

    move v3, v4

    :goto_3
    and-int/2addr v3, v6

    if-eqz v3, :cond_4

    .line 345
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v6

    aput-object v6, v3, v0

    .line 346
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v6, v6, v0

    invoke-virtual {v3, v6, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    :cond_2
    move v6, v5

    .line 344
    goto :goto_2

    :cond_3
    move v3, v5

    goto :goto_3

    .line 348
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v6, 0x0

    aput-object v6, v3, v0

    goto :goto_1

    .line 354
    .end local v1    # "subId":I
    .end local v2    # "subIdtemp":[I
    :cond_5
    return-void
.end method

.method private setDataPhoneId(I)V
    .locals 4
    .param p1, "curPhoneId"    # I

    .prologue
    .line 290
    move v0, p1

    .line 291
    .local v0, "phoneId":I
    add-int/lit8 v0, v0, 0x1

    .line 292
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 293
    const/4 v0, 0x0

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 297
    return-void
.end method

.method private setSettingDefaultDataPhoneId(I)V
    .locals 3
    .param p1, "curPhoneId"    # I

    .prologue
    .line 300
    move v0, p1

    .line 301
    .local v0, "phoneId":I
    add-int/lit8 v0, v0, 0x1

    .line 302
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 303
    const/4 v0, 0x0

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 306
    return-void
.end method

.method private showNoSimDialog(III)V
    .locals 3
    .param p1, "title"    # I
    .param p2, "msg"    # I
    .param p3, "button1"    # I

    .prologue
    .line 383
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 384
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 385
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 386
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 387
    new-instance v1, Lcom/android/systemui/qs/tiles/DefaultDataTile$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile$6;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 394
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 395
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 396
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/systemui/qs/tiles/DefaultDataTile$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile$7;-><init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 402
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    .line 403
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 405
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 4

    .prologue
    .line 357
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mSimCount:I

    if-ge v0, v1, :cond_1

    .line 358
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 357
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 286
    const/16 v0, 0x197

    return v0
.end method

.method protected handleClick()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 196
    sget-object v6, Lcom/android/systemui/qs/tiles/DefaultDataTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleClick : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getMetricsCategory()I

    move-result v7

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v8, 0x2

    if-ne v3, v8, :cond_2

    move v3, v4

    :goto_1
    invoke-static {v6, v7, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 206
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v3, v9, :cond_0

    .line 210
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSimReady()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 211
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 212
    sget-object v3, Lcom/android/systemui/qs/tiles/DefaultDataTile;->TAG:Ljava/lang/String;

    const-string v4, "Active SIM only ONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v3, v5

    .line 205
    goto :goto_1

    .line 215
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsAirPlaneMode:Z

    if-eqz v3, :cond_4

    .line 216
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0412

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 219
    :cond_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState(Ljava/lang/Object;)V

    .line 220
    iget v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDataPhoneId:I

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->setDataPhoneId(I)V

    .line 221
    iput-boolean v5, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsSwitchReady:Z

    .line 222
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState()V

    .line 223
    iget v3, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDataPhoneId:I

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->setSettingDefaultDataPhoneId(I)V

    goto :goto_0

    .line 228
    :cond_5
    const v2, 0x7f0d03f9

    .line 229
    .local v2, "titleId":I
    const v1, 0x7f0d03fa

    .line 230
    .local v1, "msgId":I
    const v0, 0x104000a

    .line 231
    .local v0, "button1Id":I
    invoke-direct {p0, v2, v1, v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->showNoSimDialog(III)V

    goto :goto_0
.end method

.method protected handleLongClick()V
    .locals 3

    .prologue
    .line 237
    sget-object v1, Lcom/android/systemui/qs/tiles/DefaultDataTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLongClick()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 240
    :cond_0
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$DataSlotChoice"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->startActivityDismissingKeyguard(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 263
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 264
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 265
    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 266
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->secondaryLabel:Ljava/lang/String;

    .line 268
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d02ce

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 269
    iget v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDataPhoneId:I

    if-ne v1, v3, :cond_1

    .line 270
    const v1, 0x7f02037a

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 276
    :goto_1
    iget v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDataPhoneId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 277
    iput v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->bgValue:I

    .line 281
    :goto_2
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->makeContentDescription(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 282
    return-void

    .line 263
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->getQSTileMultiState()I

    move-result v0

    goto :goto_0

    .line 273
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :cond_1
    const v1, 0x7f020379

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_1

    .line 279
    :cond_2
    const/4 v1, 0x2

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->bgValue:I

    goto :goto_2
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 56
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    const/4 v3, 0x0

    .line 169
    if-eqz p1, :cond_0

    .line 170
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 171
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v1, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v1, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v1, "com.samsung.net.conn.SwitchDataNetworkDuringVoiceCall"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v1, "com.samsung.net.conn.SwitchDataNetworkDuringMMS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v1, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 185
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 186
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mMobileDataSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 187
    return-void

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
