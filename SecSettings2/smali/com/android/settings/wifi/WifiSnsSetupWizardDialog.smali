.class public Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;
.super Ljava/lang/Object;
.source "WifiSnsSetupWizardDialog.java"


# static fields
.field private static DBG:Z

.field public static KEY_NAME:Ljava/lang/String;

.field public static PREF_NAME:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSnsSetupWizardDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 49
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->DBG:Z

    .line 50
    const-string v0, "sns_enable_dialog_on_setupwizard"

    sput-object v0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->PREF_NAME:Ljava/lang/String;

    .line 51
    const-string v0, "showdialog"

    sput-object v0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->KEY_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mContext:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_test_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 61
    sget-boolean v0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSnsSetupWizardDialog"

    const-string v1, "WifiSnsSetupWizardDialog appears, SNS set disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->makeWifiSnsSetupWizardDialog()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->setPreferenceValue(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mWifiSnsSetupWizardDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private setPreferenceValue(Z)V
    .locals 6
    .param p1, "value"    # Z

    .prologue
    .line 132
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 141
    :goto_0
    return-void

    .line 134
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->PREF_NAME:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 135
    .local v2, "pref_SnsEnableDialogOnSetupWizard":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 136
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v3, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->KEY_NAME:Ljava/lang/String;

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "pref_SnsEnableDialogOnSetupWizard":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "WifiSnsSetupWizardDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getWifiSnsSetupWizardDialog()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mWifiSnsSetupWizardDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public makeWifiSnsSetupWizardDialog()V
    .locals 10

    .prologue
    const v8, 0x7f0e051c

    const/4 v9, 0x1

    .line 68
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 69
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040279

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 71
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f0d0621

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 72
    .local v4, "textView":Landroid/widget/TextView;
    const v6, 0x7f0d0622

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 73
    .local v0, "buttonDoNotEnable":Landroid/widget/Button;
    const v6, 0x7f0d0623

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 74
    .local v1, "buttonEnable":Landroid/widget/Button;
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setFocusable(Z)V

    .line 75
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setFocusable(Z)V

    .line 76
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->locateSmartNetworkSwitch(Landroid/content/Context;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 77
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f0e051b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 85
    .local v3, "snsSetupWizardDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 86
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 87
    const v6, 0x7f0e0516

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 89
    new-instance v6, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog$1;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog$1;-><init>(Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    new-instance v6, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog$2;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog$2;-><init>(Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance v6, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog$3;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog$3;-><init>(Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;)V

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mWifiSnsSetupWizardDialog:Landroid/app/AlertDialog;

    .line 128
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mWifiSnsSetupWizardDialog:Landroid/app/AlertDialog;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 129
    return-void

    .line 80
    .end local v3    # "snsSetupWizardDialog":Landroid/app/AlertDialog$Builder;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f0e051a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method sendGSIMdata(Ljava/lang/String;)V
    .locals 6
    .param p1, "dataValue"    # Ljava/lang/String;

    .prologue
    .line 149
    const-string v2, "feature"

    .line 150
    .local v2, "featureKey":Ljava/lang/String;
    const-string v3, "SNSU"

    .line 151
    .local v3, "featureValue":Ljava/lang/String;
    const-string v1, "extra"

    .line 153
    .local v1, "dataKey":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 157
    .local v4, "msgLog":Landroid/os/Message;
    const/16 v5, 0x4d

    iput v5, v4, Landroid/os/Message;->what:I

    .line 158
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 159
    .local v0, "argsLog":Landroid/os/Bundle;
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 162
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_0

    .line 163
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto :goto_0
.end method
