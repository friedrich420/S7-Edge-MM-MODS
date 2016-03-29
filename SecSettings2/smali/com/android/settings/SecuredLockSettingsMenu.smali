.class public Lcom/android/settings/SecuredLockSettingsMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecuredLockSettingsMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SecuredLockSettingsMenu$SecuredLockIndexProvider;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;

.field private static mSmartLockString:Ljava/lang/String;


# instance fields
.field private isDeviceLockTime:Z

.field private mActionMemo:Landroid/preference/SwitchPreference;

.field private mAutoFactoryReset:Landroid/preference/SwitchPreference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceLockDialog:Landroid/app/AlertDialog;

.field private mLockAfter:Lcom/android/settings/SettingsListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLocktype:I

.field private mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

.field private mResetCount:I

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mUniversalLockBeep:Landroid/preference/SwitchPreference;

.field private mUniversalLockVibration:Landroid/preference/SwitchPreference;

.field private mUniversalLockVisible:Landroid/preference/SwitchPreference;

.field private mUniversalLockVoice:Landroid/preference/SwitchPreference;

.field private mVisiblePattern:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/SecuredLockSettingsMenu;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 116
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/SecuredLockSettingsMenu;->MY_USER_ID:I

    .line 705
    new-instance v0, Lcom/android/settings/SecuredLockSettingsMenu$SecuredLockIndexProvider;

    invoke-direct {v0}, Lcom/android/settings/SecuredLockSettingsMenu$SecuredLockIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings/SecuredLockSettingsMenu;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 112
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mResetCount:I

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mLocktype:I

    .line 706
    return-void
.end method

