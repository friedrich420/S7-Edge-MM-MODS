.class public Lcom/samsung/android/share/SShareMoreActions;
.super Ljava/lang/Object;
.source "SShareMoreActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;,
        Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    }
.end annotation


# static fields
.field private static final ACTION_CHANGE_PLAYER:I = 0x65

.field private static final ACTION_MOBILE_PRINT:I = 0x69

.field private static final ACTION_QUICK_CONNECT:I = 0x68

.field private static final ACTION_SCREEN_MIRRORING:I = 0x66

.field private static final ACTION_SCREEN_SHARING:I = 0x67

.field private static final DEBUG:Z = false

.field private static final DISABLE:I = 0x0

.field private static final ENABLE:I = 0x1

.field private static final INTENT_CHANGE_PLAYER:Ljava/lang/String; = "android.intent.action.CHANGE_PLAYER_VIA_EASY_SHARE"

.field private static final INTENT_MOBILE_PRINT:Ljava/lang/String; = "android.intent.action.MOBILE_PRINT_VIA_EASY_SHARE"

.field private static final LIMITED_ENABLE:I = 0x2

.field private static final MAX_FONT_SCALE:F = 1.2f

.field private static final MORE_ACTIONS_KNOX_STATE:Ljava/lang/String; = "more_actions_knox_state"

.field private static final MORE_ACTIONS_PACKAGE_NAME:Ljava/lang/String; = "more_actions_package_name"

.field private static final MORE_ACTIONS_SCREEN_SHARING_MODE:Ljava/lang/String; = "more_actions_screen_sharing_mode"

.field private static final QUICK_CONNECT_ACTION:Ljava/lang/String; = "com.samsung.android.qconnect.action.DEVICE_PICKER"

.field private static final QUICK_CONNECT_EXTRA_HEIGHT:Ljava/lang/String; = "extra_height"

.field private static final QUICK_CONNECT_PKG:Ljava/lang/String; = "com.samsung.android.qconnect"

.field private static final SCREEN_MIRRORING_CLASS:Ljava/lang/String; = "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

.field private static final SCREEN_MIRRORING_EXTRA_DIALOG_ONCE:Ljava/lang/String; = "show_dialog_once"

.field private static final SCREEN_MIRRORING_EXTRA_TAG_WRITE:Ljava/lang/String; = "tag_write_if_success"

.field private static final TAG:Ljava/lang/String; = "SShareMoreActions"


# instance fields
.field private arItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/share/SShareMoreActions$ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private bottomPanelExpaned:Z

.field private defaultTextSize:F

.field private mActivity:Landroid/app/Activity;

.field private mBottomAdapter:Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;

.field private mBottomPanel:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mEnabledShowBtnBg:Z

.field private mFeature:Lcom/samsung/android/share/SShareCommon;

.field private mGridMoreActions:Landroid/widget/GridView;

.field private mLaunchedFromPackage:Ljava/lang/String;

.field private mSharePanelVisibleHeight:I

.field private mWindow:Landroid/view/Window;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/share/SShareCommon;Landroid/view/Window;Ljava/lang/String;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "feature"    # Lcom/samsung/android/share/SShareCommon;
    .param p4, "window"    # Landroid/view/Window;
    .param p5, "referrer"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v1, 0x0

    iput-object v1, p0, wifiManager:Landroid/net/wifi/WifiManager;

    .line 49
    iput-boolean v2, p0, bottomPanelExpaned:Z

    .line 53
    iput v2, p0, mSharePanelVisibleHeight:I

    .line 78
    iput-boolean v2, p0, mEnabledShowBtnBg:Z

    .line 84
    iput-object p1, p0, mActivity:Landroid/app/Activity;

    .line 85
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 86
    iput-object p4, p0, mWindow:Landroid/view/Window;

    .line 87
    iput-object p3, p0, mFeature:Lcom/samsung/android/share/SShareCommon;

    .line 88
    iput-object p5, p0, mLaunchedFromPackage:Ljava/lang/String;

    .line 89
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 90
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_29

    .line 91
    const-string/jumbo v1, "show_button_background"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_29

    .line 92
    iput-boolean v3, p0, mEnabledShowBtnBg:Z

    .line 95
    :cond_29
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/share/SShareMoreActions;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/share/SShareMoreActions;

    .prologue
    .line 38
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/share/SShareMoreActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/share/SShareMoreActions;

    .prologue
    .line 38
    iget-boolean v0, p0, mEnabledShowBtnBg:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/share/SShareMoreActions;)F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/share/SShareMoreActions;

    .prologue
    .line 38
    iget v0, p0, defaultTextSize:F

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/share/SShareMoreActions;F)F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/share/SShareMoreActions;
    .param p1, "x1"    # F

    .prologue
    .line 38
    iput p1, p0, defaultTextSize:F

    return p1
