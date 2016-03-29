.class public Lcom/android/settings/ScreenPinningSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScreenPinningSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static final KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mDivider:Landroid/view/View;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mUseScreenLock:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/android/settings/ScreenPinningSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ScreenPinningSettings;->LOG_TAG:Ljava/lang/String;

    .line 61
    const-string v0, "use_screen_lock"

    sput-object v0, Lcom/android/settings/ScreenPinningSettings;->KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

    .line 368
    new-instance v0, Lcom/android/settings/ScreenPinningSettings$5;

    invoke-direct {v0}, Lcom/android/settings/ScreenPinningSettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/ScreenPinningSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ScreenPinningSettings;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ScreenPinningSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/ScreenPinningSettings;->setScreenLockUsed(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/ScreenPinningSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ScreenPinningSettings;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ScreenPinningSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ScreenPinningSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/ScreenPinningSettings;->setLockToAppEnabled(Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/settings/ScreenPinningSettings;->isLockToAppEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getCurrentSecurityTitle()Ljava/lang/String;
    .locals 7

    .prologue
    const v6, 0x7f0e0e96

    const v5, 0x7f0e0e97

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 216
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 219
    .local v0, "quality":I
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {p0, v6}, Lcom/android/settings/ScreenPinningSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 240
    :goto_0
    return-object v1

    .line 224
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 240
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/settings/ScreenPinningSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 227
    :sswitch_0
    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f0e027d

    invoke-virtual {p0, v2}, Lcom/android/settings/ScreenPinningSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v5, v1}, Lcom/android/settings/ScreenPinningSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 232
    :sswitch_1
    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f0e027f

    invoke-virtual {p0, v2}, Lcom/android/settings/ScreenPinningSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v5, v1}, Lcom/android/settings/ScreenPinningSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 235
    :sswitch_2
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f0e0262

    invoke-virtual {p0, v2}, Lcom/android/settings/ScreenPinningSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v5, v1}, Lcom/android/settings/ScreenPinningSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 224
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private static isLockToAppEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_to_app_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isScreenLockUsed()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    const v3, 0x7f0e0e96

    invoke-virtual {p0, v3}, Lcom/android/settings/ScreenPinningSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings/ScreenPinningSettings;->getCurrentSecurityTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 172
    .local v0, "def":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_to_app_exit_locked"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return v1

    .end local v0    # "def":I
    :cond_0
    move v0, v2

    .line 171
    goto :goto_0

    .restart local v0    # "def":I
    :cond_1
    move v1, v2

    .line 172
    goto :goto_1
.end method

