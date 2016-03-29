.class public Lcom/android/systemui/qs/tiles/WifiHotspotTile;
.super Lcom/android/systemui/qs/QSTile;
.source "WifiHotspotTile.java"


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
.field private static final EXTRA_AP_STATE:Ljava/lang/String; = "wifi_state"

.field private static final EXTRA_CALLED_DIALOG:Ljava/lang/String; = "called_dialog"

.field private static final INFO_TYPE_DPM_HOTSPOT:I = 0x3

.field private static final KEY_LAST_USED_DATE:Ljava/lang/String; = "lastUsedDate"

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HotspotTile"

.field private static final WIFIAP_ENABLE_WARNING:Ljava/lang/String; = "com.samsung.android.intent.action.WIFI_AP_ENABLE_WARNING"

.field private static final WIFI_AP_SAVED_STATE:Ljava/lang/String; = "wifi_ap_saved_state"

.field private static final WIFI_AP_STATE_DISABLED:I = 0xb

.field private static final WIFI_AP_STATE_DISABLING:I = 0xa

.field private static final WIFI_AP_STATE_ENABLED:I = 0xd

.field private static final WIFI_AP_STATE_ENABLING:I = 0xc

.field private static final WIFI_AP_STATE_FAILED:I = 0xe

.field private static final WIFI_DIALOG_ENABLING_HOTSPOT:I = 0x2

.field private static final WIFI_SAVED_STATE:Ljava/lang/String; = "wifi_saved_state"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAttentionDialog:Landroid/app/AlertDialog;

.field private mDefaultSSIDPwd:Ljava/lang/String;

.field private mDefaultSecurity:Ljava/lang/String;

.field private mErrorMsgId:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private final mShopDemoSetting:Lcom/android/systemui/qs/SecureSetting;

.field private final mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

