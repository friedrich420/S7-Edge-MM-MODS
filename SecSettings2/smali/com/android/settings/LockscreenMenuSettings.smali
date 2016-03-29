.class public Lcom/android/settings/LockscreenMenuSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LockscreenMenuSettings$ScreenLockSearchIndexProvider;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static mContext:Landroid/content/Context;


# instance fields
.field private isKioskContainer:Z

.field private mAppOpsSettings:Landroid/preference/Preference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mFindMyMobile:Landroid/preference/Preference;

.field private mFingerSanner:Landroid/preference/Preference;

.field private mFromPackageInstaller:Z

.field private mHasSPenFeature:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockType:Landroid/preference/PreferenceScreen;

.field private mLockscreenNotification:Landroid/preference/PreferenceScreen;

.field private mSecuredLockSettings:Landroid/preference/PreferenceScreen;

.field private mShowInfomation:Landroid/preference/PreferenceScreen;

.field private mSwipeLockSettings:Landroid/preference/PreferenceScreen;

.field private mToggleAppInstallation:Landroid/preference/SwitchPreference;

.field private mUnlockEffect:Landroid/preference/PreferenceScreen;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/LockscreenMenuSettings;->MY_USER_ID:I

    .line 820
    new-instance v0, Lcom/android/settings/LockscreenMenuSettings$ScreenLockSearchIndexProvider;

    invoke-direct {v0}, Lcom/android/settings/LockscreenMenuSettings$ScreenLockSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings/LockscreenMenuSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 101
    iput-boolean v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mHasSPenFeature:Z

    .line 129
    iput-boolean v0, p0, Lcom/android/settings/LockscreenMenuSettings;->isKioskContainer:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mFromPackageInstaller:Z

    .line 821
    return-void
.end method

