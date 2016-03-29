.class public Lcom/android/settings/wifi/WifiSnsSettingDialog;
.super Ljava/lang/Object;
.source "WifiSnsSettingDialog.java"


# static fields
.field private static DBG:Z

.field private static final mDisconnectWeakAP:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mIsSetupWizardAndDefaultOff:Z

.field private mSnsSettingDialog:Landroid/app/AlertDialog;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->DBG:Z

    .line 47
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigDisconnectApThreshold"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mDisconnectWeakAP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mIsSetupWizardAndDefaultOff:Z

    .line 55
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;

    .line 56
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mEnabled:Z

    .line 58
    sget-boolean v0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSnsSettingDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiSnsSettingDialog appears with SNS Enabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->makeSnsSettingDialog()V

    .line 63
    return-void

    :cond_1
    move v0, v1

    .line 56
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isSetupWizardAndDefaultOff"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mIsSetupWizardAndDefaultOff:Z

    .line 66
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 68
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mIsSetupWizardAndDefaultOff:Z

    .line 69
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mIsSetupWizardAndDefaultOff:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mEnabled:Z

    .line 75
    sget-boolean v0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiSnsSettingDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiSnsSettingDialog appears with SNS Enabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->makeSnsSettingDialog()V

    .line 78
    return-void

    :cond_2
    move v0, v2

    .line 73
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSnsSettingDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSnsSettingDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mDisconnectWeakAP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->DBG:Z

    return v0
.end method


# virtual methods
.method public getSnsSettingDialog()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mSnsSettingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public makeSnsSettingDialog()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const v10, 0x7f0e051c

    .line 81
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 82
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f040278

    invoke-virtual {v0, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 83
    .local v5, "view":Landroid/view/View;
    const v8, 0x7f0d0620

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 84
    .local v4, "textView":Landroid/widget/TextView;
    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mIsSetupWizardAndDefaultOff:Z

    if-eqz v8, :cond_1

    .line 85
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->locateSmartNetworkSwitch(Landroid/content/Context;)I

    move-result v8

    if-ne v8, v7, :cond_0

    .line 86
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0e051b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    .local v3, "snsSettingDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 102
    const v8, 0x7f0e0516

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 103
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f110025

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 104
    .local v2, "radioButtonItems":[Ljava/lang/CharSequence;
    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mEnabled:Z

    if-eqz v8, :cond_3

    :goto_1
    new-instance v7, Lcom/android/settings/wifi/WifiSnsSettingDialog$1;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiSnsSettingDialog$1;-><init>(Lcom/android/settings/wifi/WifiSnsSettingDialog;)V

    invoke-virtual {v3, v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 153
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0537

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings/wifi/WifiSnsSettingDialog$2;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiSnsSettingDialog$2;-><init>(Lcom/android/settings/wifi/WifiSnsSettingDialog;)V

    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    new-instance v6, Lcom/android/settings/wifi/WifiSnsSettingDialog$3;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiSnsSettingDialog$3;-><init>(Lcom/android/settings/wifi/WifiSnsSettingDialog;)V

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mSnsSettingDialog:Landroid/app/AlertDialog;

    .line 188
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mSnsSettingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 189
    .local v1, "listView":Landroid/widget/ListView;
    const/4 v6, 0x0

    invoke-virtual {v1, v5, v11, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 190
    return-void

    .line 89
    .end local v1    # "listView":Landroid/widget/ListView;
    .end local v2    # "radioButtonItems":[Ljava/lang/CharSequence;
    .end local v3    # "snsSettingDialog":Landroid/app/AlertDialog$Builder;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0e051a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 93
    :cond_1
    const-string v8, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 94
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;

    const v9, 0x7f0e0519

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 96
    :cond_2
    iget-object v8, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .restart local v2    # "radioButtonItems":[Ljava/lang/CharSequence;
    .restart local v3    # "snsSettingDialog":Landroid/app/AlertDialog$Builder;
    :cond_3
    move v6, v7

    .line 104
    goto/16 :goto_1
.end method

.method sendGSIMdata(Ljava/lang/String;)V
    .locals 6
    .param p1, "dataValue"    # Ljava/lang/String;

    .prologue
    .line 198
    const-string v2, "feature"

    .line 199
    .local v2, "featureKey":Ljava/lang/String;
    const-string v3, "SNSU"

    .line 200
    .local v3, "featureValue":Ljava/lang/String;
    const-string v1, "extra"

    .line 202
    .local v1, "dataKey":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 206
    .local v4, "msgLog":Landroid/os/Message;
    const/16 v5, 0x4d

    iput v5, v4, Landroid/os/Message;->what:I

    .line 207
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 208
    .local v0, "argsLog":Landroid/os/Bundle;
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 211
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_0

    .line 212
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto :goto_0
.end method
