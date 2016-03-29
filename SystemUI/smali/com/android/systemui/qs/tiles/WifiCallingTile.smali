.class public Lcom/android/systemui/qs/tiles/WifiCallingTile;
.super Lcom/android/systemui/qs/QSTile;
.source "WifiCallingTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcEnableTask;,
        Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcProvisionedTask;,
        Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcStateObserver;,
        Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final CSC_SPRINT_VOWIFI:Ljava/lang/String; = "CscFeature_Common_EnableSprintExtension"

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field private static final SPR_WFC_APP_PACKAGE_NAME:Ljava/lang/String; = "com.sec.sprint.wfc"

.field private static final TAG:Ljava/lang/String;

.field private static final TRANSITIONING_TO_OFF:I = 0x2

.field private static final TRANSITIONING_TO_ON:I = 0x3

.field private static final VOWIFI_APP:Ljava/lang/String; = "VoWiFi"

.field private static final WFC_APP_PACKAGE_NAME:Ljava/lang/String; = "com.oem.smartwifisupport"

.field private static final WFC_IS_PROVISIONED_CONTENT_URI:Landroid/net/Uri;

.field private static final WFC_STATE_CONTENT_URI:Landroid/net/Uri;

.field private static final WIFI_CALLING_ACTION:Ljava/lang/String; = "com.sec.sprint.wfc.WIFI_CALLING"

.field private static final WIFI_CALLING_AIR_PLANE_MODE_ACTION:Ljava/lang/String; = "com.sec.sprint.wfc.WFC_AIR_PLANE_MODE"

.field private static mSprTileState:Z

.field private static mSprVowifiState:Z


# instance fields
.field private mClickedTime:J

.field private mIsWfcProvisioned:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mTM:Landroid/telephony/TelephonyManager;

.field private mTMStateListener:Landroid/telephony/PhoneStateListener;

.field private mWfcEnabled:Z

.field private mWfcStateObserver:Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcStateObserver;

