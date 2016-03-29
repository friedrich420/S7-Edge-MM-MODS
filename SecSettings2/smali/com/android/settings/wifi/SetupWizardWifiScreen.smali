.class public Lcom/android/settings/wifi/SetupWizardWifiScreen;
.super Landroid/app/Activity;
.source "SetupWizardWifiScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;
    }
.end annotation


# instance fields
.field private button_transY:F

.field private handler:Landroid/os/Handler;

.field private intentExtras:Landroid/os/Bundle;

.field private isApCheckDone:Z

.field private isFirstEnterWifiSetupWizard:I

.field private isWifiPromptScreen:Z

.field private mAddNetwork:Landroid/widget/TextView;

.field private mButtonView:Landroid/view/View;

.field private mConnCheckProgressDialog:Landroid/app/ProgressDialog;

.field private mConnectionResult:I

.field private mConnectivityCheckTask:Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFilter:Landroid/content/IntentFilter;

.field final mHandler:Landroid/os/Handler;

.field private mIsFragmentCreated:Z

.field private mIsGoogleFRPLocked:Z

.field private mIsWifiConnected:Z

.field private mNegativeButtonLayout:Landroid/widget/LinearLayout;

.field private mNegativeButtonText:Landroid/widget/TextView;

.field private mPositiveButtonText:Landroid/widget/TextView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSuccessWifiConNID:I

.field private mWifiAPId:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiScreenSubText:Landroid/widget/TextView;

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

.field private mWifiSettingsView:Landroid/view/View;

.field private transX:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnCheckProgressDialog:Landroid/app/ProgressDialog;

    .line 75
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 79
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 80
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    .line 81
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 82
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    .line 84
    iput v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I

    .line 85
    iput v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mSuccessWifiConNID:I

    .line 86
    iput-boolean v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->isApCheckDone:Z

    .line 87
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->intentExtras:Landroid/os/Bundle;

    .line 88
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    .line 89
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonText:Landroid/widget/TextView;

    .line 90
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/widget/LinearLayout;

    .line 92
    iput-boolean v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    .line 94
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectivityCheckTask:Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    .line 96
    iput-boolean v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsFragmentCreated:Z

    .line 98
    iput v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiAPId:I

    .line 107
    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->transX:F

    .line 108
    const/high16 v0, 0x43600000    # 224.0f

    iput v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->button_transY:F

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->handler:Landroid/os/Handler;

    .line 112
    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAddNetwork:Landroid/widget/TextView;

    .line 118
    iput-boolean v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->isWifiPromptScreen:Z

    .line 369
    new-instance v0, Lcom/android/settings/wifi/SetupWizardWifiScreen$6;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$6;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/SetupWizardWifiScreen;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/SetupWizardWifiScreen;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/SetupWizardWifiScreen;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/SetupWizardWifiScreen;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/SetupWizardWifiScreen;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/SetupWizardWifiScreen;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettingsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/SetupWizardWifiScreen;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mButtonView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/SetupWizardWifiScreen;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/SetupWizardWifiScreen;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/SetupWizardWifiScreen;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/SetupWizardWifiScreen;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->wifiConnSuccess()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/SetupWizardWifiScreen;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectivityCheckTask:Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/SetupWizardWifiScreen;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsGoogleFRPLocked:Z

    return v0
.end method

