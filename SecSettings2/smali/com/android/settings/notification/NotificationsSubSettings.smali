.class public Lcom/android/settings/notification/NotificationsSubSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationsSubSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationsSubSettings$SettingsObserver;,
        Lcom/android/settings/notification/NotificationsSubSettings$H;
    }
.end annotation


# static fields
.field private static final PREFS:[Lcom/android/settings/notification/SettingPref;

.field private static final PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_FOLDER_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_GPS_NOTI_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_KEYBOARD_SOUND:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mAudioManager:Landroid/media/AudioManager;


# instance fields
.field private isKioskContainer:Z

.field private mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDialKeypadTone:Landroid/preference/SwitchPreference;

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field private mEmail:Landroid/preference/Preference;

.field private mEmergencyTone:Lcom/android/settings/DropDownPreference;

.field private final mHandler:Lcom/android/settings/notification/NotificationsSubSettings$H;

.field private mIsEmerMode:Z

.field private mKeyboardSound:Landroid/preference/SwitchPreference;

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mMessages:Landroid/preference/Preference;

.field private mNotificationCategory:Landroid/preference/PreferenceCategory;

.field private mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

.field private mPhoneRingtone2Preference:Landroid/preference/Preference;

.field private mPhoneRingtonePreference:Landroid/preference/Preference;

.field private mRingtone:Lcom/android/settings/DefaultRingtonePreference;

.field private mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

.field private mRingtoneCategory:Landroid/preference/PreferenceCategory;

.field private mRingtonePreference_DS:Landroid/preference/Preference;

.field private mRingtoyou:Landroid/preference/Preference;

.field private mScreenLockSound:Landroid/preference/SwitchPreference;

.field private final mSettingsObserver:Lcom/android/settings/notification/NotificationsSubSettings$SettingsObserver;

.field private mSplanner:Landroid/preference/Preference;

.field private mTcoloring:Landroid/preference/Preference;

.field private mTouchSounds:Landroid/preference/SwitchPreference;

.field private mVoiceCapable:Z

.field private offset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v1, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 220
    new-instance v0, Lcom/android/settings/notification/NotificationsSubSettings$2;

    const-string v2, "dial_pad_tones"

    const-string v3, "dtmf_tone"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/NotificationsSubSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/NotificationsSubSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    .line 228
    new-instance v0, Lcom/android/settings/notification/SettingPref;

    const-string v2, "screen_locking_sounds"

    const-string v3, "lockscreen_sounds_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/NotificationsSubSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 232
    new-instance v0, Lcom/android/settings/notification/NotificationsSubSettings$3;

    const-string v2, "gps_notification_sounds"

    const-string v3, "gps_noti_sound_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/NotificationsSubSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/NotificationsSubSettings;->PREF_GPS_NOTI_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 244
    new-instance v3, Lcom/android/settings/notification/SettingPref;

    const-string v5, "charging_sounds"

    const-string v6, "charging_sounds_enabled"

    new-array v8, v9, [I

    move v7, v4

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings/notification/NotificationsSubSettings;->PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 247
    new-instance v3, Lcom/android/settings/notification/NotificationsSubSettings$4;

    const-string v5, "docking_sounds"

    const-string v6, "dock_sounds_enabled"

    new-array v8, v9, [I

    move v7, v4

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/NotificationsSubSettings$4;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings/notification/NotificationsSubSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 255
    new-instance v0, Lcom/android/settings/notification/NotificationsSubSettings$5;

    const-string v2, "touch_sounds"

    const-string v3, "sound_effects_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/NotificationsSubSettings$5;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/NotificationsSubSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 273
    new-instance v0, Lcom/android/settings/notification/SettingPref;

    const-string v2, "keyboard_sound"

    const-string v3, "sip_key_feedback_sound"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/NotificationsSubSettings;->PREF_KEYBOARD_SOUND:Lcom/android/settings/notification/SettingPref;

    .line 275
    new-instance v3, Lcom/android/settings/notification/NotificationsSubSettings$6;

    const-string v5, "dock_audio_media"

    const-string v6, "dock_audio_media_enabled"

    new-array v8, v1, [I

    fill-array-data v8, :array_0

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/NotificationsSubSettings$6;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings/notification/NotificationsSubSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

    .line 296
    new-instance v3, Lcom/android/settings/notification/NotificationsSubSettings$7;

    const-string v5, "emergency_tone"

    const-string v6, "emergency_tone"

    new-array v8, v10, [I

    fill-array-data v8, :array_1

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/NotificationsSubSettings$7;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings/notification/NotificationsSubSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

    .line 320
    new-instance v0, Lcom/android/settings/notification/NotificationsSubSettings$8;

    const-string v2, "folder_sounds"

    const-string v3, "folder_sounds_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/NotificationsSubSettings$8;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/NotificationsSubSettings;->PREF_FOLDER_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 328
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/settings/notification/SettingPref;

    sget-object v2, Lcom/android/settings/notification/NotificationsSubSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v9

    sget-object v2, Lcom/android/settings/notification/NotificationsSubSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v4

    sget-object v2, Lcom/android/settings/notification/NotificationsSubSettings;->PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/settings/notification/NotificationsSubSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v1, v0, v10

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings/notification/NotificationsSubSettings;->PREF_GPS_NOTI_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/notification/NotificationsSubSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/notification/NotificationsSubSettings;->PREF_FOLDER_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/settings/notification/NotificationsSubSettings;->PREF_KEYBOARD_SOUND:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/settings/notification/NotificationsSubSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/settings/notification/NotificationsSubSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/notification/NotificationsSubSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    .line 1082
    new-instance v0, Lcom/android/settings/notification/NotificationsSubSettings$11;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationsSubSettings$11;-><init>()V

    sput-object v0, Lcom/android/settings/notification/NotificationsSubSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void

    .line 275
    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 296
    :array_1
    .array-data 4
        0x1
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 154
    new-instance v0, Lcom/android/settings/notification/NotificationsSubSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationsSubSettings$1;-><init>(Lcom/android/settings/notification/NotificationsSubSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 343
    new-instance v0, Lcom/android/settings/notification/NotificationsSubSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationsSubSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/NotificationsSubSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mSettingsObserver:Lcom/android/settings/notification/NotificationsSubSettings$SettingsObserver;

    .line 349
    new-instance v0, Lcom/android/settings/notification/NotificationsSubSettings$H;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/notification/NotificationsSubSettings$H;-><init>(Lcom/android/settings/notification/NotificationsSubSettings;Lcom/android/settings/notification/NotificationsSubSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mHandler:Lcom/android/settings/notification/NotificationsSubSettings$H;

    .line 360
    iput-boolean v1, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mIsEmerMode:Z

    .line 373
    iput v1, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mDirect:I

    .line 374
    iput-object v2, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mDirectUri:Landroid/net/Uri;

    .line 389
    iput-boolean v1, p0, Lcom/android/settings/notification/NotificationsSubSettings;->isKioskContainer:Z

    .line 929
    new-instance v0, Lcom/android/settings/notification/NotificationsSubSettings$10;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationsSubSettings$10;-><init>(Lcom/android/settings/notification/NotificationsSubSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 1052
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/NotificationsSubSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationsSubSettings;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mTouchSounds:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/NotificationsSubSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationsSubSettings;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mDialKeypadTone:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 107
    invoke-static {p0, p1}, Lcom/android/settings/notification/NotificationsSubSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/notification/NotificationsSubSettings;)Lcom/android/settings/notification/NotificationsSubSettings$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationsSubSettings;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mHandler:Lcom/android/settings/notification/NotificationsSubSettings$H;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/notification/NotificationsSubSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationsSubSettings;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mPhoneRingtone2Preference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/notification/NotificationsSubSettings;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationsSubSettings;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/notification/NotificationsSubSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationsSubSettings;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()[Lcom/android/settings/notification/SettingPref;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/android/settings/notification/NotificationsSubSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/NotificationsSubSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationsSubSettings;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mScreenLockSound:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/NotificationsSubSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationsSubSettings;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mKeyboardSound:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-static {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->hasDockSettings(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/android/settings/notification/NotificationsSubSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/notification/NotificationsSubSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationsSubSettings;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->startRingtoneSetting()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/notification/NotificationsSubSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationsSubSettings;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/notification/NotificationsSubSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationsSubSettings;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 1308
    const-string v5, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p2, :cond_2

    .line 1309
    const-string v5, "NotificationsSubSettings"

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

    .line 1310
    const-string v5, "NotificationsSubSettings"

    const-string v6, "Inside cansetringtone ringtone uri not null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content://media/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1312
    const-string v5, "NotificationsSubSettings"

    const-string v6, "ringtoneUri.toString().contains(content:media)"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 1316
    .local v0, "drmClient":Landroid/drm/DrmManagerClient;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v5}, Landroid/drm/DrmManagerClient;->canHandle(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1317
    const-string v5, "NotificationsSubSettings"

    const-string v6, "drmClient.canHandle(ringtoneUri, null)"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    const/4 v5, 0x2

    invoke-virtual {v0, p2, v5}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v2

    .line 1319
    .local v2, "rightSts":I
    if-eqz v2, :cond_0

    .line 1320
    const-string v5, "NotificationsSubSettings"

    const-string v6, "PR DRM File Ringtone Rights Invalid !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    .end local v0    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v2    # "rightSts":I
    :goto_0
    return v4

    .line 1324
    .restart local v0    # "drmClient":Landroid/drm/DrmManagerClient;
    :cond_0
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    .line 1325
    .local v3, "rtTemp":Landroid/media/Ringtone;
    const-string v5, "NotificationsSubSettings"

    const-string v6, "RingtoneManager.getRingtone(context, ringtoneUri)"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    if-nez v3, :cond_1

    .line 1327
    const-string v5, "NotificationsSubSettings"

    const-string v6, "returning false because rtTemp is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    const-string v5, "NotificationsSubSettings"

    const-string v6, "getRingtone() null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1331
    .end local v3    # "rtTemp":Landroid/media/Ringtone;
    :catch_0
    move-exception v1

    .line 1332
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "NotificationsSubSettings"

    const-string v5, "canSetRingtone() exception !!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    .end local v0    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 1336
    :cond_2
    const-string v4, "NotificationsSubSettings"

    const-string v5, "inside canSetRingtone ringtone uri is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getDefaultRingtoneName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 857
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Calender_ConfigDefRingtoneName"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, "ringtoneName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 859
    const-string v0, "On Time"

    .line 861
    .end local v0    # "ringtoneName":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static hasDockSettings(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 911
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private initRingtones()V
    .locals 1

    .prologue
    .line 917
    const-string v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 918
    const-string v0, "ringtone2"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mPhoneRingtone2Preference:Landroid/preference/Preference;

    .line 919
    iget-object v0, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mVoiceCapable:Z

    if-nez v0, :cond_0

    .line 920
    const-string v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 921
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 923
    :cond_0
    return-void
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1422
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1425
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_3

    .line 1426
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1428
    .local v3, "wifiNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1430
    .local v2, "mobileNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1432
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1440
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "mobileNetwork":Landroid/net/NetworkInfo;
    .end local v3    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v4

    .line 1434
    .restart local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .restart local v2    # "mobileNetwork":Landroid/net/NetworkInfo;
    .restart local v3    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1436
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-nez v6, :cond_0

    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "mobileNetwork":Landroid/net/NetworkInfo;
    .end local v3    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_3
    move v4, v5

    .line 1440
    goto :goto_0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 927
    return-void
.end method

.method private startRingtoneSetting()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 602
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 603
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "com.android.settings"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    const-string v5, "sound title"

    iget-object v6, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 605
    const-string v5, "gsm.sim.state"

    const-string v6, "UNKNOWN"

    invoke-static {v5, v8, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 606
    .local v3, "simState1":Ljava/lang/String;
    const-string v5, "gsm.sim.state"

    const-string v6, "UNKNOWN"

    invoke-static {v5, v7, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 607
    .local v4, "simState2":Ljava/lang/String;
    const-string v5, "gsm.sim.currentcardstatus"

    const-string v6, "9"

    invoke-static {v5, v8, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "cardStatus1":Ljava/lang/String;
    const-string v5, "gsm.sim.currentcardstatus"

    const-string v6, "9"

    invoke-static {v5, v7, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, "cardStatus2":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 610
    const-string v5, "sound title"

    iget-object v6, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 611
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.settings.RingtoneSettingTabActivity"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/NotificationsSubSettings;->startActivity(Landroid/content/Intent;)V

    .line 627
    return-void

    .line 612
    :cond_0
    const-string v5, "3"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "3"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const-string v5, "READY"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "READY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 614
    :cond_2
    const-string v5, "sim Id"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 615
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.settings.DualSoundRingtoneSettings"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 617
    :cond_3
    iget-object v5, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v7, :cond_4

    const/4 v5, 0x5

    invoke-static {v7}, Lcom/samsung/android/telephony/MultiSimManager;->getSimState(I)I

    move-result v6

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 620
    const-string v5, "sim Id"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 624
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.settings.DualSoundRingtoneSettings"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 622
    :cond_4
    const-string v5, "sim Id"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method private updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 12
    .param p1, "originalUri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 1342
    const-string v9, "NotificationsSubSettings"

    const-string v10, "UpdateMediaDB"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1344
    .local v3, "filePath":Ljava/lang/String;
    const-string v9, "NotificationsSubSettings"

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

    .line 1345
    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1346
    .local v2, "extension":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1347
    const/16 v9, 0x2e

    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1348
    .local v0, "dotPos":I
    if-ltz v0, :cond_0

    .line 1349
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1354
    .end local v0    # "dotPos":I
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1355
    .local v4, "mimeType":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1356
    const-string v9, "NotificationsSubSettings"

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

    .line 1357
    const-string v9, "audio"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1358
    const-string v9, "NotificationsSubSettings"

    const-string v10, "updateMediaDB - mimeType is not audio - return null"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    .end local v4    # "mimeType":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 1364
    .restart local v4    # "mimeType":Ljava/lang/String;
    :cond_1
    if-nez v4, :cond_2

    const-string v9, "3ga"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1366
    const-string v9, "NotificationsSubSettings"

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

    .line 1373
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1389
    .local v5, "newSoundFile":Ljava/io/File;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1390
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "_data"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    const-string v9, "title"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    const-string v9, "mime_type"

    const-string v10, "audio/*"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    const-string v9, "_size"

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1395
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1396
    .local v7, "tempUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 1397
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1398
    .local v6, "newUri":Landroid/net/Uri;
    const-string v9, "NotificationsSubSettings"

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

    goto/16 :goto_0

    .line 1368
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "newSoundFile":Ljava/io/File;
    .end local v6    # "newUri":Landroid/net/Uri;
    .end local v7    # "tempUri":Landroid/net/Uri;
    .end local v8    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 1369
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "NotificationsSubSettings"

    const-string v10, "updateMediaDB - exception is Occured - return null"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private updateRingtoneData(I)V
    .locals 1
    .param p1, "ringtoneType"    # I

    .prologue
    .line 1404
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1405
    iget-object v0, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v0, :cond_0

    .line 1406
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->lookupRingtoneNames()V

    .line 1413
    :cond_0
    :goto_0
    return-void

    .line 1409
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v0, :cond_0

    .line 1410
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->lookupRingtoneNames()V

    goto :goto_0
.end method

.method private static updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v7, 0x0

    .line 957
    if-nez p0, :cond_1

    .line 958
    const-string v0, "NotificationsSubSettings"

    const-string v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_0
    :goto_0
    return-object v7

    .line 961
    :cond_1
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 962
    .local v1, "ringtoneUri":Landroid/net/Uri;
    const v0, 0x10403a7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 964
    .local v7, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 965
    const v0, 0x10403a5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 967
    :cond_2
    const/4 v6, 0x0

    .line 969
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 971
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

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

    move-result-object v6

    .line 977
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    .line 978
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 979
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 987
    :cond_4
    if-eqz v6, :cond_0

    .line 988
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 973
    :cond_5
    :try_start_1
    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 974
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_1

    .line 982
    :catch_0
    move-exception v0

    .line 987
    if-eqz v6, :cond_0

    .line 988
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 984
    :catch_1
    move-exception v0

    .line 987
    if-eqz v6, :cond_0

    .line 988
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 987
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 988
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 997
    const v0, 0x7f0e0d76

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 394
    const/16 v0, 0x47

    return v0
.end method

.method public handleRingtonePicked(Landroid/net/Uri;I)V
    .locals 7
    .param p1, "pickedUri"    # Landroid/net/Uri;
    .param p2, "ringtoneType"    # I

    .prologue
    const v6, 0x7f0e10ef

    const/4 v5, 0x0

    .line 1262
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1263
    :cond_0
    const-string v2, "NotificationsSubSettings"

    const-string v3, "handleRingtonePicked() : Not changed"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_1
    :goto_0
    const-string v2, "NotificationsSubSettings"

    const-string v3, "updateRingtoneData(ringtoneType)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    invoke-direct {p0, p2}, Lcom/android/settings/notification/NotificationsSubSettings;->updateRingtoneData(I)V

    .line 1304
    :goto_1
    return-void

    .line 1265
    :cond_2
    const-string v2, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/settings/notification/NotificationsSubSettings;->canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1266
    const-string v2, "NotificationsSubSettings"

    const-string v3, "Inside cansetringtone false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1272
    :cond_3
    const-string v2, "NotificationsSubSettings"

    const-string v3, "handleRingtonePicked updating media DB"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1274
    invoke-direct {p0, p1}, Lcom/android/settings/notification/NotificationsSubSettings;->updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 1276
    if-nez p1, :cond_4

    .line 1277
    const-string v2, "NotificationsSubSettings"

    const-string v3, "handleRingtonePicked - pickedUri is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1283
    :cond_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1284
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "is_ringtone"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1287
    const-string v2, "NotificationsSubSettings"

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

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p2, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1294
    :goto_2
    iget-object v2, p0, Lcom/android/settings/notification/NotificationsSubSettings;->offset:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1295
    const/16 v2, 0x80

    if-ne p2, v2, :cond_5

    .line 1296
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "recommendation_time_2"

    iget-object v4, p0, Lcom/android/settings/notification/NotificationsSubSettings;->offset:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1289
    :catch_0
    move-exception v0

    .line 1291
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1298
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "recommendation_time"

    iget-object v4, p0, Lcom/android/settings/notification/NotificationsSubSettings;->offset:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 868
    const-string v0, "NotificationsSubSettings"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 870
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 1197
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1198
    const-string v4, "NotificationsSubSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActivityResult: requestCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", resultCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    packed-switch p1, :pswitch_data_0

    .line 1243
    :cond_0
    :goto_0
    return-void

    .line 1201
    :pswitch_0
    if-ne p2, v7, :cond_0

    .line 1202
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1203
    .local v2, "pickedUri":Landroid/net/Uri;
    const-string v4, "highlight_offset"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/notification/NotificationsSubSettings;->offset:Ljava/lang/String;

    .line 1209
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/notification/NotificationsSubSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 1213
    .end local v2    # "pickedUri":Landroid/net/Uri;
    :pswitch_1
    if-ne p2, v7, :cond_0

    .line 1214
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1215
    .restart local v2    # "pickedUri":Landroid/net/Uri;
    const-string v4, "highlight_offset"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/notification/NotificationsSubSettings;->offset:Ljava/lang/String;

    .line 1221
    const/16 v4, 0x80

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/notification/NotificationsSubSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 1225
    .end local v2    # "pickedUri":Landroid/net/Uri;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/notification/NotificationsSubSettings;->isConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1226
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1227
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_ConfigOpRngToneLink"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1228
    .local v1, "mRingtoneType":Ljava/lang/String;
    const-string v4, "Tcoloring"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1229
    const-string v4, "http://www.tcoloring.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1230
    .local v3, "u":Landroid/net/Uri;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1231
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationsSubSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1232
    .end local v3    # "u":Landroid/net/Uri;
    :cond_1
    const-string v4, "Ringtoyou"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1233
    const-string v4, "http://ringtoyou.olleh.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1234
    .restart local v3    # "u":Landroid/net/Uri;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1235
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationsSubSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1237
    .end local v3    # "u":Landroid/net/Uri;
    :cond_2
    const-string v4, "NotificationsSubSettings"

    const-string v5, "Preference not found: "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 399
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    .line 402
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mVoiceCapable:Z

    .line 403
    const-string v11, "audio"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioManager;

    sput-object v11, Lcom/android/settings/notification/NotificationsSubSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 405
    const v11, 0x7f080083

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->addPreferencesFromResource(I)V

    .line 406
    const-string v11, "ds_ring_tone"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    .line 407
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->initRingtones()V

    .line 409
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 410
    const-string v11, "ringtone"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    .line 411
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v11, p0}, Lcom/android/settings/DefaultRingtonePreference;->setObject(Lcom/android/settings/notification/NotificationsSubSettings;)V

    .line 412
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/settings/DefaultRingtonePreference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 414
    :cond_0
    const-string v11, "ringtone2"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    .line 415
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/settings/DefaultRingtonePreference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 417
    const-string v11, "tcoloring"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mTcoloring:Landroid/preference/Preference;

    .line 418
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Setting_ConfigOpRngToneLink"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 419
    .local v7, "mRingtoneType":Ljava/lang/String;
    const-string v11, "Tcoloring"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 420
    const-string v11, "tcoloring"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 423
    :cond_1
    const-string v11, "ringtoyou"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mRingtoyou:Landroid/preference/Preference;

    .line 424
    const-string v11, "Ringtoyou"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 425
    const-string v11, "ringtoyou"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 429
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Setting_EnableMenuDownloadContents"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 430
    .local v3, "download_contents":Ljava/lang/String;
    const-string v11, "Ringtone"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 431
    const-string v11, "download_ringtone"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 434
    :cond_3
    const/4 v1, 0x0

    .line 435
    .local v1, "appName":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const-string v12, "com.android.mms"

    invoke-static {v11, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 436
    :cond_4
    const-string v11, "mms_sound"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 437
    const-string v11, "mms_sound_ds"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 457
    :goto_0
    const/4 v1, 0x0

    .line 458
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const-string v12, "com.android.calendar"

    invoke-static {v11, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 459
    const-string v11, "splanner_sound"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 469
    :goto_1
    const/4 v1, 0x0

    .line 470
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const-string v12, "com.samsung.android.email.provider"

    invoke-static {v11, v12}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 471
    const-string v11, "email_sound"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 488
    :goto_2
    const-string v11, "emergency_tone"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/DropDownPreference;

    iput-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mEmergencyTone:Lcom/android/settings/DropDownPreference;

    .line 489
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mEmergencyTone:Lcom/android/settings/DropDownPreference;

    if-eqz v11, :cond_5

    .line 490
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mEmergencyTone:Lcom/android/settings/DropDownPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/settings/DropDownPreference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 493
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 502
    .local v0, "activity":Landroid/content/Intent;
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->setHasOptionsMenu(Z)V

    .line 506
    const-string v11, "notification_sound"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    .line 507
    const-string v11, "notification_sound_category"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    iput-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mNotificationCategory:Landroid/preference/PreferenceCategory;

    .line 508
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 509
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v11, :cond_6

    const-string v11, "notification_sound"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 510
    :cond_6
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mNotificationCategory:Landroid/preference/PreferenceCategory;

    if-eqz v11, :cond_7

    const-string v11, "notification_sound_category"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 515
    :cond_7
    :goto_3
    sget-object v2, Lcom/android/settings/notification/NotificationsSubSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    .local v2, "arr$":[Lcom/android/settings/notification/SettingPref;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_4
    if-ge v4, v5, :cond_12

    aget-object v9, v2, v4

    .line 516
    .local v9, "pref":Lcom/android/settings/notification/SettingPref;
    invoke-virtual {v9, p0}, Lcom/android/settings/notification/SettingPref;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 515
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 439
    .end local v0    # "activity":Landroid/content/Intent;
    .end local v2    # "arr$":[Lcom/android/settings/notification/SettingPref;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v9    # "pref":Lcom/android/settings/notification/SettingPref;
    :cond_8
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_b

    .line 440
    const-string v11, "mms_sound"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 441
    const-string v11, "mms_sound_ds"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mMessages:Landroid/preference/Preference;

    .line 450
    :cond_9
    :goto_5
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const-string v12, "com.android.mms"

    invoke-static {v11, v12}, Lcom/android/settings/Utils;->getLabelPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    .line 451
    const v11, 0x7f0e0f8e

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 453
    :cond_a
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mMessages:Landroid/preference/Preference;

    const v12, 0x7f0e165d

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    invoke-virtual {p0, v12, v13}, Lcom/android/settings/notification/NotificationsSubSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mMessages:Landroid/preference/Preference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_0

    .line 443
    :cond_b
    const-string v11, "mms_sound_ds"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 444
    const-string v11, "mms_sound"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mMessages:Landroid/preference/Preference;

    .line 446
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const-string v12, "com.android.mms"

    invoke-static {v11, v12}, Lcom/android/settings/Utils;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 447
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mMessages:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_5

    .line 461
    :cond_c
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const-string v12, "com.android.calendar"

    invoke-static {v11, v12}, Lcom/android/settings/Utils;->getLabelPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    .line 462
    const v11, 0x7f0e0f90

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 464
    :cond_d
    const-string v11, "splanner_sound"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mSplanner:Landroid/preference/Preference;

    .line 465
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mSplanner:Landroid/preference/Preference;

    const v12, 0x7f0e165d

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    invoke-virtual {p0, v12, v13}, Lcom/android/settings/notification/NotificationsSubSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mSplanner:Landroid/preference/Preference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_1

    .line 473
    :cond_e
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const-string v12, "com.samsung.android.email.provider"

    invoke-static {v11, v12}, Lcom/android/settings/Utils;->getLabelPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    .line 474
    const v11, 0x7f0e0f8f

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 476
    :cond_f
    const-string v11, "email_sound"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mEmail:Landroid/preference/Preference;

    .line 477
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mEmail:Landroid/preference/Preference;

    const v12, 0x7f0e165d

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    invoke-virtual {p0, v12, v13}, Lcom/android/settings/notification/NotificationsSubSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->getNumberOfEmailAccount(Landroid/content/Context;)I

    move-result v8

    .line 480
    .local v8, "nEmailCount":I
    if-nez v8, :cond_10

    .line 481
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mEmail:Landroid/preference/Preference;

    const v12, 0x7f0e165e

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(I)V

    .line 482
    const-string v11, "email_sound"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 484
    :cond_10
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mEmail:Landroid/preference/Preference;

    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 512
    .end local v8    # "nEmailCount":I
    .restart local v0    # "activity":Landroid/content/Intent;
    :cond_11
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/settings/DefaultRingtonePreference;->setTwSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_3

    .line 519
    .restart local v2    # "arr$":[Lcom/android/settings/notification/SettingPref;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_12
    const-string v11, "dial_pad_tones"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mDialKeypadTone:Landroid/preference/SwitchPreference;

    .line 520
    const-string v11, "screen_locking_sounds"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mScreenLockSound:Landroid/preference/SwitchPreference;

    .line 521
    const-string v11, "touch_sounds"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mTouchSounds:Landroid/preference/SwitchPreference;

    .line 522
    const-string v11, "keyboard_sound"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mKeyboardSound:Landroid/preference/SwitchPreference;

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 526
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mIsEmerMode:Z

    .line 529
    :cond_13
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v11

    if-eqz v11, :cond_15

    .line 530
    const-string v11, "ringtone"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 531
    const-string v11, "ringtone2"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 536
    :goto_6
    const-string v11, "ds_ring_tone"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    .line 537
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    if-eqz v11, :cond_14

    .line 538
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    const v12, 0x7f0e1435

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(I)V

    .line 539
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    new-instance v12, Lcom/android/settings/notification/NotificationsSubSettings$9;

    invoke-direct {v12, p0}, Lcom/android/settings/notification/NotificationsSubSettings$9;-><init>(Lcom/android/settings/notification/NotificationsSubSettings;)V

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 547
    :cond_14
    iget-boolean v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mIsEmerMode:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_17

    .line 548
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const v12, 0x7f080081

    const-string v13, "UPSM"

    invoke-static {v11, v12, v13}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 549
    .local v10, "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_16

    .line 550
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 551
    .local v6, "list":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_7

    .line 533
    .end local v6    # "list":Ljava/lang/String;
    .end local v10    # "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, "i$":I
    :cond_15
    const-string v11, "ringtone2"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 534
    const-string v11, "ds_ring_tone"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_6

    .line 555
    .end local v4    # "i$":I
    .restart local v10    # "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_16
    const-string v11, "notification_sound"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    .line 556
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v11, :cond_17

    const-string v11, "notification_sound"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 559
    .end local v10    # "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_17
    const-string v11, "ringtones_category"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    iput-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mRingtoneCategory:Landroid/preference/PreferenceCategory;

    .line 560
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_18

    .line 561
    iget-object v11, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mRingtoneCategory:Landroid/preference/PreferenceCategory;

    const v12, 0x7f0e05bb

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 565
    :cond_18
    const-string v11, "ringtones_category"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 566
    const-string v11, "notification_pulse"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 567
    const-string v11, "ringtone"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 568
    const-string v11, "ringtone2"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 569
    const-string v11, "tcoloring"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 570
    const-string v11, "ringtoyou"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 571
    const-string v11, "ds_ring_tone"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 572
    const-string v11, "dial_pad_tones"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 573
    const-string v11, "screen_locking_sounds"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 574
    const-string v11, "charging_sounds"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 575
    const-string v11, "docking_sounds"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 576
    const-string v11, "gps_notification_sounds"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 577
    const-string v11, "touch_sounds"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 578
    const-string v11, "folder_sounds"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 579
    const-string v11, "keyboard_sound"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 580
    const-string v11, "dock_audio_media"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 581
    const-string v11, "emergency_tone"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 582
    const-string v11, "download_ringtone"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 583
    const-string v11, "system_sounds"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationsSubSettings;->removePreference(Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 1028
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1031
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mIsEmerMode:Z

    if-eqz v0, :cond_0

    .line 1035
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1039
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1047
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1041
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1042
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "ringtone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1043
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationsSubSettings;->startActivity(Landroid/content/Intent;)V

    .line 1044
    const/4 v1, 0x1

    goto :goto_0

    .line 1039
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 845
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 846
    iget-object v0, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mSettingsObserver:Lcom/android/settings/notification/NotificationsSubSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationsSubSettings$SettingsObserver;->register(Z)V

    .line 854
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 874
    iget-object v2, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mTcoloring:Landroid/preference/Preference;

    if-eq p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mRingtoyou:Landroid/preference/Preference;

    if-ne p2, v2, :cond_5

    .line 875
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/notification/NotificationsSubSettings;->isConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 876
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 877
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "extra_prefs_show_button_bar"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 878
    const-string v2, "extra_prefs_set_back_text"

    const v3, 0x7f0e0bd2

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/NotificationsSubSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    const-string v2, "wifi_enable_next_on_connect"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 881
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/notification/NotificationsSubSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 907
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 883
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 885
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mTcoloring:Landroid/preference/Preference;

    if-ne p2, v2, :cond_3

    .line 886
    const-string v2, "http://www.tcoloring.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 887
    .local v1, "u":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 888
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationsSubSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 889
    .end local v1    # "u":Landroid/net/Uri;
    :cond_3
    iget-object v2, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mRingtoyou:Landroid/preference/Preference;

    if-ne p2, v2, :cond_4

    .line 890
    const-string v2, "http://ringtoyou.olleh.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 891
    .restart local v1    # "u":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 892
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationsSubSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 894
    .end local v1    # "u":Landroid/net/Uri;
    :cond_4
    const-string v2, "NotificationsSubSettings"

    const-string v3, "Preference not found: "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 897
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v2, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mMessages:Landroid/preference/Preference;

    if-ne p2, v2, :cond_6

    .line 898
    iget-object v2, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const-string v3, "com.android.settings"

    const-string v4, "SRMN"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 899
    :cond_6
    iget-object v2, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mSplanner:Landroid/preference/Preference;

    if-ne p2, v2, :cond_7

    .line 900
    iget-object v2, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const-string v3, "com.android.settings"

    const-string v4, "SRSN"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 901
    :cond_7
    iget-object v2, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mEmail:Landroid/preference/Preference;

    if-ne p2, v2, :cond_8

    .line 902
    iget-object v2, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const-string v3, "com.android.settings"

    const-string v4, "SREN"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 903
    :cond_8
    iget-object v2, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mKeyboardSound:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_1

    .line 904
    iget-object v2, p0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const-string v3, "com.android.settings"

    const-string v4, "SRKS"

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 29

    .prologue
    .line 631
    invoke-super/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 632
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/notification/NotificationsSubSettings;->lookupRingtoneNames()V

    .line 633
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/notification/NotificationsSubSettings;->mSettingsObserver:Lcom/android/settings/notification/NotificationsSubSettings$SettingsObserver;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/settings/notification/NotificationsSubSettings$SettingsObserver;->register(Z)V

    .line 634
    sget-object v4, Lcom/android/settings/notification/NotificationsSubSettings;->PREF_KEYBOARD_SOUND:Lcom/android/settings/notification/SettingPref;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const-string v6, "com.android.calendar"

    invoke-static {v4, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 636
    const-string v15, "com.sec.android.calendar.preference"

    .line 637
    .local v15, "PREFERENCE_AUTHORITY":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/Preference"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 638
    .local v3, "PREFERENCE_CONTENT_URI":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 639
    .local v2, "mContentResolver":Landroid/content/ContentResolver;
    const/16 v18, 0x0

    .line 640
    .local v18, "defaultRingtone":Ljava/lang/String;
    const/16 v16, 0x0

    .line 642
    .local v16, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "preferences_alerts_ringtone"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 643
    if-eqz v16, :cond_0

    .line 644
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 645
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 646
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 647
    const-string v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calendar preference URI string : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    :cond_0
    if-eqz v16, :cond_1

    .line 656
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 659
    :cond_1
    :goto_0
    const-string v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calendar URI string : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    if-nez v18, :cond_2

    .line 662
    const-string v18, ""

    .line 663
    const-string v4, "NotificationsSubSettings"

    const-string v6, "Calendar URI string is null. Set empty "

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_2
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    .line 667
    .local v26, "ringtoneUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v25

    .line 668
    .local v25, "ringtone":Landroid/media/Ringtone;
    const/16 v27, 0x0

    .line 669
    .local v27, "summary":Ljava/lang/String;
    if-eqz v25, :cond_3

    if-eqz v26, :cond_3

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 670
    :cond_3
    const-string v4, "NotificationsSubSettings"

    const-string v6, "Calendar summary changed to Silent"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const v6, 0x10403a5

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 708
    :goto_1
    const-string v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calendar summary : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const-string v4, "-1"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "default"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 711
    :cond_4
    invoke-static {}, Lcom/android/settings/notification/NotificationsSubSettings;->getDefaultRingtoneName()Ljava/lang/String;

    move-result-object v27

    .line 712
    const-string v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calendar summary show getDefaultRingtoneName() : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/notification/NotificationsSubSettings;->mSplanner:Landroid/preference/Preference;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 716
    .end local v2    # "mContentResolver":Landroid/content/ContentResolver;
    .end local v3    # "PREFERENCE_CONTENT_URI":Landroid/net/Uri;
    .end local v15    # "PREFERENCE_AUTHORITY":Ljava/lang/String;
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v18    # "defaultRingtone":Ljava/lang/String;
    .end local v25    # "ringtone":Landroid/media/Ringtone;
    .end local v26    # "ringtoneUri":Landroid/net/Uri;
    .end local v27    # "summary":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const-string v6, "com.android.mms"

    invoke-static {v4, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 717
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const-string v6, "com.android.mms"

    invoke-static {v4, v6}, Lcom/android/settings/Utils;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_10

    .line 718
    :cond_7
    const-string v4, "NotificationsSubSettings"

    const-string v6, "Message app disabled or MultiSIM enabled"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/notification/NotificationsSubSettings;->mMessages:Landroid/preference/Preference;

    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 841
    :cond_8
    :goto_2
    return-void

    .line 650
    .restart local v2    # "mContentResolver":Landroid/content/ContentResolver;
    .restart local v3    # "PREFERENCE_CONTENT_URI":Landroid/net/Uri;
    .restart local v15    # "PREFERENCE_AUTHORITY":Ljava/lang/String;
    .restart local v16    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "defaultRingtone":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 655
    if-eqz v16, :cond_1

    .line 656
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 652
    :catch_1
    move-exception v4

    .line 655
    if-eqz v16, :cond_1

    .line 656
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 655
    :catchall_0
    move-exception v4

    if-eqz v16, :cond_9

    .line 656
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v4

    .line 672
    .restart local v25    # "ringtone":Landroid/media/Ringtone;
    .restart local v26    # "ringtoneUri":Landroid/net/Uri;
    .restart local v27    # "summary":Ljava/lang/String;
    :cond_a
    const-string v4, "content://settings/system/notification_sound"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 673
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    .line 674
    .local v28, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v26

    .line 675
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const v6, 0x7f0e05c6

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 676
    .local v17, "defaultNotification":Ljava/lang/String;
    if-nez v26, :cond_b

    .line 677
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const v6, 0x10403a5

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 678
    const-string v4, "NotificationsSubSettings"

    const-string v6, "Calendar tone : ringtoneUri == null"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-string v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calendar tone title : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_1

    .line 682
    :cond_b
    const-string v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calendar tone title : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const-string v4, "(\\(.*\\))"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 685
    .local v14, "NOTIFICATION_TITLE":Ljava/util/regex/Pattern;
    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 686
    .local v21, "m":Ljava/util/regex/Matcher;
    const-string v22, ""

    .line 687
    .local v22, "notificationName":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 688
    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    .line 689
    const-string v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calendar tone title notificationName : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_c
    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 692
    .local v20, "index":I
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 693
    move-object/from16 v27, v17

    goto/16 :goto_1

    .line 695
    :cond_d
    if-lez v20, :cond_e

    .line 696
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 697
    const-string v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calendar tone index > 0 notificationName : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 699
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 700
    const-string v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calendar tone index <= 0 notificationName : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 705
    .end local v14    # "NOTIFICATION_TITLE":Ljava/util/regex/Pattern;
    .end local v17    # "defaultNotification":Ljava/lang/String;
    .end local v20    # "index":I
    .end local v21    # "m":Ljava/util/regex/Matcher;
    .end local v22    # "notificationName":Ljava/lang/String;
    .end local v28    # "title":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_1

    .line 721
    .end local v2    # "mContentResolver":Landroid/content/ContentResolver;
    .end local v3    # "PREFERENCE_CONTENT_URI":Landroid/net/Uri;
    .end local v15    # "PREFERENCE_AUTHORITY":Ljava/lang/String;
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v18    # "defaultRingtone":Ljava/lang/String;
    .end local v25    # "ringtone":Landroid/media/Ringtone;
    .end local v26    # "ringtoneUri":Landroid/net/Uri;
    .end local v27    # "summary":Ljava/lang/String;
    :cond_10
    const-string v4, "content://com.android.mms.csc.PreferenceProvider/key"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 722
    .local v5, "URI":Landroid/net/Uri;
    const-string v7, "string"

    .line 724
    .local v7, "type":Ljava/lang/String;
    const/16 v24, 0x0

    .line 725
    .local v24, "result":Ljava/lang/String;
    const/16 v16, 0x0

    .line 726
    .restart local v16    # "cursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_18

    const/4 v4, 0x5

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/samsung/android/telephony/MultiSimManager;->getSimState(I)I

    move-result v6

    if-ne v4, v6, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 729
    const-string v23, "pref_key_ringtone_sim2"

    .line 740
    .local v23, "pref_name":Ljava/lang/String;
    :goto_3
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v23, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 741
    if-eqz v16, :cond_11

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 742
    const-string v4, "pref_name"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v24

    .line 749
    :cond_11
    if-eqz v16, :cond_12

    .line 750
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 753
    :cond_12
    :goto_4
    const-string v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Message URI string : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/16 v27, 0x0

    .line 756
    .restart local v27    # "summary":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "content://"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 757
    const/16 v16, 0x0

    .line 759
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/notification/NotificationsSubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "title"

    aput-object v6, v10, v4

    const-string v11, "_data=?"

    const/4 v4, 0x1

    new-array v12, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v24, v12, v4

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 762
    if-eqz v16, :cond_13

    .line 763
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 764
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v27

    .line 775
    :cond_13
    :goto_5
    if-eqz v16, :cond_14

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_14

    .line 776
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 777
    const/16 v16, 0x0

    .line 782
    :cond_14
    :goto_6
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 784
    if-nez v24, :cond_15

    .line 785
    const-string v24, ""

    .line 786
    const-string v4, "NotificationsSubSettings"

    const-string v6, "Message URI string is null. Set empty "

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_15
    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    .line 790
    .restart local v26    # "ringtoneUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v25

    .line 792
    .restart local v25    # "ringtone":Landroid/media/Ringtone;
    if-eqz v25, :cond_16

    if-eqz v26, :cond_16

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 793
    :cond_16
    const-string v4, "NotificationsSubSettings"

    const-string v6, "Message summary changed to Silent"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const v6, 0x10403a5

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 831
    .end local v25    # "ringtone":Landroid/media/Ringtone;
    .end local v26    # "ringtoneUri":Landroid/net/Uri;
    :cond_17
    :goto_7
    const-string v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "summary : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/notification/NotificationsSubSettings;->mMessages:Landroid/preference/Preference;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 732
    .end local v23    # "pref_name":Ljava/lang/String;
    .end local v27    # "summary":Ljava/lang/String;
    :cond_18
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_19

    .line 734
    const-string v23, "pref_key_ringtone_two_phone_B"

    .restart local v23    # "pref_name":Ljava/lang/String;
    goto/16 :goto_3

    .line 736
    .end local v23    # "pref_name":Ljava/lang/String;
    :cond_19
    const-string v23, "pref_key_ringtone"

    .restart local v23    # "pref_name":Ljava/lang/String;
    goto/16 :goto_3

    .line 744
    :catch_2
    move-exception v4

    .line 749
    if-eqz v16, :cond_12

    .line 750
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 746
    :catch_3
    move-exception v4

    .line 749
    if-eqz v16, :cond_12

    .line 750
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 749
    :catchall_1
    move-exception v4

    if-eqz v16, :cond_1a

    .line 750
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_1a
    throw v4

    .line 767
    .restart local v27    # "summary":Ljava/lang/String;
    :cond_1b
    :try_start_3
    const-string v24, "content://settings/system/notification_sound"
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_5

    .line 770
    :catch_4
    move-exception v19

    .line 771
    .local v19, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_4
    const-string v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error when query ringtone title"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 775
    if-eqz v16, :cond_14

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_14

    .line 776
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 777
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 772
    .end local v19    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_5
    move-exception v19

    .line 773
    .local v19, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IllegalArgumentException when query ringtone title"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 775
    if-eqz v16, :cond_14

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_14

    .line 776
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 777
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 775
    .end local v19    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_2
    move-exception v4

    if-eqz v16, :cond_1c

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_1c

    .line 776
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 777
    const/16 v16, 0x0

    :cond_1c
    throw v4

    .line 795
    .restart local v25    # "ringtone":Landroid/media/Ringtone;
    .restart local v26    # "ringtoneUri":Landroid/net/Uri;
    :cond_1d
    const-string v4, "content://settings/system/notification_sound"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 796
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    .line 797
    .restart local v28    # "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v26

    .line 798
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const v6, 0x7f0e05c6

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 799
    .restart local v17    # "defaultNotification":Ljava/lang/String;
    if-nez v26, :cond_1e

    .line 800
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    const v6, 0x10403a5

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 801
    const-string v4, "NotificationsSubSettings"

    const-string v6, "Message tone : ringtoneUri == null"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const-string v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Message tone title : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_7

    .line 805
    :cond_1e
    const-string v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Message tone title : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const-string v4, "(\\(.*\\))"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 807
    .restart local v14    # "NOTIFICATION_TITLE":Ljava/util/regex/Pattern;
    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 808
    .restart local v21    # "m":Ljava/util/regex/Matcher;
    const-string v22, ""

    .line 809
    .restart local v22    # "notificationName":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 810
    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    .line 811
    const-string v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Message tone title notificationName : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_1f
    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 814
    .restart local v20    # "index":I
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 815
    move-object/from16 v27, v17

    goto/16 :goto_7

    .line 817
    :cond_20
    if-lez v20, :cond_21

    .line 818
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 819
    const-string v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Message tone index > 0 notificationName : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 821
    :cond_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 822
    const-string v4, "NotificationsSubSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Message tone index <= 0 notificationName : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 827
    .end local v14    # "NOTIFICATION_TITLE":Ljava/util/regex/Pattern;
    .end local v17    # "defaultNotification":Ljava/lang/String;
    .end local v20    # "index":I
    .end local v21    # "m":Ljava/util/regex/Matcher;
    .end local v22    # "notificationName":Ljava/lang/String;
    .end local v28    # "title":Ljava/lang/String;
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/notification/NotificationsSubSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_7
.end method
