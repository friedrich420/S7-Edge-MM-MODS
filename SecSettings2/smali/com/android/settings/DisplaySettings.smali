.class public Lcom/android/settings/DisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field static mDualFolderType:Z

.field private static mIsSupportOutdoor:Z

.field private static mPowerManager:Landroid/os/PowerManager;

.field static mSupportFolderType:Z


# instance fields
.field private MAX_BRIGHTNESS_CHANGED:Ljava/lang/String;

.field private isDeviceLockTime:Z

.field private isSecuredLock:Z

.field private mAccessControlObserver:Landroid/database/ContentObserver;

.field private mAlwaysOnScreen:Landroid/preference/PreferenceScreen;

.field private final mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

.field private mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

.field private mAutoLockmode:Landroid/preference/SwitchPreference;

.field private final mBrightnessMaxReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

.field private mCameraGesturePreference:Landroid/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayScaling:Landroid/preference/PreferenceScreen;

.field private mDozePreference:Landroid/preference/SwitchPreference;

.field private mEdgeLighting:Landroid/preference/Preference;

.field private mFontPreview:Landroid/preference/PreferenceScreen;

.field private mIconBackgrounds:Landroid/preference/PreferenceScreen;

.field private mIsKioskModeEnabled:I

.field private mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

.field private mKeyBacklightmode:Landroid/preference/SwitchPreference;

.field private mLiftToWakePreference:Landroid/preference/SwitchPreference;

.field private mNightClock:Landroid/preference/PreferenceScreen;

.field private mNightClockAOD:Z

.field private final mNightClockObserver:Landroid/database/ContentObserver;

.field private mNightModePreference:Landroid/preference/ListPreference;

.field private mOneHand:Landroid/preference/Preference;

.field private mOutdoorMode:Landroid/preference/SwitchPreference;

.field private mOutdoorObserver:Landroid/database/ContentObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRotate:Landroid/preference/SwitchPreference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenMode:Landroid/preference/PreferenceScreen;

.field private mScreenModeObserver:Landroid/database/ContentObserver;

.field private mScreenOffPocket:Landroid/preference/SwitchPreference;

.field private mScreenSaverPreference:Landroid/preference/PreferenceScreen;

.field private mScreenTimeDialog:Landroid/app/AlertDialog;

.field private mScreenTimeoutObserver:Landroid/database/ContentObserver;

.field private mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

.field private mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

.field private mSimpleLEDIndicator:Landroid/preference/SwitchPreference;

.field private mSmartStay:Landroid/preference/PreferenceScreen;

.field private mSmartStayObserver:Landroid/database/ContentObserver;

.field private mTapToWakePreference:Landroid/preference/SwitchPreference;

.field private mTouchKeyLight:Landroid/preference/ListPreference;

.field private mWallpaper:Landroid/preference/PreferenceScreen;

.field private mWifiDisplayPreference:Landroid/preference/Preference;

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 224
    sput-boolean v0, Lcom/android/settings/DisplaySettings;->mIsSupportOutdoor:Z

    .line 229
    sput-boolean v0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    .line 230
    sput-boolean v0, Lcom/android/settings/DisplaySettings;->mDualFolderType:Z

    .line 1729
    new-instance v0, Lcom/android/settings/DisplaySettings$11;

    invoke-direct {v0}, Lcom/android/settings/DisplaySettings$11;-><init>()V

    sput-object v0, Lcom/android/settings/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 166
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mNightClockAOD:Z

    .line 233
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mIsKioskModeEnabled:I

    .line 234
    const-string v0, "com.sec.intent.action.MAX_BRIGHTNESS_CHANGED"

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->MAX_BRIGHTNESS_CHANGED:Ljava/lang/String;

    .line 236
    new-instance v0, Lcom/android/settings/DisplaySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$1;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mOutdoorObserver:Landroid/database/ContentObserver;

    .line 248
    new-instance v0, Lcom/android/settings/DisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$2;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessMaxReceiver:Landroid/content/BroadcastReceiver;

    .line 268
    new-instance v0, Lcom/android/settings/DisplaySettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$3;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    .line 275
    new-instance v0, Lcom/android/settings/DisplaySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$4;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 291
    new-instance v0, Lcom/android/settings/DisplaySettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$5;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    .line 301
    new-instance v0, Lcom/android/settings/DisplaySettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$6;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenModeObserver:Landroid/database/ContentObserver;

    .line 310
    new-instance v0, Lcom/android/settings/DisplaySettings$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$7;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    .line 317
    new-instance v0, Lcom/android/settings/DisplaySettings$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$8;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mNightClockObserver:Landroid/database/ContentObserver;

    .line 1202
    new-instance v0, Lcom/android/settings/DisplaySettings$10;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$10;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DisplaySettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/BrightnessSeekBarPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;

    .prologue
    .line 122
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;

    .prologue
    .line 122
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isCameraGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;

    .prologue
    .line 122
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/DisplaySettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->MAX_BRIGHTNESS_CHANGED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/SettingsListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenModeSummary()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAlwaysOnScreenSummary()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/DisplaySettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNightClock:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/DisplaySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mNightClockAOD:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateSmartStaySummary()V

    return-void
.end method

