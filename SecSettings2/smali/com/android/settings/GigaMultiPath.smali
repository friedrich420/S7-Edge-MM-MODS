.class public Lcom/android/settings/GigaMultiPath;
.super Landroid/app/Fragment;
.source "GigaMultiPath.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;
    }
.end annotation


# instance fields
.field private isMobileDataEnabling:Z

.field private isNetworkEnabling:Z

.field private isWiFiEnabling:Z

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mHoldingHandler:Landroid/os/Handler;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mMptcpStateReceiver:Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;

.field private mRemoveProgress:Ljava/lang/Runnable;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 101
    new-instance v0, Lcom/android/settings/GigaMultiPath$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/GigaMultiPath$1;-><init>(Lcom/android/settings/GigaMultiPath;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/GigaMultiPath;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 109
    new-instance v0, Lcom/android/settings/GigaMultiPath$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/GigaMultiPath$2;-><init>(Lcom/android/settings/GigaMultiPath;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/GigaMultiPath;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 358
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/GigaMultiPath;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GigaMultiPath;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/GigaMultiPath;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GigaMultiPath;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/GigaMultiPath;->isSimValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/GigaMultiPath;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GigaMultiPath;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/GigaMultiPath;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/GigaMultiPath;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GigaMultiPath;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/GigaMultiPath;->mRemoveProgress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/GigaMultiPath;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GigaMultiPath;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/GigaMultiPath;->mHoldingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/GigaMultiPath;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GigaMultiPath;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/GigaMultiPath;->getWiFiState(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/GigaMultiPath;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GigaMultiPath;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/GigaMultiPath;->isTether()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GigaMultiPath;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/GigaMultiPath;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GigaMultiPath;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/settings/GigaMultiPath;->isNetworkEnabling:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/GigaMultiPath;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/GigaMultiPath;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/settings/GigaMultiPath;->isNetworkEnabling:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/GigaMultiPath;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GigaMultiPath;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/settings/GigaMultiPath;->isMobileDataEnabling:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/GigaMultiPath;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/GigaMultiPath;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/settings/GigaMultiPath;->isMobileDataEnabling:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/GigaMultiPath;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GigaMultiPath;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/settings/GigaMultiPath;->isWiFiEnabling:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/GigaMultiPath;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/GigaMultiPath;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/settings/GigaMultiPath;->isWiFiEnabling:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/GigaMultiPath;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/GigaMultiPath;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/GigaMultiPath;->sendMptcpStartBroadCast(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/GigaMultiPath;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GigaMultiPath;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/GigaMultiPath;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/GigaMultiPath;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/GigaMultiPath;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/GigaMultiPath;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private getWiFiState(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 475
    packed-switch p1, :pswitch_data_0

    .line 483
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 477
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 475
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private isSimPresent()Z
    .locals 5

    .prologue
    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "isSimPresent":Z
    iget-object v3, p0, Lcom/android/settings/GigaMultiPath;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 412
    .local v1, "simSlotCount":I
    const/4 v2, 0x0

    .local v2, "slotId":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 413
    iget-object v3, p0, Lcom/android/settings/GigaMultiPath;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 414
    const/4 v0, 0x1

    .line 412
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 417
    :cond_1
    return v0
.end method

.method private isSimValid()Z
    .locals 3

    .prologue
    .line 421
    const/4 v1, 0x0

    .line 423
    .local v1, "isSimValid":Z
    invoke-direct {p0}, Lcom/android/settings/GigaMultiPath;->isSimPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    iget-object v2, p0, Lcom/android/settings/GigaMultiPath;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 426
    const-string v2, "45006"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    const/4 v1, 0x1

    .line 432
    .end local v0    # "imsi":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private isTether()Z
    .locals 19

    .prologue
    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "connectivity"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 444
    .local v5, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v11

    .line 446
    .local v11, "mUsbRegexs":[Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 447
    .local v4, "available":[Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v14

    .line 448
    .local v14, "tethered":[Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v6

    .line 450
    .local v6, "errored":[Ljava/lang/String;
    const/16 v16, 0x0

    .line 451
    .local v16, "usbTethered":Z
    move-object v2, v14

    .local v2, "arr$":[Ljava/lang/String;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move v8, v7

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v13, v2, v8

    .line 452
    .local v13, "s":Ljava/lang/String;
    move-object v3, v11

    .local v3, "arr$":[Ljava/lang/String;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    :goto_1
    if-ge v7, v10, :cond_1

    aget-object v12, v3, v7

    .line 453
    .local v12, "regex":Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v16, 0x1

    .line 452
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 451
    .end local v12    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_0

    .line 456
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v10    # "len$":I
    .end local v13    # "s":Ljava/lang/String;
    :cond_2
    const/4 v15, 0x0

    .line 457
    .local v15, "usbErrored":Z
    move-object v2, v6

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v9, v2

    .restart local v9    # "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    move v8, v7

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .restart local v8    # "i$":I
    :goto_2
    if-ge v8, v9, :cond_5

    aget-object v13, v2, v8

    .line 458
    .restart local v13    # "s":Ljava/lang/String;
    move-object v3, v11

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v10, v3

    .restart local v10    # "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    :goto_3
    if-ge v7, v10, :cond_4

    aget-object v12, v3, v7

    .line 459
    .restart local v12    # "regex":Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    const/4 v15, 0x1

    .line 458
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 457
    .end local v12    # "regex":Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_2

    .line 463
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v10    # "len$":I
    .end local v13    # "s":Ljava/lang/String;
    :cond_5
    const-string v17, "bluetooth.pan.tether_on"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 464
    const/16 v16, 0x1

    .line 467
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GigaMultiPath;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/GigaMultiPath;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v17

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 468
    const/16 v16, 0x1

    .line 471
    :cond_7
    return v16
.end method

.method private registerReceivers()V
    .locals 3

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mMptcpStateReceiver:Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;

    if-nez v1, :cond_0

    .line 229
    new-instance v1, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;

    invoke-direct {v1, p0}, Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;-><init>(Lcom/android/settings/GigaMultiPath;)V

    iput-object v1, p0, Lcom/android/settings/GigaMultiPath;->mMptcpStateReceiver:Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;

    .line 230
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 231
    .local v0, "mptcpIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.mptcp.MPTCP_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/GigaMultiPath;->mMptcpStateReceiver:Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    .end local v0    # "mptcpIntentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private sendMptcpStartBroadCast(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 330
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 331
    .local v0, "mptcpStateIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.mptcp.MPTCP_START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v2, "mptcp_start"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    const-string v1, "GigaMultiPath"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending MPTCP Start Stop broadcast to MPTCP Service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 335
    return-void

    .line 332
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private unRegisterReceivers()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/settings/GigaMultiPath;->mMptcpStateReceiver:Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mMptcpStateReceiver:Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/GigaMultiPath;->mMptcpStateReceiver:Lcom/android/settings/GigaMultiPath$MptcpStateReceiver;

    .line 242
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 163
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 164
    iget-object v2, p0, Lcom/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 165
    iget-object v2, p0, Lcom/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mptcp_value"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 166
    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 167
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0e100c

    const/4 v4, 0x1

    .line 126
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    .line 130
    iget-object v2, p0, Lcom/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/settings/GigaMultiPath;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 132
    iget-object v2, p0, Lcom/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/GigaMultiPath;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 134
    invoke-direct {p0}, Lcom/android/settings/GigaMultiPath;->isSimPresent()Z

    move-result v2

    if-nez v2, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e1008

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/GigaMultiPath;->isSimValid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e1009

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v2, p0, Lcom/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e1007

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 140
    :cond_3
    iget-object v2, p0, Lcom/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e100a

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 142
    :cond_4
    iget-object v2, p0, Lcom/android/settings/GigaMultiPath;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/GigaMultiPath;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_5

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e100b

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 145
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/GigaMultiPath;->isTether()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "tetherStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    const v3, 0x7f0e02c3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "bluetooth":Ljava/lang/String;
    const-string v2, "bluetooth.pan.tether_on"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 151
    :cond_6
    const-string v2, "USB"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    const v3, 0x7f040025

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 172
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0d00a3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 174
    .local v0, "airplaneModeDesc":Landroid/widget/TextView;
    const v1, 0x7f0e1001

    .line 176
    .local v1, "resEnableMsg":I
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 177
    return-object v2
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 216
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 218
    iget-object v0, p0, Lcom/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 221
    iget-object v0, p0, Lcom/android/settings/GigaMultiPath;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/GigaMultiPath;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/settings/GigaMultiPath;->mHoldingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mRemoveProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/GigaMultiPath;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 225
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 208
    invoke-direct {p0}, Lcom/android/settings/GigaMultiPath;->unRegisterReceivers()V

    .line 210
    iget-object v0, p0, Lcom/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 211
    iget-object v0, p0, Lcom/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 212
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 182
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 183
    invoke-direct {p0}, Lcom/android/settings/GigaMultiPath;->registerReceivers()V

    .line 185
    iget-object v2, p0, Lcom/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/GigaMultiPath;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 188
    iget-object v2, p0, Lcom/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/GigaMultiPath;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 192
    iget-object v2, p0, Lcom/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/GigaMultiPath;->isSimValid()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/GigaMultiPath;->isTether()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mptcp_value"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 197
    .local v0, "mCurrentState":Z
    :cond_2
    iget-object v2, p0, Lcom/android/settings/GigaMultiPath;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/GigaMultiPath;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v2

    if-ne v0, v2, :cond_3

    .line 199
    iget-object v2, p0, Lcom/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 200
    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mHoldingHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/GigaMultiPath;->mRemoveProgress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 201
    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 203
    :cond_3
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 8
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    const v7, 0x7f0e1000

    const v6, 0x104000a

    const/high16 v5, 0x1040000

    const/4 v2, 0x0

    .line 246
    iget-object v3, p0, Lcom/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mptcp_value"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 247
    .local v0, "mCurrentState":Z
    :goto_0
    if-ne p2, v0, :cond_1

    .line 327
    :goto_1
    return-void

    .end local v0    # "mCurrentState":Z
    :cond_0
    move v0, v2

    .line 246
    goto :goto_0

    .line 248
    .restart local v0    # "mCurrentState":Z
    :cond_1
    if-eqz p2, :cond_5

    .line 249
    iget-object v3, p0, Lcom/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_bonding"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    .line 250
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 251
    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 252
    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0e1005

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 253
    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/settings/GigaMultiPath$3;

    invoke-direct {v3, p0}, Lcom/android/settings/GigaMultiPath$3;-><init>(Lcom/android/settings/GigaMultiPath;)V

    invoke-virtual {v1, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 265
    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/settings/GigaMultiPath$4;

    invoke-direct {v3, p0}, Lcom/android/settings/GigaMultiPath$4;-><init>(Lcom/android/settings/GigaMultiPath;)V

    invoke-virtual {v1, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 270
    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 271
    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 273
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 274
    iget-object v3, p0, Lcom/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e1004

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 277
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 278
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 279
    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 280
    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0e1002

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 281
    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/settings/GigaMultiPath$5;

    invoke-direct {v3, p0}, Lcom/android/settings/GigaMultiPath$5;-><init>(Lcom/android/settings/GigaMultiPath;)V

    invoke-virtual {v1, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 292
    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/settings/GigaMultiPath$6;

    invoke-direct {v3, p0}, Lcom/android/settings/GigaMultiPath$6;-><init>(Lcom/android/settings/GigaMultiPath;)V

    invoke-virtual {v1, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 297
    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 298
    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 300
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 301
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 302
    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 303
    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0e1003

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 304
    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/settings/GigaMultiPath$7;

    invoke-direct {v3, p0}, Lcom/android/settings/GigaMultiPath$7;-><init>(Lcom/android/settings/GigaMultiPath;)V

    invoke-virtual {v1, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 313
    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/settings/GigaMultiPath$8;

    invoke-direct {v3, p0}, Lcom/android/settings/GigaMultiPath$8;-><init>(Lcom/android/settings/GigaMultiPath;)V

    invoke-virtual {v1, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 318
    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 319
    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 323
    :cond_5
    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/GigaMultiPath;->showProgressDialog()V

    .line 326
    invoke-direct {p0, p2}, Lcom/android/settings/GigaMultiPath;->sendMptcpStartBroadCast(Z)V

    goto/16 :goto_1
.end method

.method public showProgressDialog()V
    .locals 4

    .prologue
    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/GigaMultiPath;->progressDialog:Landroid/app/ProgressDialog;

    .line 339
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/GigaMultiPath;->progressDialog:Landroid/app/ProgressDialog;

    .line 340
    iget-object v0, p0, Lcom/android/settings/GigaMultiPath;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 341
    iget-object v0, p0, Lcom/android/settings/GigaMultiPath;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 342
    iget-object v0, p0, Lcom/android/settings/GigaMultiPath;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 343
    iget-object v0, p0, Lcom/android/settings/GigaMultiPath;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0e00df

    invoke-virtual {p0, v1}, Lcom/android/settings/GigaMultiPath;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lcom/android/settings/GigaMultiPath;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 345
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/GigaMultiPath;->mHoldingHandler:Landroid/os/Handler;

    .line 346
    new-instance v0, Lcom/android/settings/GigaMultiPath$9;

    invoke-direct {v0, p0}, Lcom/android/settings/GigaMultiPath$9;-><init>(Lcom/android/settings/GigaMultiPath;)V

    iput-object v0, p0, Lcom/android/settings/GigaMultiPath;->mRemoveProgress:Ljava/lang/Runnable;

    .line 355
    iget-object v0, p0, Lcom/android/settings/GigaMultiPath;->mHoldingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/GigaMultiPath;->mRemoveProgress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 356
    return-void
.end method
