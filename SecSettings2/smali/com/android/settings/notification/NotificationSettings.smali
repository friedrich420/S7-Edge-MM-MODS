.class public Lcom/android/settings/notification/NotificationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationSettings$SettingsObserver;,
        Lcom/android/settings/notification/NotificationSettings$H;
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

.field private static final RESTRICTED_KEYS:[Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mPowerManager:Landroid/os/PowerManager;


# instance fields
.field private isKioskContainer:Z

.field private mContext:Landroid/content/Context;

.field private mDeviceVibration:Landroid/preference/PreferenceScreen;

.field private mDialKeypadTone:Landroid/preference/SwitchPreference;

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field private mEmergencyTone:Lcom/android/settings/DropDownPreference;

.field private final mHandler:Lcom/android/settings/notification/NotificationSettings$H;

.field private mIsEmerMode:Z

.field private mKeyboardSound:Landroid/preference/SwitchPreference;

.field private mKeyboardVibration:Landroid/preference/SwitchPreference;

.field private mLockscreen:Lcom/android/settings/DropDownPreference;

.field private mLockscreenSelectedValue:I

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mNotificationPulse:Landroid/preference/TwoStatePreference;

.field private mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

.field private mPhoneRingtone2Preference:Landroid/preference/Preference;

.field private mPhoneRingtonePreference:Landroid/preference/Preference;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtone:Lcom/android/settings/DefaultRingtonePreference;

.field private mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

.field private mRingtonePreference_DS:Landroid/preference/Preference;

.field private mRingtoyou:Landroid/preference/Preference;

.field private mScreenLockSound:Landroid/preference/SwitchPreference;

.field private mSecure:Z

.field private final mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

.field private mSoundEffects:Landroid/preference/PreferenceScreen;

.field private mSoundMode:Lcom/android/settings/DropDownPreference;

.field private mSubNtofications:Landroid/preference/PreferenceScreen;

.field private mTcoloring:Landroid/preference/Preference;

.field private mTouchSounds:Landroid/preference/SwitchPreference;

.field private mUserManager:Landroid/os/UserManager;

.field private mVibrateWhenRinging:Landroid/preference/SwitchPreference;

.field private mVibrationOnTouch:Landroid/preference/SwitchPreference;

.field private mVoiceCapable:Z

.field private mZenAccess:Landroid/preference/Preference;

.field private offset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v1, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 175
    new-array v0, v10, [Ljava/lang/String;

    const-string v2, "manage_zen_access"

    aput-object v2, v0, v9

    const-string v2, "zen_mode"

    aput-object v2, v0, v4

    const-string v2, "zen_mode_dnd"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/notification/NotificationSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    .line 245
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$1;

    const-string v2, "dial_pad_tones"

    const-string v3, "dtmf_tone"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/NotificationSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/NotificationSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    .line 253
    new-instance v0, Lcom/android/settings/notification/SettingPref;

    const-string v2, "screen_locking_sounds"

    const-string v3, "lockscreen_sounds_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/NotificationSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 257
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$2;

    const-string v2, "gps_notification_sounds"

    const-string v3, "gps_noti_sound_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/NotificationSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/NotificationSettings;->PREF_GPS_NOTI_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 269
    new-instance v3, Lcom/android/settings/notification/SettingPref;

    const-string v5, "charging_sounds"

    const-string v6, "charging_sounds_enabled"

    new-array v8, v9, [I

    move v7, v4

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings/notification/NotificationSettings;->PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 272
    new-instance v3, Lcom/android/settings/notification/NotificationSettings$3;

    const-string v5, "docking_sounds"

    const-string v6, "dock_sounds_enabled"

    new-array v8, v9, [I

    move v7, v4

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/NotificationSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings/notification/NotificationSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 280
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$4;

    const-string v2, "touch_sounds"

    const-string v3, "sound_effects_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/NotificationSettings$4;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/NotificationSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 298
    new-instance v0, Lcom/android/settings/notification/SettingPref;

    const-string v2, "keyboard_sound"

    const-string v3, "sip_key_feedback_sound"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/NotificationSettings;->PREF_KEYBOARD_SOUND:Lcom/android/settings/notification/SettingPref;

    .line 300
    new-instance v3, Lcom/android/settings/notification/NotificationSettings$5;

    const-string v5, "dock_audio_media"

    const-string v6, "dock_audio_media_enabled"

    new-array v8, v1, [I

    fill-array-data v8, :array_0

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/NotificationSettings$5;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings/notification/NotificationSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

    .line 321
    new-instance v3, Lcom/android/settings/notification/NotificationSettings$6;

    const-string v5, "emergency_tone"

    const-string v6, "emergency_tone"

    new-array v8, v10, [I

    fill-array-data v8, :array_1

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/notification/NotificationSettings$6;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v3, Lcom/android/settings/notification/NotificationSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

    .line 345
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$7;

    const-string v2, "folder_sounds"

    const-string v3, "folder_sounds_enabled"

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/NotificationSettings$7;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/NotificationSettings;->PREF_FOLDER_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 353
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/settings/notification/SettingPref;

    sget-object v2, Lcom/android/settings/notification/NotificationSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v9

    sget-object v2, Lcom/android/settings/notification/NotificationSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v4

    sget-object v2, Lcom/android/settings/notification/NotificationSettings;->PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/settings/notification/NotificationSettings;->PREF_DOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v1, v0, v10

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings/notification/NotificationSettings;->PREF_GPS_NOTI_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/notification/NotificationSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/notification/NotificationSettings;->PREF_FOLDER_SOUNDS:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/settings/notification/NotificationSettings;->PREF_KEYBOARD_SOUND:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/settings/notification/NotificationSettings;->PREF_DOCK_AUDIO_MEDIA:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/settings/notification/NotificationSettings;->PREF_EMERGENCY_TONE:Lcom/android/settings/notification/SettingPref;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/notification/NotificationSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    .line 1208
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$17;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationSettings$17;-><init>()V

    sput-object v0, Lcom/android/settings/notification/NotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void

    .line 300
    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 321
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

    .line 119
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 207
    iput v1, p0, Lcom/android/settings/notification/NotificationSettings;->mDirect:I

    .line 208
    iput-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mDirectUri:Landroid/net/Uri;

    .line 229
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    .line 235
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$H;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/notification/NotificationSettings$H;-><init>(Lcom/android/settings/notification/NotificationSettings;Lcom/android/settings/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mHandler:Lcom/android/settings/notification/NotificationSettings$H;

    .line 239
    iput-boolean v1, p0, Lcom/android/settings/notification/NotificationSettings;->mIsEmerMode:Z

    .line 242
    iput-boolean v1, p0, Lcom/android/settings/notification/NotificationSettings;->isKioskContainer:Z

    .line 753
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$12;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationSettings$12;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 1155
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-static {p0}, Lcom/android/settings/notification/NotificationSettings;->hasDockSettings(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mHandler:Lcom/android/settings/notification/NotificationSettings$H;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtone2Preference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/notification/NotificationSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 119
    iget v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreenSelectedValue:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/settings/notification/NotificationSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;
    .param p1, "x1"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreenSelectedValue:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshSoundMode()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900()[Lcom/android/settings/notification/SettingPref;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/android/settings/notification/NotificationSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    return-object v0
.end method

.method static synthetic access$200()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updatePulse()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateLockscreenNotifications()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshDNDmode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->startRingtoneSetting()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 119
    invoke-static {p0, p1}, Lcom/android/settings/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 1447
    const-string v5, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p2, :cond_2

    .line 1448
    const-string v5, "NotificationSettings"

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

    .line 1449
    const-string v5, "NotificationSettings"

    const-string v6, "Inside cansetringtone ringtone uri not null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content://media/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1451
    const-string v5, "NotificationSettings"

    const-string v6, "ringtoneUri.toString().contains(content:media)"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 1455
    .local v0, "drmClient":Landroid/drm/DrmManagerClient;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v5}, Landroid/drm/DrmManagerClient;->canHandle(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1456
    const-string v5, "NotificationSettings"

    const-string v6, "drmClient.canHandle(ringtoneUri, null)"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    const/4 v5, 0x2

    invoke-virtual {v0, p2, v5}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v2

    .line 1458
    .local v2, "rightSts":I
    if-eqz v2, :cond_0

    .line 1459
    const-string v5, "NotificationSettings"

    const-string v6, "PR DRM File Ringtone Rights Invalid !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    .end local v0    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v2    # "rightSts":I
    :goto_0
    return v4

    .line 1463
    .restart local v0    # "drmClient":Landroid/drm/DrmManagerClient;
    :cond_0
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    .line 1464
    .local v3, "rtTemp":Landroid/media/Ringtone;
    const-string v5, "NotificationSettings"

    const-string v6, "RingtoneManager.getRingtone(context, ringtoneUri)"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    if-nez v3, :cond_1

    .line 1466
    const-string v5, "NotificationSettings"

    const-string v6, "returning false because rtTemp is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    const-string v5, "NotificationSettings"

    const-string v6, "getRingtone() null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1470
    .end local v3    # "rtTemp":Landroid/media/Ringtone;
    :catch_0
    move-exception v1

    .line 1471
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "NotificationSettings"

    const-string v5, "canSetRingtone() exception !!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    .end local v0    # "drmClient":Landroid/drm/DrmManagerClient;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 1475
    :cond_2
    const-string v4, "NotificationSettings"

    const-string v5, "inside canSetRingtone ringtone uri is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1059
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1054
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 4

    .prologue
    .line 1106
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 1109
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1112
    :goto_0
    return-object v2

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NotificationSettings"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1112
    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0
.end method

.method private static hasDockSettings(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 735
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V
    .locals 8
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    const v7, 0x7f0e0e26

    const v6, 0x7f0e0e25

    const v5, 0x7f0e0e24

    const/4 v4, 0x1

    .line 982
    const-string v2, "lock_screen_notifications"

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/DropDownPreference;

    iput-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/DropDownPreference;

    .line 983
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/DropDownPreference;

    if-nez v2, :cond_0

    .line 984
    const-string v2, "NotificationSettings"

    const-string v3, "Preference not found: lock_screen_notifications"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :goto_0
    return-void

    .line 987
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2, v4}, Lcom/android/settings/DropDownPreference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 988
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->isSecureNotificationsDisabled()Z

    move-result v0

    .line 989
    .local v0, "isSecureNotificationsDisabled":Z
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->isUnredactedNotificationsDisabled()Z

    move-result v1

    .line 990
    .local v1, "isUnredactedNotificationsDisabled":Z
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 991
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/DropDownPreference;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 995
    :cond_1
    if-nez v0, :cond_2

    .line 996
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/DropDownPreference;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 999
    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/DropDownPreference;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 1001
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateLockscreenNotifications()V

    .line 1002
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2}, Lcom/android/settings/DropDownPreference;->getItemCount()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 1003
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/DropDownPreference;

    new-instance v3, Lcom/android/settings/notification/NotificationSettings$15;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/NotificationSettings$15;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    goto :goto_0

    .line 1023
    :cond_3
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/DropDownPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initPulse(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 902
    const-string v0, "notification_pulse"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    .line 903
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 904
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: notification_pulse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :goto_0
    return-void

    .line 907
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 909
    const-string v0, "notification_pulse"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 911
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 912
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updatePulse()V

    .line 913
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings/notification/NotificationSettings$13;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettings$13;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initRingtones()V
    .locals 1

    .prologue
    .line 741
    const-string v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 742
    const-string v0, "ringtone2"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtone2Preference:Landroid/preference/Preference;

    .line 743
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_0

    .line 744
    const-string v0, "ringtone"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    .line 745
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 747
    :cond_0
    return-void
.end method

.method private initSoundMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 926
    const-string v1, "sound_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DropDownPreference;

    iput-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Lcom/android/settings/DropDownPreference;

    .line 928
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Lcom/android/settings/DropDownPreference;

    if-eqz v1, :cond_1

    .line 929
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v1}, Lcom/android/settings/DropDownPreference;->clearItems()V

    .line 930
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/DropDownPreference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 931
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 932
    .local v0, "values":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Lcom/android/settings/DropDownPreference;

    const v2, 0x7f0e05b6

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 933
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 934
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Lcom/android/settings/DropDownPreference;

    const v2, 0x7f0e10e8

    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 936
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Lcom/android/settings/DropDownPreference;

    const v2, 0x7f0e10e9

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 937
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Lcom/android/settings/DropDownPreference;

    new-instance v2, Lcom/android/settings/notification/NotificationSettings$14;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/NotificationSettings$14;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    .line 965
    .end local v0    # "values":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1561
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1564
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_3

    .line 1565
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1567
    .local v3, "wifiNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1569
    .local v2, "mobileNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1571
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1579
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "mobileNetwork":Landroid/net/NetworkInfo;
    .end local v3    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v4

    .line 1573
    .restart local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .restart local v2    # "mobileNetwork":Landroid/net/NetworkInfo;
    .restart local v3    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1575
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

    .line 1579
    goto :goto_0
.end method

.method private isSecureNotificationsDisabled()Z
    .locals 2

    .prologue
    .line 1028
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/NotificationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1030
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isUnredactedNotificationsDisabled()Z
    .locals 2

    .prologue
    .line 1035
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/NotificationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1037
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 751
    return-void
.end method

.method private refreshDNDmode()V
    .locals 9

    .prologue
    const v5, 0x7f0e0e93

    .line 1082
    const-string v6, "zen_mode_dnd"

    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    .line 1083
    .local v4, "mZenModeDND":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "zen_mode"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    const v3, 0x7f0e0e92

    .line 1086
    .local v3, "mSummary":I
    :goto_0
    if-ne v3, v5, :cond_1

    .line 1087
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 1088
    .local v1, "mConfig":Landroid/service/notification/ZenModeConfig;
    const/4 v2, 0x0

    .line 1089
    .local v2, "mRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 1090
    const-string v6, "twschedule"

    iget-object v5, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1091
    iget-object v5, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1095
    .restart local v2    # "mRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_0
    if-eqz v2, :cond_1

    iget-boolean v5, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v5, :cond_1

    .line 1096
    const v3, 0x7f0e0fd7

    .line 1099
    .end local v0    # "i":I
    .end local v1    # "mConfig":Landroid/service/notification/ZenModeConfig;
    .end local v2    # "mRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_1
    if-eqz v4, :cond_2

    .line 1100
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 1101
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1103
    :cond_2
    return-void

    .end local v3    # "mSummary":I
    :cond_3
    move v3, v5

    .line 1083
    goto :goto_0

    .line 1089
    .restart local v0    # "i":I
    .restart local v1    # "mConfig":Landroid/service/notification/ZenModeConfig;
    .restart local v2    # "mRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local v3    # "mSummary":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private refreshSoundMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1064
    sget-object v1, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 1065
    .local v0, "ringerMode":I
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Lcom/android/settings/DropDownPreference;

    if-eqz v1, :cond_0

    .line 1066
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1067
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Lcom/android/settings/DropDownPreference;

    rsub-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Lcom/android/settings/DropDownPreference;->setSelectedItem(I)V

    .line 1079
    :cond_0
    :goto_0
    return-void

    .line 1069
    :cond_1
    if-eqz v0, :cond_2

    if-ne v0, v4, :cond_3

    .line 1071
    :cond_2
    const-string v1, "NotificationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshSoundMode : ringerMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/DropDownPreference;->setSelectedItem(I)V

    goto :goto_0

    .line 1074
    :cond_3
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundMode:Lcom/android/settings/DropDownPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/DropDownPreference;->setSelectedItem(I)V

    goto :goto_0
.end method

.method private refreshZenAccess()V
    .locals 0

    .prologue
    .line 1151
    return-void
.end method

.method private registerListeners()V
    .locals 3

    .prologue
    .line 1118
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1120
    .local v0, "mfilter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1121
    new-instance v1, Lcom/android/settings/notification/NotificationSettings$16;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettings$16;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    iput-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1136
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1138
    .end local v0    # "mfilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private releaseListeners()V
    .locals 2

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1142
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1145
    :cond_0
    return-void
.end method

.method private startRingtoneSetting()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 596
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 597
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "com.android.settings"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    const-string v5, "sound title"

    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 599
    const-string v5, "gsm.sim.state"

    const-string v6, "UNKNOWN"

    invoke-static {v5, v8, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 600
    .local v3, "simState1":Ljava/lang/String;
    const-string v5, "gsm.sim.state"

    const-string v6, "UNKNOWN"

    invoke-static {v5, v7, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 601
    .local v4, "simState2":Ljava/lang/String;
    const-string v5, "gsm.sim.currentcardstatus"

    const-string v6, "9"

    invoke-static {v5, v8, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "cardStatus1":Ljava/lang/String;
    const-string v5, "gsm.sim.currentcardstatus"

    const-string v6, "9"

    invoke-static {v5, v7, v6}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 603
    .local v1, "cardStatus2":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 604
    const-string v5, "sound title"

    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 605
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.settings.RingtoneSettingTabActivity"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    .line 621
    return-void

    .line 606
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

    .line 608
    :cond_2
    const-string v5, "sim Id"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 609
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.settings.DualSoundRingtoneSettings"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 611
    :cond_3
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v7, :cond_4

    const/4 v5, 0x5

    invoke-static {v7}, Lcom/samsung/android/telephony/MultiSimManager;->getSimState(I)I

    move-result v6

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 614
    const-string v5, "sim Id"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 618
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.settings.DualSoundRingtoneSettings"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 616
    :cond_4
    const-string v5, "sim Id"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method private updateLockscreenNotifications()V
    .locals 4

    .prologue
    .line 1042
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/DropDownPreference;

    if-nez v2, :cond_0

    .line 1051
    :goto_0
    return-void

    .line 1045
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 1046
    .local v1, "enabled":Z
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    .line 1047
    .local v0, "allowPrivate":Z
    if-nez v1, :cond_1

    const v2, 0x7f0e0e26

    :goto_1
    iput v2, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreenSelectedValue:I

    .line 1050
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/DropDownPreference;

    iget v3, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreenSelectedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 1047
    :cond_1
    if-eqz v0, :cond_2

    const v2, 0x7f0e0e24

    goto :goto_1

    :cond_2
    const v2, 0x7f0e0e25

    goto :goto_1
.end method

.method private updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 12
    .param p1, "originalUri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 1481
    const-string v9, "NotificationSettings"

    const-string v10, "UpdateMediaDB"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1483
    .local v3, "filePath":Ljava/lang/String;
    const-string v9, "NotificationSettings"

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

    .line 1484
    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1485
    .local v2, "extension":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1486
    const/16 v9, 0x2e

    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1487
    .local v0, "dotPos":I
    if-ltz v0, :cond_0

    .line 1488
    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1493
    .end local v0    # "dotPos":I
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1494
    .local v4, "mimeType":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1495
    const-string v9, "NotificationSettings"

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

    .line 1496
    const-string v9, "audio"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1497
    const-string v9, "NotificationSettings"

    const-string v10, "updateMediaDB - mimeType is not audio - return null"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    .end local v4    # "mimeType":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 1503
    .restart local v4    # "mimeType":Ljava/lang/String;
    :cond_1
    if-nez v4, :cond_2

    const-string v9, "3ga"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1505
    const-string v9, "NotificationSettings"

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

    .line 1512
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1528
    .local v5, "newSoundFile":Ljava/io/File;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1529
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "_data"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    const-string v9, "title"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    const-string v9, "mime_type"

    const-string v10, "audio/*"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    const-string v9, "_size"

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1534
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1535
    .local v7, "tempUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 1536
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1537
    .local v6, "newUri":Landroid/net/Uri;
    const-string v9, "NotificationSettings"

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

    .line 1507
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "newSoundFile":Ljava/io/File;
    .end local v6    # "newUri":Landroid/net/Uri;
    .end local v7    # "tempUri":Landroid/net/Uri;
    .end local v8    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 1508
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "NotificationSettings"

    const-string v10, "updateMediaDB - exception is Occured - return null"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private updatePulse()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 968
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v2, :cond_0

    .line 977
    :goto_0
    return-void

    .line 972
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_light_pulse"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "NotificationSettings"

    const-string v2, "notification_light_pulse not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 972
    .end local v0    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateRingtoneData(I)V
    .locals 1
    .param p1, "ringtoneType"    # I

    .prologue
    .line 1543
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1544
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v0, :cond_0

    .line 1545
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->lookupRingtoneNames()V

    .line 1552
    :cond_0
    :goto_0
    return-void

    .line 1548
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v0, :cond_0

    .line 1549
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->lookupRingtoneNames()V

    goto :goto_0
.end method

.method private static updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v7, 0x0

    .line 781
    if-nez p0, :cond_1

    .line 782
    const-string v0, "NotificationSettings"

    const-string v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_0
    :goto_0
    return-object v7

    .line 785
    :cond_1
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 786
    .local v1, "ringtoneUri":Landroid/net/Uri;
    const v0, 0x10403a7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 788
    .local v7, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 789
    const v0, 0x10403a5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 791
    :cond_2
    const/4 v6, 0x0

    .line 793
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 795
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

    .line 801
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    .line 802
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 803
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 811
    :cond_4
    if-eqz v6, :cond_0

    .line 812
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 797
    :cond_5
    :try_start_1
    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 798
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

    .line 806
    :catch_0
    move-exception v0

    .line 811
    if-eqz v6, :cond_0

    .line 812
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 808
    :catch_1
    move-exception v0

    .line 811
    if-eqz v6, :cond_0

    .line 812
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 811
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 812
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 821
    const v0, 0x7f0e0d76

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 370
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

    .line 1401
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1402
    :cond_0
    const-string v2, "NotificationSettings"

    const-string v3, "handleRingtonePicked() : Not changed"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_1
    :goto_0
    const-string v2, "NotificationSettings"

    const-string v3, "updateRingtoneData(ringtoneType)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    invoke-direct {p0, p2}, Lcom/android/settings/notification/NotificationSettings;->updateRingtoneData(I)V

    .line 1443
    :goto_1
    return-void

    .line 1404
    :cond_2
    const-string v2, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/settings/notification/NotificationSettings;->canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1405
    const-string v2, "NotificationSettings"

    const-string v3, "Inside cansetringtone false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1411
    :cond_3
    const-string v2, "NotificationSettings"

    const-string v3, "handleRingtonePicked updating media DB"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1413
    invoke-direct {p0, p1}, Lcom/android/settings/notification/NotificationSettings;->updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 1415
    if-nez p1, :cond_4

    .line 1416
    const-string v2, "NotificationSettings"

    const-string v3, "handleRingtonePicked - pickedUri is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1422
    :cond_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1423
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "is_ringtone"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1426
    const-string v2, "NotificationSettings"

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

    .line 1427
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p2, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1433
    :goto_2
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->offset:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1434
    const/16 v2, 0x80

    if-ne p2, v2, :cond_5

    .line 1435
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "recommendation_time_2"

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettings;->offset:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1428
    :catch_0
    move-exception v0

    .line 1430
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1437
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "recommendation_time"

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettings;->offset:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 686
    const-string v0, "NotificationSettings"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 688
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 1336
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1337
    const-string v4, "NotificationSettings"

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

    .line 1338
    packed-switch p1, :pswitch_data_0

    .line 1382
    :cond_0
    :goto_0
    return-void

    .line 1340
    :pswitch_0
    if-ne p2, v7, :cond_0

    .line 1341
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1342
    .local v2, "pickedUri":Landroid/net/Uri;
    const-string v4, "highlight_offset"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/notification/NotificationSettings;->offset:Ljava/lang/String;

    .line 1348
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/notification/NotificationSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 1352
    .end local v2    # "pickedUri":Landroid/net/Uri;
    :pswitch_1
    if-ne p2, v7, :cond_0

    .line 1353
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1354
    .restart local v2    # "pickedUri":Landroid/net/Uri;
    const-string v4, "highlight_offset"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/notification/NotificationSettings;->offset:Ljava/lang/String;

    .line 1360
    const/16 v4, 0x80

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/notification/NotificationSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 1364
    .end local v2    # "pickedUri":Landroid/net/Uri;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/notification/NotificationSettings;->isConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1365
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1366
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_ConfigOpRngToneLink"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1367
    .local v1, "mRingtoneType":Ljava/lang/String;
    const-string v4, "Tcoloring"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1368
    const-string v4, "http://www.tcoloring.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1369
    .local v3, "u":Landroid/net/Uri;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1370
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1371
    .end local v3    # "u":Landroid/net/Uri;
    :cond_1
    const-string v4, "Ringtoyou"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1372
    const-string v4, "http://ringtoyou.olleh.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1373
    .restart local v3    # "u":Landroid/net/Uri;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1374
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1376
    .end local v3    # "u":Landroid/net/Uri;
    :cond_2
    const-string v4, "NotificationSettings"

    const-string v5, "Preference not found: "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1338
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 375
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mUserManager:Landroid/os/UserManager;

    .line 378
    iget-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    .line 379
    new-instance v11, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/settings/notification/NotificationSettings;->mSecure:Z

    .line 381
    iget-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const-string v12, "audio"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioManager;

    sput-object v11, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "power"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    sput-object v11, Lcom/android/settings/notification/NotificationSettings;->mPowerManager:Landroid/os/PowerManager;

    .line 384
    iget-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/settings/notification/NotificationSettings;->isKioskContainer:Z

    .line 395
    const v11, 0x7f080081

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->addPreferencesFromResource(I)V

    .line 397
    const-string v11, "ds_ring_tone"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    .line 399
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->initRingtones()V

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 402
    const-string v11, "ringtone"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    .line 403
    iget-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v11, p0}, Lcom/android/settings/DefaultRingtonePreference;->setObject(Lcom/android/settings/notification/NotificationSettings;)V

    .line 404
    iget-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/settings/DefaultRingtonePreference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 406
    :cond_0
    const-string v11, "ringtone2"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    .line 407
    iget-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtone2:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/settings/DefaultRingtonePreference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 409
    const-string v11, "tcoloring"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mTcoloring:Landroid/preference/Preference;

    .line 410
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Setting_ConfigOpRngToneLink"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 411
    .local v7, "mRingtoneType":Ljava/lang/String;
    const-string v11, "Tcoloring"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 412
    const-string v11, "tcoloring"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    .line 415
    :cond_1
    const-string v11, "ringtoyou"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtoyou:Landroid/preference/Preference;

    .line 416
    const-string v11, "Ringtoyou"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 417
    const-string v11, "ringtoyou"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    .line 421
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Setting_EnableMenuDownloadContents"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, "download_contents":Ljava/lang/String;
    const-string v11, "Ringtone"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 423
    const-string v11, "download_ringtone"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    .line 426
    :cond_3
    const-string v11, "emergency_tone"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/DropDownPreference;

    iput-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mEmergencyTone:Lcom/android/settings/DropDownPreference;

    .line 427
    iget-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mEmergencyTone:Lcom/android/settings/DropDownPreference;

    if-eqz v11, :cond_4

    .line 428
    iget-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mEmergencyTone:Lcom/android/settings/DropDownPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/settings/DropDownPreference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 431
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 440
    .local v0, "activity":Landroid/content/Intent;
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->setHasOptionsMenu(Z)V

    .line 444
    sget-object v1, Lcom/android/settings/notification/NotificationSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    .local v1, "arr$":[Lcom/android/settings/notification/SettingPref;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_5

    aget-object v9, v1, v4

    .line 445
    .local v9, "pref":Lcom/android/settings/notification/SettingPref;
    invoke-virtual {v9, p0}, Lcom/android/settings/notification/SettingPref;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    .line 444
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 448
    .end local v9    # "pref":Lcom/android/settings/notification/SettingPref;
    :cond_5
    const-string v11, "dial_pad_tones"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mDialKeypadTone:Landroid/preference/SwitchPreference;

    .line 449
    const-string v11, "screen_locking_sounds"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mScreenLockSound:Landroid/preference/SwitchPreference;

    .line 450
    const-string v11, "touch_sounds"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mTouchSounds:Landroid/preference/SwitchPreference;

    .line 451
    const-string v11, "keyboard_sound"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mKeyboardSound:Landroid/preference/SwitchPreference;

    .line 454
    const-string v11, "phone_vibration"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    iput-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    .line 455
    iget-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 456
    const-string v11, "vibrate_when_ringing"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    .line 457
    const-string v11, "vibrate_on_touch"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    .line 458
    const-string v11, "keyboard_vibration"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    .line 460
    iget-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    new-instance v12, Lcom/android/settings/notification/NotificationSettings$8;

    invoke-direct {v12, p0}, Lcom/android/settings/notification/NotificationSettings$8;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 470
    iget-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    new-instance v12, Lcom/android/settings/notification/NotificationSettings$9;

    invoke-direct {v12, p0}, Lcom/android/settings/notification/NotificationSettings$9;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 480
    iget-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    new-instance v12, Lcom/android/settings/notification/NotificationSettings$10;

    invoke-direct {v12, p0}, Lcom/android/settings/notification/NotificationSettings$10;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 490
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 492
    :cond_6
    const-string v11, "vibration_feedback_intensity"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    .line 493
    const-string v11, "vibrate_on_touch"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    .line 494
    const-string v11, "keyboard_vibration"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    .line 496
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 497
    .local v2, "conf":Landroid/content/res/Configuration;
    iget v11, v2, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    .line 499
    const-string v11, "vibrate_on_touch"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    .line 500
    const-string v11, "keyboard_vibration"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    .line 502
    :cond_8
    iget-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 503
    const-string v11, "phone_vibration"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    .line 504
    const-string v11, "vibrate_when_ringing"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    .line 505
    const-string v11, "ringtone_vibration"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    .line 510
    :cond_9
    iget-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 511
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/settings/notification/NotificationSettings;->mIsEmerMode:Z

    .line 515
    :cond_a
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 516
    const-string v11, "ringtone"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    .line 517
    const-string v11, "ringtone2"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    .line 522
    :goto_1
    const-string v11, "ds_ring_tone"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    .line 523
    iget-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    if-eqz v11, :cond_b

    .line 524
    iget-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    const v12, 0x7f0e1435

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(I)V

    .line 525
    iget-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtonePreference_DS:Landroid/preference/Preference;

    new-instance v12, Lcom/android/settings/notification/NotificationSettings$11;

    invoke-direct {v12, p0}, Lcom/android/settings/notification/NotificationSettings$11;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 533
    :cond_b
    const-string v11, "notification"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    .line 535
    .local v8, "notification":Landroid/preference/PreferenceCategory;
    invoke-direct {p0, v8}, Lcom/android/settings/notification/NotificationSettings;->initPulse(Landroid/preference/PreferenceCategory;)V

    .line 537
    const-string v11, "lock_screen_notifications"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    .line 539
    invoke-direct {p0, v8}, Lcom/android/settings/notification/NotificationSettings;->initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V

    .line 540
    const-string v11, "manage_zen_access"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mZenAccess:Landroid/preference/Preference;

    .line 541
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshZenAccess()V

    .line 543
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v11

    if-nez v11, :cond_c

    .line 544
    const-string v11, "dnd_category"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    .line 545
    const-string v11, "zen_mode_dnd"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    .line 549
    :cond_c
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->initSoundMode()V

    .line 555
    iget-boolean v11, p0, Lcom/android/settings/notification/NotificationSettings;->isKioskContainer:Z

    if-eqz v11, :cond_d

    .line 556
    const-string v11, "app_notifications"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    .line 564
    :cond_d
    const-string v11, "notifications_sub_settings"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    iput-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mSubNtofications:Landroid/preference/PreferenceScreen;

    .line 565
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 566
    iget-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mSubNtofications:Landroid/preference/PreferenceScreen;

    const v12, 0x7f0e05bd

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 569
    :cond_e
    const-string v11, "sound_effect"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    iput-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundEffects:Landroid/preference/PreferenceScreen;

    .line 570
    iget-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundEffects:Landroid/preference/PreferenceScreen;

    if-eqz v11, :cond_f

    .line 575
    :cond_f
    iget-boolean v11, p0, Lcom/android/settings/notification/NotificationSettings;->mIsEmerMode:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_13

    .line 580
    iget-object v11, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const v12, 0x7f080081

    const-string v13, "UPSM"

    invoke-static {v11, v12, v13}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 582
    .local v10, "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_11

    .line 583
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 584
    .local v6, "list":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_2

    .line 519
    .end local v6    # "list":Ljava/lang/String;
    .end local v8    # "notification":Landroid/preference/PreferenceCategory;
    .end local v10    # "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, "i$":I
    :cond_10
    const-string v11, "ringtone2"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    .line 520
    const-string v11, "ds_ring_tone"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 588
    .end local v4    # "i$":I
    .restart local v8    # "notification":Landroid/preference/PreferenceCategory;
    .restart local v10    # "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_13

    .line 590
    :cond_12
    const-string v11, "vibrations"

    invoke-virtual {p0, v11}, Lcom/android/settings/notification/NotificationSettings;->removePreference(Ljava/lang/String;)V

    .line 593
    .end local v10    # "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_13
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 851
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 854
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettings;->mIsEmerMode:Z

    if-eqz v0, :cond_0

    .line 858
    :cond_0
    return-void
.end method

.method public onMusicPickerChosen(I)V
    .locals 3
    .param p1, "ringtoneType"    # I

    .prologue
    const/4 v2, 0x1

    .line 1385
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1386
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1387
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1388
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1389
    const-string v1, "enable_ringtone_recommender"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1390
    const-string v1, "DocumentsUIPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1391
    if-ne p1, v2, :cond_0

    .line 1392
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/notification/NotificationSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1393
    const-string v1, "NotificationSettings"

    const-string v2, "startActivityForResult: requestCode : REQUEST_AUDIO_RINGTONE : 1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :goto_0
    return-void

    .line 1395
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/NotificationSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1396
    const-string v1, "NotificationSettings"

    const-string v2, "startActivityForResult: requestCode : REQUEST_AUDIO_RINGTONE_2 : 2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 862
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 870
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 864
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 865
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "ringtone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 866
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    .line 867
    const/4 v1, 0x1

    goto :goto_0

    .line 862
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 675
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 676
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->register(Z)V

    .line 679
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->releaseListeners()V

    .line 681
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 692
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mTcoloring:Landroid/preference/Preference;

    if-eq p2, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtoyou:Landroid/preference/Preference;

    if-ne p2, v3, :cond_5

    .line 693
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/notification/NotificationSettings;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 694
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 695
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "extra_prefs_show_button_bar"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 696
    const-string v3, "extra_prefs_set_back_text"

    const v4, 0x7f0e0bd2

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/NotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    const-string v3, "wifi_enable_next_on_connect"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 699
    const/4 v3, 0x3

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/notification/NotificationSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 731
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 701
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 703
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mTcoloring:Landroid/preference/Preference;

    if-ne p2, v3, :cond_3

    .line 704
    const-string v3, "http://www.tcoloring.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 705
    .local v2, "u":Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 706
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 707
    .end local v2    # "u":Landroid/net/Uri;
    :cond_3
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mRingtoyou:Landroid/preference/Preference;

    if-ne p2, v3, :cond_4

    .line 708
    const-string v3, "http://ringtoyou.olleh.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 709
    .restart local v2    # "u":Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 710
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/NotificationSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 712
    .end local v2    # "u":Landroid/net/Uri;
    :cond_4
    const-string v3, "NotificationSettings"

    const-string v4, "Preference not found: "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 715
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mKeyboardSound:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_6

    .line 716
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const-string v4, "com.android.settings"

    const-string v5, "SRKS"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 717
    :cond_6
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundEffects:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_7

    .line 719
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 720
    .local v0, "i":Landroid/content/Intent;
    const-string v3, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 721
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/notification/NotificationSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 727
    .end local v0    # "i":Landroid/content/Intent;
    :cond_7
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_1

    .line 728
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const-string v4, "com.android.settings"

    const-string v5, "SVKV"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 13

    .prologue
    const v12, 0x7f0e14ae

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 625
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 626
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshZenAccess()V

    .line 627
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    invoke-virtual {v7, v8}, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->register(Z)V

    .line 629
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshSoundMode()V

    .line 630
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshDNDmode()V

    .line 631
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->registerListeners()V

    .line 634
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->lookupRingtoneNames()V

    .line 635
    sget-object v7, Lcom/android/settings/notification/NotificationSettings;->PREF_KEYBOARD_SOUND:Lcom/android/settings/notification/SettingPref;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    .line 637
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_0

    .line 638
    iget-object v10, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "vibrate_when_ringing"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_6

    move v7, v8

    :goto_0
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 639
    :cond_0
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_1

    .line 640
    iget-object v10, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "haptic_feedback_enabled"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_7

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 641
    :cond_1
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_2

    .line 642
    iget-object v10, p0, Lcom/android/settings/notification/NotificationSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "sip_key_feedback_vibration"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_8

    move v7, v8

    :goto_2
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 643
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->updateDeviceVibrationName()V

    .line 644
    sget-object v7, Lcom/android/settings/notification/NotificationSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v7}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    .line 645
    .local v1, "bPowerSaving":Z
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_3

    .line 646
    if-nez v1, :cond_9

    .line 647
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    const v10, 0x7f0e0e31

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 648
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 654
    :cond_3
    :goto_3
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_4

    .line 655
    if-nez v1, :cond_a

    .line 656
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    const v10, 0x7f0e14ab

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 657
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 664
    :cond_4
    :goto_4
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mUserManager:Landroid/os/UserManager;

    const-string v10, "no_adjust_volume"

    invoke-virtual {v7, v10}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    .line 665
    .local v3, "isRestricted":Z
    sget-object v0, Lcom/android/settings/notification/NotificationSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_5
    if-ge v2, v5, :cond_c

    aget-object v4, v0, v2

    .line 666
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 667
    .local v6, "pref":Landroid/preference/Preference;
    if-eqz v6, :cond_5

    .line 668
    if-nez v3, :cond_b

    move v7, v8

    :goto_6
    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 665
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "bPowerSaving":Z
    .end local v2    # "i$":I
    .end local v3    # "isRestricted":Z
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "pref":Landroid/preference/Preference;
    :cond_6
    move v7, v9

    .line 638
    goto :goto_0

    :cond_7
    move v7, v9

    .line 640
    goto :goto_1

    :cond_8
    move v7, v9

    .line 642
    goto :goto_2

    .line 650
    .restart local v1    # "bPowerSaving":Z
    :cond_9
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v12}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 651
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_3

    .line 659
    :cond_a
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v12}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 660
    iget-object v7, p0, Lcom/android/settings/notification/NotificationSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_4

    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "isRestricted":Z
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "len$":I
    .restart local v6    # "pref":Landroid/preference/Preference;
    :cond_b
    move v7, v9

    .line 668
    goto :goto_6

    .line 671
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "pref":Landroid/preference/Preference;
    :cond_c
    return-void
.end method

.method public updateDeviceVibrationName()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 874
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 877
    .local v7, "temp":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 878
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 880
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    const-string v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 884
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 897
    :cond_1
    :goto_0
    return-void

    .line 887
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 889
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 890
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 891
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    .line 892
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    const-string v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 895
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
