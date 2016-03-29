.class public Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiConnectionHandlerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mBeforeValue:Landroid/content/SharedPreferences;

.field private mDoNotShow:Landroid/content/SharedPreferences;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsReceiverRegistered:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mcheck:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z

    .line 44
    new-instance v0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity$1;-><init>(Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method public OnOffData(Z)V
    .locals 3
    .param p1, "mButton"    # Z

    .prologue
    .line 143
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 144
    .local v0, "conn":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 146
    const-string v1, "WifiConnectionHandlerActivity"

    const-string v2, "The data service will be enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    const-string v1, "WifiConnectionHandlerActivity"

    const-string v2, "ConnectivityManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 139
    const-string v0, "WifiConnectionHandlerActivity"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    .line 141
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 131
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->overridePendingTransition(II)V

    .line 132
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 93
    const-string v2, "WifiConnectionHandlerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Do not Show again : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v2, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mDoNotShow:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 95
    .local v1, "edit_boolean":Landroid/content/SharedPreferences$Editor;
    const-string v2, "connhan_do_not_show"

    iget-object v3, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    packed-switch p2, :pswitch_data_0

    .line 123
    :goto_0
    return-void

    .line 99
    :pswitch_0
    const-string v2, "WifiConnectionHandlerActivity"

    const-string v3, "Selected button is Connect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v2, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mBeforeValue:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    .local v0, "edit_beforeValue":Landroid/content/SharedPreferences$Editor;
    const-string v2, "WifiConnectionHandlerActivity"

    const-string v3, "donotshow checked. connhan_value : BUTTON_CONNECT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v2, "connhan_value"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    .end local v0    # "edit_beforeValue":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->OnOffData(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->finish()V

    goto :goto_0

    .line 110
    :pswitch_1
    const-string v2, "WifiConnectionHandlerActivity"

    const-string v3, "Selected button is Disconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v2, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    iget-object v2, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mBeforeValue:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 113
    .restart local v0    # "edit_beforeValue":Landroid/content/SharedPreferences$Editor;
    const-string v2, "WifiConnectionHandlerActivity"

    const-string v3, "donotshow checked. connhan_value : BUTTON_DISCONNECT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v2, "connhan_value"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    .end local v0    # "edit_beforeValue":Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->OnOffData(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->finish()V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f0d01ef

    .line 68
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mDoNotShow:Landroid/content/SharedPreferences;

    .line 70
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mBeforeValue:Landroid/content/SharedPreferences;

    .line 72
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 73
    iget-object v1, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mIsReceiverRegistered:Z

    .line 76
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 78
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v1, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04025d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e136d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e136f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 81
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e1370

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 83
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e136e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 85
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 86
    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->mcheck:Landroid/widget/CheckBox;

    .line 87
    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;->setupAlert()V

    .line 90
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 127
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 136
    return-void
.end method