.field private mWifiHotspotEnabled:Z

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 103
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DefaultSsidNPwd"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mDefaultSSIDPwd:Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_UseDefaultSecurityAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mDefaultSecurity:Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mWifiHotspotEnabled:Z

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mErrorMsgId:I

    .line 510
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile$12;-><init>(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    new-instance v0, Lcom/android/systemui/qs/UsageTracker;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSTile$Host;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "HotspotTileLastUsed"

    const-class v3, Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    const v4, 0x7f0f003d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/qs/UsageTracker;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    .line 116
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/WifiHotspotTile$1;-><init>(Lcom/android/systemui/qs/tiles/WifiHotspotTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 122
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "shopdemo"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/WifiHotspotTile$2;-><init>(Lcom/android/systemui/qs/tiles/WifiHotspotTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mShopDemoSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/WifiHotspotTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->showWarningDialog(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/WifiHotspotTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/qs/tiles/WifiHotspotTile;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/WifiHotspotTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/WifiHotspotTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->isWifiSharingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/WifiHotspotTile;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->updateTetherState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/WifiHotspotTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/WifiHotspotTile;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->setMode(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState()V

    return-void
.end method

.method private isBlockedByEdmPolicy()Z
    .locals 5

    .prologue
    .line 500
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v3, "isWifiTetheringEnabled"

    sget-object v4, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->selectionArgsFalse:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->isBlockedEdmUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    :cond_0
    const/4 v0, 0x1

    .line 506
    .local v0, "ret":Z
    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "HotspotTile"

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

    .line 507
    :cond_1
    return v0

    .line 504
    .end local v0    # "ret":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private isP2pConnected()Z
    .locals 7

    .prologue
    .line 629
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 631
    .local v2, "mgnr":Landroid/net/ConnectivityManager;
    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 632
    .local v3, "netInfo":Landroid/net/NetworkInfo;
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 633
    .local v1, "isP2PConnected":Z
    const-string v4, "HotspotTile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isP2PConnected : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    .end local v1    # "isP2PConnected":Z
    .end local v2    # "mgnr":Landroid/net/ConnectivityManager;
    .end local v3    # "netInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v1

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v4, "HotspotTile"

    const-string v5, "isP2pConnected - NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWifiSharingEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 643
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_ap_wifi_sharing"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 644
    const-string v3, "HotspotTile"

    const-string v4, "Wifi Sharing Enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :goto_0
    return v1

    .line 646
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_ap_wifi_sharing"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 647
    const-string v1, "HotspotTile"

    const-string v3, "Wifi Sharing Not Enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 648
    goto :goto_0

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e1":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "HotspotTile"

    const-string v3, "Provider is not defined returning false"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    move v1, v2

    .line 653
    goto :goto_0
.end method

.method private setMode(I)V
    .locals 9
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v8, -0x2

    const/4 v4, 0x1

    .line 303
    const/4 v2, 0x0

    .line 304
    .local v2, "wifiState":I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 305
    .local v0, "mgr":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 311
    const-string v3, "HotspotTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsUSAQsMsg:Z

    if-eqz v3, :cond_1

    if-ne p1, v4, :cond_1

    .line 318
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.intent.action.WIFI_AP_ENABLE_WARNING"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 319
    const-string v3, "HotspotTile"

    const-string v4, "send WIFIAP_ENABLE_WARNING for USA"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    if-ne p1, v4, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->isWifiSharingEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 322
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 324
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v3, "wifi_saved_state"

    invoke-static {v1, v3, p1, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 325
    const-string v3, "wifi_ap_saved_state"

    invoke-static {v1, v3, p1, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 326
    const-string v3, "HotspotTile"

    const-string v4, "setMode :wifi should be disable"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 329
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_3
    const/4 v6, 0x0

    if-ne p1, v4, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v0, v6, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 330
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->isWifiSharingEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 331
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "wifi_saved_state"

    invoke-static {v3, v6, v5, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 332
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    new-instance v4, Lcom/android/systemui/qs/tiles/WifiHotspotTile$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile$3;-><init>(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V

    const-wide/16 v6, 0x258

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/systemui/qs/QSTile$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    move v3, v5

    .line 329
    goto :goto_1
.end method

.method private showBatteryUsageWarningDialog(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 430
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0392

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0391

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/systemui/qs/tiles/WifiHotspotTile$10;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/qs/tiles/WifiHotspotTile$10;-><init>(Lcom/android/systemui/qs/tiles/WifiHotspotTile;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/systemui/qs/tiles/WifiHotspotTile$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile$9;-><init>(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/WifiHotspotTile$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile$8;-><init>(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    .line 458
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/systemui/qs/tiles/WifiHotspotTile$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile$11;-><init>(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 465
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 466
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    .line 467
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 468
    return-void
.end method

.method private showNoSIMDialog()V
    .locals 4

    .prologue
    .line 592
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    :goto_0
    return-void

    .line 596
    :cond_0
    const v0, 0x7f0d0438

    .line 597
    .local v0, "nosimPopupMsg":I
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseWifiTetheingPopupForJPN:Z

    if-eqz v1, :cond_1

    .line 598
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseWifiTetheingPopupForDCM:Z

    if-eqz v1, :cond_2

    .line 599
    const v0, 0x7f0d043b

    .line 603
    :cond_1
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseWifiTetheingPopupForJPN:Z

    if-eqz v1, :cond_3

    const v1, 0x7f0d0439

    :goto_2
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/systemui/qs/tiles/WifiHotspotTile$13;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile$13;-><init>(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 614
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/systemui/qs/tiles/WifiHotspotTile$14;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile$14;-><init>(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 620
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 621
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    .line 622
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 601
    :cond_2
    const v0, 0x7f0d043a

    goto :goto_1

    .line 603
    :cond_3
    const v1, 0x7f0d0437

    goto :goto_2
.end method

.method private showWarningDialog(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    const-string v1, "HotspotTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showWarningDialog(): mAlertDialog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :goto_0
    return-void

    .line 385
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mIsChinaQsMsg:Z

    if-eqz v1, :cond_2

    const v0, 0x7f0d038b

    .line 389
    .local v0, "stringId":I
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->isWifiSharingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->isP2pConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mIsChinaQsMsg:Z

    if-eqz v1, :cond_4

    const v0, 0x7f0d0390

    .line 394
    :cond_1
    :goto_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/systemui/qs/tiles/WifiHotspotTile$6;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/qs/tiles/WifiHotspotTile$6;-><init>(Lcom/android/systemui/qs/tiles/WifiHotspotTile;Z)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/systemui/qs/tiles/WifiHotspotTile$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile$5;-><init>(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/tiles/WifiHotspotTile$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile$4;-><init>(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 417
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/systemui/qs/tiles/WifiHotspotTile$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile$7;-><init>(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 424
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 425
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    .line 426
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 385
    .end local v0    # "stringId":I
    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseWifiTetheingLabelForJPN:Z

    if-eqz v1, :cond_3

    const v0, 0x7f0d038c

    goto :goto_1

    :cond_3
    const v0, 0x7f0d038a

    goto :goto_1

    .line 391
    .restart local v0    # "stringId":I
    :cond_4
    const v0, 0x7f0d038f

    goto :goto_2
.end method

.method private updateTetherState(Landroid/content/Intent;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 348
    const/4 v13, 0x0

    .line 349
    .local v13, "tethered":Z
    const/4 v5, 0x0

    .line 351
    .local v5, "errored":Z
    const-string v14, "activeArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 352
    .local v3, "arrayActiveTether":[Ljava/lang/Object;
    const-string v14, "erroredArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 354
    .local v4, "arrayErroredTether":[Ljava/lang/Object;
    move-object v1, v3

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v7, v6

    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v10, v1, v7

    .local v10, "o":Ljava/lang/Object;
    move-object v12, v10

    .line 355
    check-cast v12, Ljava/lang/String;

    .line 356
    .local v12, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mWifiRegexs:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_1
    if-ge v6, v9, :cond_1

    aget-object v11, v2, v6

    .line 357
    .local v11, "regex":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 358
    const/4 v13, 0x1

    .line 356
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 354
    .end local v11    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_0

    .line 362
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v9    # "len$":I
    .end local v10    # "o":Ljava/lang/Object;
    .end local v12    # "s":Ljava/lang/String;
    :cond_2
    move-object v1, v4

    .restart local v1    # "arr$":[Ljava/lang/Object;
    array-length v8, v1

    .restart local v8    # "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    move v7, v6

    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .restart local v7    # "i$":I
    :goto_2
    if-ge v7, v8, :cond_5

    aget-object v10, v1, v7

    .restart local v10    # "o":Ljava/lang/Object;
    move-object v12, v10

    .line 363
    check-cast v12, Ljava/lang/String;

    .line 364
    .restart local v12    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mWifiRegexs:[Ljava/lang/String;

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v9, v2

    .restart local v9    # "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_3
    if-ge v6, v9, :cond_4

    aget-object v11, v2, v6

    .line 365
    .restart local v11    # "regex":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 366
    const/4 v5, 0x1

    .line 364
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 362
    .end local v11    # "regex":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_2

    .line 371
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v9    # "len$":I
    .end local v10    # "o":Ljava/lang/Object;
    .end local v12    # "s":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mWifiHotspotEnabled:Z

    .line 372
    if-eqz v13, :cond_6

    .line 373
    const-string v14, "HotspotTile"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateTetherState(): hotspot is enabled  = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mWifiHotspotEnabled:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState()V

    .line 376
    :cond_6
    const-string v14, "HotspotTile"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateTetherState():"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mWifiHotspotEnabled:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 3

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v1, v0, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->makeContentDescription(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActionMsgOnCover()Ljava/lang/String;
    .locals 3

    .prologue
    .line 725
    iget v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mErrorMsgId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 726
    const-string v1, ""

    .line 734
    :goto_0
    return-object v1

    .line 729
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mErrorMsgId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, "message":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 732
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 734
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public getActionTypeOnCover()I
    .locals 7

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 669
    new-array v0, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "false"

    aput-object v6, v0, v5

    .line 674
    .local v0, "selectionArgs":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->isBlockedByEdmPolicy()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 675
    const-string v3, "HotspotTile"

    const-string v4, "onClick(): WiFiHotspot state change is not allowed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const v3, 0x1040b79

    iput v3, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mErrorMsgId:I

    .line 719
    :goto_0
    return v2

    .line 679
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v5}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v5

    if-eqz v5, :cond_1

    .line 680
    const v3, 0x7f0d038e

    iput v3, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mErrorMsgId:I

    goto :goto_0

    .line 691
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 692
    .local v1, "wifiMgr":Landroid/net/wifi/WifiManager;
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSimReady()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_2

    .line 697
    const v3, 0x7f0d03fa

    iput v3, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mErrorMsgId:I

    goto :goto_0

    .line 703
    :cond_2
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mIsUSAQsMsg:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v2, v4, :cond_3

    move v2, v3

    .line 704
    goto :goto_0

    .line 707
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 708
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v2, v4, :cond_5

    move v2, v3

    .line 709
    goto :goto_0

    .line 712
    :cond_4
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    if-eq v2, v3, :cond_5

    move v2, v3

    .line 713
    goto :goto_0

    .line 716
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v2, v3, :cond_6

    move v2, v4

    .line 717
    goto :goto_0

    :cond_6
    move v2, v3

    .line 719
    goto :goto_0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 298
    const/16 v0, 0x78

    return v0
.end method

.method public getUnlockTypeInSecure()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method protected handleClick()V
    .locals 11

    .prologue
    const v7, 0x7f0d0437

    const/4 v10, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 169
    const-string v8, "HotspotTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleClick : "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v8, 0x2

    if-ne v4, v8, :cond_2

    move v2, v5

    .line 173
    .local v2, "state":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mShopDemoSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v4

    if-eq v4, v5, :cond_0

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mDisableInLDUDevice:Z

    if-eqz v4, :cond_5

    .line 174
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 175
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mUseWifiTetheingLabelForJPN:Z

    if-eqz v4, :cond_3

    const v4, 0x7f0d0439

    :goto_1
    invoke-virtual {v8, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "label":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    const v7, 0x7f0d0422

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v1, v7, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 264
    .end local v0    # "label":Ljava/lang/String;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    :goto_2
    return-void

    .end local v2    # "state":Z
    :cond_2
    move v2, v6

    .line 171
    goto :goto_0

    .line 175
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v2    # "state":Z
    :cond_3
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mUseWifiTetheingLabelForVZW:Z

    if-eqz v4, :cond_4

    move v4, v7

    goto :goto_1

    :cond_4
    move v4, v7

    goto :goto_1

    .line 185
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 186
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 189
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 191
    .local v3, "wifiMgr":Landroid/net/wifi/WifiManager;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v7, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 192
    if-eqz v2, :cond_7

    .line 193
    invoke-direct {p0, v5}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->showBatteryUsageWarningDialog(Z)V

    goto :goto_2

    .line 197
    :cond_6
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    if-eq v4, v5, :cond_7

    .line 198
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->showWarningDialog(Z)V

    goto :goto_2

    .line 203
    :cond_7
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->handleRefreshState(Ljava/lang/Object;)V

    .line 204
    if-eqz v2, :cond_8

    :goto_3
    invoke-direct {p0, v5}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->setMode(I)V

    goto :goto_2

    :cond_8
    move v5, v6

    goto :goto_3

    .line 208
    .end local v3    # "wifiMgr":Landroid/net/wifi/WifiManager;
    :cond_9
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v4, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSButtonOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->isBlockedByEdmPolicy()Z

    move-result v4

    if-nez v4, :cond_1

    .line 212
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v4, v10, :cond_a

    .line 213
    const-string v5, "HotspotTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleClick : already Clicked state =   "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v4, v4, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 218
    :cond_a
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v4

    if-eqz v4, :cond_b

    .line 219
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    const v5, 0x7f0d038e

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 223
    :cond_b
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->getMetricsCategory()I

    move-result v7

    invoke-static {v4, v7, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 226
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isNoSimState()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 227
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->showNoSIMDialog()V

    goto/16 :goto_2

    .line 229
    :cond_c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v7, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 230
    if-eqz v2, :cond_11

    .line 231
    invoke-direct {p0, v5}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->showBatteryUsageWarningDialog(Z)V

    goto/16 :goto_2

    .line 234
    :cond_d
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mIsUSAQsMsg:Z

    if-eqz v4, :cond_f

    .line 235
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->handleRefreshState(Ljava/lang/Object;)V

    .line 236
    if-eqz v2, :cond_e

    :goto_4
    invoke-direct {p0, v5}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->setMode(I)V

    goto/16 :goto_2

    :cond_e
    move v5, v6

    goto :goto_4

    .line 239
    :cond_f
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 245
    .restart local v3    # "wifiMgr":Landroid/net/wifi/WifiManager;
    const-string v4, "HotspotTile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wifiMgr.getWifiState() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    if-eq v4, v5, :cond_11

    .line 248
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->isWifiSharingEnabled()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 250
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->isP2pConnected()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 251
    const-string v4, "HotspotTile"

    const-string v5, "STA Concurrency - P2P is connected and showing disconnect pop up"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->showWarningDialog(Z)V

    goto/16 :goto_2

    .line 256
    :cond_10
    const-string v4, "HotspotTile"

    const-string v5, "handleClick : showWarningDialog"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->showWarningDialog(Z)V

    goto/16 :goto_2

    .line 262
    .end local v3    # "wifiMgr":Landroid/net/wifi/WifiManager;
    :cond_11
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->handleRefreshState(Ljava/lang/Object;)V

    .line 263
    if-eqz v2, :cond_12

    :goto_5
    invoke-direct {p0, v5}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->setMode(I)V

    goto/16 :goto_2

    :cond_12
    move v5, v6

    goto :goto_5
.end method

.method public handleLongClick()V
    .locals 7

    .prologue
    const v2, 0x7f0d0437

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 478
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mShopDemoSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v3

    if-eq v3, v6, :cond_0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mDisableInLDUDevice:Z

    if-eqz v3, :cond_4

    .line 479
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 480
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mUseWifiTetheingLabelForJPN:Z

    if-eqz v4, :cond_3

    const v2, 0x7f0d0439

    :cond_1
    :goto_0
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "label":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0422

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 496
    .end local v0    # "label":Ljava/lang/String;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_2
    :goto_1
    return-void

    .line 480
    .restart local v1    # "res":Landroid/content/res/Resources;
    :cond_3
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mUseWifiTetheingLabelForVZW:Z

    if-eqz v4, :cond_1

    goto :goto_0

    .line 489
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->isBlockedByEdmPolicy()Z

    move-result v2

    if-nez v2, :cond_2

    .line 491
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v2

    if-eqz v2, :cond_5

    .line 492
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0d038e

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 495
    :cond_5
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.wifi.mobileap.WifiApSettings"

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->startActivityDismissingKeyguard(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->handleLongClick()V

    .line 473
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 268
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 269
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseWifiTetheingLabelForJPN:Z

    if-eqz v1, :cond_2

    const v1, 0x7f0d02bb

    :goto_0
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 272
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mShopDemoSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v1

    if-eq v1, v2, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mDisableInLDUDevice:Z

    if-eqz v1, :cond_4

    .line 273
    :cond_0
    const/4 v1, 0x3

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 280
    .end local p2    # "arg":Ljava/lang/Object;
    :goto_1
    const-string v2, "HotspotTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateState :mState.value =  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const v0, 0x7f02038f

    .line 282
    .local v0, "iconId":I
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseWFCQsIconForVZW:Z

    if-eqz v1, :cond_1

    .line 283
    const v0, 0x7f020387

    .line 284
    :cond_1
    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 285
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    iget v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->makeContentDescription(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 286
    return-void

    .line 269
    .end local v0    # "iconId":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseWifiTetheingLabelForVZW:Z

    if-eqz v1, :cond_3

    const v1, 0x7f0d02ba

    goto :goto_0

    :cond_3
    const v1, 0x7f0d02b9

    goto :goto_0

    .line 275
    :cond_4
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 276
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_1

    .line 278
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mWifiHotspotEnabled:Z

    if-eqz v1, :cond_6

    move v1, v2

    :goto_2
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_1

    :cond_6
    const/4 v1, 0x2

    goto :goto_2
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 73
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    .line 139
    if-eqz p1, :cond_1

    .line 140
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v2, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mIsUSAQsMsg:Z

    if-eqz v2, :cond_0

    .line 148
    const-string v2, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    :cond_0
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 153
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mWifiRegexs:[Ljava/lang/String;

    .line 158
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 159
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mUsageTracker:Lcom/android/systemui/qs/UsageTracker;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/UsageTracker;->setListening(Z)V

    .line 160
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mShopDemoSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 161
    return-void

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;

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

.method public userSwitch(I)V
    .locals 2
    .param p1, "newUserId"    # I

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->onChange(Z)V

    .line 589
    return-void
.end method
