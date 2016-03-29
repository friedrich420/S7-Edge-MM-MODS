.class public Lcom/android/settings/DualSoundRingtoneSettings;
.super Landroid/preference/PreferenceActivity;
.source "DualSoundRingtoneSettings.java"


# static fields
.field private static myContext:Landroid/content/Context;


# instance fields
.field private mActivePhone:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private mRingtone2Preference:Landroid/preference/Preference;

.field private mRingtoneNotificationRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private offset:Ljava/lang/String;

.field receiver:Landroid/content/BroadcastReceiver;

.field private ringtone:Lcom/android/settings/DefaultRingtonePreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->receiver:Landroid/content/BroadcastReceiver;

    .line 109
    new-instance v0, Lcom/android/settings/DualSoundRingtoneSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DualSoundRingtoneSettings$1;-><init>(Lcom/android/settings/DualSoundRingtoneSettings;)V

    iput-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private UpdateRingtoneNotificationNames()V
    .locals 2

    .prologue
    .line 267
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtoneNotificationRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 268
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DualSoundRingtoneSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DualSoundRingtoneSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DualSoundRingtoneSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DualSoundRingtoneSettings;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/DualSoundRingtoneSettings;ILandroid/preference/Preference;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DualSoundRingtoneSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/preference/Preference;
    .param p3, "x3"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/DualSoundRingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 395
    const-string v5, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p2, :cond_2

    .line 396
    const-string v5, "DualSoundRingtoneSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inside canSetRingtone ringtone uri is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v5, "DualSoundRingtoneSettings"

    const-string v6, "Inside cansetringtone ringtone uri not null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content://media/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 399
    const-string v5, "DualSoundRingtoneSettings"

    const-string v6, "ringtoneUri.toString().contains(content:media)"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 403
    .local v0, "drmClient":Landroid/drm/DrmManagerClient;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v5}, Landroid/drm/DrmManagerClient;->canHandle(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 404
    const-string v5, "DualSoundRingtoneSettings"

    const-string v6, "drmClient.canHandle(ringtoneUri, null)"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v5, 0x2

    invoke-virtual {v0, p2, v5}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v2

    .line 406
    .local v2, "rightSts":I
    if-eqz v2, :cond_0

    .line 407
    const-string v5, "DualSoundRingtoneSettings"

    const-string v6, "PR DRM File Ringtone Rights Invalid !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .end local v0    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v2    # "rightSts":I
    :goto_0
    return v4

    .line 411
    .restart local v0    # "drmClient":Landroid/drm/DrmManagerClient;
    :cond_0
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    .line 412
    .local v3, "rtTemp":Landroid/media/Ringtone;
    const-string v5, "DualSoundRingtoneSettings"

    const-string v6, "RingtoneManager.getRingtone(context, ringtoneUri)"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    if-nez v3, :cond_1

    .line 414
    const-string v5, "DualSoundRingtoneSettings"

    const-string v6, "returning false because rtTemp is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v5, "DualSoundRingtoneSettings"

    const-string v6, "getRingtone() null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 418
    .end local v3    # "rtTemp":Landroid/media/Ringtone;
    :catch_0
    move-exception v1

    .line 419
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "DualSoundRingtoneSettings"

    const-string v5, "canSetRingtone() exception !!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .end local v0    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 424
    :cond_2
    const-string v4, "DualSoundRingtoneSettings"

    const-string v5, "inside canSetRingtone ringtone uri is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 506
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 507
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 509
    :cond_0
    return-void
.end method

.method private updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 12
    .param p1, "originalUri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 430
    const-string v9, "DualSoundRingtoneSettings"

    const-string v10, "UpdateMediaDB"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 432
    .local v3, "filePath":Ljava/lang/String;
    const-string v9, "DualSoundRingtoneSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file path : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, "extension":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 435
    const/16 v9, 0x2e

    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 436
    .local v0, "dotPos":I
    if-ltz v0, :cond_0

    .line 437
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 442
    .end local v0    # "dotPos":I
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 444
    .local v4, "mimeType":Ljava/lang/String;
    const-string v9, "DualSoundRingtoneSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateMediaDB - extension("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), mimeType("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    if-nez v4, :cond_2

    .line 448
    const-string v9, "3ga"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 449
    const-string v9, "DualSoundRingtoneSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateMediaDB - no mimeType, but it\'s audio file extension - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 478
    .local v5, "newSoundFile":Ljava/io/File;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 479
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "_data"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v9, "title"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v9, "mime_type"

    const-string v10, "audio/*"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v9, "_size"

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 484
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 485
    .local v7, "tempUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_data=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 487
    .local v6, "newUri":Landroid/net/Uri;
    const-string v9, "DualSoundRingtoneSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateMediaDB - tempUri("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), newUri("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "newSoundFile":Ljava/io/File;
    .end local v6    # "newUri":Landroid/net/Uri;
    .end local v7    # "tempUri":Landroid/net/Uri;
    .end local v8    # "values":Landroid/content/ContentValues;
    :goto_0
    return-object v6

    .line 452
    .restart local v4    # "mimeType":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v9, "audio"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 453
    const-string v9, "DualSoundRingtoneSettings"

    const-string v10, "updateMediaDB - mimeType is not audio - return null"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 457
    .end local v4    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 458
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "DualSoundRingtoneSettings"

    const-string v10, "updateMediaDB - exception is Occured - return null"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateRingtoneData(I)V
    .locals 3
    .param p1, "ringtoneType"    # I

    .prologue
    const/4 v2, 0x1

    .line 512
    if-ne p1, v2, :cond_1

    .line 513
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-direct {p0, v2, v0, v2}, Lcom/android/settings/DualSoundRingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtone2Preference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 519
    const/16 v0, 0x80

    iget-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtone2Preference:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/DualSoundRingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    goto :goto_0
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "preference"    # Landroid/preference/Preference;
    .param p3, "msg"    # I

    .prologue
    .line 217
    if-nez p2, :cond_0

    .line 243
    :goto_0
    return-void

    .line 221
    :cond_0
    move-object v6, p0

    .line 222
    .local v6, "context":Landroid/content/Context;
    invoke-static {v6, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 223
    .local v1, "ringtoneUri":Landroid/net/Uri;
    const v0, 0x10403a7

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 225
    .local v8, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 226
    const v0, 0x10403a5

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 242
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 230
    :cond_2
    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 232
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 233
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 236
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 238
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private updateState(Z)V
    .locals 4
    .param p1, "force"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 278
    iget-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 280
    .local v0, "ringerMode":I
    if-eqz p1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 282
    iget-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 287
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 285
    iget-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getmActivePhone()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    return v0
.end method

.method public handleRingtonePicked(Landroid/net/Uri;I)V
    .locals 7
    .param p1, "pickedUri"    # Landroid/net/Uri;
    .param p2, "ringtoneType"    # I

    .prologue
    const v6, 0x7f0e10ef

    const/4 v5, 0x0

    .line 345
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 346
    :cond_0
    const-string v2, "DualSoundRingtoneSettings"

    const-string v3, "handleRingtonePicked() : Not changed"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/settings/DualSoundRingtoneSettings;->updateRingtoneData(I)V

    .line 391
    :goto_1
    return-void

    .line 348
    :cond_2
    const-string v2, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/settings/DualSoundRingtoneSettings;->myContext:Landroid/content/Context;

    invoke-direct {p0, v2, p1}, Lcom/android/settings/DualSoundRingtoneSettings;->canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 349
    const-string v2, "DualSoundRingtoneSettings"

    const-string v3, "Inside cansetringtone false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 355
    :cond_3
    const-string v2, "DualSoundRingtoneSettings"

    const-string v3, "handleRingtonePicked updating media DB"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 357
    invoke-direct {p0, p1}, Lcom/android/settings/DualSoundRingtoneSettings;->updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 359
    if-nez p1, :cond_4

    .line 360
    const-string v2, "DualSoundRingtoneSettings"

    const-string v3, "handleRingtonePicked - pickedUri is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 366
    :cond_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 367
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "is_ringtone"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 371
    const-string v2, "DualSoundRingtoneSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRingtonePicked - pickedUri("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), ringtoneType("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-static {p0, p2, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 381
    :goto_2
    iget-object v2, p0, Lcom/android/settings/DualSoundRingtoneSettings;->offset:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 382
    const/16 v2, 0x80

    if-ne p2, v2, :cond_5

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "recommendation_time_2"

    iget-object v4, p0, Lcom/android/settings/DualSoundRingtoneSettings;->offset:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "DualSoundRingtoneSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRingtonePicked(IllegalArgumentException): pickedUri is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 376
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DualSoundRingtoneSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRingtonePicked(Exception): pickedUri is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 386
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "recommendation_time"

    iget-object v4, p0, Lcom/android/settings/DualSoundRingtoneSettings;->offset:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 291
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 293
    packed-switch p1, :pswitch_data_0

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 295
    :pswitch_0
    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 297
    .local v0, "pickedUri":Landroid/net/Uri;
    const-string v1, "highlight_offset"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings;->offset:Ljava/lang/String;

    .line 303
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DualSoundRingtoneSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 308
    .end local v0    # "pickedUri":Landroid/net/Uri;
    :pswitch_1
    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 310
    .restart local v0    # "pickedUri":Landroid/net/Uri;
    const-string v1, "highlight_offset"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings;->offset:Ljava/lang/String;

    .line 316
    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DualSoundRingtoneSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 125
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mContext:Landroid/content/Context;

    .line 127
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/android/settings/DualSoundRingtoneSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 130
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "sim Id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 131
    const-string v3, "sim Id"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    .line 132
    const-string v3, "DualSoundRingtoneSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intent.hasExtra(SIM_CARD_ID) exist. mActivePhone : ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    const-string v3, "sound title"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "sound title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/settings/DualSoundRingtoneSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    const v3, 0x7f080048

    invoke-virtual {p0, v3}, Lcom/android/settings/DualSoundRingtoneSettings;->addPreferencesFromResource(I)V

    .line 151
    const-string v3, "ringtone"

    invoke-virtual {p0, v3}, Lcom/android/settings/DualSoundRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v3, p0, Lcom/android/settings/DualSoundRingtoneSettings;->ringtone:Lcom/android/settings/DefaultRingtonePreference;

    .line 152
    iget-object v3, p0, Lcom/android/settings/DualSoundRingtoneSettings;->ringtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/DefaultRingtonePreference;->setObjectDual(Lcom/android/settings/DualSoundRingtoneSettings;)V

    .line 155
    :try_start_0
    const-string v3, "com.android.settings"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/DualSoundRingtoneSettings;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/android/settings/DualSoundRingtoneSettings;->myContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_1
    const-string v3, "ringtone"

    invoke-virtual {p0, v3}, Lcom/android/settings/DualSoundRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 162
    iget-object v3, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    .line 163
    iget-object v3, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 165
    :cond_1
    const-string v3, "ringtone2"

    invoke-virtual {p0, v3}, Lcom/android/settings/DualSoundRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtone2Preference:Landroid/preference/Preference;

    .line 166
    iget-object v3, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtone2Preference:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 167
    iget-object v3, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtone2Preference:Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 169
    :cond_2
    const-string v3, "notification_sound"

    invoke-virtual {p0, v3}, Lcom/android/settings/DualSoundRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;

    .line 170
    iget-object v3, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_3

    .line 171
    iget-object v3, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 174
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->configureActionBar()V

    .line 176
    new-instance v3, Lcom/android/settings/DualSoundRingtoneSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/DualSoundRingtoneSettings$2;-><init>(Lcom/android/settings/DualSoundRingtoneSettings;)V

    iput-object v3, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtoneNotificationRunnable:Ljava/lang/Runnable;

    .line 214
    return-void

    .line 134
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v6, :cond_5

    const/4 v3, 0x5

    invoke-static {v6}, Lcom/samsung/android/telephony/MultiSimManager;->getSimState(I)I

    move-result v4

    if-ne v3, v4, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 137
    iput v6, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    .line 141
    :goto_2
    const-string v3, "DualSoundRingtoneSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intent.hasExtra(SIM_CARD_ID) not exist. mActivePhone : ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 139
    :cond_5
    iput v5, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    goto :goto_2

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DualSoundRingtoneSettings"

    const-string v4, "GPS sound settings: error getting activity of create package context"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 494
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 500
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 496
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->finish()V

    .line 497
    const/4 v0, 0x1

    return v0

    .line 494
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onMusicPickerChosen(I)V
    .locals 4
    .param p1, "ringtoneType"    # I

    .prologue
    const/4 v3, 0x1

    .line 323
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 324
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v2, "audio/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 327
    const-string v2, "enable_ringtone_recommender"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 328
    const-string v2, "DocumentsUIPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    if-ne p1, v3, :cond_0

    .line 331
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/DualSoundRingtoneSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 337
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    const/4 v2, 0x2

    :try_start_1
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/DualSoundRingtoneSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 338
    :catch_1
    move-exception v0

    .line 339
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 273
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/DualSoundRingtoneSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 274
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 253
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/DualSoundRingtoneSettings;->updateState(Z)V

    .line 254
    invoke-direct {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->UpdateRingtoneNotificationNames()V

    .line 255
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/settings/DualSoundRingtoneSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/DualSoundRingtoneSettings$3;-><init>(Lcom/android/settings/DualSoundRingtoneSettings;)V

    iput-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings;->receiver:Landroid/content/BroadcastReceiver;

    .line 263
    iget-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DualSoundRingtoneSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 264
    return-void
.end method
