.class public Lcom/android/settings/RingtoneSettingTabActivity;
.super Landroid/app/TabActivity;
.source "RingtoneSettingTabActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field private static mTabHost:Landroid/widget/TabHost;


# instance fields
.field private mActivePhone:I

.field private mContext:Landroid/content/Context;

.field private multiSimNum:I

.field receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/RingtoneSettingTabActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 114
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 115
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 118
    :cond_0
    return-void
.end method

.method private getSimName(I)Ljava/lang/String;
    .locals 8
    .param p1, "Sim_id"    # I

    .prologue
    const v7, 0x7f0e1538

    const v6, 0x7f0e1537

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "retString":Ljava/lang/String;
    const-string v3, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 172
    const-string v3, "gsm.sim.state"

    const/4 v4, 0x0

    const-string v5, "UNKNOWN"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "simState1":Ljava/lang/String;
    const-string v3, "gsm.sim.state"

    const/4 v4, 0x1

    const-string v5, "UNKNOWN"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "simState2":Ljava/lang/String;
    if-nez p1, :cond_3

    .line 175
    const-string v3, "READY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    .end local v1    # "simState1":Ljava/lang/String;
    .end local v2    # "simState2":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    :cond_0
    if-nez p1, :cond_7

    .line 198
    invoke-virtual {p0, v6}, Lcom/android/settings/RingtoneSettingTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    :cond_1
    :goto_1
    return-object v0

    .line 178
    .restart local v1    # "simState1":Ljava/lang/String;
    .restart local v2    # "simState2":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_name_1"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_3
    const-string v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_name_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 188
    .end local v1    # "simState1":Ljava/lang/String;
    .end local v2    # "simState2":Ljava/lang/String;
    :cond_5
    if-nez p1, :cond_6

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_name_1"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_name_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_7
    invoke-virtual {p0, v7}, Lcom/android/settings/RingtoneSettingTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setupSimTab(I)V
    .locals 6
    .param p1, "simSlot"    # I

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.DualSoundRingtoneSettings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v2, "sim Id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SETTINGS_SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "tabName":Ljava/lang/String;
    sget-object v2, Lcom/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    sget-object v3, Lcom/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/settings/RingtoneSettingTabActivity;->getSimName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/RingtoneSettingTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/android/settings/Utils;->getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 139
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/RingtoneSettingTabActivity;->mContext:Landroid/content/Context;

    .line 83
    iget-object v2, p0, Lcom/android/settings/RingtoneSettingTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Lcom/android/settings/RingtoneSettingTabActivity;->multiSimNum:I

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "sound title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "sound title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "tab_title":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/settings/RingtoneSettingTabActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    .end local v1    # "tab_title":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    sput-object v2, Lcom/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 91
    sget-object v2, Lcom/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 93
    const/4 v0, 0x0

    .local v0, "simSlotNum":I
    :goto_1
    iget v2, p0, Lcom/android/settings/RingtoneSettingTabActivity;->multiSimNum:I

    if-ge v0, v2, :cond_2

    .line 94
    invoke-direct {p0, v0}, Lcom/android/settings/RingtoneSettingTabActivity;->setupSimTab(I)V

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    .end local v0    # "simSlotNum":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings/RingtoneSettingTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 96
    .restart local v0    # "simSlotNum":I
    :cond_2
    sget-object v2, Lcom/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    iget v3, p0, Lcom/android/settings/RingtoneSettingTabActivity;->mActivePhone:I

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 97
    invoke-direct {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->configureActionBar()V

    .line 98
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 102
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 104
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->finish()V

    .line 105
    const/4 v0, 0x1

    return v0

    .line 102
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 166
    iget-object v0, p0, Lcom/android/settings/RingtoneSettingTabActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/RingtoneSettingTabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 167
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 143
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 144
    const/4 v3, 0x0

    .local v3, "simSlotNum":I
    :goto_0
    iget v4, p0, Lcom/android/settings/RingtoneSettingTabActivity;->multiSimNum:I

    if-ge v3, v4, :cond_0

    .line 145
    sget-object v4, Lcom/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 146
    .local v1, "simIcon":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/settings/RingtoneSettingTabActivity;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/settings/Utils;->getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    sget-object v4, Lcom/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 149
    .local v2, "simName":Landroid/widget/TextView;
    invoke-direct {p0, v3}, Lcom/android/settings/RingtoneSettingTabActivity;->getSimName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const/16 v4, 0xa

    invoke-virtual {v2, v4, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 151
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "simIcon":Landroid/widget/ImageView;
    .end local v2    # "simName":Landroid/widget/TextView;
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v4, Lcom/android/settings/RingtoneSettingTabActivity$1;

    invoke-direct {v4, p0}, Lcom/android/settings/RingtoneSettingTabActivity$1;-><init>(Lcom/android/settings/RingtoneSettingTabActivity;)V

    iput-object v4, p0, Lcom/android/settings/RingtoneSettingTabActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 161
    iget-object v4, p0, Lcom/android/settings/RingtoneSettingTabActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/android/settings/RingtoneSettingTabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v0, 0x0

    .local v0, "simSlotNum":I
    :goto_0
    iget v2, p0, Lcom/android/settings/RingtoneSettingTabActivity;->multiSimNum:I

    if-ge v0, v2, :cond_1

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SETTINGS_SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "tabName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    iput v0, p0, Lcom/android/settings/RingtoneSettingTabActivity;->mActivePhone:I

    .line 122
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "tabName":Ljava/lang/String;
    :cond_1
    return-void
.end method
