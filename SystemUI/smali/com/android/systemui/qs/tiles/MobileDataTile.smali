.class public Lcom/android/systemui/qs/tiles/MobileDataTile;
.super Lcom/android/systemui/qs/QSTile;
.source "MobileDataTile.java"


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
.field private static final DB_MOBILE_DATA:Ljava/lang/String; = "mobile_data"

.field private static final DB_ROAMING_DATA:Ljava/lang/String; = "data_roaming"

.field private static final MSGID_DATA_OFF:I = 0x1

.field private static final MSGID_DATA_OFF_KOR:I = 0x2

.field private static final MSGID_DATA_ON_KOR:I = 0x3

.field private static final MSGID_NO_SIM:I = 0x6

.field private static final MSGID_NULL:I = 0x0

.field private static final MSGID_ROAMING_CTC:I = 0x5

.field private static final MSGID_ROAMING_DATA_ON_KOR:I = 0x4

.field private static final NONE:I = -0x1

.field private static final SLOT0:I = 0x0

.field private static final SLOT1:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mClickedTime:J

.field private mErrorMsgId:I

.field private mIsAirPlaneMode:Z

.field private mIsDataEnabled:Z

.field private mIsRoamingDataEnabled:Z

.field private mMSimPSListner:[Landroid/telephony/PhoneStateListener;

.field private final mMobileDataSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mNewPhonId:I

.field private mPhoneCnt:I

.field private mPhoneId:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPopupMsgId:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRoamingDataSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private final mShopDemoSetting:Lcom/android/systemui/qs/SecureSetting;

.field private mTM:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 7
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 167
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 79
    iput v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneId:I

    .line 80
    iget v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneId:I

    iput v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mNewPhonId:I

    .line 82
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    .line 84
    iput v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneCnt:I

    .line 86
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsRoamingDataEnabled:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsAirPlaneMode:Z

    .line 91
    iput v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPopupMsgId:I

    .line 94
    iput v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgId:I

    .line 96
    new-instance v3, Lcom/android/systemui/qs/tiles/MobileDataTile$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$1;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 217
    new-instance v3, Lcom/android/systemui/qs/tiles/MobileDataTile$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$6;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 169
    new-instance v3, Lcom/android/systemui/qs/tiles/MobileDataTile$2;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "mobile_data"

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/MobileDataTile$2;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileDataSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 180
    new-instance v3, Lcom/android/systemui/qs/tiles/MobileDataTile$3;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "airplane_mode_on"

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/MobileDataTile$3;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 190
    new-instance v3, Lcom/android/systemui/qs/tiles/MobileDataTile$4;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "data_roaming"

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/MobileDataTile$4;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mRoamingDataSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 201
    new-instance v3, Lcom/android/systemui/qs/tiles/MobileDataTile$5;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v6, "shopdemo"

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/systemui/qs/tiles/MobileDataTile$5;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mShopDemoSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 209
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsAirPlaneMode:Z

    .line 210
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->getMobileDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    .line 212
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->registerPhoneStateListener()V

    .line 214
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    iput v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneId:I

    .line 215
    return-void

    :cond_0
    move v0, v1

    .line 209
    goto :goto_0

    .line 214
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getDefaultDataPhoneId()I

    move-result v0

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->registerPhoneStateListener()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/MobileDataTile;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(IIII)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsAirPlaneMode:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/MobileDataTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPopupMsgId:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setRoamingDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/MobileDataTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneId:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/tiles/MobileDataTile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->updateState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/MobileDataTile;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->unregisterPhoneStateListener()V

    return-void
.end method

.method private getDefaultDataPhoneId()I
    .locals 4

    .prologue
    .line 735
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    .line 736
    .local v0, "phoneId":I
    sget-object v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultDataReady:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    return v0
.end method

.method private getMobilDataMState()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 441
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isNoSimState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    :cond_0
    :goto_0
    return v0

    .line 445
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsAirPlaneMode:Z

    if-nez v1, :cond_0

    .line 446
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isBlockedByEdmPolicy()Z
    .locals 5

    .prologue
    .line 401
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v3, "isCellularDataAllowed"

    sget-object v4, Lcom/android/systemui/qs/tiles/MobileDataTile;->selectionArgsFalse:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isBlockedEdmUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 403
    :cond_0
    const/4 v0, 0x1

    .line 407
    .local v0, "ret":Z
    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBlockedByEdmPolicy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_1
    return v0

    .line 405
    .end local v0    # "ret":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private isDataRoaming()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 709
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseRoamingDataForKOR:Z

    if-nez v2, :cond_1

    .line 726
    :cond_0
    :goto_0
    return v3

    .line 712
    :cond_1
    const/4 v1, 0x0

    .line 713
    .local v1, "isOversea":Z
    const-string v2, "ril.currentplmn"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, "currentPlmn":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_2

    .line 715
    sget-object v2, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    const-string v4, "isDataRoaming : mTM == null "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    .line 719
    :cond_2
    if-nez v0, :cond_3

    .line 720
    sget-object v2, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    const-string v4, "isDataRoaming : currentPlmn null "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 723
    :cond_3
    const-string v2, "oversea"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 724
    sget-object v2, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDataRoaming : isNetworkRoaming :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " currentplmn :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " oversea = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1
.end method

.method private registerPhoneStateListener()V
    .locals 5

    .prologue
    .line 627
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->getNumberOfSim(Landroid/content/Context;)I

    move-result v1

    .line 628
    .local v1, "simCount":I
    sget-object v2, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerPhoneStateListener: mSimCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    .line 631
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    .line 632
    const/4 v0, 0x1

    .line 633
    .local v0, "listen":I
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mDisableMobileDataDuringVolteCall:Z

    if-eqz v2, :cond_0

    .line 634
    or-int/lit16 v0, v0, 0x800

    .line 635
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 637
    .end local v0    # "listen":I
    :cond_1
    return-void
.end method

.method private setDataRoaming(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    .line 607
    sget-object v4, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataRoaming() enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    if-eqz p1, :cond_1

    .line 609
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mShowRoamingPopupForKOO:Z

    if-eqz v4, :cond_0

    .line 610
    const v3, 0x7f0d02c4

    .line 611
    .local v3, "title":I
    const v0, 0x104000a

    .line 612
    .local v0, "button1":I
    const/high16 v1, 0x1040000

    .line 613
    .local v1, "button2":I
    const v2, 0x7f0d041d

    .line 614
    .local v2, "msg":I
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPopupMsgId:I

    .line 615
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(IIII)V

    .line 624
    .end local v0    # "button1":I
    .end local v1    # "button2":I
    .end local v2    # "msg":I
    .end local v3    # "title":I
    :goto_0
    return-void

    .line 617
    :cond_0
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    .line 618
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 619
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SKT_ROAMING_DATA_POPUP"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 622
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setRoamingDataEnabled(Z)V

    goto :goto_0
.end method

.method private setDataSlot(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 593
    return-void
.end method

.method private setMobileData(Z)V
    .locals 10
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 458
    sget-object v7, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMobileData() enabled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mShowMobileDataOffPopup:Z

    if-nez v7, :cond_0

    if-nez p1, :cond_0

    .line 460
    sget-object v6, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    const-string v7, "NOT Show MobileData Off-popup"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V

    .line 529
    :goto_0
    return-void

    .line 465
    :cond_0
    const v5, 0x7f0d040f

    .line 466
    .local v5, "title":I
    const v0, 0x104000a

    .line 467
    .local v0, "button1":I
    const/high16 v1, 0x1040000

    .line 468
    .local v1, "button2":I
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mShow1stRoamingPopupForCTC:Z

    if-eqz v7, :cond_5

    .line 469
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "EverPoppedUp"

    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 470
    .local v2, "checkedRoamingOn":I
    const-string v7, "true"

    const-string v8, "gsm.operator.isroaming"

    const-string v9, "false"

    invoke-static {v8, v3, v9}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "true"

    const-string v8, "gsm.operator.isroaming"

    const-string v9, "false"

    invoke-static {v8, v6, v9}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    move v3, v6

    .line 472
    .local v3, "isRoaming":Z
    :cond_2
    if-eqz p1, :cond_4

    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    .line 473
    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    .line 474
    sget-object v7, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkedRoamingOn (CTC): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "EverPoppedUp"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 478
    invoke-direct {p0, v6}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V

    .line 480
    :cond_3
    const v4, 0x7f0d0414

    .line 481
    .local v4, "msg":I
    const v0, 0x7f0d0415

    .line 482
    const/4 v1, 0x0

    .line 483
    const/4 v6, 0x5

    iput v6, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPopupMsgId:I

    .line 484
    invoke-direct {p0, v5, v4, v0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(IIII)V

    goto :goto_0

    .line 486
    .end local v4    # "msg":I
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V

    goto :goto_0

    .line 488
    .end local v2    # "checkedRoamingOn":I
    .end local v3    # "isRoaming":Z
    :cond_5
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseRoamingDataForKOR:Z

    if-eqz v7, :cond_9

    .line 489
    if-nez p1, :cond_7

    .line 490
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPopupMsgId:I

    .line 491
    const v0, 0x7f0d043d

    .line 493
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mShowMobileDataPopupForLgt:Z

    if-eqz v6, :cond_6

    .line 494
    const v4, 0x7f0d0417

    .line 504
    .restart local v4    # "msg":I
    :goto_1
    invoke-direct {p0, v5, v4, v0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(IIII)V

    goto/16 :goto_0

    .line 496
    .end local v4    # "msg":I
    :cond_6
    const v4, 0x7f0d0416

    .restart local v4    # "msg":I
    goto :goto_1

    .line 498
    .end local v4    # "msg":I
    :cond_7
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPopupMsgId:I

    .line 499
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mShowMobileDataPopupForLgt:Z

    if-eqz v6, :cond_8

    .line 500
    const v4, 0x7f0d0419

    .restart local v4    # "msg":I
    goto :goto_1

    .line 502
    .end local v4    # "msg":I
    :cond_8
    const v4, 0x7f0d0418

    .restart local v4    # "msg":I
    goto :goto_1

    .line 506
    .end local v4    # "msg":I
    :cond_9
    if-eqz p1, :cond_a

    .line 507
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileDataEnabled(Z)V

    goto/16 :goto_0

    .line 509
    :cond_a
    const v5, 0x7f0d040f

    .line 510
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mShowMobileDataPopupForVZW:Z

    if-eqz v7, :cond_c

    .line 511
    const v5, 0x7f0d0410

    .line 512
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/statusbar/DeviceState;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/statusbar/DeviceState;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 513
    const v4, 0x7f0d041b

    .line 523
    .restart local v4    # "msg":I
    :goto_2
    const v0, 0x7f0d043d

    .line 524
    const/high16 v1, 0x1040000

    .line 525
    iput v6, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPopupMsgId:I

    .line 526
    invoke-direct {p0, v5, v4, v0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(IIII)V

    goto/16 :goto_0

    .line 515
    .end local v4    # "msg":I
    :cond_b
    const v4, 0x7f0d041a

    .restart local v4    # "msg":I
    goto :goto_2

    .line 520
    .end local v4    # "msg":I
    :cond_c
    const v4, 0x7f0d0411

    .restart local v4    # "msg":I
    goto :goto_2
.end method

.method private setMobileDataEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 532
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    .line 533
    sget-object v2, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    const-string v3, "MSIM : setMobileDataEnabled : mTM = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :goto_0
    return-void

    .line 544
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 546
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 547
    .local v1, "useSubID":[I
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v0

    .line 548
    .local v0, "subId":I
    sget-object v2, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSIM : setMobileDataEnabled :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 550
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 561
    .end local v0    # "subId":I
    .end local v1    # "useSubID":[I
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    goto :goto_0

    .line 552
    .restart local v0    # "subId":I
    .restart local v1    # "useSubID":[I
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v0

    .line 553
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_1

    .line 555
    .end local v0    # "subId":I
    .end local v1    # "useSubID":[I
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 556
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setRoamingDataEnabled(Z)V

    goto :goto_1

    .line 558
    :cond_3
    sget-object v2, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMobileDataEnabled() enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_1
.end method

.method private setMobileDataEnabledMultiSlot(IZ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "enabled"    # Z

    .prologue
    const/4 v4, 0x0

    .line 565
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 566
    .local v0, "useSubID":[I
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 567
    sget-object v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    const-string v2, "setMobileDataEnabledMultiSlot : mTM = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :goto_0
    return-void

    .line 570
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 572
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 573
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_0

    .line 575
    :cond_1
    if-eqz v0, :cond_3

    .line 576
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 577
    aget v1, v0, v4

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 578
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 583
    :goto_1
    sget-object v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMobileDataEnabledMultiSlot enabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iput p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneId:I

    goto :goto_0

    .line 580
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 581
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    aget v2, v0, v4

    invoke-virtual {v1, v2, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_1

    .line 586
    :cond_3
    sget-object v1, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "useSubID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setRoamingDataEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 596
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mRoamingDataSetting:Lcom/android/systemui/qs/GlobalSetting;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    .line 598
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowRoamingToastForLGT:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 599
    new-instance v0, Landroid/content/Intent;

    const-string v1, "kr.co.uplus.RESTRICT_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 600
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ENABLED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 601
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 602
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0d041e

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 604
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 596
    goto :goto_0
.end method

.method private showPopupDialog(IIII)V
    .locals 3
    .param p1, "title"    # I
    .param p2, "msg"    # I
    .param p3, "button1"    # I
    .param p4, "button2"    # I

    .prologue
    .line 662
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 663
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 664
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 665
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 666
    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$7;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 686
    if-eqz p4, :cond_1

    .line 687
    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$8;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 695
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 696
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 697
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/systemui/qs/tiles/MobileDataTile$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$9;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 703
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    .line 704
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 706
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 3

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 643
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 646
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->getMobileDataEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    .line 647
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 653
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isNoSimState()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_1

    .line 654
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    .line 659
    :goto_0
    return-void

    .line 656
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsAirPlaneMode:Z

    if-nez v2, :cond_2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 658
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsAirPlaneMode:Z

    if-nez v2, :cond_4

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 3

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->makeContentDescription(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActionMsgOnCover()Ljava/lang/String;
    .locals 3

    .prologue
    .line 807
    iget v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 808
    const-string v1, ""

    .line 812
    :goto_0
    return-object v1

    .line 811
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, "message":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public getActionTypeOnCover()I
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x3

    .line 755
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v7, "isCellularDataAllowed"

    sget-object v8, Lcom/android/systemui/qs/tiles/MobileDataTile;->selectionArgsFalse:[Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isBlockedEdmUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 757
    :cond_0
    const v4, 0x1040b7a

    iput v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgId:I

    .line 802
    :cond_1
    :goto_0
    return v1

    .line 762
    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsAirPlaneMode:Z

    if-eqz v5, :cond_3

    .line 763
    const v4, 0x7f0d038e

    iput v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgId:I

    goto :goto_0

    .line 767
    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SIM_CHECK"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    .line 769
    .local v3, "isSupportSimCheck":Z
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSimReady()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v3, :cond_4

    .line 773
    const v4, 0x7f0d03fa

    iput v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgId:I

    goto :goto_0

    .line 779
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/DeviceState;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/DeviceState;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 780
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    const-string v6, "volte"

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 781
    const v4, 0x7f0d0413

    iput v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mErrorMsgId:I

    goto :goto_0

    .line 787
    :cond_5
    const/4 v1, 0x2

    .line 788
    .local v1, "coverAction":I
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mShow1stRoamingPopupForCTC:Z

    if-eqz v5, :cond_8

    .line 789
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "EverPoppedUp"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 790
    .local v0, "checkedRoamingOn":I
    const-string v5, "true"

    const-string v6, "gsm.operator.isroaming"

    const-string v7, "false"

    invoke-static {v6, v2, v7}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "true"

    const-string v6, "gsm.operator.isroaming"

    const-string v7, "false"

    invoke-static {v6, v4, v7}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move v2, v4

    .line 793
    .local v2, "isRoaming":Z
    :cond_7
    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 794
    const/4 v1, 0x1

    goto :goto_0

    .line 797
    .end local v0    # "checkedRoamingOn":I
    .end local v2    # "isRoaming":Z
    :cond_8
    iget-boolean v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    if-eqz v4, :cond_9

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mShowMobileDataOffPopup:Z

    if-nez v4, :cond_a

    :cond_9
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mUseRoamingDataForKOR:Z

    if-eqz v4, :cond_1

    .line 798
    :cond_a
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 453
    const/16 v0, 0x199

    return v0
.end method

.method protected handleClick()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 275
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v7, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v7, v7, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v7, v8, :cond_1

    move v4, v8

    .line 276
    .local v4, "state":Z
    :goto_0
    sget-object v10, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleClick : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v7, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v7, v7, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 286
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v7, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 368
    :cond_0
    :goto_1
    return-void

    .end local v4    # "state":Z
    :cond_1
    move v4, v9

    .line 275
    goto :goto_0

    .line 289
    .restart local v4    # "state":Z
    :cond_2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    .line 290
    if-nez v4, :cond_5

    move v7, v8

    :goto_2
    invoke-direct {p0, v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileData(Z)V

    .line 293
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mShopDemoSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v7}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v7

    if-eq v7, v8, :cond_4

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mDisableInLDUDevice:Z

    if-eqz v7, :cond_6

    .line 294
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 295
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0422

    new-array v8, v8, [Ljava/lang/Object;

    const v11, 0x7f0d040f

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v3, v10, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_5
    move v7, v9

    .line 290
    goto :goto_2

    .line 303
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v7, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v7, v7, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v7, v12, :cond_0

    .line 307
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mShowMobileDataPopupForVZW:Z

    if-eqz v7, :cond_7

    .line 308
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/statusbar/DeviceState;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mTM:Landroid/telephony/TelephonyManager;

    const-string v10, "volte"

    invoke-virtual {v7, v10}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 310
    sget-object v8, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MobileData change is NOT allowed during volteCall : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v7, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v7, v7, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0413

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 316
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isBlockedByEdmPolicy()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 317
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 318
    .local v6, "toastAlert":Landroid/widget/Toast;
    const v7, 0x1040b7a

    invoke-virtual {v6, v7}, Landroid/widget/Toast;->setText(I)V

    .line 319
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 323
    .end local v6    # "toastAlert":Landroid/widget/Toast;
    :cond_8
    iget-boolean v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsAirPlaneMode:Z

    if-eqz v7, :cond_9

    .line 327
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0412

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 333
    :cond_9
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getMetricsCategory()I

    move-result v11

    if-nez v4, :cond_a

    move v7, v8

    :goto_3
    invoke-static {v10, v11, v7}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 334
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V

    .line 335
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSimReady()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 336
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 337
    iget-boolean v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    if-nez v7, :cond_b

    :goto_4
    invoke-direct {p0, v8}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setDataRoaming(Z)V

    goto/16 :goto_1

    :cond_a
    move v7, v9

    .line 333
    goto :goto_3

    :cond_b
    move v8, v9

    .line 337
    goto :goto_4

    .line 356
    :cond_c
    iget-boolean v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z

    if-nez v7, :cond_d

    :goto_5
    invoke-direct {p0, v8}, Lcom/android/systemui/qs/tiles/MobileDataTile;->setMobileData(Z)V

    goto/16 :goto_1

    :cond_d
    move v8, v9

    goto :goto_5

    .line 361
    :cond_e
    const v5, 0x7f0d03f9

    .line 362
    .local v5, "title":I
    const v2, 0x7f0d03fa

    .line 363
    .local v2, "msg":I
    const v0, 0x104000a

    .line 364
    .local v0, "button1":I
    const/4 v1, 0x0

    .line 365
    .local v1, "button2":I
    const/4 v7, 0x6

    iput v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPopupMsgId:I

    .line 366
    invoke-direct {p0, v5, v2, v0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(IIII)V

    goto/16 :goto_1
.end method

.method protected handleLongClick()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 372
    sget-object v2, Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLongClick()"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mShopDemoSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v1

    if-eq v1, v4, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mDisableInLDUDevice:Z

    if-eqz v1, :cond_2

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 376
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0422

    new-array v3, v4, [Ljava/lang/Object;

    const v4, 0x7f0d040f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 397
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_1
    :goto_0
    return-void

    .line 384
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isBlockedByEdmPolicy()Z

    move-result v1

    if-nez v1, :cond_1

    .line 385
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsAirPlaneMode:Z

    if-eqz v1, :cond_3

    .line 386
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0412

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_0

    .line 390
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 391
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mIsLGTQsSettingAct:Z

    if-eqz v1, :cond_4

    .line 392
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$GlobalRoamingSettingsActivity"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->startActivityDismissingKeyguard(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_4
    const-string v1, "com.samsung.settings.T_ROAMING_SETTINGS"

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->startActivityDismissingKeyguard(Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :cond_5
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->startActivityDismissingKeyguard(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 413
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 414
    .local v0, "value":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mShopDemoSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v1

    if-eq v1, v2, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mDisableInLDUDevice:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x3

    .end local v0    # "value":I
    :cond_1
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 415
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 416
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->isDataRoaming()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 417
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d02c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 435
    :goto_1
    const v1, 0x7f020368

    invoke-static {v1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 436
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->makeContentDescription(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 437
    return-void

    .line 413
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getMobilDataMState()I

    move-result v0

    goto :goto_0

    .line 419
    .end local p2    # "arg":Ljava/lang/Object;
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d02c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 57
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 270
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    const/4 v3, 0x0

    .line 238
    if-eqz p1, :cond_2

    .line 239
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 240
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseRoamingDataForKOR:Z

    if-eqz v1, :cond_0

    .line 249
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    :cond_0
    const-string v1, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v1, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v1, "android.net.conn.MOBILE_DATA_ENABLE_POPUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 261
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mAirplaneSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 262
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileDataSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 263
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseRoamingDataForKOR:Z

    if-eqz v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mRoamingDataSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mShopDemoSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 266
    return-void

    .line 258
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
