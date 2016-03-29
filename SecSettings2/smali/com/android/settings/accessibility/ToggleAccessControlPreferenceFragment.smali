.class public Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ToggleAccessControlPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/sec/android/touchwiz/app/TwTimePickerDialog$OnTimeSetListener;


# static fields
.field private static mFolderTypeFeature:I


# instance fields
.field private mAccessControlBlockCategory:Landroid/preference/PreferenceCategory;

.field private final mAccessControlEnableObserver:Landroid/database/ContentObserver;

.field private mAccessControlTimeCategory:Landroid/preference/PreferenceCategory;

.field private final mAccessControlUseObserver:Landroid/database/ContentObserver;

.field private mBlockKeyboardSwitch:Landroid/preference/SwitchPreference;

.field private mBlockPowerSwitch:Landroid/preference/SwitchPreference;

.field private mBlockVolumeSwitch:Landroid/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mDisableExclusiveOptionsFlag:I

.field private mDisableExclusiveOptionsMessage:Ljava/lang/String;

.field private mExclusiveOptionDialog:Landroid/app/AlertDialog;

.field private mImagePreference:Landroid/preference/Preference;

.field private mShownDialogId:I

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTimerPreference:Landroid/preference/Preference;

.field protected mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mFolderTypeFeature:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 87
    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mExclusiveOptionDialog:Landroid/app/AlertDialog;

    .line 97
    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mContext:Landroid/content/Context;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mDisableExclusiveOptionsFlag:I

    .line 101
    new-instance v0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mAccessControlUseObserver:Landroid/database/ContentObserver;

    .line 111
    new-instance v0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;-><init>(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mAccessControlEnableObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static FolderTypeFeature(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x2

    sput v0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mFolderTypeFeature:I

    .line 129
    :goto_0
    sget v0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mFolderTypeFeature:I

    return v0

    .line 125
    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mFolderTypeFeature:I

    goto :goto_0

    .line 128
    :cond_1
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mFolderTypeFeature:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->setBlockOptionsEnabled(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->updateTimerPreference()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mDisableExclusiveOptionsMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mDisableExclusiveOptionsFlag:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private initializeMenus()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 262
    const-string v0, "access_control_block_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mAccessControlBlockCategory:Landroid/preference/PreferenceCategory;

    .line 263
    const-string v0, "access_control_time_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mAccessControlTimeCategory:Landroid/preference/PreferenceCategory;

    .line 265
    const-string v0, "access_control_block_power"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mBlockPowerSwitch:Landroid/preference/SwitchPreference;

    .line 266
    const-string v0, "access_control_block_volume"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mBlockVolumeSwitch:Landroid/preference/SwitchPreference;

    .line 267
    const-string v0, "access_control_block_keyboard"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mBlockKeyboardSwitch:Landroid/preference/SwitchPreference;

    .line 268
    const-string v0, "access_control_time"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mTimerPreference:Landroid/preference/Preference;

    .line 270
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mBlockPowerSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 271
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mBlockVolumeSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 272
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mBlockKeyboardSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 273
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mTimerPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 275
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mBlockPowerSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "access_control_power_button"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 277
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mBlockVolumeSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "access_control_volume_button"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 279
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mBlockKeyboardSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "access_control_keyboard_block"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mAccessControlBlockCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mBlockKeyboardSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 284
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mAccessControlBlockCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mBlockPowerSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 287
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 275
    goto :goto_0

    :cond_4
    move v0, v2

    .line 277
    goto :goto_1
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 339
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 340
    return-void
.end method

.method public static isInteractionControlExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 461
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 462
    .local v9, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 463
    .local v10, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 464
    .local v2, "data":Landroid/os/Bundle;
    const/4 v4, 0x1

    .line 465
    .local v4, "is_enabled":Z
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f0e0991

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x7f0e095e

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 468
    .local v3, "dialog_content":Ljava/lang/String;
    const/4 v1, 0x0

    .line 469
    .local v1, "assistantmenu":I
    const/4 v12, 0x0

    .line 470
    .local v12, "talkback":I
    const/4 v11, 0x0

    .line 471
    .local v11, "stalkback":I
    const/4 v13, 0x0

    .line 472
    .local v13, "universalinput":I
    const/4 v5, 0x0

    .line 473
    .local v5, "magnificationGesture":I
    const/4 v6, 0x0

    .line 474
    .local v6, "magnifierWindow":I
    const/4 v7, 0x0

    .line 475
    .local v7, "onehandoperation":I
    const/4 v8, 0x0

    .line 478
    .local v8, "pinwindow":I
    const-string v14, "com.samsung.android.app.talkback"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 479
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v12, 0x1

    .line 480
    :goto_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f0e0a0c

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 484
    :cond_0
    const-string v14, "com.google.android.marvin.talkback"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 485
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v12, 0x1

    .line 486
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f0e0a0b

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 490
    :cond_1
    const-string v14, "com.samsung.android.universalswitch"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 492
    const-string v14, "universal_switch_enabled"

    const/4 v15, 0x0

    invoke-static {v10, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 493
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f0e092d

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 497
    :cond_2
    const-string v14, "finger_magnifier"

    const/4 v15, 0x0

    invoke-static {v10, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 499
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f0e0913

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 502
    const-string v14, "accessibility_display_magnification_enabled"

    const/4 v15, 0x0

    invoke-static {v10, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 504
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f0e090e

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 508
    const-string v14, "any_screen_enabled"

    const/4 v15, 0x0

    invoke-static {v10, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 510
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f0e0a47

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 517
    const-string v14, "com.samsung.android.app.assistantmenu"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 518
    const-string v14, "assistant_menu"

    const/4 v15, 0x0

    invoke-static {v10, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 519
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f0e09bc

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 523
    :cond_3
    const-string v14, "lock_to_app_enabled"

    const/4 v15, 0x0

    invoke-static {v10, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 524
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f0e0e94

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 526
    or-int v14, v5, v6

    or-int/2addr v14, v1

    or-int/2addr v14, v7

    or-int/2addr v14, v12

    or-int/2addr v14, v13

    or-int/2addr v14, v8

    if-lez v14, :cond_6

    const/4 v4, 0x1

    .line 528
    :goto_2
    const-string v14, "is_enabled"

    invoke-virtual {v2, v14, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 529
    const-string v14, "dialog_content"

    invoke-virtual {v2, v14, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    return-object v2

    .line 479
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 485
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 526
    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 344
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 345
    return-void
.end method

.method private setBlockOptionsEnabled(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mBlockPowerSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 302
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mBlockVolumeSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mBlockKeyboardSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 304
    return-void
.end method

.method private updateAccessControlMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_use"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 293
    .local v0, "state":I
    if-nez v0, :cond_0

    .line 294
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    goto :goto_0
.end method

.method private updateTimerPreference()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 551
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "access_control_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 552
    .local v0, "settingValue":Z
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "access_control_use"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    .line 553
    .local v1, "shouldBeEnabled":Z
    :goto_1
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mTimerPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 554
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mTimerPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 555
    :cond_0
    return-void

    .end local v0    # "settingValue":Z
    .end local v1    # "shouldBeEnabled":Z
    :cond_1
    move v0, v2

    .line 551
    goto :goto_0

    .restart local v0    # "settingValue":Z
    :cond_2
    move v1, v2

    .line 552
    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 559
    const/16 v0, 0x12f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 169
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 172
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 173
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "access_control_use"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 174
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 177
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->installSwitchBarToggleSwitch()V

    .line 178
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 420
    packed-switch p2, :pswitch_data_0

    .line 456
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 422
    :pswitch_0
    iget v2, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v2, v6, :cond_1

    .line 423
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v2, v5}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_use"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 426
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v0, "acIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.accesscontrol"

    const-string v4, "com.samsung.android.app.accesscontrol.AccessControlMainService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 458
    .end local v0    # "acIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    iget v2, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-nez v2, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 432
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .local v1, "assistantMenu":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.assistantmenu"

    const-string v4, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 436
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assistant_menu"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "any_screen_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "universal_switch_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_to_app_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_display_magnification_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_magnifier"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/android/settings/accessibility/AccessibilityUtils;->turnOnOffUniversalInput(Landroid/content/Context;Z)V

    .line 444
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v2, v6}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 445
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_use"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 449
    .end local v1    # "assistantMenu":Landroid/content/Intent;
    :pswitch_1
    iget v2, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v2, v6, :cond_2

    .line 450
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v2, v6}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    goto :goto_0

    .line 451
    :cond_2
    iget v2, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-nez v2, :cond_0

    .line 452
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v2, v5}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    goto/16 :goto_0

    .line 420
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 231
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 233
    .local v0, "root":Landroid/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mImagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 235
    new-instance v1, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;-><init>(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mImagePreference:Landroid/preference/Preference;

    .line 252
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mImagePreference:Landroid/preference/Preference;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    .line 253
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mImagePreference:Landroid/preference/Preference;

    const v2, 0x7f040018

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 254
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mImagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 255
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 257
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->initializeMenus()V

    .line 259
    .end local v0    # "root":Landroid/preference/PreferenceScreen;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mContext:Landroid/content/Context;

    .line 136
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->addPreferencesFromResource(I)V

    .line 138
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e095e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 142
    :cond_0
    new-instance v0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$3;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$3;-><init>(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mImagePreference:Landroid/preference/Preference;

    .line 159
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mImagePreference:Landroid/preference/Preference;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mImagePreference:Landroid/preference/Preference;

    const v1, 0x7f040018

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mImagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 164
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->initializeMenus()V

    .line 165
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .param p1, "dialogId"    # I

    .prologue
    const/high16 v3, 0x1040000

    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 369
    const/4 v9, 0x0

    .line 370
    .local v9, "title":Ljava/lang/String;
    const/4 v8, 0x0

    .line 371
    .local v8, "message":Ljava/lang/String;
    const/4 v6, 0x0

    .line 372
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v7, 0x0

    .line 374
    .local v7, "mDialog":Landroid/app/Dialog;
    sparse-switch p1, :sswitch_data_0

    .line 415
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 376
    :sswitch_0
    iput v5, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e096b

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 378
    const v1, 0x7f0e096c

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 379
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0908

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 384
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 385
    invoke-virtual {v7, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    move-object v0, v7

    .line 386
    goto :goto_0

    .line 388
    :sswitch_1
    iput v10, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    .line 389
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mDisableExclusiveOptionsMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$6;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$6;-><init>(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mExclusiveOptionDialog:Landroid/app/AlertDialog;

    .line 403
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mExclusiveOptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 404
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mExclusiveOptionDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 406
    :sswitch_2
    new-instance v0, Lcom/android/settings/accessibility/TimeLimitDialog;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_time_set_hour"

    invoke-static {v2, v3, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "access_control_time_set_min"

    invoke-static {v2, v4, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/accessibility/TimeLimitDialog;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/app/TwTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 410
    .local v0, "timePickerDialog":Lcom/android/settings/accessibility/TimeLimitDialog;
    invoke-virtual {v0}, Lcom/android/settings/accessibility/TimeLimitDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_0

    .line 374
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 225
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 226
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->removeSwitchBarToggleSwitch()V

    .line 227
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$5;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment$5;-><init>(Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 335
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mAccessControlUseObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mAccessControlEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 218
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mExclusiveOptionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mExclusiveOptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mExclusiveOptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 220
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 221
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 349
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 350
    .local v0, "value":Z
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mBlockPowerSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "access_control_power_button"

    if-eqz v0, :cond_0

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 364
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 351
    goto :goto_0

    .line 354
    :cond_1
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mBlockVolumeSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "access_control_volume_button"

    if-eqz v0, :cond_2

    :goto_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    .line 358
    :cond_3
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mBlockKeyboardSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "access_control_keyboard_block"

    if-eqz v0, :cond_4

    :goto_3
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    move v2, v1

    .line 364
    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x6

    .line 543
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mTimerPreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 544
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->removeDialog(I)V

    .line 545
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->showDialog(I)V

    .line 547
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 182
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 187
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 189
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mBlockPowerSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "access_control_power_button"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 191
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mBlockVolumeSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "access_control_volume_button"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 193
    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mBlockKeyboardSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "access_control_keyboard_block"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 196
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->updateTimerPreference()V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "access_control_use"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->setBlockOptionsEnabled(Z)V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "access_control_use"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mAccessControlUseObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "access_control_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mAccessControlEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 207
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->updateAccessControlMenu()V

    .line 208
    return-void

    :cond_1
    move v0, v2

    .line 189
    goto :goto_0

    :cond_2
    move v0, v2

    .line 191
    goto :goto_1

    :cond_3
    move v0, v2

    .line 193
    goto :goto_2
.end method

.method public onTimeSet(Lcom/sec/android/touchwiz/widget/TwTimePicker;II)V
    .locals 2
    .param p1, "view"    # Lcom/sec/android/touchwiz/widget/TwTimePicker;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_time_set_hour"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 536
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_time_set_min"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 537
    return-void
.end method
