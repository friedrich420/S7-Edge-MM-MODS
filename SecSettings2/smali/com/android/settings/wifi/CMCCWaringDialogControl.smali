.class public Lcom/android/settings/wifi/CMCCWaringDialogControl;
.super Lcom/android/internal/app/AlertActivity;
.source "CMCCWaringDialogControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field static mEnableWarningDialog:Landroid/app/AlertDialog;


# instance fields
.field private aplist_do_not_show_again:Z

.field private asktowlan_do_not_show_again:Z

.field private cmccap_do_not_show_again:Z

.field private donotshowagain:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsReceiverRegistered:Z

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mallistcheckbox:Landroid/widget/CheckBox;

.field private malwaysaskcheckbox:Landroid/widget/CheckBox;

.field private mcmccapcheckbox:Landroid/widget/CheckBox;

.field private mfightmodecheckbox:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mEnableWarningDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mIsReceiverRegistered:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->donotshowagain:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->cmccap_do_not_show_again:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->aplist_do_not_show_again:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->asktowlan_do_not_show_again:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 148
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/wifi/CMCCWaringDialogControl;->overridePendingTransition(II)V

    .line 149
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 120
    .local v0, "SharedPreferences_edit":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f0d0116

    if-ne v1, v2, :cond_1

    .line 121
    const-string v1, "CMCCWaringDialogControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmcc_wlan checked. - BUTTON ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v1, "cmccap_do_not_show"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f0d0119

    if-ne v1, v2, :cond_3

    .line 125
    const-string v1, "CMCCWaringDialogControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fight_mode checked. - BUTTON ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-eqz p2, :cond_2

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/wifi/CMCCWaringDialogControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tw_globalactions_dont_show_again"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/CMCCWaringDialogControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tw_globalactions_dont_show_again"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f0d0118

    if-ne v1, v2, :cond_4

    .line 131
    const-string v1, "CMCCWaringDialogControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alwaysask checked. - BUTTON ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v1, "asktowlan_do_not_show"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 134
    :cond_4
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    const v2, 0x7f0d0117

    if-ne v1, v2, :cond_0

    .line 135
    const-string v1, "CMCCWaringDialogControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wlan_aplist checked. - BUTTON ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v1, "aplist_do_not_show"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 108
    packed-switch p2, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 110
    :pswitch_0
    const-string v0, "CMCCWaringDialogControl"

    const-string v1, "Selected button is Yes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/wifi/CMCCWaringDialogControl;->finish()V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f0d0118

    const v7, 0x7f0d0117

    const v6, 0x7f0d0116

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 56
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const-string v1, "CMCCWaringDialogControl"

    const-string v4, "CMCC Charge Waring DialogStarted"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 62
    iget-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "cmccap_do_not_show"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->cmccap_do_not_show_again:Z

    .line 63
    iget-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "aplist_do_not_show"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->aplist_do_not_show_again:Z

    .line 64
    iget-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "asktowlan_do_not_show"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->asktowlan_do_not_show_again:Z

    .line 69
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/CMCCWaringDialogControl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mInflater:Landroid/view/LayoutInflater;

    .line 70
    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 71
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04005d

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/wifi/CMCCWaringDialogControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0e0bcd

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/wifi/CMCCWaringDialogControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0e1039

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 74
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/wifi/CMCCWaringDialogControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0e0bce

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 76
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 77
    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mcmccapcheckbox:Landroid/widget/CheckBox;

    .line 78
    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mallistcheckbox:Landroid/widget/CheckBox;

    .line 79
    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x7f0d0119

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mfightmodecheckbox:Landroid/widget/CheckBox;

    .line 80
    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->malwaysaskcheckbox:Landroid/widget/CheckBox;

    .line 81
    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x7f0d0119

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mcmccapcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 86
    iget-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mfightmodecheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    iget-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->malwaysaskcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    iget-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mallistcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 90
    iget-object v4, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mcmccapcheckbox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->cmccap_do_not_show_again:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 92
    iget-object v4, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mallistcheckbox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->aplist_do_not_show_again:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/wifi/CMCCWaringDialogControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_networks_available_notification_on"

    iget-boolean v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->aplist_do_not_show_again:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 95
    iget-object v4, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->malwaysaskcheckbox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->asktowlan_do_not_show_again:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/wifi/CMCCWaringDialogControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "tw_globalactions_dont_show_again"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_4

    .line 97
    iget-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mfightmodecheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 101
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/CMCCWaringDialogControl;->setupAlert()V

    .line 103
    return-void

    :cond_0
    move v1, v3

    .line 90
    goto :goto_0

    :cond_1
    move v1, v3

    .line 92
    goto :goto_1

    :cond_2
    move v1, v3

    .line 93
    goto :goto_2

    :cond_3
    move v1, v3

    .line 95
    goto :goto_3

    .line 99
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mfightmodecheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 144
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "cmccap_do_not_show"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->cmccap_do_not_show_again:Z

    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "aplist_do_not_show"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->aplist_do_not_show_again:Z

    .line 155
    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "asktowlan_do_not_show"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->asktowlan_do_not_show_again:Z

    .line 157
    iget-object v3, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mcmccapcheckbox:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->cmccap_do_not_show_again:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 159
    iget-object v3, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mallistcheckbox:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->aplist_do_not_show_again:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/wifi/CMCCWaringDialogControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_notification_on"

    iget-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->aplist_do_not_show_again:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    iget-object v3, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->malwaysaskcheckbox:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->asktowlan_do_not_show_again:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/wifi/CMCCWaringDialogControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "tw_globalactions_dont_show_again"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    .line 163
    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mfightmodecheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 167
    :goto_4
    return-void

    :cond_0
    move v0, v2

    .line 157
    goto :goto_0

    :cond_1
    move v0, v2

    .line 159
    goto :goto_1

    :cond_2
    move v0, v2

    .line 160
    goto :goto_2

    :cond_3
    move v0, v2

    .line 161
    goto :goto_3

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogControl;->mfightmodecheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4
.end method