.method static synthetic access$300(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/SetupWizardWifiScreen;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/SetupWizardWifiScreen;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->handleConnectionEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Lcom/android/settings/wifi/WifiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/SetupWizardWifiScreen;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/SetupWizardWifiScreen;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/wifi/SetupWizardWifiScreen;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/SetupWizardWifiScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/SetupWizardWifiScreen;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->isWifiPromptScreen:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/SetupWizardWifiScreen;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/SetupWizardWifiScreen;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/SetupWizardWifiScreen;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private getDimension(I)I
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private handleConnectionEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 321
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "action":Ljava/lang/String;
    const-string v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handle Connection State: Action ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 324
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 326
    .local v2, "info":Landroid/net/NetworkInfo;
    const-string v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "What is the Connection Status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 328
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiConnectivityUtils;->getWifiNetworkID(Landroid/net/wifi/WifiManager;)I

    move-result v1

    .line 329
    .local v1, "currentAPId":I
    iget v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiAPId:I

    if-eq v4, v1, :cond_1

    .line 330
    iput v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiAPId:I

    .line 331
    invoke-direct {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->showConnProgressDialog()V

    .line 332
    new-instance v4, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;Lcom/android/settings/wifi/SetupWizardWifiScreen$1;)V

    iput-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectivityCheckTask:Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    .line 333
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectivityCheckTask:Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;

    new-array v5, v7, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen$ConnectivityCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 367
    .end local v1    # "currentAPId":I
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 335
    .restart local v1    # "currentAPId":I
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    :cond_1
    const-string v4, "SetupWizard --> SetupWizardWifiScreen"

    const-string v5, " This AP is already passed Netowrk Connection and it has valid internet connection"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 338
    .end local v1    # "currentAPId":I
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    const v5, 0x7f0e13f7

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iput-boolean v7, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    .line 340
    iput v9, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mSuccessWifiConNID:I

    .line 341
    iput v9, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiAPId:I

    goto :goto_0

    .line 343
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_3
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 344
    const-string v4, "wifi_state"

    invoke-virtual {p2, v4, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 346
    .local v3, "wifiState":I
    const-string v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Wifi State : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    if-ne v3, v10, :cond_4

    .line 348
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 350
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 351
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    const v5, 0x7f0e13fc

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 352
    :cond_4
    if-ne v3, v8, :cond_0

    .line 353
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonText:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 355
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 356
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    const v5, 0x7f0e13fd

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 358
    .end local v3    # "wifiState":I
    :cond_5
    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 359
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 360
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    const v5, 0x7f0e13fc

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 362
    :cond_6
    const-string v4, "SetupWizard --> SetupWizardWifiScreen"

    const-string v5, "No Networks Found"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    const v5, 0x7f0e13fb

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    invoke-direct {p0, v10}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V

    goto/16 :goto_0
.end method

.method private initializeView()V
    .locals 9

    .prologue
    const v8, 0x7f0d0639

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 209
    const-string v3, "SetupWizard --> SetupWizardWifiScreen"

    const-string v4, "initializeView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    move-object v0, p0

    .line 211
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectivityUtils;->setCustomTitle(Landroid/app/Activity;)V

    .line 212
    const v3, 0x7f0d0637

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    .line 213
    const v3, 0x7f0d063b

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    .line 214
    const v3, 0x7f0d063a

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonText:Landroid/widget/TextView;

    .line 215
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/widget/LinearLayout;

    .line 216
    const v3, 0x7f0d0636

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettingsView:Landroid/view/View;

    .line 217
    const v3, 0x7f0d052b

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mButtonView:Landroid/view/View;

    .line 218
    const v3, 0x7f0d0635

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAddNetwork:Landroid/widget/TextView;

    .line 220
    const-string v3, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFirstEnterWifiSetupWizard : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->isFirstEnterWifiSetupWizard:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->isFirstEnterWifiSetupWizard:I

    if-ne v3, v7, :cond_0

    .line 222
    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "first_enter_wifisetupwizard"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 229
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 230
    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonText:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 232
    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mNegativeButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 233
    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiScreenSubText:Landroid/widget/TextView;

    const v4, 0x7f0e13fd

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :cond_1
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 237
    .local v1, "negativeButtonLayout":Landroid/widget/LinearLayout;
    new-instance v3, Lcom/android/settings/wifi/SetupWizardWifiScreen$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$2;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    const v3, 0x7f0d0638

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 244
    .local v2, "positiveButtonLayout":Landroid/widget/LinearLayout;
    new-instance v3, Lcom/android/settings/wifi/SetupWizardWifiScreen$3;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$3;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mAddNetwork:Landroid/widget/TextView;

    new-instance v4, Lcom/android/settings/wifi/SetupWizardWifiScreen$4;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$4;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    invoke-direct {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->resetAnimation()V

    .line 267
    return-void
.end method

.method private static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 616
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 619
    .local v0, "flag":I
    if-ne v0, v1, :cond_0

    .line 620
    .local v1, "isProvisioned":Z
    :goto_0
    const-string v2, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isDeviceProvisioned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return v1

    .end local v1    # "isProvisioned":Z
    :cond_0
    move v1, v2

    .line 619
    goto :goto_0
.end method

.method private static readGoogleFRPFlag(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x2

    .line 627
    const/4 v3, 0x0

    .line 628
    .local v3, "value":Z
    new-instance v2, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v2, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 629
    .local v2, "rsm":Lcom/samsung/android/service/reactive/ReactiveServiceManager;
    invoke-virtual {v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    .line 632
    const-string v5, "SetupWizard --> SetupWizardWifiScreen"

    const-string v6, "readGoogleFRPFlag : service is not Connected"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :goto_0
    return v4

    .line 636
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v1

    .line 637
    .local v1, "result":I
    const-string v5, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readGoogleFRPFlag : getServiceSupport is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    if-eq v1, v8, :cond_1

    .line 639
    const-string v5, "SetupWizard --> SetupWizardWifiScreen"

    const-string v6, "readGoogleFRPFlag : feature is not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 643
    :cond_1
    invoke-virtual {v2, v8}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v0

    .line 644
    .local v0, "flagResult":I
    const-string v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readGoogleFRPFlag getFlag result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    if-ne v0, v8, :cond_3

    .line 646
    :cond_2
    const/4 v3, 0x1

    .line 651
    :cond_3
    const-string v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readGoogleFRPFlag : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 652
    goto :goto_0
.end method

.method private resetAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 269
    const-string v1, "SetupWizard --> SetupWizardWifiScreen"

    const-string v2, "resetAnimation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettingsView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 273
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mButtonView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 274
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mButtonView:Landroid/view/View;

    iget v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->button_transY:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 276
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettingsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 277
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/settings/wifi/SetupWizardWifiScreen$5;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$5;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 293
    return-void
.end method

.method private setMargins(IIIILandroid/widget/LinearLayout;)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "params"    # Landroid/widget/LinearLayout;

    .prologue
    .line 606
    invoke-virtual {p5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 607
    return-void
.end method

.method private showAlertDialog(I)V
    .locals 6
    .param p1, "connResult"    # I

    .prologue
    const v5, 0x7f0e0826

    const/4 v4, 0x0

    .line 429
    const-string v1, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Show the Alert Dialog for the connection Result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mConnectionResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 432
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    .line 434
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 435
    .local v0, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 530
    :goto_0
    :pswitch_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    .line 531
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 532
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 533
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 534
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 535
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 538
    :cond_1
    return-void

    .line 437
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiConnectivityUtils;->forgetNetWork(Landroid/net/wifi/WifiManager;)V

    .line 438
    const v1, 0x7f0e13fe

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 439
    const v1, 0x7f0e13ff

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 440
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 441
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/SetupWizardWifiScreen$8;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$8;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 449
    :pswitch_2
    const v1, 0x7f0e1400

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 450
    const v1, 0x7f0e1401

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 451
    const v1, 0x7f0e1403

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/SetupWizardWifiScreen$9;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$9;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 472
    const v1, 0x7f0e01ba

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/SetupWizardWifiScreen$10;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$10;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 479
    new-instance v1, Lcom/android/settings/wifi/SetupWizardWifiScreen$11;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$11;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 488
    :pswitch_3
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 489
    const v1, 0x7f0e1665

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 490
    const v1, 0x7f0e01bd

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/SetupWizardWifiScreen$12;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$12;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 499
    :pswitch_4
    const v1, 0x7f0e1404

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 500
    const v1, 0x7f0e1405

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 501
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 502
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/SetupWizardWifiScreen$13;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$13;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 510
    :pswitch_5
    const v1, 0x7f0e1408

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 511
    const v1, 0x7f0e1407

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 512
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 513
    const v1, 0x7f0e0447

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/SetupWizardWifiScreen$14;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$14;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 521
    const v1, 0x7f0e1409

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/SetupWizardWifiScreen$15;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$15;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 435
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private showConnProgressDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 401
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, " Show the Connection Check Progress Dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 404
    iput-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 408
    iput-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    .line 410
    :cond_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 411
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0e1406

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 413
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 414
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 415
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/settings/wifi/SetupWizardWifiScreen$7;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$7;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 425
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 426
    return-void
.end method

.method private updateLayoutMarginOnOrienationChange()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 600
    const v0, 0x7f0d0636

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 601
    .local v5, "wifiFragmentlayout":Landroid/widget/LinearLayout;
    const v0, 0x7f0c01e7

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getDimension(I)I

    move-result v1

    const v0, 0x7f0c01e8

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getDimension(I)I

    move-result v3

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->setMargins(IIIILandroid/widget/LinearLayout;)V

    .line 603
    return-void
.end method

.method private wifiConnSuccess()V
    .locals 2

    .prologue
    .line 579
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, " WiFi Connection Success "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    .line 581
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mPositiveButtonText:Landroid/widget/TextView;

    const v1, 0x7f0e13f6

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConnectivityUtils;->getWifiNetworkID(Landroid/net/wifi/WifiManager;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mSuccessWifiConNID:I

    .line 583
    iget v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mSuccessWifiConNID:I

    iput v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiAPId:I

    .line 584
    return-void
.end method


# virtual methods
.method public isSCamera()Z
    .locals 2

    .prologue
    .line 562
    const-string v0, "gd1ltevzw"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    const/4 v0, 0x1

    .line 565
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 588
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 589
    const-string v1, "SetupWizard --> SetupWizardWifiScreen"

    const-string v2, "onActivityResult Called !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    if-ne p2, v3, :cond_0

    .line 591
    invoke-direct {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->wifiConnSuccess()V

    .line 592
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 593
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "is_wifi_connected"

    iget-boolean v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsWifiConnected:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 594
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->setResult(ILandroid/content/Intent;)V

    .line 595
    invoke-virtual {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->finish()V

    .line 597
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 542
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, " onBackPressed "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->setResult(I)V

    .line 544
    invoke-virtual {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->finish()V

    .line 545
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 570
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() ===>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 572
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 574
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->updateLayoutMarginOnOrienationChange()V

    .line 576
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 174
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, "OnCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->intentExtras:Landroid/os/Bundle;

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wifiPrompt"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wifiPrompt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->isWifiPromptScreen:Z

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->isSCamera()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_3

    .line 185
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->setRequestedOrientation(I)V

    .line 187
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "first_enter_wifisetupwizard"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->isFirstEnterWifiSetupWizard:I

    .line 188
    const v0, 0x7f04027d

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->setContentView(I)V

    .line 189
    iput-object p0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;

    .line 191
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->readGoogleFRPFlag(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsGoogleFRPLocked:Z

    .line 193
    const-string v0, "persist.sys.vzw_wifi_running"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 195
    invoke-direct {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->initializeView()V

    .line 196
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    .line 197
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    new-instance v0, Lcom/android/settings/wifi/SetupWizardWifiScreen$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen$1;-><init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V

    iput-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 206
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 549
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 552
    iput-object v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 556
    iput-object v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mDialog:Landroid/app/AlertDialog;

    .line 558
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 559
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 297
    const-string v0, "SetupWizard --> SetupWizardWifiScreen"

    const-string v1, " OnPause Called ..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 299
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 300
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 304
    const-string v2, "SetupWizard --> SetupWizardWifiScreen"

    const-string v3, " OnResume Called ..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-boolean v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsFragmentCreated:Z

    if-nez v2, :cond_0

    .line 306
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 307
    .local v0, "frame":Landroid/widget/FrameLayout;
    const v2, 0x7f0d05f8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 308
    new-instance v2, Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {v2}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 311
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 312
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 313
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mIsFragmentCreated:Z

    .line 316
    .end local v0    # "frame":Landroid/widget/FrameLayout;
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 317
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 318
    return-void
.end method