.method private screenPinningDisablePopup()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e0e94

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e0f8a

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, "title":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e096f

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.android.app.accesscontrol"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0e095e

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/ScreenPinningSettings$4;

    invoke-direct {v5, p0}, Lcom/android/settings/ScreenPinningSettings$4;-><init>(Lcom/android/settings/ScreenPinningSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/settings/ScreenPinningSettings$3;

    invoke-direct {v5, p0}, Lcom/android/settings/ScreenPinningSettings$3;-><init>(Lcom/android/settings/ScreenPinningSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/ScreenPinningSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/ScreenPinningSettings$2;-><init>(Lcom/android/settings/ScreenPinningSettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 363
    return-void
.end method

.method private setLockToAppEnabled(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_to_app_enabled"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 164
    if-eqz p1, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/android/settings/ScreenPinningSettings;->isScreenLockUsed()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/ScreenPinningSettings;->setScreenLockUsedSetting(Z)V

    .line 168
    :cond_0
    return-void

    .line 162
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setScreenLockUsed(Z)Z
    .locals 6
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v4, 0x1

    .line 177
    if-eqz p1, :cond_0

    .line 178
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 179
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    .line 181
    .local v3, "passwordQuality":I
    if-nez v3, :cond_0

    .line 182
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "chooseLockIntent":Landroid/content/Intent;
    const/16 v2, 0x1000

    .line 184
    .local v2, "miniumQuality":I
    const-string v5, "minimum_quality"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    const-string v5, "skipFingerprintPassword"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    const/16 v4, 0x2b

    invoke-virtual {p0, v0, v4}, Lcom/android/settings/ScreenPinningSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 189
    const/4 v4, 0x0

    .line 193
    .end local v0    # "chooseLockIntent":Landroid/content/Intent;
    .end local v1    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v2    # "miniumQuality":I
    .end local v3    # "passwordQuality":I
    :goto_0
    return v4

    .line 192
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/ScreenPinningSettings;->setScreenLockUsedSetting(Z)V

    goto :goto_0
.end method

.method private setScreenLockUsedSetting(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_to_app_exit_locked"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    return-void

    .line 197
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x56

    return v0
.end method

.method public makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;
    .locals 7
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 300
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 301
    :cond_0
    sget-object v5, Lcom/android/settings/ScreenPinningSettings;->LOG_TAG:Ljava/lang/String;

    const-string v6, "makeStringWithImage - description or functionName or drawable is null"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_0
    return-object v3

    .line 304
    :cond_1
    const-string v5, "%s"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 305
    sget-object v5, Lcom/android/settings/ScreenPinningSettings;->LOG_TAG:Ljava/lang/String;

    const-string v6, "makeStringWithImage - %s is not in str"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 309
    :cond_2
    const-string v5, "%s"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 311
    .local v0, "iconIndex":I
    const-string v1, "%"

    .line 312
    .local v1, "replacement":Ljava/lang/String;
    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "toBeReplaced":Ljava/lang/String;
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 316
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 318
    .local v3, "ss":Landroid/text/SpannableString;
    new-instance v2, Lcom/android/settings/CenteredImageSpan;

    invoke-direct {v2, p2}, Lcom/android/settings/CenteredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 321
    .local v2, "span":Lcom/android/settings/CenteredImageSpan;
    add-int/lit8 v5, v0, 0x1

    const/16 v6, 0x11

    invoke-virtual {v3, v2, v0, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 94
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    new-instance v8, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v8, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 96
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0401c2

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 99
    .local v5, "emptyView":Landroid/view/View;
    const v8, 0x7f0d01bb

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/ScreenPinningSettings;->mDivider:Landroid/view/View;

    .line 100
    const v8, 0x7f0d046f

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 101
    .local v1, "desc":Landroid/widget/TextView;
    const v8, 0x7f0d0470

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 103
    .local v3, "descSub":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0e94

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, "functionName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0202a3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 105
    .local v7, "pinIcon":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 107
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    const v8, 0x7f0e0e99

    :goto_0
    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0e9a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "descMsg":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e1579

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/android/settings/SettingsActivity;

    invoke-static {v8}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, " \u200f"

    :goto_1
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0e9b

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e157a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0e9c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e157b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0e9d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e157c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/android/settings/SettingsActivity;

    invoke-static {v8}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, " \u200f"

    :goto_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0e9e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "descSubMsg":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p0, v4, v7}, Lcom/android/settings/ScreenPinningSettings;->makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getListView()Landroid/widget/ListView;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v5, v9, v10}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 137
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 138
    iget-object v8, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v8, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 139
    iget-object v8, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v8}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 140
    iget-object v8, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/ScreenPinningSettings;->isLockToAppEnabled(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 141
    return-void

    .line 107
    .end local v2    # "descMsg":Ljava/lang/String;
    .end local v4    # "descSubMsg":Ljava/lang/String;
    :cond_1
    const v8, 0x7f0e0e98

    goto/16 :goto_0

    .line 114
    .restart local v2    # "descMsg":Ljava/lang/String;
    :cond_2
    const-string v8, " "

    goto/16 :goto_1

    :cond_3
    const-string v8, " "

    goto :goto_2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 203
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 204
    const/16 v2, 0x2b

    if-ne p1, v2, :cond_0

    .line 205
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 206
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 209
    .local v1, "validPassQuality":Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/settings/ScreenPinningSettings;->setScreenLockUsed(Z)Z

    .line 211
    iget-object v2, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 213
    .end local v0    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v1    # "validPassQuality":Z
    :cond_0
    return-void

    .line 206
    .restart local v0    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f08009b

    invoke-virtual {p0, v0}, Lcom/android/settings/ScreenPinningSettings;->addPreferencesFromResource(I)V

    .line 80
    sget-object v0, Lcom/android/settings/ScreenPinningSettings;->KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/ScreenPinningSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/SwitchPreference;

    .line 81
    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/android/settings/ScreenPinningSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/ScreenPinningSettings$1;-><init>(Lcom/android/settings/ScreenPinningSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 87
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 147
    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 149
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->updateDisplay()V

    .line 159
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_use"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 249
    .local v0, "accessControlEnabled":Z
    :goto_0
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 250
    invoke-direct {p0}, Lcom/android/settings/ScreenPinningSettings;->screenPinningDisablePopup()V

    .line 255
    :goto_1
    return-void

    .end local v0    # "accessControlEnabled":Z
    :cond_0
    move v0, v1

    .line 248
    goto :goto_0

    .line 252
    .restart local v0    # "accessControlEnabled":Z
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/ScreenPinningSettings;->setLockToAppEnabled(Z)V

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->updateDisplay()V

    goto :goto_1
.end method

.method public updateDisplay()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/ScreenPinningSettings;->isLockToAppEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 260
    iget-object v4, p0, Lcom/android/settings/ScreenPinningSettings;->mDivider:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 261
    iget-object v4, p0, Lcom/android/settings/ScreenPinningSettings;->mDivider:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 270
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/ScreenPinningSettings;->isScreenLockUsed()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 271
    iget-object v4, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/ScreenPinningSettings;->getCurrentSecurityTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 275
    iget-object v4, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 276
    iget-object v4, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v2

    .line 281
    .local v2, "isShopDemo":Z
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v0

    .line 282
    .local v0, "isLDUmodel":Z
    if-eq v2, v8, :cond_2

    if-ne v0, v8, :cond_3

    .line 283
    :cond_2
    iget-object v4, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 286
    :cond_3
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "false"

    aput-object v4, v3, v7

    .line 287
    .local v3, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v6, "isScreenPinningAllowedAsUser"

    invoke-static {v4, v5, v6, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 289
    .local v1, "isScreenPinningAllowed":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    .line 290
    if-nez v1, :cond_6

    .line 291
    iget-object v4, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 292
    iget-object v4, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 297
    :cond_4
    :goto_1
    return-void

    .line 264
    .end local v0    # "isLDUmodel":Z
    .end local v1    # "isScreenPinningAllowed":I
    .end local v2    # "isShopDemo":Z
    .end local v3    # "selectionArgs":[Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 265
    iget-object v4, p0, Lcom/android/settings/ScreenPinningSettings;->mDivider:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 266
    iget-object v4, p0, Lcom/android/settings/ScreenPinningSettings;->mDivider:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 294
    .restart local v0    # "isLDUmodel":Z
    .restart local v1    # "isScreenPinningAllowed":I
    .restart local v2    # "isShopDemo":Z
    .restart local v3    # "selectionArgs":[Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_1
.end method
