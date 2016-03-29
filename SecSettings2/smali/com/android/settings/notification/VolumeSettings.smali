.class public Lcom/android/settings/notification/VolumeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VolumeSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/VolumeSettings$Receiver;,
        Lcom/android/settings/notification/VolumeSettings$H;,
        Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field private static final RESTRICTED_KEYS:[Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/settings/notification/VolumeSettings$H;

.field private mIsEmerMode:Z

.field private mMusicPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private final mReceiver:Lcom/android/settings/notification/VolumeSettings$Receiver;

.field private mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mRingerMode:I

.field private mSuppressor:Landroid/content/ComponentName;

.field private mSystemPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mUserManager:Landroid/os/UserManager;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field private final mVolumeCallback:Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;

.field private final mVolumePrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/notification/VolumeSeekBarPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "media_volume"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "alarm_volume"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ring_volume"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "notification_volume"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "system_volume"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "waiting_tone_volume"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/notification/VolumeSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    .line 490
    new-instance v0, Lcom/android/settings/notification/VolumeSettings$2;

    invoke-direct {v0}, Lcom/android/settings/notification/VolumeSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/notification/VolumeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 95
    new-instance v0, Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings/notification/VolumeSettings;Lcom/android/settings/notification/VolumeSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mVolumeCallback:Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;

    .line 96
    new-instance v0, Lcom/android/settings/notification/VolumeSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/VolumeSettings$H;-><init>(Lcom/android/settings/notification/VolumeSettings;Lcom/android/settings/notification/VolumeSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mHandler:Lcom/android/settings/notification/VolumeSettings$H;

    .line 97
    new-instance v0, Lcom/android/settings/notification/VolumeSettings$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/VolumeSettings$Receiver;-><init>(Lcom/android/settings/notification/VolumeSettings;Lcom/android/settings/notification/VolumeSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mReceiver:Lcom/android/settings/notification/VolumeSettings$Receiver;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mVolumePrefs:Ljava/util/ArrayList;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/VolumeSettings;->mIsEmerMode:Z

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/notification/VolumeSettings;->mRingerMode:I

    .line 453
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/notification/VolumeSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/VolumeSettings;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/VolumeSettings$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/VolumeSettings;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mHandler:Lcom/android/settings/notification/VolumeSettings$H;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/VolumeSettings;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mVolumeCallback:Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/VolumeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/VolumeSettings;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSettings;->updateEffectsSuppressor()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/notification/VolumeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/VolumeSettings;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSettings;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/notification/VolumeSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/VolumeSettings;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/notification/VolumeSettings;->updateNotificationIcon(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/notification/VolumeSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/VolumeSettings;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/notification/VolumeSettings;->updateMusicIcon(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/notification/VolumeSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/VolumeSettings;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/notification/VolumeSettings;->updateSystemIcon(I)V

    return-void
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "suppressor"    # Landroid/content/ComponentName;

    .prologue
    .line 358
    iget-object v5, p0, Lcom/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 360
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 361
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 363
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 364
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 365
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 373
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "VolumeSettings"

    const-string v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # I
    .param p3, "muteIcon"    # I

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/VolumeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 240
    .local v0, "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mVolumeCallback:Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 241
    invoke-virtual {v0, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 242
    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {v0, p3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setMuteIcon(I)V

    .line 244
    return-object v0
.end method

.method private updateEffectsSuppressor()V
    .locals 7

    .prologue
    .line 345
    iget-object v2, p0, Lcom/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 346
    .local v0, "suppressor":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/settings/notification/VolumeSettings;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iput-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mSuppressor:Landroid/content/ComponentName;

    .line 348
    iget-object v2, p0, Lcom/android/settings/notification/VolumeSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v2, :cond_0

    .line 349
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    const v3, 0x1040595

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/VolumeSettings;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "text":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/settings/notification/VolumeSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    .line 353
    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSettings;->updateRingOrNotificationPreference()V

    goto :goto_0

    .line 349
    .end local v1    # "text":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateMusicIcon(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mMusicPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-lez p1, :cond_0

    const v0, 0x1080947

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(IZ)V

    .line 320
    return-void

    .line 319
    :cond_0
    const v0, 0x1080934

    goto :goto_0
.end method

.method private updateNotificationIcon(I)V
    .locals 7
    .param p1, "progress"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 294
    const-string v0, "VolumeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNotificationIcon : progress : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 296
    iget-object v4, p0, Lcom/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-lez p1, :cond_2

    const v0, 0x1080947

    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/notification/VolumeSettings;->mVoiceCapable:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v4, v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(IZ)V

    .line 302
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    if-eq v0, v6, :cond_6

    iget-boolean v0, p0, Lcom/android/settings/notification/VolumeSettings;->mVoiceCapable:Z

    if-eqz v0, :cond_6

    .line 303
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    .line 308
    :cond_0
    :goto_2
    iget-boolean v0, p0, Lcom/android/settings/notification/VolumeSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 309
    if-nez p1, :cond_7

    .line 310
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    .line 314
    :goto_3
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/VolumeSettings;->updateSystemIcon(I)V

    .line 316
    :cond_1
    return-void

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    if-ne v0, v2, :cond_3

    const v0, 0x108094f

    goto :goto_0

    :cond_3
    const v0, 0x1080934

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_1

    .line 305
    :cond_6
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    goto :goto_2

    .line 312
    :cond_7
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    goto :goto_3
.end method

.method private updateRingOrNotificationIcon(I)V
    .locals 6
    .param p1, "progress"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 276
    const-string v0, "VolumeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRingOrNotificationIcon : progress : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 279
    iget-object v4, p0, Lcom/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v0, :cond_1

    const v0, 0x1080947

    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(IZ)V

    .line 284
    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz p1, :cond_4

    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    .line 286
    :cond_0
    if-nez p1, :cond_5

    .line 287
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    .line 291
    :goto_3
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    if-ne v0, v2, :cond_2

    const v0, 0x108094f

    goto :goto_0

    :cond_2
    const v0, 0x1080934

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v0, v3

    .line 284
    goto :goto_2

    .line 289
    :cond_5
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    goto :goto_3
.end method

.method private updateRingOrNotificationPreference()V
    .locals 5

    .prologue
    const v1, 0x1080934

    const/4 v4, 0x1

    .line 256
    const-string v2, "VolumeSettings"

    const-string v3, "updateRingOrNotificationPreference : "

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-boolean v2, p0, Lcom/android/settings/notification/VolumeSettings;->mVoiceCapable:Z

    if-eqz v2, :cond_3

    .line 259
    iget-object v2, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 260
    .local v0, "mVolume":I
    iget-object v2, p0, Lcom/android/settings/notification/VolumeSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mSuppressor:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v2, v1, v4}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(IZ)V

    .line 267
    invoke-direct {p0, v0}, Lcom/android/settings/notification/VolumeSettings;->updateRingOrNotificationIcon(I)V

    .line 273
    :goto_1
    return-void

    .line 260
    :cond_1
    if-lez v0, :cond_2

    const v1, 0x1080947

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/settings/notification/VolumeSettings;->mRingerMode:I

    if-ne v3, v4, :cond_0

    const v1, 0x108094f

    goto :goto_0

    .line 269
    .end local v0    # "mVolume":I
    :cond_3
    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 270
    .restart local v0    # "mVolume":I
    invoke-direct {p0, v0}, Lcom/android/settings/notification/VolumeSettings;->updateNotificationIcon(I)V

    goto :goto_1
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 337
    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 339
    .local v0, "ringerMode":I
    iput v0, p0, Lcom/android/settings/notification/VolumeSettings;->mRingerMode:I

    .line 340
    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSettings;->updateRingOrNotificationPreference()V

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 342
    return-void
.end method

.method private updateSystemIcon(I)V
    .locals 6
    .param p1, "progress"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 323
    iget-object v4, p0, Lcom/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-lez p1, :cond_0

    const v0, 0x1080947

    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getUiSoundsStreamType()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(IZ)V

    .line 324
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 325
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    .line 329
    :goto_2
    return-void

    .line 323
    :cond_0
    const v0, 0x1080934

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 115
    const/16 v0, 0x47

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 200
    const-string v0, "VolumeSettings"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/VolumeSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/VolumeSettings$1;-><init>(Lcom/android/settings/notification/VolumeSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 233
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 234
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0800d4

    const/4 v6, 0x1

    const v5, 0x1080934

    .line 120
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mUserManager:Landroid/os/UserManager;

    .line 124
    iget-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/notification/VolumeSettings;->mVoiceCapable:Z

    .line 125
    iget-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 126
    invoke-virtual {p0, v7}, Lcom/android/settings/notification/VolumeSettings;->addPreferencesFromResource(I)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mVibrator:Landroid/os/Vibrator;

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    iput-boolean v6, p0, Lcom/android/settings/notification/VolumeSettings;->mIsEmerMode:Z

    .line 135
    :cond_0
    const-string v3, "media_volume"

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/notification/VolumeSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mMusicPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 136
    const-string v3, "notification_volume"

    const/4 v4, 0x5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/notification/VolumeSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 137
    const-string v3, "system_volume"

    invoke-direct {p0, v3, v6, v5}, Lcom/android/settings/notification/VolumeSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mSystemPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 139
    const-string v3, "alarm_volume"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/VolumeSettings;->removePreference(Ljava/lang/String;)V

    .line 140
    iget-boolean v3, p0, Lcom/android/settings/notification/VolumeSettings;->mVoiceCapable:Z

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    :cond_1
    const-string v3, "waiting_tone_volume"

    const/16 v4, 0x8

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/notification/VolumeSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 142
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 143
    const-string v3, "waiting_tone_volume_explanation"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/VolumeSettings;->removePreference(Ljava/lang/String;)V

    .line 150
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/notification/VolumeSettings;->mVoiceCapable:Z

    if-eqz v3, :cond_4

    .line 151
    const-string v3, "ring_volume"

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/notification/VolumeSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 152
    iget-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const v4, 0x7f0e05c2

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VolumeSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/notification/VolumeSettings;->mIsEmerMode:Z

    if-ne v3, v6, :cond_5

    .line 159
    iget-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;

    const-string v4, "UPSM"

    invoke-static {v3, v7, v4}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 160
    .local v2, "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_5

    .line 161
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 162
    .local v1, "list":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/VolumeSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_2

    .line 146
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/lang/String;
    .end local v2    # "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string v3, "waiting_tone_volume"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/VolumeSettings;->removePreference(Ljava/lang/String;)V

    .line 147
    const-string v3, "waiting_tone_volume_explanation"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/VolumeSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_4
    const-string v3, "ring_volume"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/VolumeSettings;->removePreference(Ljava/lang/String;)V

    .line 155
    iget-object v3, p0, Lcom/android/settings/notification/VolumeSettings;->mNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setOrder(I)V

    goto :goto_1

    .line 166
    :cond_5
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 193
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mVolumeCallback:Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;->stopSample()V

    .line 194
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mReceiver:Lcom/android/settings/notification/VolumeSettings$Receiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSettings$Receiver;->register(Z)V

    .line 195
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings;->mVolumeCallback:Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;->stopSample()V

    .line 251
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 170
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 171
    iget-object v7, p0, Lcom/android/settings/notification/VolumeSettings;->mReceiver:Lcom/android/settings/notification/VolumeSettings$Receiver;

    invoke-virtual {v7, v8}, Lcom/android/settings/notification/VolumeSettings$Receiver;->register(Z)V

    .line 172
    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSettings;->updateRingOrNotificationPreference()V

    .line 173
    iget-object v7, p0, Lcom/android/settings/notification/VolumeSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/settings/notification/VolumeSettings;->updateSystemIcon(I)V

    .line 174
    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSettings;->updateEffectsSuppressor()V

    .line 175
    iget-object v7, p0, Lcom/android/settings/notification/VolumeSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 176
    .local v6, "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    invoke-virtual {v6}, Lcom/android/settings/notification/VolumeSeekBarPreference;->onActivityResume()V

    goto :goto_0

    .line 178
    .end local v6    # "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    :cond_0
    iget-object v7, p0, Lcom/android/settings/notification/VolumeSettings;->mUserManager:Landroid/os/UserManager;

    const-string v9, "no_adjust_volume"

    invoke-virtual {v7, v9}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    .line 179
    .local v2, "isRestricted":Z
    sget-object v0, Lcom/android/settings/notification/VolumeSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v3, v0, v1

    .line 180
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/settings/notification/VolumeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 181
    .local v5, "pref":Landroid/preference/Preference;
    if-eqz v5, :cond_1

    .line 182
    if-nez v2, :cond_2

    move v7, v8

    :goto_2
    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 179
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 182
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 186
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "pref":Landroid/preference/Preference;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->invalidateViews()V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 188
    return-void
.end method
