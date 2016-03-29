.class public Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiSelectHandlerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mSharedPreferences_beforeValue:Landroid/content/SharedPreferences;

.field private mSharedPreferences_donotshow:Landroid/content/SharedPreferences;

.field private mcheck:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 113
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->overridePendingTransition(II)V

    .line 114
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 75
    const-string v2, "ConnHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Do not Show again : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v2, p0, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->mSharedPreferences_donotshow:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 77
    .local v1, "edit_boolean":Landroid/content/SharedPreferences$Editor;
    const-string v2, "asktowlan_do_not_show"

    iget-object v3, p0, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    packed-switch p2, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 81
    :pswitch_0
    const-string v2, "ConnHandler"

    const-string v3, "Selected button is Yes"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v2, p0, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->mSharedPreferences_beforeValue:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    .local v0, "edit_beforeValue":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ConnHandler"

    const-string v3, "donotshow checked. asktowlan_value : BUTTON_POSITIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v2, "asktowlan_value"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    .end local v0    # "edit_beforeValue":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->sendIntent()V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->finish()V

    goto :goto_0

    .line 92
    :pswitch_1
    const-string v2, "ConnHandler"

    const-string v3, "Selected button is No"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v2, p0, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->mSharedPreferences_beforeValue:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    .restart local v0    # "edit_beforeValue":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ConnHandler"

    const-string v3, "donotshow checked. asktowlan_value : BUTTON_NEGATIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v2, "asktowlan_value"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    .end local v0    # "edit_beforeValue":Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->finish()V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0d01ef

    const/4 v6, 0x0

    .line 36
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const-string v3, "ConnHandler"

    const-string v4, "CMCC Always Ask Pop Up Started"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->mSharedPreferences_donotshow:Landroid/content/SharedPreferences;

    .line 40
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->mSharedPreferences_beforeValue:Landroid/content/SharedPreferences;

    .line 41
    iget-object v3, p0, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->mSharedPreferences_donotshow:Landroid/content/SharedPreferences;

    const-string v4, "asktowlan_do_not_show"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 42
    .local v1, "do_not_show_again":Z
    iget-object v3, p0, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->mSharedPreferences_beforeValue:Landroid/content/SharedPreferences;

    const-string v4, "asktowlan_value"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 43
    .local v2, "mValue":Z
    if-eqz v1, :cond_1

    .line 44
    const-string v3, "ConnHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "on Create Do not Show again enabled. the Button Value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    if-eqz v2, :cond_0

    .line 46
    const-string v3, "ConnHandler"

    const-string v4, "Setted button is Yes"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->sendIntent()V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->finish()V

    .line 70
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string v3, "ConnHandler"

    const-string v4, "Setted button is No"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->finish()V

    goto :goto_0

    .line 56
    :cond_1
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 58
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v3, p0, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04025d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e136d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e053a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 61
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0537

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 63
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e1372

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 65
    const v3, 0x1080027

    iput v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 66
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 67
    iget-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->mcheck:Landroid/widget/CheckBox;

    .line 68
    iget-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->setupAlert()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 109
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 117
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 118
    iget-object v2, p0, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->mSharedPreferences_donotshow:Landroid/content/SharedPreferences;

    const-string v3, "asktowlan_do_not_show"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 119
    .local v0, "do_not_show_again":Z
    iget-object v2, p0, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->mSharedPreferences_beforeValue:Landroid/content/SharedPreferences;

    const-string v3, "asktowlan_value"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 120
    .local v1, "mValue":Z
    if-eqz v0, :cond_0

    .line 121
    const-string v2, "ConnHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on Create Do not Show again enabled. the Button Value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-eqz v1, :cond_1

    .line 123
    const-string v2, "ConnHandler"

    const-string v3, "Setted button is Yes"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->sendIntent()V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->finish()V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const-string v2, "ConnHandler"

    const-string v3, "Setted button is No"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->finish()V

    goto :goto_0
.end method

.method public sendIntent()V
    .locals 3

    .prologue
    .line 135
    const-string v1, "ConnHandler"

    const-string v2, "WLAN dialog will be opened"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 137
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v1, "settings"

    const-string v2, "wifi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->startActivity(Landroid/content/Intent;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;->finish()V

    .line 143
    return-void
.end method