.method private disableUnusableTimeouts(Lcom/android/settings/SettingsListPreference;)V
    .locals 24
    .param p1, "screenTimeoutPreference"    # Lcom/android/settings/SettingsListPreference;

    .prologue
    .line 839
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const-string v21, "device_policy"

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 842
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v4, :cond_2

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v12

    .line 844
    .local v12, "maxTimeout":J
    :goto_0
    const/4 v9, -0x1

    .line 847
    .local v9, "limit":I
    const v9, 0x927c0

    .line 852
    int-to-long v0, v9

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 854
    const-wide/16 v20, 0x1

    cmp-long v20, v12, v20

    if-gez v20, :cond_0

    .line 855
    int-to-long v12, v9

    .line 864
    :cond_0
    const/4 v8, -0x1

    .line 867
    .local v8, "idx":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 868
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f110004

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 869
    .local v5, "entries":[Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f110005

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 874
    .local v19, "values":[Ljava/lang/CharSequence;
    :goto_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 875
    .local v14, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 877
    .local v15, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_4

    .line 878
    aget-object v20, v19, v7

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 880
    .local v16, "timeout":J
    cmp-long v20, v16, v12

    if-gtz v20, :cond_1

    .line 881
    aget-object v20, v5, v7

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    aget-object v20, v19, v7

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/SettingsListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v20

    if-nez v20, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/SettingsListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v20, v20, v16

    if-gez v20, :cond_1

    .line 887
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_1

    move v8, v7

    .line 877
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 842
    .end local v5    # "entries":[Ljava/lang/CharSequence;
    .end local v7    # "i":I
    .end local v8    # "idx":I
    .end local v9    # "limit":I
    .end local v12    # "maxTimeout":J
    .end local v14    # "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v15    # "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v16    # "timeout":J
    .end local v19    # "values":[Ljava/lang/CharSequence;
    :cond_2
    const-wide/16 v12, 0x0

    goto/16 :goto_0

    .line 871
    .restart local v8    # "idx":I
    .restart local v9    # "limit":I
    .restart local v12    # "maxTimeout":J
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f110002

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 872
    .restart local v5    # "entries":[Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f110003

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "values":[Ljava/lang/CharSequence;
    goto :goto_1

    .line 893
    .restart local v7    # "i":I
    .restart local v14    # "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v15    # "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_4
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/SettingsListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 895
    .local v6, "entry":Ljava/lang/String;
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_5

    .line 896
    invoke-virtual {v14, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 897
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/SettingsListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 901
    :cond_5
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-eqz v20, :cond_6

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-nez v20, :cond_8

    .line 902
    :cond_6
    const v20, 0x7f0e115c

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    :cond_7
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/SettingsListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 917
    .local v18, "userPreference":I
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 919
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 922
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v20, v20, v12

    if-gtz v20, :cond_9

    .line 923
    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsListPreference;->setValue(Ljava/lang/String;)V

    .line 939
    :goto_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_b

    const/16 v20, 0x1

    :goto_5
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsListPreference;->setEnabled(Z)V

    .line 940
    return-void

    .line 905
    .end local v18    # "userPreference":I
    :cond_8
    const-string v20, "DisplaySettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "revisedValues.size() : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/CharSequence;

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sub-long v10, v12, v20

    .line 907
    .local v10, "last_timeout":J
    const-string v20, "DisplaySettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "last_timeout : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const-wide/16 v20, 0x0

    cmp-long v20, v10, v20

    if-lez v20, :cond_7

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    aget-object v20, v19, v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v20, v12, v20

    if-gez v20, :cond_7

    .line 910
    const v20, 0x7f0e115c

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 924
    .end local v10    # "last_timeout":J
    .restart local v18    # "userPreference":I
    :cond_9
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_a

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/CharSequence;

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    cmp-long v20, v20, v12

    if-nez v20, :cond_a

    .line 928
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 930
    :cond_a
    const-string v20, "DisplaySettings"

    const-string v21, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsListPreference;->setValueIndex(I)V

    goto/16 :goto_4

    .line 939
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_5
.end method

.method private getFontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "fontName"    # Ljava/lang/String;

    .prologue
    .line 1430
    if-nez p1, :cond_0

    .line 1431
    const-string v2, ""

    .line 1445
    :goto_0
    return-object v2

    .line 1434
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "theme_font_system"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1436
    .local v0, "currentThemePath":Ljava/lang/String;
    const-string v2, "persist.sys.flipfontpath"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1437
    .local v1, "sysprop":Ljava/lang/String;
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1439
    const-string v2, "Theme"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1440
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e1612

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 1443
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/settings/Utils;->getFontName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    .line 1445
    goto :goto_0
.end method

.method private getLedIndicator()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1906
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_charing"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_low_battery"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_missed_event"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_voice_recording"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 13
    .param p1, "time"    # J

    .prologue
    .line 1872
    const-wide/16 v8, 0x3e8

    div-long v6, p1, v8

    .line 1873
    .local v6, "second":J
    const-wide/16 v8, 0x3c

    div-long v2, v6, v8

    .line 1874
    .local v2, "minute":J
    const-wide/16 v8, 0x3c

    div-long v0, v2, v8

    .line 1875
    .local v0, "hour":J
    const-wide/16 v8, 0x3c

    rem-long/2addr v6, v8

    .line 1877
    const-string v4, ""

    .line 1879
    .local v4, "result":Ljava/lang/String;
    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-lez v5, :cond_0

    .line 1880
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f130013

    long-to-int v9, v0

    invoke-virtual {v5, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    long-to-int v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1881
    const-wide/16 v8, 0x3c

    rem-long/2addr v2, v8

    .line 1884
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-lez v5, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-lez v5, :cond_1

    .line 1885
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1888
    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-lez v5, :cond_2

    .line 1889
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f130014

    long-to-int v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    long-to-int v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1892
    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-lez v5, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    .line 1893
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1896
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    .line 1897
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f130015

    long-to-int v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    long-to-int v11, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1900
    :cond_4
    const-string v5, "DisplaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getTimeoutNewEntry : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    return-object v4
.end method

.method private static isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 719
    const/4 v0, 0x0

    return v0
.end method

.method private static isCameraGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 713
    const/4 v0, 0x0

    return v0
.end method

.method private isDefaultEasyLauncher()Z
    .locals 5

    .prologue
    .line 1417
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.easylauncher"

    const-string v4, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    .local v1, "easyLauncer":Landroid/content/ComponentName;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1419
    .local v2, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1420
    .local v0, "currentDefaultHome":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1421
    const/4 v3, 0x1

    .line 1423
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isDefaultLauncher()Z
    .locals 5

    .prologue
    .line 1402
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isZeroLauncher(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1404
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.launcher"

    const-string v4, "com.android.launcher2.Launcher"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    .local v1, "defaultLauncer":Landroid/content/ComponentName;
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1409
    .local v2, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1410
    .local v0, "currentDefaultHome":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1411
    const/4 v3, 0x1

    .line 1413
    :goto_1
    return v3

    .line 1406
    .end local v0    # "currentDefaultHome":Landroid/content/ComponentName;
    .end local v1    # "defaultLauncer":Landroid/content/ComponentName;
    .end local v2    # "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.launcher"

    const-string v4, "com.sec.android.app.launcher.activities.LauncherActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1    # "defaultLauncer":Landroid/content/ComponentName;
    goto :goto_0

    .line 1413
    .restart local v0    # "currentDefaultHome":Landroid/content/ComponentName;
    .restart local v2    # "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 7
    .param p1, "timeout"    # J

    .prologue
    const/4 v2, 0x0

    .line 1701
    const/4 v1, 0x0

    .line 1703
    .local v1, "values":[Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    if-eqz v3, :cond_1

    .line 1704
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1711
    :goto_0
    if-nez v1, :cond_2

    .line 1721
    :cond_0
    :goto_1
    return v2

    .line 1706
    :cond_1
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1715
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 1716
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_3

    .line 1717
    const/4 v2, 0x1

    goto :goto_1

    .line 1715
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static isLiftToWakeAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 691
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 692
    .local v0, "sensors":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isTapToWakeAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 705
    const v0, 0x11200bb

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private refreshScreenTimeoutList(Lcom/android/settings/SettingsListPreference;)V
    .locals 10
    .param p1, "screenTimeoutPreference"    # Lcom/android/settings/SettingsListPreference;

    .prologue
    .line 946
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 947
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, "device_policy"

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 948
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 949
    .local v4, "maxTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "screen_off_timeout"

    const-wide/16 v8, 0x7530

    invoke-static {v3, v6, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 950
    .local v0, "currentTimeout":J
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Lcom/android/settings/SettingsListPreference;)V

    .line 951
    const-string v3, "DisplaySettings"

    const-string v6, "refreshScreenTimeoutList() : screen Time out for edm"

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    .end local v0    # "currentTimeout":J
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v4    # "maxTimeout":J
    :cond_0
    return-void

    .line 948
    .restart local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method private setLedIndicator(Z)V
    .locals 5
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1913
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "led_indicator_charing"

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1914
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "led_indicator_low_battery"

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1915
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "led_indicator_missed_event"

    if-eqz p1, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1916
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "led_indicator_voice_recording"

    if-eqz p1, :cond_4

    :goto_3
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1917
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_reminder_led_indicator"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1918
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1913
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1914
    goto :goto_1

    :cond_3
    move v0, v2

    .line 1915
    goto :goto_2

    :cond_4
    move v1, v2

    .line 1916
    goto :goto_3
.end method

.method private updateAlwaysOnScreenSummary()V
    .locals 4

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAlwaysOnScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 1383
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAlwaysOnScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "aod_mode"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0e0e92

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1385
    :cond_0
    return-void

    .line 1383
    :cond_1
    const v0, 0x7f0e0e93

    goto :goto_0
.end method

.method private updateBackKeyLightSummary()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1166
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_2

    .line 1167
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1100ad

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1168
    .local v1, "durationValues":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1100ac

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1169
    .local v4, "strDurationValues":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "key_backlight_timeout"

    const/16 v7, 0xbb8

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1172
    .local v0, "dbDurationValue":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1173
    .local v3, "keyBacklightDBValue":Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    aget-object v5, v4, v8

    if-eqz v5, :cond_0

    .line 1174
    aget-object v3, v4, v8

    .line 1177
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 1178
    aget-object v5, v1, v2

    if-eqz v5, :cond_3

    aget-object v5, v1, v2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1179
    aget-object v3, v4, v2

    .line 1183
    :cond_1
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1185
    .end local v0    # "dbDurationValue":Ljava/lang/String;
    .end local v1    # "durationValues":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "keyBacklightDBValue":Ljava/lang/String;
    .end local v4    # "strDurationValues":[Ljava/lang/String;
    :cond_2
    return-void

    .line 1177
    .restart local v0    # "dbDurationValue":Ljava/lang/String;
    .restart local v1    # "durationValues":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "keyBacklightDBValue":Ljava/lang/String;
    .restart local v4    # "strDurationValues":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateFontPreviewSummary()V
    .locals 13

    .prologue
    .line 1293
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mFontPreview:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_3

    .line 1294
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->getSelectedFontSize(Landroid/content/Context;)I

    move-result v3

    .line 1296
    .local v3, "mSelectedFontSize":I
    const/4 v4, 0x0

    .line 1297
    .local v4, "mode":I
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    const-string v10, "prefs"

    invoke-virtual {v9, v10, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1300
    .local v5, "mySharedPreference":Landroid/content/SharedPreferences;
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 1301
    .local v7, "selectedFont":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1302
    .local v8, "temp":[Ljava/lang/String;
    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1303
    if-eqz v8, :cond_0

    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    if-lez v9, :cond_0

    .line 1304
    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    aget-object v7, v8, v9

    .line 1309
    :cond_0
    const-string v9, "monotype"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "default"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, ""

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1310
    :cond_1
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e1130

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .end local v7    # "selectedFont":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 1316
    .restart local v7    # "selectedFont":Ljava/lang/String;
    :goto_0
    const-string v6, ""

    .line 1317
    .local v6, "returnSuammry":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1318
    packed-switch v3, :pswitch_data_0

    .line 1368
    :goto_1
    const-string v1, ", "

    .line 1370
    .local v1, "comma":Ljava/lang/String;
    const-string v0, "ar"

    .line 1371
    .local v0, "ISO639_ARABIC":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 1372
    .local v2, "configurationLanguage":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1373
    const-string v1, "\u060c "

    .line 1375
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1377
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mFontPreview:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v6}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1379
    .end local v0    # "ISO639_ARABIC":Ljava/lang/String;
    .end local v1    # "comma":Ljava/lang/String;
    .end local v2    # "configurationLanguage":Ljava/lang/String;
    .end local v3    # "mSelectedFontSize":I
    .end local v4    # "mode":I
    .end local v5    # "mySharedPreference":Landroid/content/SharedPreferences;
    .end local v6    # "returnSuammry":Ljava/lang/String;
    .end local v7    # "selectedFont":Ljava/lang/String;
    .end local v8    # "temp":[Ljava/lang/String;
    :cond_3
    return-void

    .line 1313
    .restart local v3    # "mSelectedFontSize":I
    .restart local v4    # "mode":I
    .restart local v5    # "mySharedPreference":Landroid/content/SharedPreferences;
    .restart local v7    # "selectedFont":Ljava/lang/String;
    .restart local v8    # "temp":[Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v7}, Lcom/android/settings/DisplaySettings;->getFontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1320
    .restart local v6    # "returnSuammry":Ljava/lang/String;
    :pswitch_0
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e09a8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .end local v6    # "returnSuammry":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 1321
    .restart local v6    # "returnSuammry":Ljava/lang/String;
    goto :goto_1

    .line 1323
    :pswitch_1
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e165c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .end local v6    # "returnSuammry":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 1324
    .restart local v6    # "returnSuammry":Ljava/lang/String;
    goto :goto_1

    .line 1326
    :pswitch_2
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e09a7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .end local v6    # "returnSuammry":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "returnSuammry":Ljava/lang/String;
    goto :goto_1

    .line 1331
    :cond_5
    packed-switch v3, :pswitch_data_1

    goto :goto_1

    .line 1333
    :pswitch_3
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e09a9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .end local v6    # "returnSuammry":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 1334
    .restart local v6    # "returnSuammry":Ljava/lang/String;
    goto :goto_1

    .line 1336
    :pswitch_4
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e09aa

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .end local v6    # "returnSuammry":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 1337
    .restart local v6    # "returnSuammry":Ljava/lang/String;
    goto/16 :goto_1

    .line 1339
    :pswitch_5
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e09a8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .end local v6    # "returnSuammry":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 1340
    .restart local v6    # "returnSuammry":Ljava/lang/String;
    goto/16 :goto_1

    .line 1342
    :pswitch_6
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e09ad

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .end local v6    # "returnSuammry":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 1343
    .restart local v6    # "returnSuammry":Ljava/lang/String;
    goto/16 :goto_1

    .line 1345
    :pswitch_7
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e09a7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .end local v6    # "returnSuammry":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 1346
    .restart local v6    # "returnSuammry":Ljava/lang/String;
    goto/16 :goto_1

    .line 1348
    :pswitch_8
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e09ab

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .end local v6    # "returnSuammry":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 1349
    .restart local v6    # "returnSuammry":Ljava/lang/String;
    goto/16 :goto_1

    .line 1351
    :pswitch_9
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e09a6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .end local v6    # "returnSuammry":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 1352
    .restart local v6    # "returnSuammry":Ljava/lang/String;
    goto/16 :goto_1

    .line 1354
    :pswitch_a
    const v9, 0x7f0e09ae

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1355
    goto/16 :goto_1

    .line 1357
    :pswitch_b
    const v9, 0x7f0e09ae

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1358
    goto/16 :goto_1

    .line 1360
    :pswitch_c
    const v9, 0x7f0e09ae

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1361
    goto/16 :goto_1

    .line 1363
    :pswitch_d
    const v9, 0x7f0e09ae

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 1318
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1331
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private updateIconBackgroundsState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1388
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mIconBackgrounds:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_2

    .line 1389
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "current_sec_active_themepackage"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1390
    .local v0, "currentTheme":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->isDefaultLauncher()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->isDefaultEasyLauncher()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1391
    :cond_1
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mIconBackgrounds:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1395
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tap_to_icon"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    .line 1396
    .local v1, "nValue":Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mIconBackgrounds:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_5

    const v2, 0x7f0e16f8

    :goto_2
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1398
    .end local v0    # "currentTheme":Ljava/lang/String;
    .end local v1    # "nValue":Z
    :cond_2
    return-void

    .line 1393
    .restart local v0    # "currentTheme":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mIconBackgrounds:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 1395
    goto :goto_1

    .line 1396
    .restart local v1    # "nValue":Z
    :cond_5
    const v2, 0x7f0e16fa

    goto :goto_2
.end method

.method private updateOutdoorModeSummary()V
    .locals 6

    .prologue
    const/16 v5, 0xf

    .line 1188
    const v1, 0x7f0e0fe5

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1189
    .local v0, "summary":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 1190
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1192
    :cond_0
    return-void
.end method

.method private updateScreenModeSummary()V
    .locals 8

    .prologue
    const v7, 0x7f0e113b

    const v6, 0x7f0e113a

    const v5, 0x7f0e1137

    const v4, 0x7f0e1139

    const/4 v3, 0x1

    .line 1221
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 1222
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1223
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1224
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1289
    :cond_0
    :goto_0
    return-void

    .line 1227
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1231
    .local v0, "idx":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1233
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 1236
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 1239
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 1242
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 1245
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0e1133

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 1270
    .end local v0    # "idx":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 1271
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 1274
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1275
    .restart local v0    # "idx":I
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1277
    :pswitch_6
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 1280
    :pswitch_7
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 1283
    :pswitch_8
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 1231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1275
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1453
    :cond_0
    return-void
.end method

.method private updateSmartStaySummary()V
    .locals 3

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 1211
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligent_sleep_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1212
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0e0e92

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1218
    :cond_0
    :goto_0
    return-void

    .line 1215
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0e0e93

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private updateState()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1111
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateOutdoorModeSummary()V

    .line 1112
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateFontPreviewSummary()V

    .line 1113
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateSmartStaySummary()V

    .line 1114
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateTouchKeyLightSummary()V

    .line 1115
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    .line 1116
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateBackKeyLightSummary()V

    .line 1117
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAlwaysOnScreenSummary()V

    .line 1118
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateIconBackgroundsState()V

    .line 1121
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 1122
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_brightness_mode"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1124
    .local v0, "brightnessMode":I
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_7

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1128
    .end local v0    # "brightnessMode":I
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 1129
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wake_gesture_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1130
    .local v1, "value":I
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_8

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1134
    .end local v1    # "value":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 1135
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "doze_enabled"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1136
    .restart local v1    # "value":I
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_9

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1138
    .end local v1    # "value":I
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenModeSummary()V

    .line 1140
    sget-boolean v2, Lcom/android/settings/DisplaySettings;->mDualFolderType:Z

    if-eqz v2, :cond_3

    .line 1141
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "sub_lcd_auto_lock"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1142
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "key_night_mode"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_b

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1146
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_4

    .line 1147
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "double_tap_to_wake"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1148
    .restart local v1    # "value":I
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_c

    move v2, v3

    :goto_5
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1152
    .end local v1    # "value":I
    :cond_4
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_5

    .line 1153
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "camera_gesture_disabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1154
    .restart local v1    # "value":I
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_d

    move v2, v3

    :goto_6
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1158
    .end local v1    # "value":I
    :cond_5
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_6

    .line 1159
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "camera_double_tap_power_gesture_disabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1161
    .restart local v1    # "value":I
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_e

    :goto_7
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1163
    .end local v1    # "value":I
    :cond_6
    return-void

    .restart local v0    # "brightnessMode":I
    :cond_7
    move v2, v4

    .line 1124
    goto/16 :goto_0

    .end local v0    # "brightnessMode":I
    .restart local v1    # "value":I
    :cond_8
    move v2, v4

    .line 1130
    goto/16 :goto_1

    :cond_9
    move v2, v4

    .line 1136
    goto :goto_2

    .end local v1    # "value":I
    :cond_a
    move v2, v4

    .line 1141
    goto :goto_3

    :cond_b
    move v2, v4

    .line 1142
    goto :goto_4

    .restart local v1    # "value":I
    :cond_c
    move v2, v4

    .line 1148
    goto :goto_5

    :cond_d
    move v2, v4

    .line 1154
    goto :goto_6

    :cond_e
    move v3, v4

    .line 1161
    goto :goto_7
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 25
    .param p1, "currentTimeout"    # J

    .prologue
    .line 759
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    .line 760
    .local v12, "preference":Lcom/android/settings/SettingsListPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string v20, "device_policy"

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/DevicePolicyManager;

    .line 761
    .local v7, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v7, :cond_2

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 762
    .local v4, "adminTimeout":J
    :goto_0
    const-wide/16 v14, -0x1

    .line 765
    .local v14, "summary_val":J
    const-wide/16 v20, 0x0

    cmp-long v19, p1, v20

    if-gez v19, :cond_3

    .line 767
    const-string v13, ""

    .line 817
    .local v13, "summary":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "lock_screen_lock_after_timeout"

    const-wide/16 v22, 0x1388

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 819
    .local v8, "currentDeviceLockTimeout":J
    const-wide/16 v20, 0x0

    cmp-long v19, v4, v20

    if-eqz v19, :cond_0

    .line 820
    cmp-long v19, v4, v8

    if-gez v19, :cond_0

    move-wide v8, v4

    .line 823
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->isSecuredLock:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    cmp-long v19, v14, v8

    if-lez v19, :cond_f

    .line 824
    const v19, 0x7f0e115e

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/settings/SettingsListPreference;->setSummary(I)V

    .line 826
    const-wide/16 v20, 0x0

    cmp-long v19, v8, v20

    if-nez v19, :cond_1

    .line 827
    invoke-virtual {v12, v13}, Lcom/android/settings/SettingsListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 834
    :cond_1
    :goto_2
    return-void

    .line 761
    .end local v4    # "adminTimeout":J
    .end local v8    # "currentDeviceLockTimeout":J
    .end local v13    # "summary":Ljava/lang/String;
    .end local v14    # "summary_val":J
    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 768
    .restart local v4    # "adminTimeout":J
    .restart local v14    # "summary_val":J
    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v19

    if-nez v19, :cond_4

    cmp-long v19, p1, v4

    if-gtz v19, :cond_4

    .line 769
    const v19, 0x7f0e05ef

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "summary":Ljava/lang/String;
    goto :goto_1

    .line 772
    .end local v13    # "summary":Ljava/lang/String;
    :cond_4
    invoke-virtual {v12}, Lcom/android/settings/SettingsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 773
    .local v10, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v12}, Lcom/android/settings/SettingsListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v18

    .line 775
    .local v18, "values":[Ljava/lang/CharSequence;
    if-eqz v10, :cond_5

    array-length v0, v10

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 776
    :cond_5
    const-string v13, ""

    .restart local v13    # "summary":Ljava/lang/String;
    goto :goto_1

    .line 778
    .end local v13    # "summary":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x0

    .line 780
    .local v6, "best":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_8

    .line 781
    aget-object v19, v18, v11

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 783
    .local v16, "timeout":J
    cmp-long v19, p1, v16

    if-ltz v19, :cond_7

    .line 784
    move v6, v11

    .line 780
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 789
    .end local v16    # "timeout":J
    :cond_8
    array-length v0, v10

    move/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    if-nez v19, :cond_a

    .line 790
    :cond_9
    const v19, 0x7f0e05ef

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "summary":Ljava/lang/String;
    goto/16 :goto_1

    .line 792
    .end local v13    # "summary":Ljava/lang/String;
    :cond_a
    aget-object v19, v18, v6

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v19, v20, v4

    if-gez v19, :cond_b

    cmp-long v19, v4, p1

    if-gez v19, :cond_b

    .line 793
    const-string v19, "DisplaySettings"

    const-string v20, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const v19, 0x7f0e05ef

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 795
    .restart local v13    # "summary":Ljava/lang/String;
    move-wide v14, v4

    goto/16 :goto_1

    .line 797
    .end local v13    # "summary":Ljava/lang/String;
    :cond_b
    invoke-direct/range {p0 .. p2}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v19

    if-eqz v19, :cond_d

    cmp-long v19, p1, v4

    if-ltz v19, :cond_c

    const-wide/16 v20, 0x0

    cmp-long v19, v4, v20

    if-nez v19, :cond_d

    .line 798
    :cond_c
    const v20, 0x7f0e05ef

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v19, v10, v6

    check-cast v19, Ljava/lang/String;

    aput-object v19, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 799
    .restart local v13    # "summary":Ljava/lang/String;
    aget-object v19, v18, v6

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    goto/16 :goto_1

    .line 801
    .end local v13    # "summary":Ljava/lang/String;
    :cond_d
    const-wide/16 v20, 0x0

    cmp-long v19, v4, v20

    if-nez v19, :cond_e

    .line 802
    const v19, 0x7f0e05ef

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 803
    .restart local v13    # "summary":Ljava/lang/String;
    move-wide/from16 v14, p1

    goto/16 :goto_1

    .line 805
    .end local v13    # "summary":Ljava/lang/String;
    :cond_e
    const v19, 0x7f0e05ef

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 806
    .restart local v13    # "summary":Ljava/lang/String;
    move-wide v14, v4

    goto/16 :goto_1

    .line 830
    .end local v6    # "best":I
    .end local v10    # "entries":[Ljava/lang/CharSequence;
    .end local v11    # "i":I
    .end local v18    # "values":[Ljava/lang/CharSequence;
    .restart local v8    # "currentDeviceLockTimeout":J
    :cond_f
    invoke-virtual {v12, v13}, Lcom/android/settings/SettingsListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private updateTouchKeyLightSummary()V
    .locals 5

    .prologue
    .line 1195
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 1196
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "button_key_light"

    const/16 v4, 0x1770

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1197
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1198
    .local v0, "summary":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1200
    .end local v0    # "summary":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1726
    const v0, 0x7f0e0d67

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 332
    const/16 v0, 0x2e

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 724
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 725
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 726
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/DisplaySettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/DisplaySettings$9;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 753
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1075
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1076
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v0, v1}, Lcom/android/settings/BrightnessSeekBarPreference;->setFlipCloseStatus(I)V

    .line 1077
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    invoke-virtual {v0}, Lcom/android/settings/SettingsListPreference;->rotateSettingsListPreference()V

    .line 1078
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 30
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 337
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 339
    .local v5, "activity":Landroid/app/Activity;
    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 341
    .local v20, "resolver":Landroid/content/ContentResolver;
    const v25, 0x7f080044

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    const-string v26, "power"

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/PowerManager;

    sput-object v25, Lcom/android/settings/DisplaySettings;->mPowerManager:Landroid/os/PowerManager;

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mPm:Landroid/content/pm/PackageManager;

    .line 347
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    const/16 v26, 0x64

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_12

    const/4 v14, 0x1

    .line 348
    .local v14, "isKnoxUser":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v13

    .line 350
    .local v13, "isKioskContainer":Z
    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    .line 351
    .local v4, "actionBar":Landroid/app/ActionBar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v18

    .line 352
    .local v18, "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    const-string v25, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v25

    if-nez v25, :cond_0

    .line 353
    const v25, 0x7f0e0f9d

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 355
    :cond_0
    const-string v25, "screen_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    .line 358
    const-string v25, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v26

    const-string v27, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    .line 360
    new-instance v23, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 361
    .local v23, "utils":Lcom/android/internal/widget/LockPatternUtils;
    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DisplaySettings;->isSecuredLock:Z

    .line 364
    const-string v25, "screensaver"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/PreferenceScreen;

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x112006d

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v25

    if-eqz v25, :cond_1

    if-eqz v14, :cond_13

    .line 369
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 374
    :cond_2
    :goto_1
    const-string v25, "smartscreen_stay"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/PreferenceScreen;

    .line 376
    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 377
    const-string v25, "smartscreen_stay"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 380
    :cond_3
    const-string v25, "secbrightness"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Lcom/android/settings/BrightnessSeekBarPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    .line 381
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v25

    if-eqz v25, :cond_4

    .line 382
    const-string v25, "screen_brightness_mode"

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 383
    .local v17, "mAutoBrightnessMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    move-object/from16 v26, v0

    const/16 v25, 0x1

    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_14

    const v25, 0x7f0202eb

    :goto_2
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/BrightnessSeekBarPreference;->setIcon(I)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/BrightnessSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/settings/BrightnessSeekBarPreference;->brightnessNotifyChange()V

    .line 390
    .end local v17    # "mAutoBrightnessMode":I
    :cond_4
    const-string v25, "screen_timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Lcom/android/settings/SettingsListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    .line 391
    const-string v25, "screen_off_timeout"

    const-wide/16 v26, 0x7530

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 394
    .local v8, "currentTimeout":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    move-object/from16 v25, v0

    const v26, 0x7f110004

    invoke-virtual/range {v25 .. v26}, Lcom/android/settings/SettingsListPreference;->setEntries(I)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    move-object/from16 v25, v0

    const v26, 0x7f110005

    invoke-virtual/range {v25 .. v26}, Lcom/android/settings/SettingsListPreference;->setEntryValues(I)V

    .line 400
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    move-object/from16 v25, v0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/settings/SettingsListPreference;->setValue(Ljava/lang/String;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Lcom/android/settings/SettingsListPreference;)V

    .line 403
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 405
    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v25

    if-eqz v25, :cond_6

    .line 406
    const-string v25, "screen_timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 409
    :cond_6
    invoke-static {v5}, Lcom/android/settings/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_15

    .line 410
    const-string v25, "lift_to_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 422
    :goto_3
    const-string v25, "doze"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 424
    const-string v25, "touch_key_light"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/ListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x1120069

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v25

    if-nez v25, :cond_7

    const-string v25, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_8

    const-string v25, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_8

    .line 429
    :cond_7
    const-string v25, "touch_key_light"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 432
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/DisplaySettings;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z

    move-result v25

    if-eqz v25, :cond_16

    .line 433
    const-string v25, "tap_to_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 439
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/DisplaySettings;->isCameraGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v25

    if-eqz v25, :cond_17

    .line 440
    const-string v25, "camera_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 446
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/DisplaySettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v25

    if-eqz v25, :cond_18

    .line 447
    const-string v25, "camera_double_tap_power_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 454
    :goto_6
    const-string v25, "auto_rotate"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mRotate:Landroid/preference/SwitchPreference;

    .line 455
    invoke-static {v5}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_19

    const-string v25, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_19

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mRotate:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 462
    :cond_9
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    const-string v26, "display"

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 465
    const-string v25, "wifi_display"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 470
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    .line 475
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    if-eqz v25, :cond_1a

    const/4 v15, 0x1

    .line 478
    .local v15, "isSecondaryUser":Z
    :goto_8
    if-eqz v15, :cond_1b

    .line 481
    const-string v25, "screen_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 482
    const-string v25, "category_four"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 483
    const-string v25, "DisplaySettings"

    const-string v26, "remove Screen mode"

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_a
    :goto_9
    const/4 v6, 0x1

    .line 497
    .local v6, "canStatusBarHide":Z
    :try_start_0
    const-string v25, "window"

    invoke-static/range {v25 .. v25}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v24

    .line 499
    .local v24, "wm":Landroid/view/IWindowManager;
    invoke-interface/range {v24 .. v24}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v25

    if-nez v25, :cond_1c

    const/4 v6, 0x1

    .line 506
    .end local v24    # "wm":Landroid/view/IWindowManager;
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    const-string v26, "com.sec.feature.folder_type"

    invoke-virtual/range {v25 .. v26}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    const-string v26, "com.sec.feature.dual_lcd"

    invoke-virtual/range {v25 .. v26}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1d

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v25

    if-eqz v25, :cond_1d

    const/16 v25, 0x1

    :goto_b
    sput-boolean v25, Lcom/android/settings/DisplaySettings;->mDualFolderType:Z

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    const-string v26, "com.sec.feature.folder_type"

    invoke-virtual/range {v25 .. v26}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v25

    sput-boolean v25, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    .line 511
    if-eqz v14, :cond_b

    .line 512
    const-string v25, "font_preview"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 514
    :cond_b
    const-string v25, "onehand_operation_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mOneHand:Landroid/preference/Preference;

    .line 515
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v25

    if-nez v25, :cond_c

    const-string v25, "galaxy_7"

    const-string v26, "galaxy_7"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_c

    if-eqz v13, :cond_d

    .line 520
    :cond_c
    const-string v25, "onehand_operation_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 524
    :cond_d
    const-string v25, "font_preview"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mFontPreview:Landroid/preference/PreferenceScreen;

    .line 525
    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v25

    if-eqz v25, :cond_e

    .line 526
    const-string v25, "font_preview"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 529
    :cond_e
    const-string v25, "sub_lcd_auto_lock"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/SwitchPreference;

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/SwitchPreference;

    move-object/from16 v26, v0

    const-string v25, "sub_lcd_auto_lock"

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_1e

    const/16 v25, 0x1

    :goto_c
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 532
    const-string v25, "key_backlight"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 534
    const-string v25, "key_night_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    move-object/from16 v26, v0

    const-string v25, "key_night_mode"

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_1f

    const/16 v25, 0x1

    :goto_d
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 538
    sget-boolean v25, Lcom/android/settings/DisplaySettings;->mDualFolderType:Z

    if-eqz v25, :cond_20

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    const v26, 0x7f0e1650

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x5

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    const/16 v29, 0x7

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 551
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    const-string v26, "content://com.sec.knox.provider2/KioskMode"

    const-string v27, "isKioskModeEnabled"

    invoke-static/range {v25 .. v27}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/DisplaySettings;->mIsKioskModeEnabled:I

    .line 554
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/DisplaySettings;->mIsKioskModeEnabled:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_f

    .line 555
    const-string v25, "screensaver"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 556
    const-string v25, "wallpaper"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mWallpaper:Landroid/preference/PreferenceScreen;

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mWallpaper:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mWallpaper:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 563
    :cond_f
    const-string v25, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->getWallpaperVersionCode(Landroid/content/Context;)I

    move-result v25

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    .line 565
    :cond_10
    const-string v25, "wallpaper"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 568
    :cond_11
    const-string v25, "outdoor_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isSupportLightSensor(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_22

    const/16 v25, 0x1

    :goto_f
    sput-boolean v25, Lcom/android/settings/DisplaySettings;->mIsSupportOutdoor:Z

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_23

    sget-boolean v25, Lcom/android/settings/DisplaySettings;->mIsSupportOutdoor:Z

    if-nez v25, :cond_23

    .line 572
    const-string v25, "outdoor_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 579
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_24

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f080044

    const-string v27, "UPSM"

    invoke-static/range {v25 .. v27}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 581
    .local v19, "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v19, :cond_24

    .line 582
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_24

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 583
    .local v16, "list":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto :goto_11

    .line 347
    .end local v4    # "actionBar":Landroid/app/ActionBar;
    .end local v6    # "canStatusBarHide":Z
    .end local v8    # "currentTimeout":J
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "isKioskContainer":Z
    .end local v14    # "isKnoxUser":Z
    .end local v15    # "isSecondaryUser":Z
    .end local v16    # "list":Ljava/lang/String;
    .end local v18    # "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local v19    # "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v23    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_12
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 370
    .restart local v4    # "actionBar":Landroid/app/ActionBar;
    .restart local v13    # "isKioskContainer":Z
    .restart local v14    # "isKnoxUser":Z
    .restart local v18    # "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    .restart local v23    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    .line 383
    .restart local v17    # "mAutoBrightnessMode":I
    :cond_14
    const v25, 0x7f0202ea

    goto/16 :goto_2

    .line 413
    .end local v17    # "mAutoBrightnessMode":I
    .restart local v8    # "currentTimeout":J
    :cond_15
    const-string v25, "lift_to_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 436
    :cond_16
    const-string v25, "tap_to_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 443
    :cond_17
    const-string v25, "camera_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 451
    :cond_18
    const-string v25, "camera_double_tap_power_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 458
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mRotate:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_9

    .line 459
    const-string v25, "auto_rotate"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 475
    :cond_1a
    const/4 v15, 0x0

    goto/16 :goto_8

    .line 485
    .restart local v15    # "isSecondaryUser":Z
    :cond_1b
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v25

    if-eqz v25, :cond_a

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const v26, 0x7f0401b9

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setWidgetLayoutResource(I)V

    .line 487
    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v25

    if-eqz v25, :cond_a

    .line 488
    const-string v25, "screen_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 489
    const-string v25, "category_four"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 499
    .restart local v6    # "canStatusBarHide":Z
    .restart local v24    # "wm":Landroid/view/IWindowManager;
    :cond_1c
    const/4 v6, 0x0

    goto/16 :goto_a

    .line 500
    .end local v24    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v10

    .line 501
    .local v10, "e":Landroid/os/RemoteException;
    const-string v25, "DisplaySettings"

    const-string v26, "Failing checking whether status bar can hide"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 502
    const/4 v6, 0x0

    goto/16 :goto_a

    .line 506
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/16 v25, 0x0

    goto/16 :goto_b

    .line 531
    :cond_1e
    const/16 v25, 0x0

    goto/16 :goto_c

    .line 536
    :cond_1f
    const/16 v25, 0x0

    goto/16 :goto_d

    .line 541
    :cond_20
    sget-boolean v25, Lcom/android/settings/DisplaySettings;->mDualFolderType:Z

    if-nez v25, :cond_21

    sget-boolean v25, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v25, :cond_21

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 543
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/SwitchPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_e

    .line 545
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/SwitchPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mKeyBacklightPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 547
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/SwitchPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_e

    .line 569
    :cond_22
    const/16 v25, 0x0

    goto/16 :goto_f

    .line 574
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_10

    .line 588
    :cond_24
    const-string v25, "night_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/ListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_25

    .line 590
    const-string v25, "uimode"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/UiModeManager;

    .line 592
    .local v22, "uiManager":Landroid/app/UiModeManager;
    invoke-virtual/range {v22 .. v22}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v7

    .line 593
    .local v7, "currentNightMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 596
    .end local v7    # "currentNightMode":I
    .end local v22    # "uiManager":Landroid/app/UiModeManager;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mFontPreview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_26

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mFontPreview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 598
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_27

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 600
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "color_blind"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_33

    const/4 v12, 0x1

    .line 601
    .local v12, "isColorBlind":Z
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_28

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 603
    if-eqz v12, :cond_34

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 608
    :cond_28
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_29

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 611
    :cond_29
    const-string v25, "edge_lighting"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mEdgeLighting:Landroid/preference/Preference;

    .line 612
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v25

    const-string v26, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 620
    .local v21, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mEdgeLighting:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2a

    .line 621
    const-string v25, "edge_lighting"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 623
    :cond_2a
    const-string v25, "key_simple_led_indicator_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mSimpleLEDIndicator:Landroid/preference/SwitchPreference;

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mSimpleLEDIndicator:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2b

    .line 625
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v25

    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_35

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mSimpleLEDIndicator:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 632
    :cond_2b
    :goto_14
    const-string v25, "display_scaling"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mDisplayScaling:Landroid/preference/PreferenceScreen;

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mDisplayScaling:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2c

    .line 634
    const-string v25, "NONE"

    const-string v26, "NONE"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_36

    .line 635
    const-string v25, "display_scaling"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 641
    :cond_2c
    :goto_15
    const-string v25, "icon_backgrounds"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mIconBackgrounds:Landroid/preference/PreferenceScreen;

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mIconBackgrounds:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2d

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mIconBackgrounds:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 650
    :cond_2d
    const-string v25, "screen_off_pocket"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mScreenOffPocket:Landroid/preference/SwitchPreference;

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenOffPocket:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2e

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenOffPocket:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 659
    :cond_2e
    const-string v25, "always_on_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mAlwaysOnScreen:Landroid/preference/PreferenceScreen;

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAlwaysOnScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2f

    .line 661
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v25

    const-string v26, "com.samsung.android.app.aodservice"

    invoke-static/range {v25 .. v26}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_37

    if-nez v15, :cond_37

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAlwaysOnScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 667
    :cond_2f
    :goto_16
    const-string v25, "night_clock"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mNightClock:Landroid/preference/PreferenceScreen;

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mNightClock:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_31

    .line 669
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_30

    if-eqz v15, :cond_38

    .line 670
    :cond_30
    const-string v25, "night_clock"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 680
    :cond_31
    :goto_17
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v25

    const-string v26, "com.samsung.android.app.aodservice"

    invoke-static/range {v25 .. v26}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_32

    .line 681
    const-string v25, "category_three"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 683
    :cond_32
    return-void

    .line 600
    .end local v12    # "isColorBlind":Z
    .end local v21    # "str":Ljava/lang/String;
    :cond_33
    const/4 v12, 0x0

    goto/16 :goto_12

    .line 606
    .restart local v12    # "isColorBlind":Z
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_13

    .line 628
    .restart local v21    # "str":Ljava/lang/String;
    :cond_35
    const-string v25, "key_simple_led_indicator_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 637
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mDisplayScaling:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_15

    .line 664
    :cond_37
    const-string v25, "always_on_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto :goto_16

    .line 672
    :cond_38
    const-string v25, "-nightclock"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_39

    .line 673
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DisplaySettings;->mNightClockAOD:Z

    .line 677
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mNightClock:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    goto :goto_17

    .line 675
    :cond_39
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DisplaySettings;->mNightClockAOD:Z

    goto :goto_18
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1082
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 1084
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mBrightnessMaxReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1086
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 1090
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1092
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1093
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1094
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1095
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/BrightnessSeekBarPreference;->unRregisterBrightnessObserver()V

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 1100
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mOutdoorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1102
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAlwaysOnScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    .line 1103
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1105
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNightClock:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    .line 1106
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNightClockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1108
    :cond_3
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 18
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 1529
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 1530
    .local v8, "key":Ljava/lang/String;
    const-string v13, "screen_timeout"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    move-object/from16 v13, p2

    .line 1531
    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1534
    .local v12, "value":I
    int-to-long v14, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1535
    const-string v13, "DisplaySettings"

    const-string v14, "isInDefaultTimeoutList = true"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "screen_off_timeout_rollback"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1547
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 1548
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "screen_off_timeout"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1549
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    int-to-long v14, v12

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/settings/SettingsListPreference;->setValue(Ljava/lang/String;)V

    .line 1553
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/DisplaySettings;->refreshScreenTimeoutList(Lcom/android/settings/SettingsListPreference;)V

    .line 1554
    int-to-long v14, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 1555
    new-instance v7, Landroid/content/Intent;

    const-string v13, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1556
    .local v7, "i":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1562
    .end local v7    # "i":Landroid/content/Intent;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v14, "device_policy"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 1563
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v3, :cond_b

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v10

    .line 1564
    .local v10, "maxTimeout":J
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "lock_screen_lock_after_timeout"

    const-wide/16 v16, 0x1388

    move-wide/from16 v0, v16

    invoke-static {v13, v14, v0, v1}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1566
    .local v4, "currentDeviceLockTimeout":J
    const-wide/16 v14, 0x0

    cmp-long v13, v10, v14

    if-eqz v13, :cond_2

    .line 1567
    cmp-long v13, v10, v4

    if-gez v13, :cond_2

    move-wide v4, v10

    .line 1570
    :cond_2
    const-string v13, "DisplaySettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "value: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    const-string v13, "DisplaySettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "currentDeviceLockTimeout: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/DisplaySettings;->isSecuredLock:Z

    if-eqz v13, :cond_3

    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-eqz v13, :cond_3

    int-to-long v14, v12

    cmp-long v13, v14, v4

    if-lez v13, :cond_3

    .line 1574
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->showScreenTimeDialog()V

    .line 1626
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v4    # "currentDeviceLockTimeout":J
    .end local v10    # "maxTimeout":J
    .end local v12    # "value":I
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_4

    move-object/from16 v13, p2

    .line 1627
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1628
    .local v2, "auto":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "screen_brightness_mode"

    if-eqz v2, :cond_1c

    const/4 v13, 0x1

    :goto_4
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1631
    .end local v2    # "auto":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_5

    move-object/from16 v13, p2

    .line 1632
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 1633
    .local v12, "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "wake_gesture_enabled"

    if-eqz v12, :cond_1d

    const/4 v13, 0x1

    :goto_5
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1635
    .end local v12    # "value":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_6

    move-object/from16 v13, p2

    .line 1636
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 1637
    .restart local v12    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "doze_enabled"

    if-eqz v12, :cond_1e

    const/4 v13, 0x1

    :goto_6
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1639
    .end local v12    # "value":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mTapToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_7

    move-object/from16 v13, p2

    .line 1640
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 1641
    .restart local v12    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "double_tap_to_wake"

    if-eqz v12, :cond_1f

    const/4 v13, 0x1

    :goto_7
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1643
    .end local v12    # "value":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mCameraGesturePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_8

    move-object/from16 v13, p2

    .line 1644
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 1645
    .restart local v12    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "camera_gesture_disabled"

    if-eqz v12, :cond_20

    const/4 v13, 0x0

    :goto_8
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1648
    .end local v12    # "value":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_9

    move-object/from16 v13, p2

    .line 1649
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 1650
    .restart local v12    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "camera_double_tap_power_gesture_disabled"

    if-eqz v12, :cond_21

    const/4 v13, 0x0

    :goto_9
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1653
    .end local v12    # "value":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mNightModePreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_a

    .line 1655
    :try_start_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1656
    .local v12, "value":I
    const-string v13, "uimode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/UiModeManager;

    .line 1658
    .local v9, "uiManager":Landroid/app/UiModeManager;
    invoke-virtual {v9, v12}, Landroid/app/UiModeManager;->setNightMode(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1663
    .end local v9    # "uiManager":Landroid/app/UiModeManager;
    .end local v12    # "value":I
    :cond_a
    :goto_a
    const/4 v13, 0x1

    return v13

    .line 1539
    .restart local v12    # "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 1540
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string v13, "DisplaySettings"

    const-string v14, "could not persist screen timeout setting"

    invoke-static {v13, v14, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1557
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v6

    .line 1558
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const-string v13, "DisplaySettings"

    const-string v14, "could not persist screen timeout setting"

    invoke-static {v13, v14, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1563
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_b
    const-wide/16 v10, 0x0

    goto/16 :goto_2

    .line 1578
    .end local v3    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v12    # "value":I
    :cond_c
    const-string v13, "screensaver"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    move-object/from16 v13, p2

    .line 1579
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v12, 0x1

    .line 1581
    .restart local v12    # "value":I
    :goto_b
    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    .line 1582
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "desk_home_screen_display"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1583
    new-instance v13, Lcom/android/settings/DreamBackend;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/DreamBackend;->setEnabled(Z)V

    .line 1584
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    goto/16 :goto_3

    .line 1579
    .end local v12    # "value":I
    :cond_d
    const/4 v12, 0x0

    goto :goto_b

    .line 1586
    .restart local v12    # "value":I
    :cond_e
    new-instance v13, Lcom/android/settings/DreamBackend;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/settings/DreamBackend;->setEnabled(Z)V

    .line 1587
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    goto/16 :goto_3

    .line 1589
    .end local v12    # "value":I
    :cond_f
    const-string v13, "touch_key_light"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    move-object/from16 v13, p2

    .line 1590
    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1592
    .restart local v12    # "value":I
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "button_key_light"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1593
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1597
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->updateTouchKeyLightSummary()V

    goto/16 :goto_3

    .line 1594
    :catch_2
    move-exception v6

    .line 1595
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const-string v13, "DisplaySettings"

    const-string v14, "could not persist Touch key light setting"

    invoke-static {v13, v14, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 1598
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v12    # "value":I
    :cond_10
    const-string v13, "sub_lcd_auto_lock"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    move-object/from16 v13, p2

    .line 1599
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 1600
    .local v12, "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "sub_lcd_auto_lock"

    if-eqz v12, :cond_11

    const/4 v13, 0x1

    :goto_d
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_11
    const/4 v13, 0x0

    goto :goto_d

    .line 1602
    .end local v12    # "value":Z
    :cond_12
    const-string v13, "key_night_mode"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    move-object/from16 v13, p2

    .line 1603
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 1604
    .restart local v12    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "key_night_mode"

    if-eqz v12, :cond_13

    const/4 v13, 0x1

    :goto_e
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_13
    const/4 v13, 0x0

    goto :goto_e

    .line 1606
    .end local v12    # "value":Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_16

    move-object/from16 v13, p2

    .line 1607
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 1608
    .restart local v12    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "display_outdoor_mode"

    if-eqz v12, :cond_15

    const/4 v13, 0x1

    :goto_f
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_15
    const/4 v13, 0x0

    goto :goto_f

    .line 1610
    .end local v12    # "value":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mRotate:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    move-object/from16 v13, p2

    .line 1611
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 1612
    .restart local v12    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    if-nez v12, :cond_17

    const/4 v13, 0x1

    :goto_10
    invoke-static {v14, v13}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    goto/16 :goto_3

    :cond_17
    const/4 v13, 0x0

    goto :goto_10

    .line 1613
    .end local v12    # "value":Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mSimpleLEDIndicator:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    move-object/from16 v13, p2

    .line 1614
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 1615
    .restart local v12    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "notification_reminder_selectable"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "notification_reminder_led_indicator"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_19

    .line 1617
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0e0981

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 1618
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/DisplaySettings;->setLedIndicator(Z)V

    goto/16 :goto_3

    .line 1620
    :cond_19
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/DisplaySettings;->setLedIndicator(Z)V

    goto/16 :goto_3

    .line 1622
    .end local v12    # "value":Z
    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mScreenOffPocket:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v13, p2

    .line 1623
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 1624
    .restart local v12    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "screen_off_pocket"

    if-eqz v12, :cond_1b

    const/4 v13, 0x1

    :goto_11
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_1b
    const/4 v13, 0x0

    goto :goto_11

    .line 1628
    .end local v12    # "value":Z
    .restart local v2    # "auto":Z
    :cond_1c
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 1633
    .end local v2    # "auto":Z
    .restart local v12    # "value":Z
    :cond_1d
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 1637
    :cond_1e
    const/4 v13, 0x0

    goto/16 :goto_6

    .line 1641
    :cond_1f
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 1645
    :cond_20
    const/4 v13, 0x1

    goto/16 :goto_8

    .line 1650
    :cond_21
    const/4 v13, 0x1

    goto/16 :goto_9

    .line 1659
    .end local v12    # "value":Z
    .end local p2    # "objValue":Ljava/lang/Object;
    :catch_3
    move-exception v6

    .line 1660
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const-string v13, "DisplaySettings"

    const-string v14, "could not persist night mode setting"

    invoke-static {v13, v14, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 1462
    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1463
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1464
    .local v5, "intent2":Landroid/content/Intent;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1465
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1466
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "intent":Landroid/content/Intent;
    const-string v7, "com.samsung.settings.ModePreviewTablet"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1467
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    .line 1524
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "intent2":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    :goto_1
    return v7

    .line 1470
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "intent2":Landroid/content/Intent;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "intent":Landroid/content/Intent;
    const-string v7, "com.samsung.settings.NewModePreview"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1471
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1473
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "intent2":Landroid/content/Intent;
    :cond_2
    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mFontPreview:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1474
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1475
    .restart local v4    # "intent":Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1476
    .restart local v5    # "intent2":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1477
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "intent":Landroid/content/Intent;
    const-string v7, "com.samsung.settings.FontPreviewTablet"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1478
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1480
    :cond_3
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "intent":Landroid/content/Intent;
    const-string v7, "com.samsung.settings.FontPreview"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1481
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1483
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "intent2":Landroid/content/Intent;
    :cond_4
    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mEdgeLighting:Landroid/preference/Preference;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1484
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1485
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v7, "com.samsung.android.service.peoplestripe"

    const-string v8, "com.samsung.android.service.peoplestripe.settings.TurnOverLighting"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1486
    invoke-virtual {p0, v4}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1487
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mAlwaysOnScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1488
    sget-object v8, Lcom/android/settings/DisplaySettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v8}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    .line 1489
    .local v1, "bPowerSaving":Z
    if-eqz v1, :cond_6

    .line 1490
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0e170b

    invoke-static {v8, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1493
    :cond_6
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v8

    const-string v9, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1494
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 1495
    .local v2, "conf":Landroid/content/res/Configuration;
    iget v8, v2, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v8, v10, :cond_7

    .line 1496
    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e170a    # 1.8887E38f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1497
    .local v6, "msg":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e167d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1498
    .local v0, "app":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v0, v9, v7

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1504
    .end local v0    # "app":Ljava/lang/String;
    .end local v2    # "conf":Landroid/content/res/Configuration;
    .end local v6    # "msg":Ljava/lang/String;
    :cond_7
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "com.samsung.android.app.aodservice.settings.AODSettingsMain"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 1505
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1506
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 1507
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    const-string v7, "DisplaySettings"

    const-string v8, "ActivityNotFoundException in AlwaysOnDisplay"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1510
    .end local v1    # "bPowerSaving":Z
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    :cond_8
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mNightClock:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1512
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1513
    .restart local v4    # "intent":Landroid/content/Intent;
    iget-boolean v7, p0, Lcom/android/settings/DisplaySettings;->mNightClockAOD:Z

    if-eqz v7, :cond_9

    .line 1514
    const-string v7, "com.samsung.android.app.aodservice.settings.NightClock"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1518
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1519
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v3

    .line 1520
    .restart local v3    # "e":Landroid/content/ActivityNotFoundException;
    const-string v7, "DisplaySettings"

    const-string v8, "ActivityNotFoundException in NightClock"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1516
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_9
    :try_start_2
    const-string v7, "com.samsung.android.app.edge.setting.NightClock"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method public onResume()V
    .locals 14

    .prologue
    const v9, 0x7f0e0e93

    const v8, 0x7f0e0e92

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 988
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 990
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    .line 991
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "screen_off_timeout"

    const-wide/16 v12, 0x7530

    invoke-static {v5, v10, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 992
    .local v0, "currentTimeout":J
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    if-eqz v5, :cond_0

    .line 993
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/android/settings/SettingsListPreference;->setValue(Ljava/lang/String;)V

    .line 994
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    invoke-direct {p0, v5}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Lcom/android/settings/SettingsListPreference;)V

    .line 995
    invoke-direct {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 997
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateState()V

    .line 998
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v5, v10}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 1001
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mRotate:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_1

    .line 1002
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mRotate:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_b

    move v5, v6

    :goto_0
    invoke-virtual {v10, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1005
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "screen_off_timeout"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v10, v6, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1009
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "screen_mode_setting"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mScreenModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v10, v6, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1012
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1013
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v5, "com.android.settings.action.FONT_SIZE_CLOSE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1014
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->MAX_BRIGHTNESS_CHANGED:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mBrightnessMaxReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v10, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1016
    const-string v5, "DisplaySettings"

    const-string v10, "onResume() : registerReceiver Intent.ACTION_BATTERY_CHANGED"

    invoke-static {v5, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "access_control_enabled"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v10, v7, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1020
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->updateAccessControlCheckbox()V

    .line 1022
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "intelligent_sleep_mode"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mSmartStayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v10, v6, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1023
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    if-eqz v5, :cond_2

    .line 1024
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-virtual {v5}, Lcom/android/settings/BrightnessSeekBarPreference;->registerBrightnessObserver()V

    .line 1025
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-virtual {v5}, Lcom/android/settings/BrightnessSeekBarPreference;->onBrightnessChanged()V

    .line 1026
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-virtual {v5}, Lcom/android/settings/BrightnessSeekBarPreference;->onBrightnessModeChanged()V

    .line 1027
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-virtual {v5}, Lcom/android/settings/BrightnessSeekBarPreference;->brightnessNotifyChange()V

    .line 1030
    :cond_2
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_3

    .line 1031
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "display_outdoor_mode"

    invoke-static {v5, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_c

    move v3, v6

    .line 1032
    .local v3, "mIsOutdoorValue":Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1033
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "display_outdoor_mode"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mOutdoorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v10, v6, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1034
    if-eqz v3, :cond_d

    .line 1035
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-virtual {v5, v7}, Lcom/android/settings/BrightnessSeekBarPreference;->setEnabled(Z)V

    .line 1040
    .end local v3    # "mIsOutdoorValue":Z
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    if-eqz v5, :cond_4

    .line 1041
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/SettingsListPreference;

    invoke-direct {p0, v5}, Lcom/android/settings/DisplaySettings;->refreshScreenTimeoutList(Lcom/android/settings/SettingsListPreference;)V

    .line 1044
    :cond_4
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mEdgeLighting:Landroid/preference/Preference;

    if-eqz v5, :cond_5

    .line 1045
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "turn_over_lighting"

    invoke-static {v5, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1046
    .local v4, "nValue":I
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mEdgeLighting:Landroid/preference/Preference;

    if-eqz v4, :cond_e

    move v5, v8

    :goto_3
    invoke-virtual {v10, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 1048
    .end local v4    # "nValue":I
    :cond_5
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mSimpleLEDIndicator:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_6

    .line 1049
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mSimpleLEDIndicator:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->getLedIndicator()Z

    move-result v10

    invoke-virtual {v5, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1051
    :cond_6
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mDisplayScaling:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_7

    .line 1052
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "condensed"

    invoke-static {v5, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_f

    move v4, v6

    .line 1053
    .local v4, "nValue":Z
    :goto_4
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mDisplayScaling:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_10

    const v5, 0x7f0e16f1

    :goto_5
    invoke-virtual {v10, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1055
    .end local v4    # "nValue":Z
    :cond_7
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mScreenOffPocket:Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_8

    .line 1056
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "screen_off_pocket"

    invoke-static {v5, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_11

    move v4, v6

    .line 1057
    .restart local v4    # "nValue":Z
    :goto_6
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mScreenOffPocket:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1059
    .end local v4    # "nValue":Z
    :cond_8
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAlwaysOnScreen:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_9

    .line 1060
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "aod_mode"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v10, v6, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1062
    :cond_9
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mNightClock:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_a

    .line 1063
    iget-boolean v5, p0, Lcom/android/settings/DisplaySettings;->mNightClockAOD:Z

    if-eqz v5, :cond_13

    .line 1064
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mNightClock:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "aod_night_mode"

    invoke-static {v10, v11, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_12

    :goto_7
    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1065
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "aod_night_mode"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mNightClockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1071
    :cond_a
    :goto_8
    return-void

    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_b
    move v5, v7

    .line 1002
    goto/16 :goto_0

    .restart local v2    # "filter":Landroid/content/IntentFilter;
    :cond_c
    move v3, v7

    .line 1031
    goto/16 :goto_1

    .line 1037
    .restart local v3    # "mIsOutdoorValue":Z
    :cond_d
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;

    invoke-virtual {v5, v6}, Lcom/android/settings/BrightnessSeekBarPreference;->setEnabled(Z)V

    goto/16 :goto_2

    .end local v3    # "mIsOutdoorValue":Z
    .local v4, "nValue":I
    :cond_e
    move v5, v9

    .line 1046
    goto/16 :goto_3

    .end local v4    # "nValue":I
    :cond_f
    move v4, v7

    .line 1052
    goto :goto_4

    .line 1053
    .local v4, "nValue":Z
    :cond_10
    const v5, 0x7f0e16f0

    goto :goto_5

    .end local v4    # "nValue":Z
    :cond_11
    move v4, v7

    .line 1056
    goto :goto_6

    :cond_12
    move v8, v9

    .line 1064
    goto :goto_7

    .line 1067
    :cond_13
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mNightClock:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "night_mode"

    invoke-static {v10, v11, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_14

    :goto_9
    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1068
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "night_mode"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mNightClockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_8

    :cond_14
    move v8, v9

    .line 1067
    goto :goto_9
.end method

.method public showScreenTimeDialog()V
    .locals 14

    .prologue
    .line 1669
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1670
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "device_policy"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 1671
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v6

    .line 1672
    .local v6, "maxTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1674
    .local v2, "currentDeviceLockTimeout":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-eqz v9, :cond_0

    .line 1675
    cmp-long v9, v6, v2

    if-gez v9, :cond_0

    move-wide v2, v6

    .line 1678
    :cond_0
    const-string v9, "DisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "maxTimeout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    const-string v9, "DisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "currentDeviceLockTimeout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_1

    .line 1682
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 1683
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    .line 1686
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/android/settings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 1687
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f04017b

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1688
    .local v5, "layout":Landroid/view/View;
    const v9, 0x7f0d03cd

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1689
    .local v8, "tv":Landroid/widget/TextView;
    const v9, 0x7f0e1131

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1690
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1691
    const v9, 0x7f0e05ed

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1692
    const v9, 0x104000a

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1693
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    .line 1694
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 1695
    return-void

    .line 1671
    .end local v2    # "currentDeviceLockTimeout":J
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "layout":Landroid/view/View;
    .end local v6    # "maxTimeout":J
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_2
    const-wide/16 v6, 0x0

    goto/16 :goto_0
.end method

.method public updateAccessControlCheckbox()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1456
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "access_control_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    .line 1457
    .local v0, "enable":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "easy_mode_switch"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    .line 1458
    .local v1, "mIsBasicMode":Z
    :goto_1
    return-void

    .end local v0    # "enable":Z
    .end local v1    # "mIsBasicMode":Z
    :cond_0
    move v0, v3

    .line 1456
    goto :goto_0

    .restart local v0    # "enable":Z
    :cond_1
    move v1, v3

    .line 1457
    goto :goto_1
.end method