.method private InitValue()V
    .locals 19

    .prologue
    .line 209
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    if-eqz v15, :cond_9

    const/4 v9, 0x1

    .line 211
    .local v9, "isSecondaryUser":Z
    :goto_0
    const-string v15, "visiblepattern"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    .line 212
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_1

    .line 214
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDM()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 215
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 218
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v16, v0

    sget v17, Lcom/android/settings/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 220
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 223
    :cond_1
    const-string v15, "auto_factory_reset"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    .line 224
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_3

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "auto_swipe_main_user"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_a

    const/4 v14, 0x1

    .line 227
    .local v14, "value":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    invoke-virtual {v15, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 228
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 229
    const-string v4, ""

    .line 230
    .local v4, "auto_reset_summary":Ljava/lang/String;
    const v15, 0x7f0e123f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/SecuredLockSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mResetCount:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 231
    if-eqz v9, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 232
    const v15, 0x7f0e1240

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/SecuredLockSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mResetCount:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 234
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    invoke-virtual {v15, v4}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v15

    if-lez v15, :cond_b

    .line 236
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 242
    .end local v4    # "auto_reset_summary":Ljava/lang/String;
    .end local v14    # "value":Z
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v16, Lcom/android/settings/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    .line 244
    .local v6, "hasSecurity":Z
    if-eqz v6, :cond_7

    .line 245
    const-string v15, "lock_after_timeout"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/android/settings/SettingsListPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    .line 246
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    if-eqz v15, :cond_6

    .line 248
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    if-eqz v15, :cond_5

    .line 249
    const-string v15, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 250
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    const v16, 0x7f0e1158

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/SettingsListPreference;->setTitle(I)V

    .line 251
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    const v16, 0x7f0e1158

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/SettingsListPreference;->setDialogTitle(I)V

    .line 256
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    const v16, 0x7f110006

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/SettingsListPreference;->setEntries(I)V

    .line 257
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    const v16, 0x7f110007

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/SettingsListPreference;->setEntryValues(I)V

    .line 260
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuredLockSettingsMenu;->setupLockAfterPreference()V

    .line 261
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuredLockSettingsMenu;->updateLockAfterPreferenceSummary()V

    .line 264
    :cond_6
    const-string v15, "power_button_instantly_locks"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    .line 265
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_7

    .line 266
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v16, v0

    sget v17, Lcom/android/settings/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 268
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 273
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/android/settings/SecuredLockSettingsMenu;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;

    move-result-object v3

    .line 274
    .local v3, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    .line 275
    .local v11, "root":Landroid/preference/PreferenceScreen;
    const/4 v13, 0x0

    .line 276
    .local v13, "smartlockForDisable":Landroid/preference/Preference;
    if-nez v11, :cond_d

    .line 366
    :cond_8
    :goto_4
    return-void

    .line 209
    .end local v3    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .end local v6    # "hasSecurity":Z
    .end local v9    # "isSecondaryUser":Z
    .end local v11    # "root":Landroid/preference/PreferenceScreen;
    .end local v13    # "smartlockForDisable":Landroid/preference/Preference;
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 225
    .restart local v9    # "isSecondaryUser":Z
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 238
    .restart local v4    # "auto_reset_summary":Ljava/lang/String;
    .restart local v14    # "value":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 253
    .end local v4    # "auto_reset_summary":Ljava/lang/String;
    .end local v14    # "value":Z
    .restart local v6    # "hasSecurity":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    const v16, 0x7f0e01f1

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/SettingsListPreference;->setTitle(I)V

    .line 254
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    const v16, 0x7f0e01f1

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/SettingsListPreference;->setDialogTitle(I)V

    goto/16 :goto_3

    .line 278
    .restart local v3    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .restart local v11    # "root":Landroid/preference/PreferenceScreen;
    .restart local v13    # "smartlockForDisable":Landroid/preference/Preference;
    :cond_d
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v7, v15, :cond_e

    .line 279
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    .line 280
    .local v2, "agent":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v12, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v12, v15}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 281
    .local v12, "smartlock":Landroid/preference/Preference;
    const-string v15, "trust_agent"

    invoke-virtual {v12, v15}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 282
    iget-object v15, v2, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-virtual {v12, v15}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v15, v2, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v12, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 285
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 286
    .local v8, "intent":Landroid/content/Intent;
    iget-object v15, v2, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 287
    const-string v15, "android.intent.action.MAIN"

    invoke-virtual {v8, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    invoke-virtual {v12, v8}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 290
    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 291
    move-object v13, v12

    .line 278
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 294
    .end local v2    # "agent":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v12    # "smartlock":Landroid/preference/Preference;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/Utils;->isSupportPenUsp10(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_f

    .line 295
    new-instance v15, Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mActionMemo:Landroid/preference/SwitchPreference;

    .line 296
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mActionMemo:Landroid/preference/SwitchPreference;

    const-string v16, "action_meno_on_lock_screen"

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mActionMemo:Landroid/preference/SwitchPreference;

    const v16, 0x7f0e14dc

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 298
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mActionMemo:Landroid/preference/SwitchPreference;

    const v16, 0x7f0e14dd

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mActionMemo:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v15}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mActionMemo:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v17, "lock_screen_quick_note"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_1a

    const/4 v15, 0x1

    :goto_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 302
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mActionMemo:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 307
    :cond_f
    const-string v15, "lock_screen_visible"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockVisible:Landroid/preference/SwitchPreference;

    .line 308
    const-string v15, "lock_screen_vibration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockVibration:Landroid/preference/SwitchPreference;

    .line 309
    const-string v15, "lock_screen_voice"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockVoice:Landroid/preference/SwitchPreference;

    .line 310
    const-string v15, "lock_screen_beep"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/SecuredLockSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockBeep:Landroid/preference/SwitchPreference;

    .line 311
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v15

    const/16 v16, 0x1000

    move/from16 v0, v16

    if-eq v15, v0, :cond_10

    .line 312
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockBeep:Landroid/preference/SwitchPreference;

    .line 313
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockVibration:Landroid/preference/SwitchPreference;

    .line 314
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockVisible:Landroid/preference/SwitchPreference;

    .line 315
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockVoice:Landroid/preference/SwitchPreference;

    .line 317
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockVisible:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_11

    .line 318
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockVisible:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockVisible:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v17, "universal_lock_visible"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_1b

    const/4 v15, 0x1

    :goto_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 321
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockVibration:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_12

    .line 322
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockVibration:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockVibration:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v17, "universal_lock_vibration"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_1c

    const/4 v15, 0x1

    :goto_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 325
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockBeep:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_13

    .line 326
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockBeep:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockBeep:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v17, "universal_lock_beep"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_1d

    const/4 v15, 0x1

    :goto_9
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 329
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockVoice:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_14

    .line 330
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockVoice:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockVoice:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v17, "universal_lock_voice"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_1e

    const/4 v15, 0x1

    :goto_a
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 336
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "enterprise_policy"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 338
    .local v5, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v5, :cond_19

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v15

    if-eqz v15, :cond_19

    .line 339
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v10

    .line 340
    .local v10, "isSharedDevice":Z
    const-string v15, "SecuredLockSettingsMenu"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Shared devices disable settings secure options"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    if-eqz v10, :cond_19

    .line 342
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    if-eqz v15, :cond_15

    .line 343
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/SettingsListPreference;->setEnabled(Z)V

    .line 345
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_16

    .line 346
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 347
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v16, 0x1

    sget v17, Lcom/android/settings/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 348
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 351
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_17

    .line 352
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 353
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 355
    :cond_17
    if-eqz v13, :cond_18

    .line 356
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 358
    :cond_18
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_19

    .line 359
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroid/preference/SwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 364
    .end local v10    # "isSharedDevice":Z
    :cond_19
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    if-eqz v15, :cond_8

    .line 365
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/SettingsListPreference;->setTwSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_4

    .line 300
    .end local v5    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_1a
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 319
    :cond_1b
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 323
    :cond_1c
    const/4 v15, 0x0

    goto/16 :goto_8

    .line 327
    :cond_1d
    const/4 v15, 0x0

    goto/16 :goto_9

    .line 331
    :cond_1e
    const/4 v15, 0x0

    goto/16 :goto_a
