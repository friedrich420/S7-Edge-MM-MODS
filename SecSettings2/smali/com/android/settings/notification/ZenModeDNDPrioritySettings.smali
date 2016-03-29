.class public Lcom/android/settings/notification/ZenModeDNDPrioritySettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeDNDPrioritySettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# instance fields
.field private mAlarm:Landroid/preference/SwitchPreference;

.field private mAlarmOnly:Lcom/android/settings/notification/RadioPreference;

.field private mCalls:Lcom/android/settings/DropDownPreference;

.field private mCustom:Lcom/android/settings/notification/RadioPreference;

.field private mDisableListeners:Z

.field private mEvents:Landroid/preference/SwitchPreference;

.field private mMessages:Lcom/android/settings/DropDownPreference;

.field private mNoException:Lcom/android/settings/notification/RadioPreference;

.field private mReminders:Landroid/preference/SwitchPreference;

.field private mRepeatCallers:Landroid/preference/SwitchPreference;

.field private mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

.field private mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenModeDNDPrioritySettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDPrioritySettings;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mDisableListeners:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ZenModeDNDPrioritySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDPrioritySettings;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->updateControls()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/service/notification/ZenModeConfig$ZenRule;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDPrioritySettings;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDPrioritySettings;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDPrioritySettings;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDPrioritySettings;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeDNDPrioritySettings;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private static addSources(Lcom/android/settings/DropDownPreference;)V
    .locals 2
    .param p0, "pref"    # Lcom/android/settings/DropDownPreference;

    .prologue
    .line 404
    const v0, 0x7f0e0e79

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 405
    const v0, 0x7f0e0e7a

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 406
    const v0, 0x7f0e0e7b

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 407
    const v0, 0x7f0e14c1

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 408
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 108
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 112
    :cond_0
    const v1, 0x7f0800ed

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->addPreferencesFromResource(I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 116
    const-string v1, "no_exception"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/RadioPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mNoException:Lcom/android/settings/notification/RadioPreference;

    .line 117
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mNoException:Lcom/android/settings/notification/RadioPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$1;-><init>(Lcom/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    const-string v1, "alarm_only"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/RadioPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mAlarmOnly:Lcom/android/settings/notification/RadioPreference;

    .line 142
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mAlarmOnly:Lcom/android/settings/notification/RadioPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$2;-><init>(Lcom/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    const-string v1, "custom"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/RadioPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mCustom:Lcom/android/settings/notification/RadioPreference;

    .line 167
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mCustom:Lcom/android/settings/notification/RadioPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$3;-><init>(Lcom/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 191
    const-string v1, "reminders"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mReminders:Landroid/preference/SwitchPreference;

    .line 192
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mReminders:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$4;-><init>(Lcom/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 207
    const-string v1, "events"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mEvents:Landroid/preference/SwitchPreference;

    .line 208
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mEvents:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$5;-><init>(Lcom/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 223
    const-string v1, "messages"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DropDownPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mMessages:Lcom/android/settings/DropDownPreference;

    .line 224
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mMessages:Lcom/android/settings/DropDownPreference;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->addSources(Lcom/android/settings/DropDownPreference;)V

    .line 225
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mMessages:Lcom/android/settings/DropDownPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$6;-><init>(Lcom/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    .line 246
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mMessages:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v1, v8}, Lcom/android/settings/DropDownPreference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 248
    const-string v1, "calls"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DropDownPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mCalls:Lcom/android/settings/DropDownPreference;

    .line 249
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mCalls:Lcom/android/settings/DropDownPreference;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->addSources(Lcom/android/settings/DropDownPreference;)V

    .line 250
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mCalls:Lcom/android/settings/DropDownPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$7;-><init>(Lcom/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    .line 271
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mCalls:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v1, v8}, Lcom/android/settings/DropDownPreference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 273
    const-string v1, "repeat_callers"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mRepeatCallers:Landroid/preference/SwitchPreference;

    .line 274
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mRepeatCallers:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0e82

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00a8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mRepeatCallers:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$8;-><init>(Lcom/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 292
    const-string v1, "alarms"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mAlarm:Landroid/preference/SwitchPreference;

    .line 293
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mAlarm:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$9;-><init>(Lcom/android/settings/notification/ZenModeDNDPrioritySettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 307
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mEvents:Landroid/preference/SwitchPreference;

    const v2, 0x7f0e0fde

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 311
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mNoException:Lcom/android/settings/notification/RadioPreference;

    const v2, 0x7f0e0fe1

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/RadioPreference;->setSummary(I)V

    .line 313
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mAlarm:Landroid/preference/SwitchPreference;

    const v2, 0x7f0e0fd6

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 316
    :cond_2
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-eq v1, v8, :cond_3

    .line 317
    const-string v1, "custom_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->removePreference(Ljava/lang/String;)V

    .line 318
    const-string v1, "alarms"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->removePreference(Ljava/lang/String;)V

    .line 319
    const-string v1, "repeat_callers"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->removePreference(Ljava/lang/String;)V

    .line 320
    const-string v1, "calls"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->removePreference(Ljava/lang/String;)V

    .line 321
    const-string v1, "messages"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->removePreference(Ljava/lang/String;)V

    .line 322
    const-string v1, "reminders"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->removePreference(Ljava/lang/String;)V

    .line 323
    const-string v1, "events"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->removePreference(Ljava/lang/String;)V

    .line 324
    const-string v1, "app_notifications"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->removePreference(Ljava/lang/String;)V

    .line 327
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->updateControls()V

    .line 329
    return-object v0
.end method

.method private static defaultNewSchedule()Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    .locals 3

    .prologue
    .line 418
    new-instance v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 419
    .local v1, "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    sget-object v2, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 420
    const/16 v2, 0x16

    iput v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 421
    const/4 v2, 0x7

    iput v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 422
    new-instance v0, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;-><init>()V

    .line 423
    .local v0, "rt":Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    const-string v2, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    iput-object v2, v0, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->settingsAction:Ljava/lang/String;

    .line 424
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->defaultConditionId:Landroid/net/Uri;

    .line 425
    return-object v0
.end method

.method private refreshRuleOrFinish()Z
    .locals 4

    .prologue
    .line 351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 352
    const-string v2, "twschedule"

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 353
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 357
    :cond_0
    sget-boolean v1, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRule="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, v1}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->setRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 359
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->toastAndFinish()V

    .line 360
    const/4 v1, 0x1

    .line 362
    :goto_1
    return v1

    .line 351
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 1
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    .line 412
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 414
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 412
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 414
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private toastAndFinish()V
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0e6c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 369
    return-void
.end method

.method private updateControls()V
    .locals 5

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 372
    iput-boolean v3, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mDisableListeners:Z

    .line 374
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mNoException:Lcom/android/settings/notification/RadioPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/RadioPreference;->setChecked(Z)V

    .line 375
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mAlarmOnly:Lcom/android/settings/notification/RadioPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/RadioPreference;->setChecked(Z)V

    .line 376
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mCustom:Lcom/android/settings/notification/RadioPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/RadioPreference;->setChecked(Z)V

    .line 377
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 378
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mNoException:Lcom/android/settings/notification/RadioPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/RadioPreference;->setChecked(Z)V

    .line 384
    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mAlarm:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v4, v4, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 386
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mCalls:Lcom/android/settings/DropDownPreference;

    if-eqz v0, :cond_0

    .line 387
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mCalls:Lcom/android/settings/DropDownPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mMessages:Lcom/android/settings/DropDownPreference;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v4, v4, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 390
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mReminders:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 391
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mEvents:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 392
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mRepeatCallers:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 393
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mRepeatCallers:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    if-eqz v0, :cond_6

    :cond_2
    move v0, v3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 395
    iput-boolean v2, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mDisableListeners:Z

    .line 396
    return-void

    .line 379
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    .line 380
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mAlarmOnly:Lcom/android/settings/notification/RadioPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/RadioPreference;->setChecked(Z)V

    goto :goto_0

    .line 382
    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mCustom:Lcom/android/settings/notification/RadioPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/RadioPreference;->setChecked(Z)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 387
    goto :goto_1

    :cond_6
    move v0, v2

    .line 393
    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 400
    const/16 v0, 0x8d

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 334
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 337
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 83
    const-string v5, "twschedule"

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 84
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v4, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 88
    :cond_0
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, v4}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->setRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 89
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mContext:Landroid/content/Context;

    const/16 v5, 0xad

    invoke-static {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 90
    new-instance v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 91
    .local v2, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-static {}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->defaultNewSchedule()Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v1

    .line 92
    .local v1, "ri":Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    const-string v4, "twschedule"

    iput-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 93
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 94
    const/4 v4, 0x1

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 95
    iget-object v4, v1, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->defaultConditionId:Landroid/net/Uri;

    iput-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 96
    iget-object v4, v1, Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;->serviceComponent:Landroid/content/ComponentName;

    iput-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 97
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "ruleId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 100
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v4, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 103
    .end local v1    # "ri":Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    .end local v2    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v3    # "ruleId":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 104
    return-void

    .line 82
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onZenModeChanged()V
    .locals 0

    .prologue
    .line 342
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->refreshRuleOrFinish()Z

    .line 347
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->updateControls()V

    .line 348
    return-void
.end method