.method private InitValue(I)V
    .locals 10
    .param p1, "menuType"    # I

    .prologue
    const/4 v9, 0x1

    .line 310
    const-string v6, "unlock_set_or_change"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    .line 313
    const-string v6, "persist.keyguard.ucs.csname"

    const-string v7, "none"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "ucmPasswordcsName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_1

    .line 315
    if-eqz v4, :cond_b

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "none"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 316
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 317
    .local v2, "index":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 318
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 320
    :cond_0
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 326
    .end local v2    # "index":I
    :cond_1
    :goto_0
    const-string v6, "secured_lock_settigns"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    .line 327
    const-string v6, "show_information"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    .line 328
    const-string v6, "lock_screen_menu_notifications"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    .line 329
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_2

    .line 330
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->getLockScreenShowNotificationSummary(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 333
    :cond_2
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_3

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->hasCoverSettingOptions(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    .line 336
    .local v0, "covertype":I
    const/16 v6, 0x8

    if-eq v0, v6, :cond_3

    .line 337
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    const v7, 0x7f0e14cf

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 344
    .end local v0    # "covertype":I
    :cond_3
    :goto_1
    const-string v6, "swipe_lock_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mSwipeLockSettings:Landroid/preference/PreferenceScreen;

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mHasSPenFeature:Z

    .line 347
    const-string v6, "unlock_effect_with_preview"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    .line 348
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_4

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen_ripple_effect"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 350
    .local v5, "value":I
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    sget-object v7, Lcom/android/settings/UnlockEffect;->EffectName:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 356
    .end local v5    # "value":I
    :cond_4
    const-string v6, "toggle_install_applications"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    .line 357
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_5

    .line 358
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->isNonMarketAppsAllowed()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 359
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 360
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 361
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const v7, 0x7f0e1614

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 365
    :cond_5
    const-string v6, "find_my_mobile"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    .line 367
    const/4 v3, 0x0

    .line 368
    .local v3, "isSupportLMM":Z
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-nez v6, :cond_6

    .line 369
    const/4 v3, 0x1

    .line 372
    :cond_6
    const/4 v1, 0x0

    .line 373
    .local v1, "hasFMMDMClient":Z
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v1

    .line 376
    if-eqz v3, :cond_7

    if-nez v1, :cond_7

    .line 377
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    const v7, 0x7f0e130b

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 381
    :cond_7
    const-string v6, "finger_scanner"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    .line 382
    const-string v6, "app_ops_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mAppOpsSettings:Landroid/preference/Preference;

    .line 384
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_8

    .line 385
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 386
    :cond_8
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_9

    .line 387
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 388
    :cond_9
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_a

    .line 389
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 390
    :cond_a
    return-void

    .line 321
    .end local v1    # "hasFMMDMClient":Z
    .end local v3    # "isSupportLMM":Z
    :cond_b
    if-eqz p1, :cond_1

    .line 322
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, p1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 339
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 340
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    const v7, 0x7f0e14ce

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_1
.end method

.method private RemoveMenu()V
    .locals 17

    .prologue
    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v8

    .line 418
    .local v8, "isShopDemo":Z
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v4

    .line 420
    .local v4, "isLDUmodel":Z
    const-string v13, "lockscreen_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    .line 421
    .local v10, "lockscreen_category":Landroid/preference/PreferenceCategory;
    if-nez v10, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v14, Lcom/android/settings/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v7

    .line 424
    .local v7, "isSecured":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v14, Lcom/android/settings/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    .line 426
    .local v5, "isLockScreenDisabled":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    if-eq v8, v13, :cond_2

    if-eqz v4, :cond_3

    .line 427
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 430
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_1c

    if-nez v7, :cond_1c

    .line 431
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 436
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_5

    if-eqz v5, :cond_5

    .line 437
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 440
    :cond_5
    if-eqz v5, :cond_6

    .line 441
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_6

    .line 442
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 446
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mSwipeLockSettings:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_8

    .line 447
    sget-object v13, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->isSupportedActionMemo(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_7

    sget-object v13, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->isSupportedActionMemo(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_8

    if-nez v7, :cond_7

    if-eqz v5, :cond_8

    .line 448
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mSwipeLockSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 452
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_9

    .line 454
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 472
    :cond_9
    sget-object v13, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->isLockMenuDisabledByEdm(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 473
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 482
    :goto_2
    const-string v13, "security_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    .line 483
    .local v11, "security_category":Landroid/preference/PreferenceCategory;
    if-eqz v11, :cond_0

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v14, "user"

    invoke-virtual {v13, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UserManager;

    .line 486
    .local v12, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v13, :cond_e

    .line 488
    if-eqz v12, :cond_b

    .line 489
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v13

    if-nez v13, :cond_1e

    const/4 v13, 0x1

    :goto_3
    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 490
    const-string v13, "no_install_unknown_sources"

    invoke-virtual {v12, v13}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_a

    const-string v13, "no_install_apps"

    invoke-virtual {v12, v13}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 492
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 497
    :cond_b
    const-string v13, "device_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 498
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/admin/DevicePolicyManager;->getAllowUnsignedInstallationPkg(Landroid/content/ComponentName;)Z

    move-result v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/admin/DevicePolicyManager;->getAllowUnsignedApp(Landroid/content/ComponentName;)Z

    move-result v13

    if-nez v13, :cond_1f

    :cond_c
    const/4 v2, 0x1

    .line 500
    .local v2, "blockUnsignedAppInstall":Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v14, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v15, "isNonMarketAppAllowed"

    invoke-static {v13, v14, v15}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 502
    .local v6, "isNonMarketAppAllowed":I
    if-nez v2, :cond_d

    .line 503
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 504
    .local v1, "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/admin/DevicePolicyManager;->getAllowAppListThirdParty(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 505
    const-string v13, ""

    invoke-virtual {v1, v13}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 509
    .end local v1    # "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_d
    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v13}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v13

    if-eqz v13, :cond_20

    .line 510
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 511
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const v14, 0x10408a3

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummaryOff(I)V

    .line 512
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 513
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/LockscreenMenuSettings;->setNonMarketAppsAllowed(Z)V

    .line 530
    .end local v2    # "blockUnsignedAppInstall":Z
    .end local v6    # "isNonMarketAppAllowed":I
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mAppOpsSettings:Landroid/preference/Preference;

    if-eqz v13, :cond_f

    .line 531
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mAppOpsSettings:Landroid/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 534
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    if-eqz v13, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_11

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->isGuestUser()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_23

    .line 535
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 540
    :cond_12
    :goto_6
    const/4 v9, 0x0

    .line 541
    .local v9, "isSupportLMM":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-nez v13, :cond_13

    .line 542
    const/4 v9, 0x1

    .line 545
    :cond_13
    const/4 v3, 0x0

    .line 546
    .local v3, "hasFMMDMClient":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v3

    .line 548
    const-string v13, "LockscreenMenuSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isSupportLMM : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v13, "LockscreenMenuSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "hasFMMDMClient : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-string v13, "LockscreenMenuSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "hasMobileTracker : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string v16, "com.sec.android.app.mt"

    invoke-static/range {v15 .. v16}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v13, "LockscreenMenuSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isSmsCapable : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/Utils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    if-eqz v13, :cond_25

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v13

    if-nez v13, :cond_14

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v13

    if-eqz v13, :cond_25

    .line 554
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 565
    :cond_15
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings/LockscreenMenuSettings;->isKioskContainer:Z

    .line 567
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/LockscreenMenuSettings;->isKioskContainer:Z

    if-eqz v13, :cond_0

    .line 568
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_16

    .line 569
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockType:Landroid/preference/PreferenceScreen;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 572
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_17

    .line 573
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 576
    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_18

    .line 577
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mShowInfomation:Landroid/preference/PreferenceScreen;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 580
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_19

    .line 581
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 584
    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_1a

    .line 585
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockscreenNotification:Landroid/preference/PreferenceScreen;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 588
    :cond_1a
    if-eqz v11, :cond_0

    .line 589
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v13, :cond_1b

    .line 590
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 593
    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    if-eqz v13, :cond_0

    .line 594
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 432
    .end local v3    # "hasFMMDMClient":Z
    .end local v9    # "isSupportLMM":Z
    .end local v11    # "security_category":Landroid/preference/PreferenceCategory;
    .end local v12    # "um":Landroid/os/UserManager;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    if-eqz v13, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPowerKey()Z

    move-result v13

    if-nez v13, :cond_4

    .line 433
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mSecuredLockSettings:Landroid/preference/PreferenceScreen;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 475
    :cond_1d
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto/16 :goto_2

    .line 489
    .restart local v11    # "security_category":Landroid/preference/PreferenceCategory;
    .restart local v12    # "um":Landroid/os/UserManager;
    :cond_1e
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 498
    :cond_1f
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 514
    .restart local v2    # "blockUnsignedAppInstall":Z
    .restart local v6    # "isNonMarketAppAllowed":I
    :cond_20
    if-nez v2, :cond_e

    .line 515
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v13

    if-eqz v13, :cond_21

    .line 516
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const v14, 0x7f0e1614

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummaryOff(I)V

    .line 522
    :goto_8
    const/4 v13, -0x1

    if-eq v6, v13, :cond_e

    .line 523
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const/4 v13, 0x1

    if-ne v6, v13, :cond_22

    const/4 v13, 0x1

    :goto_9
    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 524
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->isNonMarketAppsAllowed()Z

    move-result v14

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_5

    .line 519
    :cond_21
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    const v14, 0x7f0e07f1

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setSummaryOff(I)V

    goto :goto_8

    .line 523
    :cond_22
    const/4 v13, 0x0

    goto :goto_9

    .line 536
    .end local v2    # "blockUnsignedAppInstall":Z
    .end local v6    # "isNonMarketAppAllowed":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    if-eqz v13, :cond_12

    const/4 v13, 0x1

    if-eq v8, v13, :cond_24

    if-eqz v4, :cond_12

    .line 537
    :cond_24
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mFingerSanner:Landroid/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 555
    .restart local v3    # "hasFMMDMClient":Z
    .restart local v9    # "isSupportLMM":Z
    :cond_25
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    if-eqz v13, :cond_27

    const/4 v13, 0x1

    if-eq v8, v13, :cond_26

    if-nez v4, :cond_26

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-eqz v13, :cond_27

    .line 556
    :cond_26
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 557
    :cond_27
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    if-eqz v13, :cond_15

    if-nez v9, :cond_15

    if-nez v3, :cond_15

    .line 558
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/LockscreenMenuSettings;->mFindMyMobile:Landroid/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7
.end method

.method static synthetic access$000(Lcom/android/settings/LockscreenMenuSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/LockscreenMenuSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/LockscreenMenuSettings;->setNonMarketAppsAllowed(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/LockscreenMenuSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenMenuSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/android/settings/LockscreenMenuSettings;->MY_USER_ID:I

    return v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 15

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 191
    .local v8, "root":Landroid/preference/PreferenceScreen;
    if-eqz v8, :cond_0

    .line 192
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 195
    :cond_0
    const v11, 0x7f0800a1

    invoke-virtual {p0, v11}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 198
    const/4 v6, 0x0

    .line 200
    .local v6, "menuType":I
    const-string v11, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 201
    .local v3, "isDeviceLockTime":Z
    if-eqz v3, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "is_secured_lock"

    iget-object v11, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v14, Lcom/android/settings/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v11, v14}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    :goto_0
    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 205
    :cond_1
    iget-object v11, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->getFingerPrintLockscreenState(I)I

    move-result v2

    .line 207
    .local v2, "fingerLockEnabledType":I
    iget-object v11, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v12, Lcom/android/settings/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v11

    if-nez v11, :cond_5

    .line 208
    iget-object v11, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v12, Lcom/android/settings/LockscreenMenuSettings;->MY_USER_ID:I

    invoke-virtual {v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 209
    const v6, 0x7f0e0283

    .line 245
    :goto_1
    invoke-direct {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->InitValue(I)V

    .line 246
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->RemoveMenu()V

    .line 251
    sget v11, Lcom/android/settings/LockscreenMenuSettings;->MY_USER_ID:I

    if-nez v11, :cond_7

    const/4 v5, 0x1

    .line 253
    .local v5, "mIsPrimary":Z
    :goto_2
    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v11

    if-nez v11, :cond_2

    .line 254
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 256
    const v11, 0x7f0800a5

    invoke-virtual {p0, v11}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 263
    :goto_3
    new-instance v1, Lcom/android/settings/encryption/EncryptionPreferenceManager;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v1, v11}, Lcom/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 265
    .local v1, "epm":Lcom/android/settings/encryption/EncryptionPreferenceManager;
    new-instance v4, Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v4, v11}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 266
    .local v4, "mDem":Landroid/dirEncryption/DirEncryptionManager;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 267
    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentStatus()I

    move-result v10

    .line 268
    .local v10, "status":I
    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->getVolumeState()Ljava/lang/String;

    move-result-object v9

    .line 269
    .local v9, "state":Ljava/lang/String;
    if-nez v9, :cond_9

    .line 270
    const v11, 0x7f0800a9

    invoke-virtual {p0, v11}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 294
    .end local v1    # "epm":Lcom/android/settings/encryption/EncryptionPreferenceManager;
    .end local v4    # "mDem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v9    # "state":Ljava/lang/String;
    .end local v10    # "status":I
    :cond_2
    :goto_4
    new-instance v7, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v7, v11}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 295
    .local v7, "otherSecurityPreferece":Landroid/preference/Preference;
    const-string v11, "other_security_settings"

    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 296
    const v11, 0x7f0e14b0

    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setTitle(I)V

    .line 297
    const v11, 0x7f0e14b1

    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setSummary(I)V

    .line 298
    const-string v11, "com.android.settings.OtherSecuritySettings"

    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 299
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 300
    invoke-virtual {v8, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 302
    return-object v8

    .line 202
    .end local v2    # "fingerLockEnabledType":I
    .end local v5    # "mIsPrimary":Z
    .end local v7    # "otherSecurityPreferece":Landroid/preference/Preference;
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 211
    .restart local v2    # "fingerLockEnabledType":I
    :cond_4
    const v6, 0x7f0e0284

    goto/16 :goto_1

    .line 213
    :cond_5
    const/4 v11, 0x1

    if-ne v2, v11, :cond_6

    .line 214
    const v6, 0x7f0e11dc

    goto/16 :goto_1

    .line 216
    :cond_6
    iget-object v11, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_1

    .line 220
    :sswitch_0
    const v6, 0x7f0e0a7b

    .line 221
    goto/16 :goto_1

    .line 225
    :sswitch_1
    const v6, 0x7f0e139e

    .line 226
    goto/16 :goto_1

    .line 228
    :sswitch_2
    const v6, 0x7f0e0262

    .line 229
    goto/16 :goto_1

    .line 232
    :sswitch_3
    const v6, 0x7f0e027d

    .line 233
    goto/16 :goto_1

    .line 237
    :sswitch_4
    const v6, 0x7f0e027f

    .line 238
    goto/16 :goto_1

    .line 240
    :sswitch_5
    const v6, 0x7f0e0264

    goto/16 :goto_1

    .line 251
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 259
    .restart local v5    # "mIsPrimary":Z
    :cond_8
    const v11, 0x7f0800b1

    invoke-virtual {p0, v11}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_3

    .line 271
    .restart local v1    # "epm":Lcom/android/settings/encryption/EncryptionPreferenceManager;
    .restart local v4    # "mDem":Landroid/dirEncryption/DirEncryptionManager;
    .restart local v9    # "state":Ljava/lang/String;
    .restart local v10    # "status":I
    :cond_9
    iget-object v11, p0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/admin/DevicePolicyManager;->getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 273
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v10, :cond_a

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionAppliedSDCard()Z

    move-result v11

    if-nez v11, :cond_b

    .line 274
    :cond_a
    const v11, 0x7f0800af

    invoke-virtual {p0, v11}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_4

    .line 276
    :cond_b
    if-eqz v0, :cond_c

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 277
    const v11, 0x7f0800b0

    invoke-virtual {p0, v11}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_4

    .line 279
    :cond_c
    const v11, 0x7f0800ae

    invoke-virtual {p0, v11}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_4

    .line 283
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_d
    if-nez v10, :cond_e

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionAppliedSDCard()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 284
    :cond_e
    const v11, 0x7f0800ae

    invoke-virtual {p0, v11}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_4

    .line 286
    :cond_f
    const v11, 0x7f0800af

    invoke-virtual {p0, v11}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_4

    .line 216
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x9100 -> :sswitch_1
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_3
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x70000 -> :sswitch_5
        0x90000 -> :sswitch_1
    .end sparse-switch
.end method

.method private static isExistSamsungAccount(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 778
    const/4 v0, 0x0

    .line 780
    .local v0, "isSA":Z
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 781
    .local v1, "manager":Landroid/accounts/AccountManager;
    const-string v3, "com.osp.app.signin"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 783
    .local v2, "samsungAccnts":[Landroid/accounts/Account;
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v3, :cond_0

    .line 784
    const/4 v0, 0x1

    .line 789
    .end local v1    # "manager":Landroid/accounts/AccountManager;
    .end local v2    # "samsungAccnts":[Landroid/accounts/Account;
    :cond_0
    :goto_0
    const-string v3, "LockscreenMenuSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSA : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return v0

    .line 786
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 665
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    :goto_0
    return-void

    .line 669
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private startFingerprintScanner()V
    .locals 4

    .prologue
    .line 628
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 629
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.FingerprintEntry"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :goto_0
    return-void

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private warnAppInstallation()V
    .locals 5

    .prologue
    .line 675
    const v0, 0x7f0e07f5

    .line 676
    .local v0, "messageStringRes":I
    const v1, 0x104000a

    .line 677
    .local v1, "positiveStringRes":I
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 678
    const v0, 0x7f0e07f6

    .line 679
    const v1, 0x7f0e15a5

    .line 681
    :cond_0
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v2, :cond_1

    .line 682
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 684
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e07f0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 690
    return-void
.end method

.method private warnAppInstallationFromPackageInstaller()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 693
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 694
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040026

    invoke-virtual {v0, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 695
    .local v1, "layout":Landroid/view/View;
    const v6, 0x7f0d00a4

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 696
    .local v3, "mDescription":Landroid/widget/TextView;
    const v6, 0x7f0d00a5

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 697
    .local v2, "mCheck":Landroid/widget/CheckBox;
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "one_time_operate"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_1

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 698
    const v4, 0x104000a

    .line 699
    .local v4, "positiveStringRes":I
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 700
    const v5, 0x7f0e07f6

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 701
    const v4, 0x7f0e15a5

    .line 703
    :cond_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0e07f0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/LockscreenMenuSettings$1;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/LockscreenMenuSettings$1;-><init>(Lcom/android/settings/LockscreenMenuSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040009

    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 739
    return-void

    .line 697
    .end local v4    # "positiveStringRes":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 140
    const/16 v0, 0x57

    return v0
.end method

.method protected isGuestUser()Z
    .locals 3

    .prologue
    .line 402
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    sget-object v1, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 404
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    const/4 v1, 0x1

    .line 408
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public moveFindMyMobile()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 761
    sget-object v0, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/LockscreenMenuSettings;->isExistSamsungAccount(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "samsung_signin"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 763
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 764
    .local v8, "mIntent":Landroid/content/Intent;
    const-string v0, "com.osp.app.signin"

    const-string v1, "com.osp.app.signin.UserValidateCheck"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 765
    const-string v0, "MODE"

    const-string v1, "REMOTE_CONTROLS"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 767
    const/16 v0, 0x3e9

    :try_start_0
    invoke-virtual {p0, v8, v0}, Lcom/android/settings/LockscreenMenuSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    .end local v8    # "mIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 768
    .restart local v8    # "mIntent":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 769
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 772
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    .end local v8    # "mIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0e1303

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 180
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 181
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 182
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0e1303

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 187
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 743
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    .line 744
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 745
    .local v0, "turnOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/LockscreenMenuSettings;->setNonMarketAppsAllowed(Z)V

    .line 746
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 747
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 750
    .end local v0    # "turnOn":Z
    :cond_0
    return-void

    .line 744
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    .line 148
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 149
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/LockscreenMenuSettings;->setHasOptionsMenu(Z)V

    .line 152
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 795
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 797
    sget-object v0, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    const/4 v0, 0x1

    const v1, 0x7f0e0f6f

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02013e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 802
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 754
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 755
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 758
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 806
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 813
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 808
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 809
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "helphub:appid"

    const-string v2, "lock_screen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 811
    const/4 v1, 0x1

    goto :goto_0

    .line 806
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 639
    const/4 v1, 0x1

    .line 640
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "key":Ljava/lang/String;
    const-string v2, "toggle_install_applications"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 644
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 645
    iget-boolean v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mFromPackageInstaller:Z

    if-eqz v2, :cond_1

    .line 646
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->warnAppInstallationFromPackageInstaller()V

    .line 648
    const/4 v1, 0x0

    .line 659
    :cond_0
    :goto_0
    return v1

    .line 650
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->warnAppInstallation()V

    .line 653
    const/4 v1, 0x0

    goto :goto_0

    .line 656
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/settings/LockscreenMenuSettings;->setNonMarketAppsAllowed(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x1

    .line 604
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 605
    .local v7, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    .line 607
    .local v8, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v0, "unlock_set_or_change"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    const-string v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0e025a

    const/16 v4, 0x7b

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    :goto_0
    move v0, v9

    .line 624
    :goto_1
    return v0

    .line 609
    :cond_0
    const-string v0, "unlock_effect_with_preview"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.samsung.settings.UnlockEffect"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 611
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v0, 0x24000000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 612
    invoke-virtual {p0, v6}, Lcom/android/settings/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 613
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v0, "find_my_mobile"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 614
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->moveFindMyMobile()V

    goto :goto_0

    .line 615
    :cond_2
    const-string v0, "finger_scanner"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 616
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v9

    .line 617
    goto :goto_1

    .line 619
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->startFingerprintScanner()V

    goto :goto_0

    .line 621
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 158
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "callingPackage":Ljava/lang/String;
    const-string v1, "com.android.packageinstaller"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.android.packageinstaller"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google.android.packageinstaller"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFromPackageInstaller:Z

    .line 169
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->buildPreferenceForCOM()V

    .line 171
    return-void

    .line 166
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFromPackageInstaller:Z

    goto :goto_0
.end method
