.class public Lcom/android/settings/wifi/CMCCWaringDialogPreference;
.super Landroid/preference/DialogPreference;
.source "CMCCWaringDialogPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private aplist_do_not_show_again:Z

.field private asktowlan_do_not_show_again:Z

.field private cmccap_do_not_show_again:Z

.field private mContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mallistcheckbox:Landroid/widget/CheckBox;

.field private malwaysaskcheckbox:Landroid/widget/CheckBox;

.field private mcmccapcheckbox:Landroid/widget/CheckBox;

.field private mfightmodecheckbox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/CMCCWaringDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/CMCCWaringDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/wifi/CMCCWaringDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    iput-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->cmccap_do_not_show_again:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->aplist_do_not_show_again:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->asktowlan_do_not_show_again:Z

    .line 50
    iput-object p1, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->mContext:Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->initDialog()V

    .line 52
    return-void
.end method

.method private initDialog()V
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f04005d

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->setDialogLayoutResource(I)V

    .line 56
    const v0, 0x7f0e1039

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->setPositiveButtonText(I)V

    .line 57
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 69
    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "cmccap_do_not_show"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->cmccap_do_not_show_again:Z

    .line 70
    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "aplist_do_not_show"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->aplist_do_not_show_again:Z

    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "asktowlan_do_not_show"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->asktowlan_do_not_show_again:Z

    .line 72
    const v0, 0x7f0d0116

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->mcmccapcheckbox:Landroid/widget/CheckBox;

    .line 73
    const v0, 0x7f0d0117

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->mallistcheckbox:Landroid/widget/CheckBox;

    .line 74
    const v0, 0x7f0d0119

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->mfightmodecheckbox:Landroid/widget/CheckBox;

    .line 75
    const v0, 0x7f0d0118

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->malwaysaskcheckbox:Landroid/widget/CheckBox;

    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->mcmccapcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->mallistcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->mfightmodecheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->malwaysaskcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->mcmccapcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->mfightmodecheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->malwaysaskcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->mallistcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    iget-object v3, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->mcmccapcheckbox:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->cmccap_do_not_show_again:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 85
    iget-object v3, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->mallistcheckbox:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->aplist_do_not_show_again:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 87
    iget-object v3, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->malwaysaskcheckbox:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->asktowlan_do_not_show_again:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "tw_globalactions_dont_show_again"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->mfightmodecheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 93
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 84
    goto :goto_0

    :cond_1
    move v0, v2

    .line 85
    goto :goto_1

    :cond_2
    move v0, v2

    .line 87
    goto :goto_2

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->mfightmodecheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    iget-object v3, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 111
    .local v0, "SharedPreferences_edit":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    const v4, 0x7f0d0116

    if-ne v3, v4, :cond_1

    .line 112
    const-string v1, "CMCCWaringDialogPreference"

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

    .line 113
    const-string v1, "cmccap_do_not_show"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    const v4, 0x7f0d0119

    if-ne v3, v4, :cond_3

    .line 116
    const-string v3, "CMCCWaringDialogPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fight_mode checked. - BUTTON ,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-eqz p2, :cond_2

    .line 118
    iget-object v1, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "tw_globalactions_dont_show_again"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 120
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tw_globalactions_dont_show_again"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    const v4, 0x7f0d0118

    if-ne v3, v4, :cond_4

    .line 122
    const-string v1, "CMCCWaringDialogPreference"

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

    .line 123
    const-string v1, "asktowlan_do_not_show"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 125
    :cond_4
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    const v4, 0x7f0d0117

    if-ne v3, v4, :cond_0

    .line 126
    const-string v3, "CMCCWaringDialogPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wlan_aplist checked. - BUTTON ,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v3, "aplist_do_not_show"

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    iget-object v3, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_notification_on"

    if-eqz p2, :cond_5

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 97
    packed-switch p2, :pswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 100
    :pswitch_0
    const-string v0, "CMCCWaringDialogPreference"

    const-string v1, "Selected button is Yes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/wifi/CMCCWaringDialogPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0bce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 63
    return-void
.end method