.field private mWifiCallingObserver:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    const-class v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    .line 298
    const-string v0, "content://com.sec.sprint.wfc.provider/wfc_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WFC_STATE_CONTENT_URI:Landroid/net/Uri;

    .line 299
    const-string v0, "content://com.sec.sprint.wfc.provider/wfc_is_provisioned"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WFC_IS_PROVISIONED_CONTENT_URI:Landroid/net/Uri;

    .line 303
    sput-boolean v1, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSprVowifiState:Z

    .line 304
    sput-boolean v1, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSprTileState:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 75
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 264
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$3;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mTMStateListener:Landroid/telephony/PhoneStateListener;

    .line 275
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiCallingObserver:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWfcProvisioned:Z

    .line 312
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcStateObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcStateObserver;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWfcStateObserver:Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcStateObserver;

    .line 95
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isSprVowifiExist(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSprVowifiState:Z

    .line 97
    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSprVowifiState:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->initSprVowifi()V

    .line 104
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiCallingTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "wifi_call_enable"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile$2;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 116
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWfcEnabled:Z

    .line 117
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWfcEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isWfcProvisioned()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWfcEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->startActivityDismissingKeyguard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->updateWfcState(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->startActivityDismissingKeyguard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/WifiCallingTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->queryWfcState()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->enableWifi()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/WifiCallingTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWfcProvisioned:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWfcProvisioned:Z

    return p1
.end method

.method private enableWifi()V
    .locals 3

    .prologue
    .line 463
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 464
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 466
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 469
    :cond_0
    return-void
.end method

.method private getMode()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, "result":Z
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseWFCQsIconForTMO:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseWFCQsIconForMTR:Z

    if-eqz v2, :cond_2

    .line 228
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegister(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    move-result-object v0

    .line 229
    .local v0, "registerStatus":Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;
    sget-object v2, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    if-ne v0, v2, :cond_1

    move v1, v3

    .line 237
    .end local v0    # "registerStatus":Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;
    :goto_0
    sget-object v2, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return v1

    .restart local v0    # "registerStatus":Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;
    :cond_1
    move v1, v4

    .line 229
    goto :goto_0

    .line 231
    .end local v0    # "registerStatus":Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;
    :cond_2
    sget-boolean v2, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSprVowifiState:Z

    if-eqz v2, :cond_4

    .line 232
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v2, v3, :cond_3

    move v1, v3

    :goto_1
    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_1

    .line 235
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v2

    if-eqz v2, :cond_5

    move v1, v3

    :goto_2
    goto :goto_0

    :cond_5
    move v1, v4

    goto :goto_2
.end method

.method private handleSprVowifiClick()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 415
    sget-object v3, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleClick : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSprTileState:Z

    if-eqz v0, :cond_1

    .line 417
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mIsWfcProvisioned:Z

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcProvisionedTask;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcProvisionedTask;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Lcom/android/systemui/qs/tiles/WifiCallingTile$1;)V

    new-array v1, v1, [Ljava/lang/Boolean;

    sget-boolean v3, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSprTileState:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcProvisionedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 419
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    .line 430
    :goto_0
    return-void

    .line 422
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    const-string v0, "com.sec.sprint.wfc.WFC_AIR_PLANE_MODE"

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->startActivityDismissingKeyguard(Ljava/lang/String;)V

    .line 424
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    goto :goto_0

    .line 428
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getMetricsCategory()I

    move-result v4

    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSprTileState:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 429
    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSprTileState:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->updateWfcState(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 428
    goto :goto_1
.end method

.method private handleSprVowifiLongClick()V
    .locals 3

    .prologue
    .line 433
    sget-object v1, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    const-string v2, "handleLongClick()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :try_start_0
    const-string v1, "com.sec.sprint.wfc.WIFI_CALLING"

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->startActivityDismissingKeyguard(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :goto_0
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v1, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    const-string v2, "Cannot find WfcSettings!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initSprVowifi()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 368
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WFC_STATE_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWfcStateObserver:Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcStateObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 369
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcEnableTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcEnableTask;-><init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Lcom/android/systemui/qs/tiles/WifiCallingTile$1;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcEnableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 370
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    const-string v1, "VoWiFi Quick Button initial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 455
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 456
    .local v0, "state":Z
    :cond_0
    const-string v1, "com.sec.sprint.wfc"

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isPackageEnabled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    const/4 v0, 0x0

    .line 459
    :cond_1
    return v0
.end method

.method private static isPackageEnabled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 481
    const/4 v2, 0x0

    .line 482
    .local v2, "isVoWifiEnabled":Z
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 483
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 485
    :try_start_0
    invoke-virtual {v3, p0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 486
    .local v0, "appState":I
    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 v2, 0x1

    .end local v0    # "appState":I
    :cond_0
    :goto_0
    move v4, v2

    .line 491
    :goto_1
    return v4

    .restart local v0    # "appState":I
    :cond_1
    move v2, v4

    .line 486
    goto :goto_0

    .line 487
    .end local v0    # "appState":I
    :catch_0
    move-exception v1

    .line 488
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_1
.end method

.method public static isSprVowifiExist(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 472
    const-string v0, "com.sec.sprint.wfc"

    invoke-static {v0, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isPackageEnabled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.oem.smartwifisupport"

    invoke-static {v0, p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isPackageEnabled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    :cond_0
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    const-string v1, "vowifi true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v0, 0x1

    .line 477
    :goto_0
    return v0

    .line 476
    :cond_1
    sget-object v0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    const-string v1, "vowifi false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWfcProvisioned()Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 374
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 375
    .local v8, "isProvisioned":Ljava/lang/Boolean;
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WFC_IS_PROVISIONED_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 377
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 379
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 384
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 387
    :cond_1
    :goto_0
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 381
    :catch_0
    move-exception v7

    .line 382
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private queryWfcState()I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 391
    const/4 v8, 0x0

    .line 393
    .local v8, "state":I
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WFC_STATE_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 395
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 397
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 402
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 405
    :cond_1
    :goto_0
    return v8

    .line 399
    :catch_0
    move-exception v7

    .line 400
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private setMode(Z)V
    .locals 7
    .param p1, "mode"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 242
    sget-object v2, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseWFCQsIconForTMO:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseWFCQsIconForMTR:Z

    if-eqz v2, :cond_2

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz p1, :cond_1

    sget-object v2, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    :goto_0
    invoke-static {v3, v2}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->setRegister(Landroid/content/ContentResolver;Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;)V

    .line 261
    :goto_1
    return-void

    .line 244
    :cond_1
    sget-object v2, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->DONT_REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    goto :goto_0

    .line 247
    :cond_2
    sget-boolean v2, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSprVowifiState:Z

    if-eqz v2, :cond_3

    .line 249
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->handleSprVowifiClick()V

    goto :goto_1

    .line 252
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    if-eqz p1, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Lcom/android/systemui/qs/GlobalSetting;->setValue(I)V

    .line 254
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wifi_call_preferred"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 256
    .local v0, "wfcPreferred":I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_wifi_call_enable_broadcast"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v1, "wifiCallIntent":Landroid/content/Intent;
    const-string v2, "wifi_call_enable"

    if-eqz p1, :cond_5

    :goto_3
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    const-string v2, "wifi_call_preferred"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .end local v0    # "wfcPreferred":I
    .end local v1    # "wifiCallIntent":Landroid/content/Intent;
    :cond_4
    move v2, v4

    .line 252
    goto :goto_2

    .restart local v0    # "wfcPreferred":I
    .restart local v1    # "wifiCallIntent":Landroid/content/Intent;
    :cond_5
    move v3, v4

    .line 257
    goto :goto_3
.end method

.method private updateWfcState(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    const/4 v3, 0x0

    .line 443
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 444
    .local v0, "values":Landroid/content/ContentValues;
    const-string v2, "state"

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 445
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/qs/tiles/WifiCallingTile;->WFC_STATE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 446
    return-void

    .line 444
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 3

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->makeContentDescription(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 222
    const/16 v0, 0x1a0

    return v0
.end method

.method protected handleClick()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 152
    sget-object v5, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleClick : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v2, v10, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 158
    .local v0, "currentTime":J
    iget-wide v6, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mClickedTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x1f4

    cmp-long v2, v6, v8

    if-gez v2, :cond_2

    .line 159
    sget-object v2, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    const-string v3, "handleClick() ignored. within 500ms"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    :cond_2
    iput-wide v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mClickedTime:J

    .line 163
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getMetricsCategory()I

    move-result v6

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWfcEnabled:Z

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 166
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    move v2, v3

    :goto_2
    sput-boolean v2, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSprTileState:Z

    .line 168
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState(Ljava/lang/Object;)V

    .line 169
    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWfcEnabled:Z

    if-nez v2, :cond_5

    :goto_3
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->setMode(Z)V

    goto :goto_0

    :cond_3
    move v2, v4

    .line 163
    goto :goto_1

    :cond_4
    move v2, v4

    .line 166
    goto :goto_2

    :cond_5
    move v3, v4

    .line 169
    goto :goto_3
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 410
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 411
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWfcStateObserver:Lcom/android/systemui/qs/tiles/WifiCallingTile$WfcStateObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 412
    return-void
.end method

.method protected handleLongClick()V
    .locals 4

    .prologue
    .line 174
    sget-object v2, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLongClick : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sget-boolean v1, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSprVowifiState:Z

    if-eqz v1, :cond_1

    .line 177
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->handleSprVowifiLongClick()V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseWFCQsIconForTMO:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseWFCQsIconForMTR:Z

    if-eqz v1, :cond_3

    .line 186
    :cond_2
    :try_start_0
    const-string v1, "com.samsung.tmowfc.wfcpref"

    const-string v2, "com.samsung.tmowfc.wfcpref.WfcPrefActivity"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->startActivityDismissingKeyguard(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v1, Lcom/android/systemui/qs/tiles/WifiCallingTile;->TAG:Ljava/lang/String;

    const-string v2, "Cannot find WfcSettings!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.callsettings.WifiCallActivity"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->startActivityDismissingKeyguard(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 197
    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 199
    .local v1, "value":I
    :goto_0
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 200
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 201
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0d02b7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 203
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseWFCQsIconForVZW:Z

    if-eqz v2, :cond_2

    .line 204
    const v0, 0x7f020388

    .line 216
    .local v0, "iconId":I
    :goto_1
    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 217
    iget-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->makeContentDescription(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 218
    return-void

    .line 197
    .end local v0    # "iconId":I
    .end local v1    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->getMode()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 205
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v1    # "value":I
    :cond_2
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseWFCQsIconForTMO:Z

    if-eqz v2, :cond_3

    .line 206
    const v0, 0x7f020383

    .restart local v0    # "iconId":I
    goto :goto_1

    .line 207
    .end local v0    # "iconId":I
    :cond_3
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseWFCQsIconForMTR:Z

    if-eqz v2, :cond_4

    .line 208
    const v0, 0x7f02036f

    .restart local v0    # "iconId":I
    goto :goto_1

    .line 210
    .end local v0    # "iconId":I
    :cond_4
    sget-boolean v2, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSprVowifiState:Z

    if-eqz v2, :cond_5

    .line 211
    const v0, 0x7f020381

    .restart local v0    # "iconId":I
    goto :goto_1

    .line 214
    .end local v0    # "iconId":I
    :cond_5
    const v0, 0x7f020389

    .restart local v0    # "iconId":I
    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 5
    .param p1, "listening"    # Z

    .prologue
    const/4 v3, 0x0

    .line 121
    sget-boolean v1, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSprVowifiState:Z

    if-eqz v1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 124
    :cond_0
    if-eqz p1, :cond_3

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "action_wifi_call_enable_broadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 129
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseWFCQsIconForTMO:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseWFCQsIconForMTR:Z

    if-eqz v1, :cond_2

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mTM:Landroid/telephony/TelephonyManager;

    .line 131
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mTMStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 132
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiCallingObserver:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 142
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    goto :goto_0

    .line 137
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 139
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseWFCQsIconForTMO:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseWFCQsIconForMTR:Z

    if-eqz v1, :cond_2

    .line 140
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mWifiCallingObserver:Lcom/android/systemui/qs/tiles/WifiCallingTile$WifiCallingObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_1
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile;->mState:Lcom/android/systemui/qs/QSTile$State;

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