.end method

.method private RemoveMenu()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockVibration:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->isVibrationSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    :cond_0
    iget v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mLocktype:I

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mLocktype:I

    const/high16 v1, 0x90000

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mLocktype:I

    const v1, 0x9100

    if-eq v0, v1, :cond_1

    .line 192
    iget-object v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mVisiblePattern:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPowerKey()Z

    move-result v0

    if-nez v0, :cond_3

    .line 197
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    :cond_3
    return-void
.end method

.method static synthetic access$000(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/PackageManager;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/android/settings/SecuredLockSettingsMenu;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/android/settings/SecuredLockSettingsMenu;->MY_USER_ID:I

    return v0
.end method

.method private disableUnusableTimeouts(J)V
    .locals 19
    .param p1, "maxTimeout"    # J

    .prologue
    .line 589
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    invoke-virtual {v14}, Lcom/android/settings/SettingsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 590
    .local v4, "entries":[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    invoke-virtual {v14}, Lcom/android/settings/SettingsListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v13

    .line 591
    .local v13, "values":[Ljava/lang/CharSequence;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .local v8, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v9, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "screen_off_timeout"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-long v2, v14

    .line 597
    .local v2, "displayTimeout":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v14, v13

    if-ge v5, v14, :cond_1

    .line 598
    aget-object v14, v13, v5

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 600
    .local v10, "timeout":J
    cmp-long v14, v10, p1

    if-gtz v14, :cond_0

    .line 601
    aget-object v14, v4, v5

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    aget-object v14, v13, v5

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 607
    .end local v10    # "timeout":J
    :cond_1
    const-string v14, "SecuredLockSettingsMenu"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "revisedValues.size() : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long v6, p1, v14

    .line 609
    .local v6, "last_timeout":J
    const-string v14, "SecuredLockSettingsMenu"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "last_timeout : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-lez v14, :cond_2

    array-length v14, v13

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v13, v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v14, p1, v14

    if-gez v14, :cond_2

    .line 612
    const v14, 0x7f0e115c

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/SecuredLockSettingsMenu;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/SecuredLockSettingsMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/CharSequence;

    invoke-virtual {v15, v14}, Lcom/android/settings/SettingsListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 617
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/CharSequence;

    invoke-virtual {v15, v14}, Lcom/android/settings/SettingsListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    invoke-virtual {v14}, Lcom/android/settings/SettingsListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 620
    .local v12, "userPreference":I
    int-to-long v14, v12

    cmp-long v14, v14, p1

    if-gtz v14, :cond_3

    .line 621
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/settings/SettingsListPreference;->setValue(Ljava/lang/String;)V

    .line 630
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_4

    const/4 v14, 0x1

    :goto_2
    invoke-virtual {v15, v14}, Lcom/android/settings/SettingsListPreference;->setEnabled(Z)V

    .line 631
    return-void

    .line 623
    :cond_3
    const-string v14, "SecuredLockSettingsMenu"

    const-string v15, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Lcom/android/settings/SettingsListPreference;->setValueIndex(I)V

    goto :goto_1

    .line 630
    :cond_4
    const/4 v14, 0x0

    goto :goto_2
.end method

.method private static getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    sget-object v9, Lcom/android/settings/SecuredLockSettingsMenu;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v10, 0x80

    invoke-virtual {p0, v9, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 371
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget v9, Lcom/android/settings/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {p1, v9}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v1

    .line 373
    .local v1, "enabledTrustAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 374
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_3

    .line 375
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 376
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v9, :cond_1

    .line 374
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    :cond_1
    invoke-static {v4, p0}, Lcom/android/settings/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 378
    invoke-static {p0, v4}, Lcom/android/settings/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v8

    .line 379
    .local v8, "trustAgentComponentInfo":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    if-eqz v8, :cond_0

    .line 380
    iget-object v9, v8, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v9, :cond_0

    invoke-static {v4}, Lcom/android/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v8, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 386
    iget-object v9, v8, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 387
    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v3, v9, Landroid/content/pm/ServiceInfo;->labelRes:I

    .line 388
    .local v3, "nLabelResId":I
    const/4 v6, 0x0

    .line 390
    .local v6, "resources":Landroid/content/res/Resources;
    :try_start_0
    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 395
    :goto_1
    invoke-static {v6, v3}, Lcom/android/settings/SecuredLockSettingsMenu;->isSmartLockPreference(Landroid/content/res/Resources;I)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 396
    if-eqz v6, :cond_2

    sget-object v9, Lcom/android/settings/SecuredLockSettingsMenu;->mSmartLockString:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 397
    sget-object v9, Lcom/android/settings/SecuredLockSettingsMenu;->mSmartLockString:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    .line 401
    .end local v3    # "nLabelResId":I
    .end local v6    # "resources":Landroid/content/res/Resources;
    :cond_2
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    .end local v2    # "i":I
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "trustAgentComponentInfo":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    :cond_3
    return-object v7

    .line 391
    .restart local v2    # "i":I
    .restart local v3    # "nLabelResId":I
    .restart local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v6    # "resources":Landroid/content/res/Resources;
    .restart local v8    # "trustAgentComponentInfo":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "SecuredLockSettingsMenu"

    const-string v10, "getResourcesForApplication NameNotFoundException!"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 11
    .param p1, "time"    # J

    .prologue
    .line 634
    const-wide/16 v6, 0x3e8

    div-long v4, p1, v6

    .line 635
    .local v4, "second":J
    const-wide/16 v6, 0x3c

    div-long v0, v4, v6

    .line 636
    .local v0, "minute":J
    const-wide/16 v6, 0x3c

    rem-long/2addr v4, v6

    .line 637
    const-string v2, ""

    .line 639
    .local v2, "result":Ljava/lang/String;
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-lez v3, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f130014

    long-to-int v7, v0

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    long-to-int v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 643
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-lez v3, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 644
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 647
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 648
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f130015

    long-to-int v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    long-to-int v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 651
    :cond_2
    const-string v3, "SecuredLockSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimeoutNewEntry : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return-object v2
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 7
    .param p1, "timeout"    # J

    .prologue
    const/4 v2, 0x0

    .line 679
    const/4 v1, 0x0

    .line 681
    .local v1, "values":[Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/settings/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    if-eqz v3, :cond_1

    .line 682
    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 689
    :goto_0
    if-nez v1, :cond_2

    .line 699
    :cond_0
    :goto_1
    return v2

    .line 684
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 693
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 694
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_3

    .line 695
    const/4 v2, 0x1

    goto :goto_1

    .line 693
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static isSmartLockPreference(Landroid/content/res/Resources;I)Ljava/lang/Boolean;
    .locals 9
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "labelResID"    # I

    .prologue
    const/4 v8, 0x0

    .line 809
    const/4 v5, 0x0

    .line 810
    .local v5, "sLabel":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 811
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 812
    .local v0, "assets":Landroid/content/res/AssetManager;
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 813
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 814
    .local v1, "config":Landroid/content/res/Configuration;
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v6, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 815
    new-instance v2, Landroid/content/res/Resources;

    invoke-direct {v2, v0, v4, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 817
    .local v2, "defaultResources":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 823
    .end local v0    # "assets":Landroid/content/res/AssetManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "defaultResources":Landroid/content/res/Resources;
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 830
    :goto_1
    return-object v6

    .line 818
    .restart local v0    # "assets":Landroid/content/res/AssetManager;
    .restart local v1    # "config":Landroid/content/res/Configuration;
    .restart local v2    # "defaultResources":Landroid/content/res/Resources;
    .restart local v4    # "metrics":Landroid/util/DisplayMetrics;
    :catch_0
    move-exception v3

    .line 819
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v5, ""

    goto :goto_0

    .line 825
    .end local v0    # "assets":Landroid/content/res/AssetManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "defaultResources":Landroid/content/res/Resources;
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    :cond_1
    const-string v6, "Smart Lock"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 826
    const-string v6, "SecuredLockSettingsMenu"

    const-string v7, "isSmartLockSupported : true"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_1

    .line 829
    :cond_2
    const-string v6, "SecuredLockSettingsMenu"

    const-string v7, "isSmartLockSupported : false"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_1
.end method

.method private isVibrationSupport()Z
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    :cond_0
    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 513
    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 515
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings/SettingsListPreference;->setValue(Ljava/lang/String;)V

    .line 516
    iget-object v8, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    invoke-virtual {v8, p0}, Lcom/android/settings/SettingsListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 517
    iget-object v8, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 518
    .local v0, "adminTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 520
    .local v4, "displayTimeout":J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 526
    iget-boolean v8, p0, Lcom/android/settings/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    if-eqz v8, :cond_2

    .end local v0    # "adminTimeout":J
    :goto_1
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/settings/SecuredLockSettingsMenu;->disableUnusableTimeouts(J)V

    .line 529
    :cond_0
    return-void

    .end local v4    # "displayTimeout":J
    :cond_1
    move-wide v0, v6

    .line 517
    goto :goto_0

    .line 526
    .restart local v0    # "adminTimeout":J
    .restart local v4    # "displayTimeout":J
    :cond_2
    sub-long/2addr v0, v4

    goto :goto_1
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 22

    .prologue
    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "lock_screen_lock_after_timeout"

    const-wide/16 v20, 0x1388

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 534
    .local v6, "currentTimeout":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/SettingsListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 535
    .local v5, "entries":[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/SettingsListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v15

    .line 536
    .local v15, "values":[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 538
    .local v4, "best":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_1

    .line 539
    aget-object v18, v15, v10

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 541
    .local v16, "timeout":J
    cmp-long v18, v6, v16

    if-ltz v18, :cond_0

    .line 542
    move v4, v10

    .line 538
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 547
    .end local v16    # "timeout":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 548
    .local v2, "adminTimeout":J
    :goto_1
    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "screen_off_timeout"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    int-to-long v8, v0

    .line 550
    .local v8, "displayTimeout":J
    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .end local v2    # "adminTimeout":J
    :goto_2
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 553
    .local v12, "maxTimeout":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    const v14, 0x7f0e1159

    .line 554
    .local v14, "summaryResID":I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    const v11, 0x7f0e115a

    .line 557
    .local v11, "immeResID":I
    :goto_4
    aget-object v18, v15, v4

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v18, v18, v12

    if-gez v18, :cond_7

    cmp-long v18, v12, v6

    if-gez v18, :cond_7

    .line 558
    const-string v18, "SecuredLockSettingsMenu"

    const-string v19, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    cmp-long v18, v12, v8

    if-gez v18, :cond_6

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v5, v4

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/android/settings/SecuredLockSettingsMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/SettingsListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 586
    :goto_5
    return-void

    .line 547
    .end local v8    # "displayTimeout":J
    .end local v11    # "immeResID":I
    .end local v12    # "maxTimeout":J
    .end local v14    # "summaryResID":I
    :cond_2
    const-wide/16 v2, 0x0

    goto/16 :goto_1

    .line 550
    .restart local v2    # "adminTimeout":J
    .restart local v8    # "displayTimeout":J
    :cond_3
    sub-long/2addr v2, v8

    goto :goto_2

    .line 553
    .end local v2    # "adminTimeout":J
    .restart local v12    # "maxTimeout":J
    :cond_4
    const v14, 0x7f0e01f2

    goto :goto_3

    .line 554
    .restart local v14    # "summaryResID":I
    :cond_5
    const v11, 0x7f0e115b

    goto :goto_4

    .line 564
    .restart local v11    # "immeResID":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/settings/SecuredLockSettingsMenu;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/android/settings/SecuredLockSettingsMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/SettingsListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 571
    :cond_7
    if-nez v4, :cond_8

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v5, v4

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/android/settings/SecuredLockSettingsMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/SettingsListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 574
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/settings/SecuredLockSettingsMenu;->isInDefaultTimeoutList(J)Z

    move-result v18

    if-eqz v18, :cond_a

    cmp-long v18, v6, v12

    if-ltz v18, :cond_9

    const-wide/16 v18, 0x0

    cmp-long v18, v12, v18

    if-nez v18, :cond_a

    .line 575
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v5, v4

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/android/settings/SecuredLockSettingsMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/SettingsListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 577
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockAfter:Lcom/android/settings/SettingsListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/settings/SecuredLockSettingsMenu;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/android/settings/SecuredLockSettingsMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/SettingsListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 120
    const/16 v0, 0x57

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 162
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 163
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/SecuredLockSettingsMenu;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 174
    :cond_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const v0, 0x7f0e14d3

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuredLockSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/SecuredLockSettingsMenu;->mSmartLockString:Ljava/lang/String;

    .line 130
    const-string v0, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    .line 132
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuredLockSettingsMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 133
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 134
    iget-object v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    iput v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mLocktype:I

    .line 135
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 136
    if-eqz p1, :cond_0

    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 140
    :cond_0
    iget v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mLocktype:I

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_1

    .line 141
    const v0, 0x7f0800b2

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuredLockSettingsMenu;->addPreferencesFromResource(I)V

    .line 146
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->InitValue()V

    .line 147
    invoke-direct {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->RemoveMenu()V

    .line 148
    return-void

    .line 143
    :cond_1
    const v0, 0x7f08009d

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuredLockSettingsMenu;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 14
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 431
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 432
    .local v10, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v11

    .line 434
    .local v11, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v0, "visiblepattern"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 436
    .local v13, "value":Z
    sget v0, Lcom/android/settings/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v11, v13, v0}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 506
    .end local v13    # "value":Z
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 437
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    const-string v0, "power_button_instantly_locks"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 438
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 439
    .restart local v13    # "value":Z
    sget v0, Lcom/android/settings/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v11, v13, v0}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    goto :goto_0

    .line 440
    .end local v13    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    const-string v0, "auto_factory_reset"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 441
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v13, 0x1

    .line 442
    .local v13, "value":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_swipe_main_user"

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.android.settings"

    const-string v3, "SLAV"

    const/4 v0, 0x1

    if-ne v13, v0, :cond_4

    const/16 v0, 0x3e8

    :goto_2
    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 441
    .end local v13    # "value":I
    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    .line 443
    .restart local v13    # "value":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 444
    .end local v13    # "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_5
    const-string v0, "action_meno_on_lock_screen"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 445
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v13, 0x1

    .line 446
    .restart local v13    # "value":I
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_quick_note"

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 445
    .end local v13    # "value":I
    :cond_6
    const/4 v13, 0x0

    goto :goto_3

    .line 448
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_7
    const-string v0, "lock_after_timeout"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 449
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 452
    .local v12, "timeout":I
    int-to-long v0, v12

    invoke-direct {p0, v0, v1}, Lcom/android/settings/SecuredLockSettingsMenu;->isInDefaultTimeoutList(J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_after_timeout_rollback"

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 460
    :goto_4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :goto_5
    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screen lock timeout : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 471
    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 473
    .local v8, "currentScreenTimeout":J
    iget-boolean v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->isDeviceLockTime:Z

    if-eqz v0, :cond_8

    if-eqz v12, :cond_8

    int-to-long v0, v12

    cmp-long v0, v0, v8

    if-gez v0, :cond_8

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->showDeviceLockDialog()V

    .line 478
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->updateLockAfterPreferenceSummary()V

    goto/16 :goto_0

    .line 455
    .end local v8    # "currentScreenTimeout":J
    :cond_9
    const v12, 0x1b7741

    goto :goto_4

    .line 461
    :catch_0
    move-exception v7

    .line 462
    .local v7, "e":Ljava/lang/NumberFormatException;
    const-string v0, "SecuritySettings"

    const-string v1, "could not persist lockAfter timeout setting"

    invoke-static {v0, v1, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 479
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .end local v12    # "timeout":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_a
    iget-object v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockVisible:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 480
    iget-object v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockVisible:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "universal_lock_visible"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 483
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "universal_lock_visible"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 485
    :cond_c
    iget-object v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 486
    iget-object v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 487
    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "universal_lock_vibration"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 489
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "universal_lock_vibration"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 491
    :cond_e
    iget-object v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockBeep:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 492
    iget-object v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockBeep:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "universal_lock_beep"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 495
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "universal_lock_beep"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 497
    :cond_10
    iget-object v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockVoice:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mUniversalLockVoice:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 500
    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "universal_lock_voice"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 502
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "universal_lock_voice"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 411
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, "key":Ljava/lang/String;
    const-string v3, "trust_agent"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 414
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 416
    .local v1, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 417
    const/16 v3, 0x7e

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v0

    .line 419
    .local v0, "confirmationLaunched":Z
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 421
    iget-object v3, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/settings/SecuredLockSettingsMenu;->startActivity(Landroid/content/Intent;)V

    .line 422
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 427
    :cond_0
    const/4 v3, 0x1

    .end local v0    # "confirmationLaunched":Z
    .end local v1    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    :goto_0
    return v3

    .line 425
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 180
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 156
    :cond_0
    return-void
.end method

.method public showDeviceLockDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 658
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 660
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mDeviceLockDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 661
    iget-object v4, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mDeviceLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 662
    iput-object v5, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 665
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SecuredLockSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings/SecuredLockSettingsMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 666
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f04017b

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 667
    .local v2, "layout":Landroid/view/View;
    const v4, 0x7f0d03cd

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 668
    .local v3, "tv":Landroid/widget/TextView;
    const v4, 0x7f0e115e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 669
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 670
    const v4, 0x7f0e05ed

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 671
    const v4, 0x104000a

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 672
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 673
    iget-object v4, p0, Lcom/android/settings/SecuredLockSettingsMenu;->mDeviceLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 674
    return-void
.end method
