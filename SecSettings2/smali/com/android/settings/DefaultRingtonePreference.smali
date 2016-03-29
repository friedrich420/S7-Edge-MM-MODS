.class public Lcom/android/settings/DefaultRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "DefaultRingtonePreference.java"


# instance fields
.field private isWidget:Ljava/lang/Boolean;

.field private mActivePhone:I

.field private mResultListener:Lcom/android/settings/RingtoneRecommender$OnHighlightResultListener;

.field private mRingtoneDual:Lcom/android/settings/DualSoundRingtoneSettings;

.field private mRingtoneNotificationSettings:Lcom/android/settings/notification/NotificationSettings;

.field private mRingtoneNotificationsSubSettings:Lcom/android/settings/notification/NotificationsSubSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    .line 187
    new-instance v3, Lcom/android/settings/DefaultRingtonePreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings/DefaultRingtonePreference$1;-><init>(Lcom/android/settings/DefaultRingtonePreference;)V

    iput-object v3, p0, Lcom/android/settings/DefaultRingtonePreference;->mResultListener:Lcom/android/settings/RingtoneRecommender$OnHighlightResultListener;

    .line 52
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/DualSoundRingtoneSettings;

    move-object v1, v0

    .line 53
    .local v1, "dualSound":Lcom/android/settings/DualSoundRingtoneSettings;
    invoke-virtual {v1}, Lcom/android/settings/DualSoundRingtoneSettings;->getmActivePhone()I

    move-result v3

    iput v3, p0, Lcom/android/settings/DefaultRingtonePreference;->mActivePhone:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v1    # "dualSound":Lcom/android/settings/DualSoundRingtoneSettings;
    :goto_0
    const-string v3, "DefaultRingtonePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DefaultRingtonePreference | mActivePhone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/DefaultRingtonePreference;->mActivePhone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v3

    iget v4, p0, Lcom/android/settings/DefaultRingtonePreference;->mActivePhone:I

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->convertSettingForType(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/DefaultRingtonePreference;->setRingtoneType(I)V

    .line 60
    return-void

    .line 54
    :catch_0
    move-exception v2

    .line 55
    .local v2, "ex":Ljava/lang/ClassCastException;
    iput v4, p0, Lcom/android/settings/DefaultRingtonePreference;->mActivePhone:I

    .line 56
    const-string v3, "DefaultRingtonePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DefaultRingtonePreference casting exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/DefaultRingtonePreference;->mActivePhone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " message"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 133
    invoke-super {p0, p1, p2, p3}, Landroid/preference/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 135
    .local v0, "result":Ljava/lang/Boolean;
    if-ne p2, v3, :cond_0

    .line 136
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneDual:Lcom/android/settings/DualSoundRingtoneSettings;

    if-nez v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneNotificationSettings:Lcom/android/settings/notification/NotificationSettings;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/NotificationSettings;->onMusicPickerChosen(I)V

    .line 155
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq p2, v3, :cond_1

    .line 156
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    .line 160
    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneNotificationSettings:Lcom/android/settings/notification/NotificationSettings;

    invoke-virtual {v1}, Lcom/android/settings/notification/NotificationSettings;->finish()V

    .line 163
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneDual:Lcom/android/settings/DualSoundRingtoneSettings;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/DualSoundRingtoneSettings;->onMusicPickerChosen(I)V

    goto :goto_0

    .line 150
    :cond_3
    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneNotificationSettings:Lcom/android/settings/notification/NotificationSettings;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/NotificationSettings;->onMusicPickerChosen(I)V

    goto :goto_0
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "ringtonePickerIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 64
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 70
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    const-string v0, "DefaultRingtonePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareRingtonePickerIntent mActivePhone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/DefaultRingtonePreference;->mActivePhone:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    .line 76
    :cond_0
    const-string v0, "neutral_button"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    const-string v0, "neutral_button_text"

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e13aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v0, "DefaultRingtonePreference"

    const-string v1, "add extra: neutral_button true"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 10
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 94
    if-eqz p1, :cond_0

    .line 95
    new-instance v9, Landroid/media/RingtoneManager;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 96
    .local v9, "mRingtoneManager":Landroid/media/RingtoneManager;
    invoke-virtual {v9, p1}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 123
    .end local v9    # "mRingtoneManager":Landroid/media/RingtoneManager;
    :cond_0
    :goto_0
    return-void

    .line 99
    .restart local v9    # "mRingtoneManager":Landroid/media/RingtoneManager;
    :cond_1
    const/4 v6, 0x0

    .line 102
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "title"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 104
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 106
    .local v7, "mFilePath":Ljava/lang/String;
    new-instance v8, Lcom/android/settings/RingtoneRecommender;

    invoke-direct {v8}, Lcom/android/settings/RingtoneRecommender;-><init>()V

    .line 107
    .local v8, "mRecommender":Lcom/android/settings/RingtoneRecommender;
    invoke-virtual {v8, v7}, Lcom/android/settings/RingtoneRecommender;->open(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 108
    invoke-virtual {v8}, Lcom/android/settings/RingtoneRecommender;->is_extractable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->mResultListener:Lcom/android/settings/RingtoneRecommender$OnHighlightResultListener;

    invoke-virtual {v8, v0}, Lcom/android/settings/RingtoneRecommender;->doExtract(Lcom/android/settings/RingtoneRecommender$OnHighlightResultListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v7    # "mFilePath":Ljava/lang/String;
    .end local v8    # "mRecommender":Lcom/android/settings/RingtoneRecommender;
    :cond_2
    :goto_1
    if-eqz v6, :cond_0

    .line 118
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 111
    .restart local v7    # "mFilePath":Ljava/lang/String;
    .restart local v8    # "mRecommender":Lcom/android/settings/RingtoneRecommender;
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, v8, Lcom/android/settings/RingtoneRecommender;->mIsOpen:Z

    .line 112
    invoke-virtual {v8}, Lcom/android/settings/RingtoneRecommender;->close()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 117
    .end local v7    # "mFilePath":Ljava/lang/String;
    .end local v8    # "mRecommender":Lcom/android/settings/RingtoneRecommender;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 118
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public setObject(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p1, "soundSettings"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneNotificationSettings:Lcom/android/settings/notification/NotificationSettings;

    .line 174
    return-void
.end method

.method public setObject(Lcom/android/settings/notification/NotificationsSubSettings;)V
    .locals 0
    .param p1, "soundSettings"    # Lcom/android/settings/notification/NotificationsSubSettings;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneNotificationsSubSettings:Lcom/android/settings/notification/NotificationsSubSettings;

    .line 179
    return-void
.end method

.method public setObjectDual(Lcom/android/settings/DualSoundRingtoneSettings;)V
    .locals 0
    .param p1, "soundSettings"    # Lcom/android/settings/DualSoundRingtoneSettings;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneDual:Lcom/android/settings/DualSoundRingtoneSettings;

    .line 184
    return-void
.end method
