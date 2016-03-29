.class public Lcom/android/settings/personalpage/PersonalPageSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PersonalPageSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private LockType:I

.field edit:Landroid/content/SharedPreferences$Editor;

.field private isSharedDevice:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mAutoDisableSwitchPref:Landroid/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mIconResizer:Lcom/android/settings/IconResizer;

.field private mLinearLayout:[Landroid/widget/LinearLayout;

.field private mLockTypePref:Landroid/preference/Preference;

.field private mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

.field private final mPersonalPageObserver:Landroid/database/ContentObserver;

.field private mPositiveClick:Ljava/lang/Boolean;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 504
    new-instance v0, Lcom/android/settings/personalpage/PersonalPageSettings$5;

    invoke-direct {v0}, Lcom/android/settings/personalpage/PersonalPageSettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/personalpage/PersonalPageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 83
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPositiveClick:Ljava/lang/Boolean;

    .line 86
    iput-boolean v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->isSharedDevice:Z

    .line 91
    new-instance v0, Lcom/android/settings/personalpage/PersonalPageSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/personalpage/PersonalPageSettings$1;-><init>(Lcom/android/settings/personalpage/PersonalPageSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPersonalPageObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/personalpage/PersonalPageSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/personalpage/PersonalPageSettings;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/personalpage/PersonalPageSettings;->callLockType(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/personalpage/PersonalPageSettings;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/personalpage/PersonalPageSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPositiveClick:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/personalpage/PersonalPageSettings;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/personalpage/PersonalPageSettings;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPositiveClick:Ljava/lang/Boolean;

    return-object p1
.end method

.method private callLockType(I)V
    .locals 8
    .param p1, "requestCode"    # I

    .prologue
    .line 421
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 422
    .local v2, "args":Landroid/os/Bundle;
    const-string v0, "firstStart"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0e11ac

    const/4 v4, 0x0

    move-object v5, p0

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    .end local v2    # "args":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v7

    .line 428
    .local v7, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private getAppVersion(Ljava/lang/String;)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 271
    const/4 v1, 0x0

    .line 272
    .local v1, "info":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x0

    .line 274
    .local v2, "numVersion":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 275
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "stringVersion":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 282
    .end local v3    # "stringVersion":Ljava/lang/String;
    :goto_0
    return v2

    .line 277
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private requestSecretBoxVerify(Ljava/lang/Boolean;)V
    .locals 7
    .param p1, "bCheck"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x0

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "personal_mode_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 460
    .local v0, "State":I
    move-object v1, p1

    .line 463
    .local v1, "bCheckSignature":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 464
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 467
    :cond_0
    const-string v4, "PersonalPageSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendVerificationRequest with bCheck: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", State :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", so bCheckSignature:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.android.personalpage.action.ACTION_SHOW_DISCLAIMER"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.samsung.android.personalpage.service"

    const-string v5, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    const-string v4, "without_verify"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 472
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 473
    return-void
.end method

.method private showDisclaimerPopup()V
    .locals 6

    .prologue
    .line 146
    const-string v2, ""

    .line 147
    .local v2, "mDisclaimerTitle":Ljava/lang/String;
    const-string v1, ""

    .line 149
    .local v1, "mDisclaimerMessage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e11b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e11b6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 152
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 153
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/personalpage/PersonalPageSettings$4;

    invoke-direct {v4, p0}, Lcom/android/settings/personalpage/PersonalPageSettings$4;-><init>(Lcom/android/settings/personalpage/PersonalPageSettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e07d3

    new-instance v5, Lcom/android/settings/personalpage/PersonalPageSettings$3;

    invoke-direct {v5, p0}, Lcom/android/settings/personalpage/PersonalPageSettings$3;-><init>(Lcom/android/settings/personalpage/PersonalPageSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 174
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 175
    return-void
.end method

.method private updateApplistUI()V
    .locals 18

    .prologue
    .line 209
    const-string v14, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/personalpage/PersonalPageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 210
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v14, 0x7f040168

    const/4 v15, 0x0

    invoke-virtual {v8, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 212
    .local v6, "guideView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f110096

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "arrString":[Ljava/lang/String;
    array-length v14, v4

    new-array v14, v14, [Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLinearLayout:[Landroid/widget/LinearLayout;

    .line 217
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLinearLayout:[Landroid/widget/LinearLayout;

    const/16 v16, 0x0

    const v14, 0x7f0d03a9

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    aput-object v14, v15, v16

    .line 218
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLinearLayout:[Landroid/widget/LinearLayout;

    const/16 v16, 0x1

    const v14, 0x7f0d03ab

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    aput-object v14, v15, v16

    .line 219
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLinearLayout:[Landroid/widget/LinearLayout;

    const/16 v16, 0x2

    const v14, 0x7f0d03ad

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    aput-object v14, v15, v16

    .line 220
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLinearLayout:[Landroid/widget/LinearLayout;

    const/16 v16, 0x3

    const v14, 0x7f0d03af

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    aput-object v14, v15, v16

    .line 221
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLinearLayout:[Landroid/widget/LinearLayout;

    const/16 v16, 0x4

    const v14, 0x7f0d03b1

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    aput-object v14, v15, v16

    .line 222
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLinearLayout:[Landroid/widget/LinearLayout;

    const/16 v16, 0x5

    const v14, 0x7f0d03b3

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    aput-object v14, v15, v16

    .line 225
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v14, v4

    if-ge v7, v14, :cond_4

    .line 227
    aget-object v14, v4, v7

    const-string v15, "video"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 228
    aget-object v14, v4, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/personalpage/PersonalPageSettings;->getAppVersion(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x7

    if-lt v14, v15, :cond_0

    .line 229
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 230
    const-string v14, "com.samsung.android.onlinevideo"

    aput-object v14, v4, v7

    .line 241
    :cond_0
    :goto_1
    aget-object v11, v4, v7

    .line 245
    .local v11, "s":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v11, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 246
    .local v2, "ApplicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 248
    .local v3, "appName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v11, v15}, Landroid/content/pm/PackageManager;->getApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 249
    .local v10, "pkgIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/personalpage/PersonalPageSettings;->mIconResizer:Lcom/android/settings/IconResizer;

    invoke-virtual {v14, v10}, Lcom/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 251
    .local v9, "mDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/personalpage/PersonalPageSettings;->getApplistIconSize(I)I

    move-result v16

    const/16 v17, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/personalpage/PersonalPageSettings;->getApplistIconSize(I)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v14, v15, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 253
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLinearLayout:[Landroid/widget/LinearLayout;

    aget-object v14, v14, v7

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 255
    .local v13, "v":Landroid/view/View;
    instance-of v14, v13, Landroid/widget/TextView;

    if-eqz v14, :cond_1

    .line 256
    move-object v0, v13

    check-cast v0, Landroid/widget/TextView;

    move-object v12, v0

    .line 257
    .local v12, "tv":Landroid/widget/TextView;
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v12, v9, v14, v15, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v2    # "ApplicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appName":Ljava/lang/String;
    .end local v9    # "mDrawable":Landroid/graphics/drawable/Drawable;
    .end local v10    # "pkgIcon":Landroid/graphics/drawable/Drawable;
    .end local v12    # "tv":Landroid/widget/TextView;
    .end local v13    # "v":Landroid/view/View;
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 232
    .end local v11    # "s":Ljava/lang/String;
    :cond_2
    const-string v14, "com.samsung.android.videolist"

    aput-object v14, v4, v7

    goto :goto_1

    .line 235
    :cond_3
    aget-object v14, v4, v7

    const-string v15, "music"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "com.samsung.android.app.music.chn"

    invoke-static {v14, v15}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 237
    const-string v14, "com.samsung.android.app.music.chn"

    aput-object v14, v4, v7

    goto/16 :goto_1

    .line 261
    .restart local v11    # "s":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 262
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLinearLayout:[Landroid/widget/LinearLayout;

    aget-object v14, v14, v7

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    const-string v14, "PersonalPageSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " : not Installed"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 267
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "s":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getListView()Landroid/widget/ListView;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v6, v15, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 268
    return-void
.end method

.method private updateAutoDisableCheckbox()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_auto_disable_when_screen_off"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 376
    .local v0, "bAutoMode":Z
    :cond_0
    const-string v1, "PersonalPageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAutoDisableCheckbox() EnableScreenlock is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mAutoDisableSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 379
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mAutoDisableSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 381
    :cond_1
    return-void
.end method


# virtual methods
.method public getApplistIconSize(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 288
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 289
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "density":F
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 293
    int-to-float v2, p1

    mul-float/2addr v2, v0

    float-to-int v2, v2

    return v2
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 525
    const/16 v0, 0x57

    return v0
.end method

.method public initPref()V
    .locals 2

    .prologue
    .line 327
    const-string v0, "personalpage_lock_type"

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    .line 328
    const-string v0, "personalpage_auto_disable_screen_off"

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mAutoDisableSwitchPref:Landroid/preference/SwitchPreference;

    .line 329
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mAutoDisableSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 331
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 333
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 183
    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->isSharedDevice:Z

    .line 187
    const-string v2, "PersonalPageSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SharedDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->isSharedDevice:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->updateApplistUI()V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 194
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 195
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 196
    new-instance v2, Lcom/android/settings/personalpage/PersonalPageEnabler;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/personalpage/PersonalPageEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Z)V

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->initPref()V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->updatePersonalPagepage()V

    .line 203
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 205
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 477
    packed-switch p1, :pswitch_data_0

    .line 494
    :goto_0
    :pswitch_0
    return-void

    .line 479
    :pswitch_1
    const-string v0, "PersonalPageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REQUEST_CODE_LOCK_TYPE_QUIT received - resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    if-eqz p2, :cond_0

    .line 483
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/personalpage/PersonalPageSettings;->requestSecretBoxVerify(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 485
    :cond_0
    const-string v0, "PersonalPageSettings"

    const-string v1, "Failed Configure Personalpage lock type."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 491
    :pswitch_2
    const-string v0, "PersonalPageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REQUEST_CODE_LOCK_TYPE_CHANGE received - resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 477
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mContext:Landroid/content/Context;

    .line 105
    const v2, 0x7f080088

    invoke-virtual {p0, v2}, Lcom/android/settings/personalpage/PersonalPageSettings;->addPreferencesFromResource(I)V

    .line 106
    new-instance v2, Lcom/android/settings/IconResizer;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mIconResizer:Lcom/android/settings/IconResizer;

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 109
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 110
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "do_not_show_disclaimer"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 111
    .local v0, "do_not_show_disclaimer":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->edit:Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_lock_type"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->LockType:I

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "forPrivateBackupKey"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 117
    .local v1, "mSetToPrivateLock":Z
    if-eqz v1, :cond_0

    .line 118
    const/16 v2, 0x66

    invoke-direct {p0, v2}, Lcom/android/settings/personalpage/PersonalPageSettings;->callLockType(I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 122
    :cond_0
    iget v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->LockType:I

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->showDisclaimerPopup()V

    .line 127
    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mFilter:Landroid/content/IntentFilter;

    .line 128
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.settings.PERSONALPAGE_ACTIVITY_LAUNCH"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v3, "android.settings.PERSONALPAGE_ACTIVITY_LOCKTYPE_LAUNCH"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    new-instance v2, Lcom/android/settings/personalpage/PersonalPageSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/personalpage/PersonalPageSettings$2;-><init>(Lcom/android/settings/personalpage/PersonalPageSettings;)V

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 498
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 500
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 501
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 316
    const-string v0, "PersonalPageSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 318
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 319
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageEnabler;->pause()V

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPersonalPageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 323
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 443
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mAutoDisableSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 447
    .local v0, "bAutoMode":Z
    if-ne v0, v4, :cond_1

    .line 448
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_auto_disable_when_screen_off"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 452
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->updateAutoDisableCheckbox()V

    .line 455
    .end local v0    # "bAutoMode":Z
    :cond_0
    return v3

    .line 450
    .restart local v0    # "bAutoMode":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_auto_disable_when_screen_off"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/android/settings/personalpage/PersonalPageSettings;->callLockType(I)V

    .line 438
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 298
    const-string v0, "PersonalPageSettings"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 301
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "personal_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPersonalPageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->updatePersonalPagepage()V

    .line 311
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mPersonalPageEnabler:Lcom/android/settings/personalpage/PersonalPageEnabler;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageEnabler;->resume()V

    .line 312
    return-void
.end method

.method updateLockTypeSummary()V
    .locals 3

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "personal_mode_lock_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->LockType:I

    .line 387
    iget v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->LockType:I

    packed-switch v0, :pswitch_data_0

    .line 415
    :goto_0
    :pswitch_0
    return-void

    .line 389
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    const v1, 0x7f0e11ab

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 394
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    const v1, 0x7f0e0262

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 397
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    const v1, 0x7f0e027d

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 400
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    const v1, 0x7f0e027f

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 403
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    const v1, 0x7f0e11dc

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 406
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    const v1, 0x7f0e028a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 409
    :pswitch_7
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    const v1, 0x7f0e0289

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 412
    :pswitch_8
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    const v1, 0x7f0e028b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method updatePersonalPagepage()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 339
    .local v0, "State":I
    if-eq v0, v3, :cond_2

    .line 340
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 341
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mAutoDisableSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 347
    :goto_0
    if-eqz v0, :cond_0

    if-ne v0, v3, :cond_4

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 350
    if-nez v0, :cond_3

    .line 351
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 359
    :goto_1
    const-string v1, "PersonalPageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePersonalPagepage State :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->updateLockTypeSummary()V

    .line 361
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageSettings;->updateAutoDisableCheckbox()V

    .line 363
    iget-boolean v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->isSharedDevice:Z

    if-eqz v1, :cond_1

    .line 364
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 365
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setClickable(Z)V

    .line 366
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setFocusable(Z)V

    .line 367
    const-string v1, "PersonalPageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SharedDevice: disableButton "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->isSharedDevice:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_1
    return-void

    .line 343
    :cond_2
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mLockTypePref:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 344
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mAutoDisableSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 353
    :cond_3
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_1

    .line 356
    :cond_4
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_1
.end method
