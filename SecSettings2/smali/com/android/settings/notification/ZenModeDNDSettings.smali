.class public Lcom/android/settings/notification/ZenModeDNDSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;,
        Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;
    }
.end annotation


# static fields
.field public static final ALL_DAYS:[I

.field private static final DEBUG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAllowException:Landroid/preference/PreferenceScreen;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mContext:Landroid/content/Context;

.field private final mDNDModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mDayDialog:Landroid/app/Dialog;

.field private final mDayFormat:Ljava/text/SimpleDateFormat;

.field private mDays:Landroid/preference/Preference;

.field private mDisableListeners:Z

.field private mEnableNow:Landroid/preference/SwitchPreference;

.field private mEnd:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

.field private mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

.field private mScheduling:Landroid/preference/SwitchPreference;

.field private final mSettingsObserver:Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;

.field private mStart:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 88
    const-string v0, "ZenModeSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/ZenModeDNDSettings;->DEBUG:Z

    .line 105
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/notification/ZenModeDNDSettings;->ALL_DAYS:[I

    .line 602
    new-instance v0, Lcom/android/settings/notification/ZenModeDNDSettings$12;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeDNDSettings$12;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeDNDSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void

    .line 105
    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 111
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mHandler:Landroid/os/Handler;

    .line 114
    new-instance v0, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mSettingsObserver:Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;

    .line 129
    new-instance v0, Lcom/android/settings/notification/ZenModeDNDSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$1;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDNDModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 694
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ZenRule;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateDays()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/notification/ZenModeDNDSettings;Landroid/service/notification/ZenModeConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;
    .param p1, "x1"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeDNDSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateControls()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDayDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings/notification/ZenModeDNDSettings;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDayDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/notification/ZenModeDNDSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateZenModeConfig(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->showDaysDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/notification/ZenModeDNDSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/android/settings/notification/ZenModeDNDSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/notification/ZenModeDNDSettings;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateRule(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDSettings;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 199
    .local v2, "root":Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 202
    :cond_0
    const v3, 0x7f0800ee

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/ZenModeDNDSettings;->addPreferencesFromResource(I)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 205
    const-string v3, "downtime"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 207
    .local v0, "downtime":Landroid/preference/PreferenceCategory;
    const-string v3, "days"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    .line 208
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    new-instance v4, Lcom/android/settings/notification/ZenModeDNDSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$2;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 215
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 219
    .local v1, "mgr":Landroid/app/FragmentManager;
    new-instance v3, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    .line 220
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    const-string v4, "start_time"

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 221
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    const v4, 0x7f0e0e87

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setTitle(I)V

    .line 222
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    new-instance v4, Lcom/android/settings/notification/ZenModeDNDSettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$3;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setCallback(Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$Callback;)V

    .line 239
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 240
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 241
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v3, v5}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 243
    new-instance v3, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    .line 244
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    const-string v4, "end_time"

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setKey(Ljava/lang/String;)V

    .line 245
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    const v4, 0x7f0e0e88

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setTitle(I)V

    .line 246
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    new-instance v4, Lcom/android/settings/notification/ZenModeDNDSettings$4;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$4;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setCallback(Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$Callback;)V

    .line 263
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 264
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setDependency(Ljava/lang/String;)V

    .line 265
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v3, v5}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 267
    const-string v3, "scheduling_switch"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/ZenModeDNDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mScheduling:Landroid/preference/SwitchPreference;

    .line 268
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mScheduling:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/android/settings/notification/ZenModeDNDSettings$5;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$5;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 299
    const-string v3, "enable_now"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/ZenModeDNDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEnableNow:Landroid/preference/SwitchPreference;

    .line 300
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEnableNow:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/android/settings/notification/ZenModeDNDSettings$6;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$6;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 317
    const-string v3, "allow_exceptions"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/ZenModeDNDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/preference/PreferenceScreen;

    .line 319
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 320
    const-string v3, "dnd_description"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const v4, 0x7f0e0fcb

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 325
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-boolean v3, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-nez v3, :cond_2

    .line 326
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 327
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 328
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 331
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateControls()V

    .line 333
    return-object v2

    .line 321
    :cond_3
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 322
    :cond_4
    const-string v3, "dnd_description"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const v4, 0x7f0e0fca

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_0
.end method

.method private static defaultNewSchedule()Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    .locals 3

    .prologue
    .line 337
    new-instance v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 338
    .local v1, "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    sget-object v2, Lcom/android/settings/notification/ZenModeDNDSettings;->ALL_DAYS:[I

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 339
    const/16 v2, 0x16

    iput v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 340
    const/4 v2, 0x7

    iput v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 341
    new-instance v0, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;-><init>()V

    .line 342
    .local v0, "rt":Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    const-string v2, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    iput-object v2, v0, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->settingsAction:Ljava/lang/String;

    .line 343
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->defaultConditionId:Landroid/net/Uri;

    .line 344
    return-object v0
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 4

    .prologue
    .line 554
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 557
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 560
    :goto_0
    return-object v2

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ZenModeSettings"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0
.end method

.method private refreshRuleOrFinish()Z
    .locals 4

    .prologue
    .line 577
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 578
    const-string v2, "twschedule"

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 579
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 583
    :cond_0
    sget-boolean v1, Lcom/android/settings/notification/ZenModeDNDSettings;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRule="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->setRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 585
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->toastAndFinish()V

    .line 586
    const/4 v1, 0x1

    .line 588
    :goto_1
    return v1

    .line 577
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 588
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 1
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    .line 348
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 350
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 348
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 350
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 5
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 565
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "reason":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/app/NotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    move-result v1

    .line 567
    .local v1, "success":Z
    if-eqz v1, :cond_1

    .line 568
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 569
    sget-boolean v2, Lcom/android/settings/notification/ZenModeDNDSettings;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saved mConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->refreshRuleOrFinish()Z

    .line 571
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateEndSummary()V

    .line 573
    :cond_1
    return v1
.end method

.method private showDaysDialog()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0e0e72

    .line 422
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 423
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/notification/ZenModeDNDSettings$8;

    iget-object v8, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v9, v9, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-direct {v7, p0, v8, v9}, Lcom/android/settings/notification/ZenModeDNDSettings$8;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;Landroid/content/Context;[I)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/notification/ZenModeDNDSettings$7;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$7;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0e0d05

    invoke-virtual {v6, v7, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 455
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0400b8

    invoke-virtual {v1, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 457
    .local v3, "mDepthView":Landroid/view/View;
    const v6, 0x7f0d01f6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 458
    .local v2, "mDayView":Landroid/widget/LinearLayout;
    new-instance v6, Lcom/android/settings/notification/ZenModeDNDSettings$9;

    iget-object v7, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v8, v8, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-direct {v6, p0, v7, v8}, Lcom/android/settings/notification/ZenModeDNDSettings$9;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;Landroid/content/Context;[I)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 469
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDayDialog:Landroid/app/Dialog;

    if-nez v6, :cond_0

    .line 470
    new-instance v0, Landroid/app/Dialog;

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getThemeResId()I

    move-result v7

    invoke-direct {v0, v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDayDialog:Landroid/app/Dialog;

    .line 471
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/Window;->requestFeature(I)Z

    .line 472
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    const v7, 0x7f0f0213

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 473
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 474
    new-instance v6, Lcom/android/settings/notification/ZenModeDNDSettings$10;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$10;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 488
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 490
    const v6, 0x7f0d0171

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 491
    .local v4, "mHeaderBar":Landroid/widget/LinearLayout;
    const v6, 0x7f0d01f1

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Toolbar;

    .line 492
    .local v5, "toolbar":Landroid/widget/Toolbar;
    new-instance v6, Lcom/android/settings/notification/ZenModeDNDSettings$11;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenModeDNDSettings$11;-><init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    invoke-virtual {v5, v6}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    invoke-virtual {v5, v9}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 499
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method private toastAndFinish()V
    .locals 3

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0e6c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 594
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 595
    return-void
.end method

.method private updateControls()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 405
    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDisableListeners:Z

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateControlsInternal()V

    .line 408
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_2

    .line 409
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zen_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 415
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mScheduling:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-boolean v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 416
    iput-boolean v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDisableListeners:Z

    .line 417
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateEnable()V

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateAllowSummary()V

    .line 419
    return-void

    :cond_1
    move v0, v1

    .line 409
    goto :goto_0

    .line 411
    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEnableNow:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 412
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEnableNow:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zen_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private updateDays()V
    .locals 8

    .prologue
    .line 362
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v2, v6, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 363
    .local v2, "days":[I
    if-eqz v2, :cond_4

    array-length v6, v2

    if-lez v6, :cond_4

    .line 364
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 366
    .local v0, "c":Ljava/util/Calendar;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v6, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    array-length v6, v6

    if-ge v3, v6, :cond_3

    .line 367
    sget-object v6, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    aget v1, v6, v3

    .line 368
    .local v1, "day":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v6, v2

    if-ge v4, v6, :cond_1

    .line 369
    aget v6, v2, v4

    if-ne v1, v6, :cond_2

    .line 370
    const/4 v6, 0x7

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 371
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 372
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0e73

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_0
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 368
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 379
    .end local v1    # "day":I
    .end local v4    # "j":I
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 380
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 387
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v3    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    return-void

    .line 385
    :cond_4
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    const v7, 0x7f0e0e6f

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 386
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    goto :goto_2
.end method

.method private updateEndSummary()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 390
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v4, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    mul-int/lit8 v4, v4, 0x3c

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v5, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    add-int v2, v4, v5

    .line 391
    .local v2, "startMin":I
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v4, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    mul-int/lit8 v4, v4, 0x3c

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v5, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    add-int v0, v4, v5

    .line 392
    .local v0, "endMin":I
    if-lt v2, v0, :cond_1

    const/4 v1, 0x1

    .line 393
    .local v1, "nextDay":Z
    :goto_0
    if-eqz v1, :cond_0

    const v3, 0x7f0e0e89

    .line 394
    .local v3, "summaryFormat":I
    :cond_0
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setSummaryFormat(I)V

    .line 395
    return-void

    .end local v1    # "nextDay":Z
    .end local v3    # "summaryFormat":I
    :cond_1
    move v1, v3

    .line 392
    goto :goto_0
.end method

.method private updateRule(Landroid/net/Uri;)V
    .locals 2
    .param p1, "newConditionId"    # Landroid/net/Uri;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 355
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 356
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 357
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-direct {p0, v0}, Lcom/android/settings/notification/ZenModeDNDSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 358
    return-void
.end method

.method private updateZenModeConfig(Z)V
    .locals 4
    .param p1, "fireChanged"    # Z

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 544
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    iput-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 546
    sget-boolean v1, Lcom/android/settings/notification/ZenModeDNDSettings;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateZenModeConfig mConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_2
    if-eqz p1, :cond_0

    .line 548
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->refreshRuleOrFinish()Z

    .line 549
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateControls()V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 838
    const/16 v0, 0x4c

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 504
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 505
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDayDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDayDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 508
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 166
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    .line 170
    invoke-direct {p0, v7}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateZenModeConfig(Z)V

    .line 171
    sget-boolean v4, Lcom/android/settings/notification/ZenModeDNDSettings;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ZenModeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded mConfig="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 174
    const-string v5, "twschedule"

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 175
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 179
    :cond_1
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, v4}, Lcom/android/settings/notification/ZenModeDNDSettings;->setRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 180
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const/16 v5, 0xad

    invoke-static {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 181
    new-instance v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 182
    .local v2, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-static {}, Lcom/android/settings/notification/ZenModeDNDSettings;->defaultNewSchedule()Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v1

    .line 183
    .local v1, "ri":Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    const-string v4, "twschedule"

    iput-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 184
    iput-boolean v7, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 185
    const/4 v4, 0x1

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 186
    iget-object v4, v1, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->defaultConditionId:Landroid/net/Uri;

    iput-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 187
    iget-object v4, v1, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->serviceComponent:Landroid/content/ComponentName;

    iput-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 188
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "ruleId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-direct {p0, v4}, Lcom/android/settings/notification/ZenModeDNDSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 191
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v4, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 194
    .end local v1    # "ri":Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    .end local v2    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v3    # "ruleId":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 195
    return-void

    .line 173
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 534
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 535
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mSettingsObserver:Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->unregister()V

    .line 538
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDNDModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 540
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 512
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 513
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateZenModeConfig(Z)V

    .line 515
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 516
    const-string v3, "twschedule"

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 517
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 522
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateControls()V

    .line 523
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mSettingsObserver:Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;

    invoke-virtual {v2}, Lcom/android/settings/notification/ZenModeDNDSettings$SettingsObserver;->register()V

    .line 526
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 527
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DND_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDNDModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 530
    return-void

    .line 515
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x1

    .line 794
    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDisableListeners:Z

    if-nez v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateZenMode(Z)V

    .line 796
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v0, :cond_0

    .line 797
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 798
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0fd2

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0fd3

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected setZenMode(ILandroid/net/Uri;)V
    .locals 2
    .param p1, "zenMode"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string v1, "ZenModeSettings"

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method public updateAllowSummary()V
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0e0fcd

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 832
    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 833
    return-void

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 828
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0e0e1c

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mAllowException:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0e0a51

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method protected updateControlsInternal()V
    .locals 3

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateDays()V

    .line 399
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setTime(II)V

    .line 400
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setTime(II)V

    .line 401
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDSettings;->updateEndSummary()V

    .line 402
    return-void
.end method

.method public updateEnable()V
    .locals 2

    .prologue
    .line 816
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-boolean v0, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 818
    .local v0, "mIsEnable":Z
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mDays:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 819
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mStart:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setEnabled(Z)V

    .line 820
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mEnd:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setEnabled(Z)V

    .line 822
    .end local v0    # "mIsEnable":Z
    :cond_0
    return-void
.end method

.method public updateZenMode(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    const/4 v1, 0x0

    .line 807
    if-eqz p1, :cond_0

    .line 808
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->setZenMode(ILandroid/net/Uri;)V

    .line 809
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings;->mContext:Landroid/content/Context;

    const-string v1, "com.android.settings"

    const-string v2, "DNDS"

    const/16 v3, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 813
    :goto_0
    return-void

    .line 811
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->setZenMode(ILandroid/net/Uri;)V

    goto :goto_0
.end method
