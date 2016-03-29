.class public Lcom/android/settings/notification/SoundEffectSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SoundEffectSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SoundEffectSettings$SettingsObserver;,
        Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;
    }
.end annotation


# static fields
.field private static final KEYS:[Ljava/lang/String;

.field private static final PREFS:[Lcom/android/settings/notification/SettingPref;

.field private static final PREF_K2HD:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_SOUND_ALIVE:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_TUBE_AMP:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_UHQ_UPSCALER:Lcom/android/settings/notification/SettingPref;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final SUPPORT_FW_FEATURE_LOGGING:Z

.field private static final sFloatingFeature:Lcom/samsung/android/feature/FloatingFeature;


# instance fields
.field private currentUser:Landroid/content/pm/UserInfo;

.field private intentFilter:Landroid/content/IntentFilter;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentAudioPath:I

.field private mEnabledSoundAlive:Z

.field private mEnabledTubeAmp:Z

.field private mEnabledUhqUpscaler:Z

.field private mMusicReceiver:Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;

.field private mMySound:Landroid/preference/PreferenceScreen;

.field private final mSettingsObserver:Lcom/android/settings/notification/SoundEffectSettings$SettingsObserver;

.field private mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 86
    new-array v0, v8, [Ljava/lang/String;

    const-string v2, "uhq_upscaler"

    aput-object v2, v0, v6

    const-string v2, "sound_alive"

    aput-object v2, v0, v4

    const-string v2, "k2hd"

    aput-object v2, v0, v1

    const-string v2, "tube_amp"

    aput-object v2, v0, v7

    sput-object v0, Lcom/android/settings/notification/SoundEffectSettings;->KEYS:[Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/android/settings/notification/SoundEffectSettings$1;

    const-string v2, "uhq_upscaler"

    const-string v3, "k2hd_effect"

    new-array v5, v6, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SoundEffectSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/SoundEffectSettings;->PREF_UHQ_UPSCALER:Lcom/android/settings/notification/SettingPref;

    .line 93
    new-instance v0, Lcom/android/settings/notification/SoundEffectSettings$2;

    const-string v2, "sound_alive"

    const-string v3, "sound_alive_effect"

    new-array v5, v6, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SoundEffectSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/SoundEffectSettings;->PREF_SOUND_ALIVE:Lcom/android/settings/notification/SettingPref;

    .line 97
    new-instance v0, Lcom/android/settings/notification/SoundEffectSettings$3;

    const-string v2, "k2hd"

    const-string v3, "k2hd_effect"

    new-array v5, v6, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SoundEffectSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/SoundEffectSettings;->PREF_K2HD:Lcom/android/settings/notification/SettingPref;

    .line 101
    new-instance v0, Lcom/android/settings/notification/SoundEffectSettings$4;

    const-string v2, "tube_amp"

    const-string v3, "tube_amp_effect"

    new-array v5, v6, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SoundEffectSettings$4;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/SoundEffectSettings;->PREF_TUBE_AMP:Lcom/android/settings/notification/SettingPref;

    .line 105
    new-array v0, v8, [Lcom/android/settings/notification/SettingPref;

    sget-object v2, Lcom/android/settings/notification/SoundEffectSettings;->PREF_UHQ_UPSCALER:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v6

    sget-object v2, Lcom/android/settings/notification/SoundEffectSettings;->PREF_SOUND_ALIVE:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v4

    sget-object v2, Lcom/android/settings/notification/SoundEffectSettings;->PREF_K2HD:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/settings/notification/SoundEffectSettings;->PREF_TUBE_AMP:Lcom/android/settings/notification/SettingPref;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings/notification/SoundEffectSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    .line 131
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/SoundEffectSettings;->sFloatingFeature:Lcom/samsung/android/feature/FloatingFeature;

    .line 132
    sget-object v0, Lcom/android/settings/notification/SoundEffectSettings;->sFloatingFeature:Lcom/samsung/android/feature/FloatingFeature;

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/SoundEffectSettings;->SUPPORT_FW_FEATURE_LOGGING:Z

    .line 538
    new-instance v0, Lcom/android/settings/notification/SoundEffectSettings$5;

    invoke-direct {v0}, Lcom/android/settings/notification/SoundEffectSettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/notification/SoundEffectSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 87
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    .line 112
    new-instance v0, Lcom/android/settings/notification/SoundEffectSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/SoundEffectSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/SoundEffectSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundEffectSettings;->mSettingsObserver:Lcom/android/settings/notification/SoundEffectSettings$SettingsObserver;

    .line 115
    iput-boolean v1, p0, Lcom/android/settings/notification/SoundEffectSettings;->mEnabledSoundAlive:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/settings/notification/SoundEffectSettings;->mEnabledUhqUpscaler:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/settings/notification/SoundEffectSettings;->mEnabledTubeAmp:Z

    .line 123
    iput v1, p0, Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    .line 509
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/SoundEffectSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/SoundEffectSettings;

    .prologue
    .line 76
    iget v0, p0, Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/notification/SoundEffectSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/SoundEffectSettings;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/notification/SoundEffectSettings;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/SoundEffectSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/notification/SoundEffectSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/SoundEffectSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/SoundEffectSettings;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/notification/SoundEffectSettings;->setDimSwitchPreference()V

    return-void
.end method

.method static synthetic access$300()[Lcom/android/settings/notification/SettingPref;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/settings/notification/SoundEffectSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/SoundEffectSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/SoundEffectSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/notification/SoundEffectSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/SoundEffectSettings;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundEffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 633
    sget-boolean v2, Lcom/android/settings/notification/SoundEffectSettings;->SUPPORT_FW_FEATURE_LOGGING:Z

    if-nez v2, :cond_0

    .line 650
    :goto_0
    return-void

    .line 637
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 638
    .local v1, "row":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.android.settings.notification"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    if-eqz p2, :cond_1

    .line 641
    const-string v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :cond_1
    if-eqz p3, :cond_2

    .line 644
    const-string v2, "value"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 647
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 649
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setDimSwitchPreference()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 382
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v6, 0x4

    if-ge v1, v6, :cond_10

    .line 383
    iget-object v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    if-eqz v6, :cond_2

    .line 384
    const-string v4, ""

    .line 385
    .local v4, "setting":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 400
    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v9, 0x1

    invoke-static {v6, v4, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 401
    .local v5, "val":I
    iget-object v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v9, v6, v1

    if-eqz v5, :cond_3

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 403
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/16 v9, 0x64

    if-lt v6, v9, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/16 v9, 0xc8

    if-le v6, v9, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->currentUser:Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 405
    :cond_1
    iget v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    if-ne v6, v7, :cond_4

    .line 406
    iget-object v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 432
    :goto_3
    const-string v6, "sound_alive_effect"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 433
    iget-object v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 434
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mEnabledSoundAlive:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v4    # "setting":Ljava/lang/String;
    .end local v5    # "val":I
    :cond_2
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .restart local v4    # "setting":Ljava/lang/String;
    :pswitch_0
    const-string v4, "sound_alive_effect"

    .line 388
    goto :goto_1

    .line 391
    :pswitch_1
    const-string v4, "k2hd_effect"

    .line 392
    goto :goto_1

    .line 394
    :pswitch_2
    const-string v4, "tube_amp_effect"

    .line 395
    goto :goto_1

    .restart local v5    # "val":I
    :cond_3
    move v6, v8

    .line 401
    goto :goto_2

    .line 407
    :cond_4
    :try_start_1
    iget v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_7

    .line 408
    const-string v6, "k2hd_effect"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 409
    iget-object v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "bluetooth_a2dp_uhqa_support"

    const/4 v10, 0x0

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 410
    .local v2, "isSupport":I
    iget-object v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "bluetooth_a2dp_uhqa_mode"

    const/4 v10, 0x1

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 411
    .local v3, "isUhqMode":I
    if-ne v2, v7, :cond_5

    if-ne v3, v7, :cond_5

    .line 412
    iget-object v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 452
    .end local v2    # "isSupport":I
    .end local v3    # "isUhqMode":I
    .end local v5    # "val":I
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4

    .line 414
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "isSupport":I
    .restart local v3    # "isUhqMode":I
    .restart local v5    # "val":I
    :cond_5
    :try_start_2
    iget-object v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto :goto_3

    .line 417
    .end local v2    # "isSupport":I
    .end local v3    # "isUhqMode":I
    :cond_6
    iget-object v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto :goto_3

    .line 419
    :cond_7
    iget v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    if-nez v6, :cond_9

    .line 420
    const-string v6, "sound_alive_effect"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "2"

    const-string v9, "1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 421
    iget-object v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 423
    :cond_8
    iget-object v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 426
    :cond_9
    iget-object v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 429
    :cond_a
    iget-object v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 436
    :cond_b
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mEnabledSoundAlive:Z

    goto/16 :goto_4

    .line 438
    :cond_c
    const-string v6, "k2hd_effect"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 439
    iget-object v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 440
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mEnabledUhqUpscaler:Z

    goto/16 :goto_4

    .line 442
    :cond_d
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mEnabledUhqUpscaler:Z

    goto/16 :goto_4

    .line 444
    :cond_e
    const-string v6, "tube_amp_effect"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 445
    iget-object v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 446
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mEnabledTubeAmp:Z

    goto/16 :goto_4

    .line 448
    :cond_f
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->mEnabledTubeAmp:Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 457
    .end local v4    # "setting":Ljava/lang/String;
    .end local v5    # "val":I
    :cond_10
    return-void

    .line 385
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 252
    const/16 v0, 0x47

    return v0
.end method

.method public isAudioPathBTHeadphone()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 460
    iget-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "audioParam;outDevice"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 470
    :cond_0
    :goto_0
    return v0

    .line 465
    :cond_1
    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 470
    .local v0, "isBt":Z
    :cond_3
    goto :goto_0
.end method

.method public isAudioPathEarjack()Z
    .locals 4

    .prologue
    .line 484
    iget-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "audioParam;curDevice"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, "path":Ljava/lang/String;
    const-string v2, "HPH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 488
    .local v0, "isEarjack":Z
    return v0
.end method

.method public isAudioPathWFD()Z
    .locals 4

    .prologue
    .line 474
    iget-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "audioParam;outDevice"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 476
    :cond_0
    const/4 v0, 0x0

    .line 480
    :goto_0
    return v0

    .line 479
    :cond_1
    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 480
    .local v0, "isWFD":Z
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 257
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 259
    const v2, 0x7f0800bc

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/SoundEffectSettings;->addPreferencesFromResource(I)V

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    .line 263
    iget-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->mUm:Landroid/os/UserManager;

    .line 265
    iget-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->mUm:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings/notification/SoundEffectSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->currentUser:Landroid/content/pm/UserInfo;

    .line 268
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 270
    iget-object v3, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    sget-object v2, Lcom/android/settings/notification/SoundEffectSettings;->KEYS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/SoundEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/TwoStatePreference;

    aput-object v2, v3, v0

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_0
    new-instance v2, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;-><init>(Lcom/android/settings/notification/SoundEffectSettings;Lcom/android/settings/notification/SoundEffectSettings$1;)V

    iput-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->mMusicReceiver:Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;

    .line 275
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->intentFilter:Landroid/content/IntentFilter;

    .line 276
    iget-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    iget-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    iget-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    iget-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    iget-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 287
    const-string v2, "my_sound"

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/SoundEffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->mMySound:Landroid/preference/PreferenceScreen;

    .line 310
    const-string v2, "k2hd"

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/SoundEffectSettings;->removePreference(Ljava/lang/String;)V

    .line 312
    iget-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->mTwoStatePrefs:[Landroid/preference/TwoStatePreference;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const v3, 0x7f0e14ea

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setTitle(I)V

    .line 317
    sget-boolean v2, Lcom/android/settings/notification/SoundEffectSettings;->SUPPORT_FW_FEATURE_LOGGING:Z

    if-eqz v2, :cond_1

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundEffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "mComponentName":Ljava/lang/String;
    const-string v2, "com.android.settings.SubSettings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 320
    iget-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string v3, "SEST"

    invoke-static {v2, v3, v4, v4}, Lcom/android/settings/notification/SoundEffectSettings;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .end local v1    # "mComponentName":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0xc8

    if-le v2, v3, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->currentUser:Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v2

    if-nez v2, :cond_4

    .line 329
    :cond_3
    const-string v2, "my_sound"

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/SoundEffectSettings;->removePreference(Ljava/lang/String;)V

    .line 332
    :cond_4
    return-void

    .line 321
    .restart local v1    # "mComponentName":Ljava/lang/String;
    :cond_5
    const-string v2, "com.android.settings.Settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 322
    iget-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string v3, "SEST"

    invoke-static {v2, v3, v4, v4}, Lcom/android/settings/notification/SoundEffectSettings;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 323
    :cond_6
    const-string v2, "com.android.settings.Settings$SoundEffectSettingsActivity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    iget-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string v3, "SEMU"

    invoke-static {v2, v3, v4, v4}, Lcom/android/settings/notification/SoundEffectSettings;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 367
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 368
    sget-boolean v0, Lcom/android/settings/notification/SoundEffectSettings;->SUPPORT_FW_FEATURE_LOGGING:Z

    if-eqz v0, :cond_2

    .line 369
    iget-boolean v0, p0, Lcom/android/settings/notification/SoundEffectSettings;->mEnabledSoundAlive:Z

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string v1, "SESA"

    const-string v2, "sound_alive"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/notification/SoundEffectSettings;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/SoundEffectSettings;->mEnabledUhqUpscaler:Z

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string v1, "SESA"

    const-string v2, "k2hd"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/notification/SoundEffectSettings;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/notification/SoundEffectSettings;->mEnabledTubeAmp:Z

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    const-string v1, "SESA"

    const-string v2, "tube_amp"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/notification/SoundEffectSettings;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 360
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 361
    iget-object v0, p0, Lcom/android/settings/notification/SoundEffectSettings;->mSettingsObserver:Lcom/android/settings/notification/SoundEffectSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SoundEffectSettings$SettingsObserver;->register(Z)V

    .line 362
    iget-object v0, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/notification/SoundEffectSettings;->mMusicReceiver:Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 363
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 493
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->mMySound:Landroid/preference/PreferenceScreen;

    if-nez v2, :cond_1

    .line 494
    :cond_0
    const-string v2, "SoundEffectSettings"

    const-string v3, "Preference or mMySound is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v2, 0x0

    .line 505
    :goto_0
    return v2

    .line 497
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/SoundEffectSettings;->mMySound:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 499
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.hearingadjust.launch"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    .local v1, "intent1":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundEffectSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    .end local v1    # "intent1":Landroid/content/Intent;
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SoundEffectSettings"

    const-string v3, " following activity com.sec.hearingadjust.launch  Not exist!! "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 336
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 337
    iget-object v4, p0, Lcom/android/settings/notification/SoundEffectSettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/notification/SoundEffectSettings;->mMusicReceiver:Lcom/android/settings/notification/SoundEffectSettings$MusicIntentReceiver;

    iget-object v6, p0, Lcom/android/settings/notification/SoundEffectSettings;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 338
    iget-object v4, p0, Lcom/android/settings/notification/SoundEffectSettings;->mSettingsObserver:Lcom/android/settings/notification/SoundEffectSettings$SettingsObserver;

    invoke-virtual {v4, v7}, Lcom/android/settings/notification/SoundEffectSettings$SettingsObserver;->register(Z)V

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundEffectSettings;->isAudioPathEarjack()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 343
    iput v7, p0, Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    .line 351
    :goto_0
    sget-object v0, Lcom/android/settings/notification/SoundEffectSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    .local v0, "arr$":[Lcom/android/settings/notification/SettingPref;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 352
    .local v3, "pref":Lcom/android/settings/notification/SettingPref;
    invoke-virtual {v3, p0}, Lcom/android/settings/notification/SettingPref;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 344
    .end local v0    # "arr$":[Lcom/android/settings/notification/SettingPref;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "pref":Lcom/android/settings/notification/SettingPref;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundEffectSettings;->isAudioPathBTHeadphone()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 345
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundEffectSettings;->isAudioPathWFD()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 347
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    goto :goto_0

    .line 349
    :cond_2
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/settings/notification/SoundEffectSettings;->mCurrentAudioPath:I

    goto :goto_0

    .line 355
    .restart local v0    # "arr$":[Lcom/android/settings/notification/SettingPref;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/notification/SoundEffectSettings;->setDimSwitchPreference()V

    .line 356
    return-void
.end method