.end method

.method private checkAPConnection()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 255
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 256
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 257
    .local v1, "ni_wifi":Landroid/net/NetworkInfo;
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 259
    .local v2, "ni_wifiDirect":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v4, v5, :cond_29

    :cond_1f
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_2a

    .line 263
    :cond_29
    :goto_29
    return v3

    :cond_2a
    const/4 v3, 0x0

    goto :goto_29
.end method

.method private checkScreenMirroringRunning()Z
    .registers 4

    .prologue
    .line 268
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 270
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->isDLNADeviceConnected()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1d

    .line 272
    :cond_1b
    const/4 v1, 0x1

    .line 274
    :goto_1c
    return v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method private getSharePanelVisibieHeight()I
    .registers 2

    .prologue
    .line 285
    iget v0, p0, mSharePanelVisibleHeight:I

    return v0
.end method

.method private isKnoxMode()Z
    .registers 3

    .prologue
    .line 250
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 251
    .local v0, "userId":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_e

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method


# virtual methods
.method public setMoreActionsView(Landroid/view/ViewGroup;Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 13
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 101
    if-nez p1, :cond_6

    .line 157
    :cond_5
    :goto_5
    return-void

    .line 106
    :cond_6
    const/4 v1, 0x0

    .line 107
    .local v1, "isAPConnected":Z
    const/4 v2, 0x0

    .line 109
    .local v2, "isScreenMirroringRunning":Z
    invoke-direct {p0}, checkAPConnection()Z

    move-result v1

    .line 110
    invoke-direct {p0}, checkScreenMirroringRunning()Z

    move-result v2

    .line 111
    const-string v3, "SShareMoreActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAPConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isScreenMirroringRunning = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iput-object p1, p0, mBottomPanel:Landroid/view/ViewGroup;

    .line 114
    iget-object v3, p0, mBottomPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 115
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, arItem:Ljava/util/ArrayList;

    .line 118
    iget-object v3, p0, mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getChangePlayerEnable()I

    move-result v3

    if-ne v3, v7, :cond_62

    if-eqz v1, :cond_62

    .line 119
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    const/16 v3, 0x65

    const v4, 0x108048c

    iget-object v5, p0, mContext:Landroid/content/Context;

    const v6, 0x10408ca

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(Lcom/samsung/android/share/SShareMoreActions;IILjava/lang/String;)V

    .line 120
    .local v0, "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    :cond_62
    iget-object v3, p0, mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getScreenMirroringEnable()I

    move-result v3

    if-ne v3, v7, :cond_82

    .line 124
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    const/16 v3, 0x66

    const v4, 0x108048e

    iget-object v5, p0, mContext:Landroid/content/Context;

    const v6, 0x10408cb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(Lcom/samsung/android/share/SShareMoreActions;IILjava/lang/String;)V

    .line 125
    .restart local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    :cond_82
    iget-object v3, p0, mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getScreenSharingEnable()I

    move-result v3

    if-eq v3, v7, :cond_93

    iget-object v3, p0, mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getScreenSharingEnable()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a6

    :cond_93
    if-nez v2, :cond_a6

    .line 129
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    const/16 v3, 0x67

    const v4, 0x10806dd

    const-string v5, "Smart View"

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(Lcom/samsung/android/share/SShareMoreActions;IILjava/lang/String;)V

    .line 130
    .restart local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    :cond_a6
    iget-object v3, p0, mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getQuickConnectEnable()I

    move-result v3

    if-ne v3, v7, :cond_c6

    .line 134
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    const/16 v3, 0x68

    const v4, 0x1080693

    iget-object v5, p0, mContext:Landroid/content/Context;

    const v6, 0x10408cd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(Lcom/samsung/android/share/SShareMoreActions;IILjava/lang/String;)V

    .line 135
    .restart local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    :cond_c6
    iget-object v3, p0, mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getPrintEnable()I

    move-result v3

    if-ne v3, v7, :cond_e6

    .line 139
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    const/16 v3, 0x69

    const v4, 0x108048d

    iget-object v5, p0, mContext:Landroid/content/Context;

    const v6, 0x10408ce

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(Lcom/samsung/android/share/SShareMoreActions;IILjava/lang/String;)V

    .line 140
    .restart local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    :cond_e6
    new-instance v3, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;

    iget-object v4, p0, mContext:Landroid/content/Context;

    const v5, 0x1090145

    iget-object v6, p0, arItem:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;-><init>(Lcom/samsung/android/share/SShareMoreActions;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, mBottomAdapter:Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;

    .line 145
    iget-object v3, p0, mWindow:Landroid/view/Window;

    const v4, 0x10204cc

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, mGridMoreActions:Landroid/widget/GridView;

    .line 147
    iget-object v3, p0, mGridMoreActions:Landroid/widget/GridView;

    if-eqz v3, :cond_5

    iget-object v3, p0, arItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 148
    iget-object v3, p0, mGridMoreActions:Landroid/widget/GridView;

    invoke-virtual {v3, v8}, Landroid/widget/GridView;->setVisibility(I)V

    .line 149
    iget-object v3, p0, mGridMoreActions:Landroid/widget/GridView;

    iget-object v4, p0, mBottomAdapter:Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    iget-object v3, p0, mGridMoreActions:Landroid/widget/GridView;

    invoke-virtual {v3, p2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 151
    iget-object v3, p0, arItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v9, :cond_12d

    .line 152
    iget-object v3, p0, mGridMoreActions:Landroid/widget/GridView;

    invoke-virtual {v3, v9}, Landroid/widget/GridView;->setNumColumns(I)V

    goto/16 :goto_5

    .line 154
    :cond_12d
    iget-object v3, p0, mGridMoreActions:Landroid/widget/GridView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    goto/16 :goto_5
.end method

.method public setSharePanelVisibleHeight(I)V
    .registers 2
    .param p1, "pHeight"    # I

    .prologue
    .line 281
    iput p1, p0, mSharePanelVisibleHeight:I

    .line 282
    return-void
.end method

.method public startMoreActions(ILandroid/content/Intent;)V
    .registers 11
    .param p1, "position"    # I
    .param p2, "origIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 165
    iget-object v6, p0, mBottomAdapter:Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;

    invoke-virtual {v6, p1}, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;->getItemActionId(I)I

    move-result v0

    .line 169
    .local v0, "actionID":I
    iget-object v6, p0, mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v6}, Lcom/samsung/android/share/SShareCommon;->getSupportLogging()Z

    move-result v6

    if-ne v6, v7, :cond_20

    .line 171
    new-instance v4, Lcom/samsung/android/share/SShareLogging;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v4, v6, p2}, Lcom/samsung/android/share/SShareLogging;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 173
    .local v4, "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    packed-switch v0, :pswitch_data_e2

    .line 190
    const-string v1, "Wrong ID"

    .line 195
    .local v1, "detailInfo":Ljava/lang/String;
    :goto_1b
    const-string v6, "MORE"

    invoke-virtual {v4, v6, v1}, Lcom/samsung/android/share/SShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .end local v1    # "detailInfo":Ljava/lang/String;
    .end local v4    # "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    :cond_20
    packed-switch v0, :pswitch_data_f0

    .line 248
    :goto_23
    return-void

    .line 175
    .restart local v4    # "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    :pswitch_24
    const-string v1, "Change Player"

    .line 176
    .restart local v1    # "detailInfo":Ljava/lang/String;
    goto :goto_1b

    .line 178
    .end local v1    # "detailInfo":Ljava/lang/String;
    :pswitch_27
    const-string v1, "Screen Mirroring"

    .line 179
    .restart local v1    # "detailInfo":Ljava/lang/String;
    goto :goto_1b

    .line 181
    .end local v1    # "detailInfo":Ljava/lang/String;
    :pswitch_2a
    const-string v1, "Smart View"

    .line 182
    .restart local v1    # "detailInfo":Ljava/lang/String;
    goto :goto_1b

    .line 184
    .end local v1    # "detailInfo":Ljava/lang/String;
    :pswitch_2d
    const-string v1, "Nearby sharing"

    .line 185
    .restart local v1    # "detailInfo":Ljava/lang/String;
    goto :goto_1b

    .line 187
    .end local v1    # "detailInfo":Ljava/lang/String;
    :pswitch_30
    const-string v1, "Print"

    .line 188
    .restart local v1    # "detailInfo":Ljava/lang/String;
    goto :goto_1b

    .line 201
    .end local v1    # "detailInfo":Ljava/lang/String;
    .end local v4    # "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    :pswitch_33
    :try_start_33
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.CHANGE_PLAYER_VIA_EASY_SHARE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "more_actions_package_name"

    iget-object v7, p0, mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_47
    .catch Landroid/content/ActivityNotFoundException; {:try_start_33 .. :try_end_47} :catch_48
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_47} :catch_91

    goto :goto_23

    .line 242
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_48
    move-exception v2

    .line 243
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "SShareMoreActions"

    const-string v7, "MoreActions : ActivityNotFoundException !!! "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 207
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :pswitch_51
    :try_start_51
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "show_dialog_once"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    const-string/jumbo v6, "tag_write_if_success"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 210
    const-string/jumbo v6, "more_actions_package_name"

    iget-object v7, p0, mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string/jumbo v6, "more_actions_screen_sharing_mode"

    iget-object v7, p0, mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v7}, Lcom/samsung/android/share/SShareCommon;->getScreenSharingEnable()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    const-string/jumbo v6, "more_actions_knox_state"

    invoke-direct {p0}, isKnoxMode()Z

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    const/high16 v6, 0x14800000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 220
    iget-object v6, p0, mActivity:Landroid/app/Activity;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_90
    .catch Landroid/content/ActivityNotFoundException; {:try_start_51 .. :try_end_90} :catch_48
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_90} :catch_91

    goto :goto_23

    .line 244
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_91
    move-exception v2

    .line 245
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "SShareMoreActions"

    const-string v7, "MoreActions : Exception !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23

    .line 224
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_9d
    :try_start_9d
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 225
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v6, "com.samsung.android.qconnect"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v6, "com.samsung.android.qconnect.action.DEVICE_PICKER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v6, "extra_height"

    invoke-direct {p0}, getSharePanelVisibieHeight()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    iget-object v6, p0, mActivity:Landroid/app/Activity;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_23

    .line 231
    .end local v3    # "intent":Landroid/content/Intent;
    :pswitch_be
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 232
    .local v5, "stream":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MOBILE_PRINT_VIA_EASY_SHARE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "more_actions_package_name"

    iget-object v7, p0, mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 235
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_df
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9d .. :try_end_df} :catch_48
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_df} :catch_91

    goto/16 :goto_23

    .line 173
    nop

    :pswitch_data_e2
    .packed-switch 0x65
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
    .end packed-switch

    .line 199
    :pswitch_data_f0
    .packed-switch 0x65
        :pswitch_33
        :pswitch_51
        :pswitch_51
        :pswitch_9d
        :pswitch_be
    .end packed-switch
.end method
