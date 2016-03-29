.class public Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;
.super Landroid/preference/Preference;
.source "WifiApDeviceInfoPreference.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAllowAll:Z

.field private mContext:Landroid/content/Context;

.field private mIsReset:Z

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mSpinner:Landroid/widget/Spinner;

.field private mText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "WifiApDeviceInfoPreference"

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "fragment"    # Lcom/android/settings/SettingsPreferenceFragment;
    .param p2, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 61
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput-boolean v3, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mIsReset:Z

    .line 63
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 65
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 67
    const v0, 0x7f0401a6

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setLayoutResource(I)V

    .line 69
    if-nez p2, :cond_0

    .line 70
    const v0, 0x7f0e0473

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setTitle(I)V

    .line 71
    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    .line 80
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateSummary()V

    .line 81
    return-void

    .line 73
    :cond_0
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v0, v2, :cond_1

    .line 76
    iput-boolean v3, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    goto :goto_0

    .line 78
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->checkConnectedDeviceOrChangeAllowPolicy()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mIsReset:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;Landroid/widget/Spinner;)Landroid/widget/Spinner;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;
    .param p1, "x1"    # Landroid/widget/Spinner;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mSpinner:Landroid/widget/Spinner;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->notifyChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->changeAllowPolicy()V

    return-void
.end method

.method private changeAllowPolicy()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 230
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 231
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    .line 232
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mText:Landroid/widget/TextView;

    const v2, 0x7f0e0475

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 237
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x3

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 242
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateSummary()V

    .line 243
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 245
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->getRvfMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 246
    sput-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 247
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V

    .line 249
    :cond_0
    return-void

    .line 231
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mText:Landroid/widget/TextView;

    const v2, 0x7f0e0478

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    goto :goto_2
.end method

.method private checkConnectedDeviceOrChangeAllowPolicy()V
    .locals 3

    .prologue
    .line 198
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 199
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    .line 200
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    .line 201
    .local v1, "num":I
    if-lez v1, :cond_0

    .line 202
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->showDialog(I)V

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->changeAllowPolicy()V

    goto :goto_0
.end method

.method private getRvfMode()I
    .locals 3

    .prologue
    .line 252
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 253
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x1c

    iput v2, v1, Landroid/os/Message;->what:I

    .line 254
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 255
    .local v0, "mRvfMode":I
    return v0
.end method

.method private resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 259
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mIsReset:Z

    .line 260
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 261
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xc5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 262
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 263
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 264
    return-void
.end method

.method private showDialog(I)V
    .locals 4
    .param p1, "dialogId"    # I

    .prologue
    .line 166
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 167
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 195
    :goto_0
    return-void

    .line 169
    :pswitch_0
    const v1, 0x7f0e04a7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e04db

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0486

    new-instance v3, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$5;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$5;-><init>(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e01ba

    new-instance v3, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$4;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$4;-><init>(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 194
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSummary()V
    .locals 5

    .prologue
    .line 208
    sget-object v2, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllowAll: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 210
    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    if-eqz v2, :cond_2

    .line 211
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mText:Landroid/widget/TextView;

    const v3, 0x7f0e0475

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 216
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->notifyChanged()V

    .line 218
    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    if-nez v2, :cond_1

    .line 219
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 220
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 221
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 222
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "feature"

    const-string v3, "MHCM"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 224
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 227
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    return-void

    .line 213
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mText:Landroid/widget/TextView;

    const v3, 0x7f0e0478

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 86
    const v1, 0x7f0d041b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mText:Landroid/widget/TextView;

    .line 87
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mTitle:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f0d041c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mSpinner:Landroid/widget/Spinner;

    .line 89
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f110021

    const v3, 0x1090008

    invoke-static {v1, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 90
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 91
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 92
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mSpinner:Landroid/widget/Spinner;

    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 93
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mText:Landroid/widget/TextView;

    const v2, 0x7f0e0475

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 98
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 113
    const v1, 0x7f0d0415

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 114
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mLinearLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void

    .line 92
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mText:Landroid/widget/TextView;

    const v2, 0x7f0e0478

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public onClickItem(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 162
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 163
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 130
    sget-object v1, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---> onKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 132
    sparse-switch p2, :sswitch_data_0

    .line 142
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 134
    :sswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->performClick()Z

    goto :goto_0

    .line 138
    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->performClick()Z

    goto :goto_0

    .line 132
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public updateCurrent(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x1

    .line 152
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v0, v1, :cond_0

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    .line 157
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateSummary()V

    .line 158
    return-void

    .line 156
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    goto :goto_0
.end method

.method public updateSsid(Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->notifyHierarchyChanged()V

    .line 149
    return-void
.end method
