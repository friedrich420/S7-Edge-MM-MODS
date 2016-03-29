.class public final Lcom/android/settings/personalpage/PersonalPageEnabler;
.super Landroid/preference/PreferenceActivity;
.source "PersonalPageEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mCheck:I

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsInMainMenu:Z

.field private mPosition:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Lcom/android/settings/widget/SwitchBar;

.field state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/settings/widget/SwitchBar;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mIsInMainMenu:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 33
    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mPosition:I

    .line 37
    new-instance v0, Lcom/android/settings/personalpage/PersonalPageEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/personalpage/PersonalPageEnabler$1;-><init>(Lcom/android/settings/personalpage/PersonalPageEnabler;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    .line 51
    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->state:I

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.settings.PERSONALPAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/settings/widget/SwitchBar;
    .param p3, "in_main_menu"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/settings/personalpage/PersonalPageEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    .line 57
    iput-boolean p3, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mIsInMainMenu:Z

    .line 58
    return-void
.end method


# virtual methods
.method public isLockTaskMode()Z
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mActivityManager:Landroid/app/ActivityManager;

    .line 193
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "PersonalPageEnabler"

    const-string v1, "isLockTaskMode() : true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    .line 197
    :cond_0
    const-string v0, "PersonalPageEnabler"

    const-string v1, "isLockTaskMode() : false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 10
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const v9, 0x10008000

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 134
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "personal_mode_enabled"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 135
    .local v3, "state":I
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "personal_mode_lock_type"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 137
    .local v0, "LockType":I
    const-string v4, "PersonalPageEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Switch CheckedChanged: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageEnabler;->isLockTaskMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    if-nez v3, :cond_0

    .line 141
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 145
    :goto_0
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    const v5, 0x7f0e11c0

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 189
    :goto_1
    return-void

    .line 143
    :cond_0
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v8}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 149
    :cond_1
    if-nez v3, :cond_2

    if-nez v0, :cond_2

    .line 150
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.settings.PERSONALPAGE_ACTIVITY_LOCKTYPE_LAUNCH"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 156
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    if-eqz v3, :cond_3

    if-eq v3, v8, :cond_3

    .line 157
    const-string v4, "PersonalPageEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in progress - DB_PERSONAL_MODE_ON state :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 158
    :cond_3
    if-eqz p2, :cond_5

    if-nez v3, :cond_5

    .line 159
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 160
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 162
    iget-boolean v4, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mIsInMainMenu:Z

    if-eqz v4, :cond_4

    .line 163
    const-string v4, "PersonalPageEnabler"

    const-string v5, "Outter switch is on"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v2, "pIntent":Landroid/content/Intent;
    const-string v4, "switchon"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 170
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.personalpage.PersonalPageDisclaimer"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 172
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 165
    .end local v2    # "pIntent":Landroid/content/Intent;
    :cond_4
    const-string v4, "PersonalPageEnabler"

    const-string v5, "inner switch is on"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 174
    :cond_5
    if-nez p2, :cond_6

    if-ne v3, v8, :cond_6

    .line 176
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 177
    const-string v4, "PersonalPageEnabler"

    const-string v5, "switch is off"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v3, 0x0

    .line 179
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 180
    .restart local v2    # "pIntent":Landroid/content/Intent;
    const-string v4, "switchon"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.personalpage.PersonalPageDisclaimer"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 183
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 186
    .end local v2    # "pIntent":Landroid/content/Intent;
    :cond_6
    const-string v4, "PersonalPageEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state and Switch is in equal state :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.PERSONALPAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PersonalPageEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCheck = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mCheck:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v1, "PersonalPageEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PERSONALPAGE_ONOFF = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "personal_mode_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mCheck:I

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 98
    const-string v1, "changed"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 104
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 105
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 106
    return-void

    .line 100
    :cond_0
    const-string v1, "changed"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 85
    .local v0, "state":I
    const-string v1, "PersonalPageEnabler"

    const-string v2, "resume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iput v0, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mCheck:I

    .line 87
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 88
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.settings.PERSONALPAGE_SWITCH_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    return-void
.end method
