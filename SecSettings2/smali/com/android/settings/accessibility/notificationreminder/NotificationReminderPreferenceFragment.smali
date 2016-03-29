.class public Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationReminderPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static mOpenDetailMenu:Z

.field private static mOpenDetailMenuKey:Ljava/lang/String;


# instance fields
.field public SETTING_SYSTEM_NOTIFICATION_REMINDER:Ljava/lang/String;

.field public SETTING_SYSTEM_TIME_KEY:Ljava/lang/String;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckSelectAll:I

.field private mNotificationReminderEnabler:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;

.field private mNotificationReminderObserver:Landroid/database/ContentObserver;

.field private mPreferenceFragmentActivity:Landroid/app/Activity;

.field private mReminderPreferenceReceiver:Landroid/content/BroadcastReceiver;

.field private mShouldCheckAll:I

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTimeInterval:Lcom/android/settings/DropDownPreference;

.field protected mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private packageCategory:Landroid/preference/PreferenceCategory;

.field private packagesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private selectAllPreference:Landroid/preference/SwitchPreference;

.field private settingCategory:Landroid/preference/PreferenceCategory;

.field private summaryPreference:Lcom/android/settings/UnclickablePreference;

.field private vibratePreference:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mOpenDetailMenu:Z

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 72
    const-string v0, "notification_reminder"

    iput-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_NOTIFICATION_REMINDER:Ljava/lang/String;

    .line 73
    const-string v0, "time_key"

    iput-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_TIME_KEY:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packagesList:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->list:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mReminderPreferenceReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    new-instance v0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$2;-><init>(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mNotificationReminderObserver:Landroid/database/ContentObserver;

    .line 97
    const-string v0, "NotificationReminderPreferenceFragment"

    const-string v1, "NotificationReminderPreferenceFragment()"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->updateNotificationReminderSaving()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private addPackagePreference()V
    .locals 10

    .prologue
    .line 330
    iget-object v8, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 331
    iget-object v8, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 332
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 333
    .local v2, "mAppList":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "notification_reminder_app_list"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 334
    .local v7, "saveAppList":Ljava/lang/String;
    const/4 v1, 0x0

    .line 336
    .local v1, "isSelectAll":Z
    const-string v8, "notification_reminder_app_list"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz v7, :cond_0

    const-string v8, "selectAll"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 338
    :cond_0
    const-string v7, "notification_reminder_app_list"

    .line 342
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->loadPackages()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packagesList:Ljava/util/List;

    .line 343
    iget-object v8, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packagesList:Ljava/util/List;

    invoke-direct {p0, v8}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->sortPackage(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packagesList:Ljava/util/List;

    .line 344
    iget-object v8, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packagesList:Ljava/util/List;

    if-nez v8, :cond_3

    .line 345
    const-string v8, "NotificationReminderPreferenceFragment"

    const-string v9, "Package load error!"

    invoke-static {v8, v9}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_2
    :goto_0
    return-void

    .line 348
    :cond_3
    iget-object v8, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packagesList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iput v8, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mShouldCheckAll:I

    .line 350
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packagesList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_6

    .line 351
    new-instance v3, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 352
    .local v3, "mAppPreference":Landroid/preference/SwitchPreference;
    iget-object v8, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packagesList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 353
    iget-object v8, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packagesList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 354
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 355
    iget-object v8, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packagesList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 356
    .local v5, "originalIcon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v5}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 357
    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 359
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packagesList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 361
    .local v6, "packagename_savedformat":Ljava/lang/String;
    if-nez v1, :cond_4

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 362
    :cond_4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 365
    :cond_5
    iget-object v8, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 368
    .end local v3    # "mAppPreference":Landroid/preference/SwitchPreference;
    .end local v5    # "originalIcon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "packagename_savedformat":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    const-string v9, "com.android.server.telecom"

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 371
    const-string v8, "com.android.server.telecom"

    invoke-virtual {p0, v8}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    .line 372
    .local v4, "mPhonePreference":Landroid/preference/SwitchPreference;
    iget-object v8, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method private handleReminderCheckPackage()V
    .locals 6

    .prologue
    .line 450
    const-string v3, "NotificationReminderPreferenceFragment"

    const-string v4, "handleReminderCheckPackage"

    invoke-static {v3, v4}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v3, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/SwitchPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 452
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 454
    .local v1, "mAppList":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 455
    iget-object v3, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 456
    .local v2, "mAppPreference":Landroid/preference/SwitchPreference;
    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 457
    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    .end local v2    # "mAppPreference":Landroid/preference/SwitchPreference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_reminder_app_list"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 462
    const-string v3, "NotificationReminderPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleReminderCheckPackage / RESULT : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method private handleReminderCheckPackage(ZLandroid/preference/Preference;)V
    .locals 9
    .param p1, "mValue"    # Z
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 467
    const-string v6, "NotificationReminderPreferenceFragment"

    const-string v7, "handleReminderCheckPackage with argument"

    invoke-static {v6, v7}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 472
    .local v1, "mAppList":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 473
    .local v3, "mCheckSelectAll":I
    const/4 v5, 0x0

    .line 474
    .local v5, "mShouldCheckAll":I
    if-eqz p1, :cond_1

    .line 475
    add-int/lit8 v3, v3, 0x1

    move-object v4, p2

    .line 476
    check-cast v4, Landroid/preference/SwitchPreference;

    .line 477
    .local v4, "mCurrentPreference":Landroid/preference/SwitchPreference;
    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 485
    iget-object v6, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 487
    .local v2, "mAppPreference":Landroid/preference/SwitchPreference;
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez p1, :cond_2

    .line 484
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 479
    .end local v0    # "i":I
    .end local v2    # "mAppPreference":Landroid/preference/SwitchPreference;
    .end local v4    # "mCurrentPreference":Landroid/preference/SwitchPreference;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    move-object v4, p2

    .line 480
    check-cast v4, Landroid/preference/SwitchPreference;

    .line 481
    .restart local v4    # "mCurrentPreference":Landroid/preference/SwitchPreference;
    iget-object v6, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 491
    .restart local v0    # "i":I
    .restart local v2    # "mAppPreference":Landroid/preference/SwitchPreference;
    :cond_2
    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 492
    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 493
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 497
    .end local v2    # "mAppPreference":Landroid/preference/SwitchPreference;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_reminder_app_list"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 498
    const-string v6, "NotificationReminderPreferenceFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RESULT : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v6, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packagesList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 501
    const-string v6, "NotificationReminderPreferenceFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mShouldCheckAll / mCheckSelectAll : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    if-ne v3, v5, :cond_4

    .line 503
    iget-object v6, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/SwitchPreference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 504
    :cond_4
    return-void
.end method

.method private handleReminderSelectAll(Z)V
    .locals 6
    .param p1, "isChecked"    # Z

    .prologue
    .line 428
    const-string v3, "NotificationReminderPreferenceFragment"

    const-string v4, "handleReminderSelectAll"

    invoke-static {v3, v4}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 431
    .local v1, "mAppList":Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 432
    iget-object v3, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 433
    .local v2, "mAppPreference":Landroid/preference/SwitchPreference;
    invoke-virtual {v2, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 434
    if-eqz p1, :cond_0

    .line 435
    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    .end local v2    # "mAppPreference":Landroid/preference/SwitchPreference;
    :cond_1
    if-eqz p1, :cond_2

    .line 439
    sget-object v3, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->includeAppStrings:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_reminder_app_list"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 443
    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    .line 444
    iget-object v3, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/SwitchPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 446
    :cond_3
    const-string v3, "NotificationReminderPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleReminderSelectAll / RESULT : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method private handleReminderVibrate(Z)V
    .locals 4
    .param p1, "isChecked"    # Z

    .prologue
    .line 405
    const-string v0, "NotificationReminderPreferenceFragment"

    const-string v1, "handleReminderVibrate"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_reminder_vibrate"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 407
    return-void

    .line 406
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 297
    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 298
    return-void
.end method

.method private loadPackages()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    new-instance v1, Ljava/util/ArrayList;

    sget-object v5, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->includeAppStrings:Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 388
    .local v1, "checkLists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 389
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 390
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ApplicationInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 391
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 393
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->Contain(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 396
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 401
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    return-object v3
.end method

.method private reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "original"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 378
    new-instance v1, Lcom/android/settings/IconResizer;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    .line 379
    .local v1, "mIconResizer":Lcom/android/settings/IconResizer;
    const v2, 0x7f0c00ac

    invoke-virtual {v1, v2}, Lcom/android/settings/IconResizer;->setIconSize(I)V

    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p1}, Lcom/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 382
    return-object v0
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 302
    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 303
    return-void
.end method

.method private sortPackage(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 569
    .local p1, "packagesList1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packagesList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 570
    const/4 p1, 0x0

    .line 573
    .end local p1    # "packagesList1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :goto_0
    return-object p1

    .line 572
    .restart local p1    # "packagesList1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_0
    new-instance v0, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private updateNotificationReminderSaving()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_NOTIFICATION_REMINDER:Ljava/lang/String;

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 261
    .local v0, "notificationReminder_state":I
    if-nez v0, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 263
    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->vibratePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 265
    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    .line 266
    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 274
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 269
    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->vibratePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 271
    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v1, v5}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    .line 272
    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 564
    const/16 v0, 0x133

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 200
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 203
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 204
    iget-object v3, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_NOTIFICATION_REMINDER:Ljava/lang/String;

    const/4 v6, -0x2

    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 205
    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 208
    invoke-direct {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->installSwitchBarToggleSwitch()V

    .line 209
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, -0x2

    .line 125
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 126
    const-string v4, "NotificationReminderPreferenceFragment"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    .line 129
    const v4, 0x7f080080

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->addPreferencesFromResource(I)V

    .line 130
    const-string v4, "notification_reminder_guide"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/UnclickablePreference;

    iput-object v4, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->summaryPreference:Lcom/android/settings/UnclickablePreference;

    .line 131
    const-string v4, "notification_reminder_category_options"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->settingCategory:Landroid/preference/PreferenceCategory;

    .line 132
    const-string v4, "notification_reminder_vibrate"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->vibratePreference:Landroid/preference/SwitchPreference;

    .line 133
    iget-object v4, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->vibratePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    const-string v4, "notification_reminder_category_packages"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    .line 137
    const-string v4, "notification_reminder_select_all"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/SwitchPreference;

    .line 138
    iget-object v4, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    const-string v4, "notification_time_interval"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/DropDownPreference;

    iput-object v4, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Lcom/android/settings/DropDownPreference;

    .line 140
    iget-object v4, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Lcom/android/settings/DropDownPreference;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/settings/DropDownPreference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110086

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "time_interval_entries":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110087

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "time_interval_values":[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->isPersistantAlert()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 145
    iget-object v4, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->settingCategory:Landroid/preference/PreferenceCategory;

    const v5, 0x7f0e0979

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 146
    const-string v4, "notification_reminder_selectable"

    iput-object v4, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_NOTIFICATION_REMINDER:Ljava/lang/String;

    .line 148
    invoke-static {}, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->isAboveAPI21()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f11008a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f11008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 171
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    iget-object v4, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->settingCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->vibratePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 173
    iget-object v4, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->summaryPreference:Lcom/android/settings/UnclickablePreference;

    const v5, 0x7f0e0977

    invoke-virtual {v4, v5}, Lcom/android/settings/UnclickablePreference;->setTitle(I)V

    .line 176
    :cond_0
    iget-object v4, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Lcom/android/settings/DropDownPreference;

    if-eqz v4, :cond_5

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_TIME_KEY:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-static {}, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->getDefaultTimeInterval()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_TIME_KEY:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->getDefaultTimeInterval()I

    move-result v6

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 181
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_4

    .line 182
    iget-object v4, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Lcom/android/settings/DropDownPreference;

    aget-object v5, v1, v0

    aget-object v6, v3, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 153
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110088

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110089

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 157
    :cond_3
    iget-object v4, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->settingCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->vibratePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 159
    iget-object v4, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    const-string v4, "notification_reminder_category_packages"

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    .restart local v0    # "i":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_TIME_KEY:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->getDefaultTimeInterval()I

    move-result v6

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 185
    .local v2, "time_interval_saved_value":I
    iget-object v4, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Lcom/android/settings/DropDownPreference;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 186
    iget-object v4, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Lcom/android/settings/DropDownPreference;

    new-instance v5, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$3;

    invoke-direct {v5, p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$3;-><init>(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)V

    invoke-virtual {v4, v5}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    .line 196
    .end local v0    # "i":I
    .end local v2    # "time_interval_saved_value":I
    :cond_5
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 253
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 254
    invoke-direct {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->removeSwitchBarToggleSwitch()V

    .line 255
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$4;-><init>(Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 293
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mNotificationReminderEnabler:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;->pause()V

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mNotificationReminderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mReminderPreferenceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 248
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 249
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 307
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mCheckSelectAll:I

    .line 311
    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->vibratePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->handleReminderVibrate(Z)V

    .line 323
    :goto_0
    return v2

    .line 317
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->handleReminderSelectAll(Z)V

    goto :goto_0

    .line 322
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->handleReminderCheckPackage(ZLandroid/preference/Preference;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 213
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 215
    new-instance v3, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;

    iget-object v4, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-direct {v3, v4, v5}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v3, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mNotificationReminderEnabler:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;

    .line 217
    invoke-direct {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->updateNotificationReminderSaving()V

    .line 218
    iget-object v3, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mNotificationReminderEnabler:Lcom/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;->resume()V

    .line 219
    iget-object v3, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 221
    invoke-static {}, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->isPersistantAlert()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    iget-object v3, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->vibratePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_reminder_vibrate"

    const/4 v6, -0x2

    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 225
    invoke-direct {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->addPackagePreference()V

    .line 226
    iget-object v1, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "selectAll"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_reminder_app_list"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 228
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->handleReminderSelectAll(Z)V

    .line 234
    :cond_2
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 235
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->INTENT_NOTIFICATION_START_SREVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    sget-object v1, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->INTENT_NOTIFICATION_STOP_SREVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mReminderPreferenceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_NOTIFICATION_REMINDER:Ljava/lang/String;

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->mNotificationReminderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 240
    return-void

    .line 230
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->handleReminderCheckPackage()V

    goto :goto_0
.end method
