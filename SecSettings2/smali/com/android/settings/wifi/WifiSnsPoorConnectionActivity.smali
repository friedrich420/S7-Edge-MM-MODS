.class public Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiSnsPoorConnectionActivity.java"


# static fields
.field private static DBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mSnsPoorConnectionDialog:Landroid/app/AlertDialog;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 45
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private showSnsPoorConnectionDialog()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const v9, 0x7f0e051c

    const/4 v5, 0x2

    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040278

    invoke-virtual {v7, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 70
    .local v4, "view":Landroid/view/View;
    const v7, 0x7f0d0620

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 72
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->locateSmartNetworkSwitch(Landroid/content/Context;)I

    move-result v7

    if-ne v7, v5, :cond_3

    .line 73
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    const v9, 0x7f0e051b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    .local v2, "snsSettingDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 82
    const v7, 0x7f0e0516

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 83
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f110025

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 84
    .local v1, "radioButtonItems":[Ljava/lang/CharSequence;
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mEnabled:Z

    if-eqz v7, :cond_0

    move v5, v6

    :cond_0
    new-instance v7, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$1;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$1;-><init>(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)V

    invoke-virtual {v2, v1, v5, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0537

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$2;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$2;-><init>(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)V

    invoke-virtual {v2, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 144
    new-instance v5, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$3;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$3;-><init>(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mSnsPoorConnectionDialog:Landroid/app/AlertDialog;

    .line 165
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mSnsPoorConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 166
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mSnsPoorConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 167
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0, v4, v11, v10}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 169
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mSnsPoorConnectionDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_2

    .line 170
    sget-boolean v5, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "WifiSnsPoorConnectionActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WifiSnsPoorConnectionActivity appears with SNS Enabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "wifi_poor_connection_warning"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 172
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mSnsPoorConnectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 174
    :cond_2
    return-void

    .line 76
    .end local v0    # "listView":Landroid/widget/ListView;
    .end local v1    # "radioButtonItems":[Ljava/lang/CharSequence;
    .end local v2    # "snsSettingDialog":Landroid/app/AlertDialog$Builder;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    const v9, 0x7f0e051a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 53
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    iput-object p0, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 57
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->setVisible(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->setupAlert()V

    .line 60
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mEnabled:Z

    .line 63
    sget-boolean v0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSnsPoorConnectionActivity"

    const-string v1, "WifiSnsPoorConnectionActivity created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->showSnsPoorConnectionDialog()V

    .line 66
    return-void

    :cond_1
    move v0, v2

    .line 60
    goto :goto_0
.end method

.method sendGSIMdata(Ljava/lang/String;)V
    .locals 6
    .param p1, "dataValue"    # Ljava/lang/String;

    .prologue
    .line 178
    const-string v2, "feature"

    .line 179
    .local v2, "featureKey":Ljava/lang/String;
    const-string v3, "SNSU"

    .line 180
    .local v3, "featureValue":Ljava/lang/String;
    const-string v1, "extra"

    .line 182
    .local v1, "dataKey":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 186
    .local v4, "msgLog":Landroid/os/Message;
    const/16 v5, 0x4d

    iput v5, v4, Landroid/os/Message;->what:I

    .line 187
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 188
    .local v0, "argsLog":Landroid/os/Bundle;
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 191
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_0

    .line 192
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto :goto_0
.end method
