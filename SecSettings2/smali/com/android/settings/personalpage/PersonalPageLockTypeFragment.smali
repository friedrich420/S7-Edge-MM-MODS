.class public Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PersonalPageLockTypeFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private fromBackupKey:Z

.field private mFingerCategory:Landroid/preference/PreferenceCategory;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mInlineHelp:Lcom/android/settings/UnclickablePreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTypeCategory:Landroid/preference/Preference;

.field private mLockTypeFinger:Landroid/preference/SwitchPreference;

.field private mLockTypePassword:Landroid/preference/Preference;

.field private mLockTypePattern:Landroid/preference/Preference;

.field private mLockTypePin:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->fromBackupKey:Z

    return-void
.end method

.method private StartChooseLockPassword(I)V
    .locals 11
    .param p1, "quality"    # I

    .prologue
    const/high16 v10, 0x20000

    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 268
    const-string v7, "device_policy"

    invoke-virtual {p0, v7}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 269
    .local v0, "DPM":Landroid/app/admin/DevicePolicyManager;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v4

    .line 271
    .local v4, "minLength":I
    if-ge v4, v6, :cond_0

    .line 272
    const/4 v4, 0x4

    .line 275
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v3

    .line 276
    .local v3, "maxLength":I
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-class v9, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 277
    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "lockscreen.password_type"

    invoke-virtual {v1, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    const-string v7, "lockscreen.password_min"

    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    const-string v7, "lockscreen.password_max"

    invoke-virtual {v1, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    const-string v7, "confirm_credentials"

    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 281
    const-string v7, "from_personal"

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 282
    if-ne p1, v10, :cond_1

    .line 283
    .local v2, "mIsPin":Z
    :goto_0
    const-string v5, "personal_mQuality"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 284
    if-ne p1, v10, :cond_2

    const/4 v5, 0x3

    :goto_1
    invoke-virtual {p0, v1, v5}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 286
    return-void

    .end local v2    # "mIsPin":Z
    :cond_1
    move v2, v5

    .line 282
    goto :goto_0

    .restart local v2    # "mIsPin":Z
    :cond_2
    move v5, v6

    .line 284
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->fromBackupKey:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->verifySecuredLock()V

    return-void
.end method

.method private confirmFingerprintPassword(I)Z
    .locals 10
    .param p1, "request"    # I

    .prologue
    const v7, 0x7f0e11c4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 204
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 206
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "personal_mode_lock_type"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 208
    .local v0, "LockType":I
    const/4 v5, 0x5

    if-le v0, v5, :cond_0

    const/16 v5, 0x9

    if-ge v0, v5, :cond_0

    .line 209
    packed-switch v0, :pswitch_data_0

    .line 228
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->identifyFinger(Landroid/os/Bundle;)I

    move-result v2

    .line 230
    .local v2, "result":I
    const/4 v5, -0x4

    if-ne v2, v5, :cond_1

    .line 233
    :goto_1
    return v3

    .line 211
    .end local v2    # "result":I
    :pswitch_0
    const-string v5, "button_name"

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e027f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :pswitch_1
    const-string v5, "button_name"

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0262

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :pswitch_2
    const-string v5, "button_name"

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e027d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .restart local v2    # "result":I
    :cond_1
    move v3, v4

    .line 233
    goto :goto_1

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private confirmPassword(III)Z
    .locals 6
    .param p1, "LockType"    # I
    .param p2, "quality"    # I
    .param p3, "request"    # I

    .prologue
    const/4 v2, 0x1

    .line 254
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/settings/ConfirmLockPassword;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 256
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000

    if-ne p2, v3, :cond_0

    move v1, v2

    .line 258
    .local v1, "mIsPin":Z
    :goto_0
    const-string v3, "personal_mQuality"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 259
    const-string v3, "from_personal"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, v0, p3}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 262
    return v2

    .line 256
    .end local v1    # "mIsPin":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private confirmPattern(I)Z
    .locals 5
    .param p1, "request"    # I

    .prologue
    const/4 v1, 0x1

    .line 238
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->savedPrivateModePasswordExists(Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 239
    const/4 v1, 0x0

    .line 248
    :goto_0
    return v1

    .line 242
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings/ConfirmLockPattern;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 243
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "from_personal"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private identifyFinger(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 413
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment$2;-><init>(Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;)V

    invoke-virtual {v1, v2, v3, p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    move-result v0

    .line 479
    .local v0, "result":I
    return v0
.end method

.method private switchChangedFingerprint(Z)V
    .locals 4
    .param p1, "isChceked"    # Z

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_lock_type"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 487
    .local v0, "LockType":I
    if-eqz p1, :cond_0

    .line 489
    packed-switch v0, :pswitch_data_0

    .line 521
    :goto_0
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 522
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_lock_type"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 525
    return-void

    .line 491
    :pswitch_0
    const/4 v0, 0x6

    .line 492
    goto :goto_0

    .line 494
    :pswitch_1
    const/4 v0, 0x7

    .line 495
    goto :goto_0

    .line 497
    :pswitch_2
    const/16 v0, 0x8

    .line 498
    goto :goto_0

    .line 505
    :cond_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 507
    :pswitch_3
    const/4 v0, 0x2

    .line 508
    goto :goto_0

    .line 510
    :pswitch_4
    const/4 v0, 0x3

    .line 511
    goto :goto_0

    .line 513
    :pswitch_5
    const/4 v0, 0x4

    .line 514
    goto :goto_0

    .line 489
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 505
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private verifySecuredLock()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000

    const/high16 v5, 0x20000

    const/4 v4, 0x0

    const/16 v3, 0xb

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_lock_type"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 172
    .local v0, "LockType":I
    packed-switch v0, :pswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 174
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPattern(I)Z

    goto :goto_0

    .line 177
    :pswitch_1
    invoke-direct {p0, v0, v5, v3}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPassword(III)Z

    goto :goto_0

    .line 180
    :pswitch_2
    invoke-direct {p0, v0, v6, v3}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPassword(III)Z

    goto :goto_0

    .line 186
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->fromBackupKey:Z

    if-nez v1, :cond_1

    .line 187
    invoke-direct {p0, v3}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmFingerprintPassword(I)Z

    .line 197
    :cond_0
    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->fromBackupKey:Z

    goto :goto_0

    .line 189
    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 190
    invoke-direct {p0, v3}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPattern(I)Z

    goto :goto_1

    .line 191
    :cond_2
    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 192
    invoke-direct {p0, v0, v5, v3}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPassword(III)Z

    goto :goto_1

    .line 193
    :cond_3
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 194
    invoke-direct {p0, v0, v6, v3}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPassword(III)Z

    goto :goto_1

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 407
    const/16 v0, 0x57

    return v0
.end method

.method public initPref()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 140
    const-string v2, "personalpage_inline_help"

    invoke-virtual {p0, v2}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/UnclickablePreference;

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mInlineHelp:Lcom/android/settings/UnclickablePreference;

    .line 141
    const-string v2, "locktype_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeCategory:Landroid/preference/Preference;

    .line 142
    const-string v2, "personalpage_locktype_pattern"

    invoke-virtual {p0, v2}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePattern:Landroid/preference/Preference;

    .line 143
    const-string v2, "personalpage_locktype_pin"

    invoke-virtual {p0, v2}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePin:Landroid/preference/Preference;

    .line 144
    const-string v2, "personalpage_locktype_password"

    invoke-virtual {p0, v2}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePassword:Landroid/preference/Preference;

    .line 145
    const-string v2, "peraonlpage_finger_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerCategory:Landroid/preference/PreferenceCategory;

    .line 146
    const-string v2, "personalpage_locktype_fingerprint"

    invoke-virtual {p0, v2}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    .line 148
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 150
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mInlineHelp:Lcom/android/settings/UnclickablePreference;

    const v3, 0x7f0e11b9

    invoke-virtual {p0, v3}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/UnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 153
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v2, "firstStart"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 155
    .local v1, "getRequestCodeValue":I
    const/16 v2, 0x64

    if-eq v1, v2, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mInlineHelp:Lcom/android/settings/UnclickablePreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeCategory:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 162
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 166
    :cond_0
    return-void

    .line 159
    :cond_1
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 320
    const-string v3, "PersonalPageLockTypeFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", received - resultCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 322
    .local v1, "SettingsActivity":Lcom/android/settings/SettingsActivity;
    const/4 v2, 0x0

    .line 324
    .local v2, "bSuccess":I
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "personal_mode_lock_type"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 327
    .local v0, "LockType":I
    sparse-switch p1, :sswitch_data_0

    .line 390
    :goto_0
    return-void

    .line 331
    :sswitch_0
    if-lez p2, :cond_0

    .line 332
    if-lt v0, v7, :cond_1

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "personal_mode_lock_type"

    const/4 v5, 0x6

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 337
    :goto_1
    const/4 v2, 0x1

    .line 340
    :cond_0
    invoke-virtual {v1, p0, v2, v6}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "personal_mode_lock_type"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 345
    :sswitch_1
    if-eqz p2, :cond_2

    .line 346
    if-lt v0, v7, :cond_4

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "personal_mode_lock_type"

    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    const/4 v3, 0x7

    :goto_2
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 352
    :goto_3
    const/4 v2, 0x1

    .line 355
    :cond_2
    invoke-virtual {v1, p0, v2, v6}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 347
    :cond_3
    const/16 v3, 0x8

    goto :goto_2

    .line 350
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "personal_mode_lock_type"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 359
    :sswitch_2
    const/4 v3, -0x1

    if-ne p2, v3, :cond_5

    .line 361
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->switchChangedFingerprint(Z)V

    goto :goto_0

    .line 364
    :cond_5
    invoke-virtual {v1, p0, v2, v6}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 370
    :sswitch_3
    if-eqz p2, :cond_6

    .line 371
    const-string v3, "PersonalPageLockTypeFragment"

    const-string v4, "CONFIRM_REQUEST_ENTER success"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 373
    :cond_6
    const-string v3, "PersonalPageLockTypeFragment"

    const-string v4, "Failed to CONFIRM_REQUEST_ENTER"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v2, -0x1

    .line 375
    invoke-virtual {v1, p0, v2, v6}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 381
    :sswitch_4
    const-string v3, "PersonalPageLockTypeFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FOR_PRIVATE_MODE_BACKUP_KEY  Result Code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    if-eqz p2, :cond_7

    .line 384
    const/4 v2, 0x1

    .line 386
    :cond_7
    invoke-virtual {v1, p0, v2, v6}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 327
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0xb -> :sswitch_3
        0x3ec -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 92
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->verifySecuredLock()V

    .line 93
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    const v1, 0x7f040167

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f080089

    invoke-virtual {p0, v1}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->addPreferencesFromResource(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0e11ac

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->initPref()V

    .line 101
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 128
    const-string v0, "PersonalPageLockTypeFragment"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 130
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->switchChangedFingerprint(Z)V

    .line 297
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePattern:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/ChooseLockPattern;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "from_personal"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 307
    const-string v1, "key_lock_method"

    const-string v2, "pattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 315
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePin:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 310
    const/high16 v1, 0x20000

    invoke-direct {p0, v1}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->StartChooseLockPassword(I)V

    goto :goto_0

    .line 311
    :cond_2
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePassword:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    const/high16 v1, 0x40000

    invoke-direct {p0, v1}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->StartChooseLockPassword(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 106
    const-string v1, "PersonalPageLockTypeFragment"

    const-string v2, "onResume() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_lock_type"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 109
    .local v0, "LockType":I
    if-le v0, v5, :cond_1

    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 119
    :goto_0
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    if-nez v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    const v2, 0x7f0e11c7

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 121
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 123
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 124
    return-void

    .line 111
    :cond_1
    if-nez v0, :cond_2

    .line 112
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 113
    :cond_2
    if-ne v0, v5, :cond_3

    .line 114
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 135
    const-string v0, "PersonalPageLockTypeFragment"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method
