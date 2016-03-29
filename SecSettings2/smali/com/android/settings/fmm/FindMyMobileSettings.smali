.class public Lcom/android/settings/fmm/FindMyMobileSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FindMyMobileSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static chkboxFlag:Z

.field private static mIsAddAccountClicked:Z

.field private static rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGoToDive:Lcom/android/settings/fmm/MultipleLineTitlePreference;

.field private mGoogleLocationService:Landroid/preference/SwitchPreference;

.field private mHasFMMDMClient:Z

.field private mHasSamsungAccount:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsShopDemo:Z

.field private mIsSupportLMM:Z

.field private mReactivationLock:Landroid/preference/SwitchPreference;

.field private mReactivationLockDialog:Landroid/app/AlertDialog;

.field private mReactivationLockObserver:Landroid/database/ContentObserver;

.field private mRemoteControls:Landroid/preference/SwitchPreference;

.field private mRemoteControlsObserver:Landroid/database/ContentObserver;

.field private mSamsungAccount:Landroid/accounts/Account;

.field private mSamsungAccountContext:Landroid/content/Context;

.field private mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

.field private mSamsungAccountPref:Landroid/preference/Preference;

.field private mSendFinalLocationInfo:Landroid/preference/SwitchPreference;

.field private mSimChangeAlert:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fmm/FindMyMobileSettings;->mIsAddAccountClicked:Z

    .line 682
    new-instance v0, Lcom/android/settings/fmm/FindMyMobileSettings$13;

    invoke-direct {v0}, Lcom/android/settings/fmm/FindMyMobileSettings$13;-><init>()V

    sput-object v0, Lcom/android/settings/fmm/FindMyMobileSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    .line 124
    iput-boolean v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    .line 126
    iput-boolean v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mIsShopDemo:Z

    .line 128
    iput-boolean v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mIsSupportLMM:Z

    .line 130
    iput-boolean v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mHasFMMDMClient:Z

    .line 143
    new-instance v0, Lcom/android/settings/fmm/FindMyMobileSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fmm/FindMyMobileSettings$1;-><init>(Lcom/android/settings/fmm/FindMyMobileSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    .line 156
    new-instance v0, Lcom/android/settings/fmm/FindMyMobileSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fmm/FindMyMobileSettings$2;-><init>(Lcom/android/settings/fmm/FindMyMobileSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLockObserver:Landroid/database/ContentObserver;

    .line 169
    new-instance v0, Lcom/android/settings/fmm/FindMyMobileSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fmm/FindMyMobileSettings$3;-><init>(Lcom/android/settings/fmm/FindMyMobileSettings;)V

    iput-object v0, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fmm/FindMyMobileSettings;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fmm/FindMyMobileSettings;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fmm/FindMyMobileSettings;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fmm/FindMyMobileSettings;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/fmm/FindMyMobileSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fmm/FindMyMobileSettings;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->updateSimChangeAlert()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/fmm/FindMyMobileSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fmm/FindMyMobileSettings;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->onCancelPressed()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fmm/FindMyMobileSettings;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fmm/FindMyMobileSettings;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fmm/FindMyMobileSettings;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fmm/FindMyMobileSettings;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private checkReactivationLock()Z
    .locals 5

    .prologue
    .line 579
    const/4 v1, 0x0

    .line 580
    .local v1, "ret":Z
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 581
    sget-object v2, Lcom/android/settings/fmm/FindMyMobileSettings;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result v0

    .line 582
    .local v0, "lmmFlag":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 583
    const/4 v1, 0x1

    .line 588
    :goto_0
    const-string v2, "FindMyMobileSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReactivationLock Check= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    .end local v0    # "lmmFlag":I
    :cond_0
    return v1

    .line 586
    .restart local v0    # "lmmFlag":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onCancelPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 532
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_my_mobile"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private showReactivationLockDialog()V
    .locals 3

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    .line 454
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e130d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e130b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0826

    new-instance v2, Lcom/android/settings/fmm/FindMyMobileSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/fmm/FindMyMobileSettings$6;-><init>(Lcom/android/settings/fmm/FindMyMobileSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e01ba

    new-instance v2, Lcom/android/settings/fmm/FindMyMobileSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/fmm/FindMyMobileSettings$5;-><init>(Lcom/android/settings/fmm/FindMyMobileSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fmm/FindMyMobileSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/fmm/FindMyMobileSettings$4;-><init>(Lcom/android/settings/fmm/FindMyMobileSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    .line 481
    return-void
.end method

.method private showReactivationLockDisableDialog()V
    .locals 5

    .prologue
    .line 485
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 486
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 487
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    .line 490
    :cond_0
    const v0, 0x7f0e1602

    .line 491
    .local v0, "bodyTextResID":I
    const v1, 0x7f0e1601

    .line 493
    .local v1, "titleTextResId":I
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 494
    const v0, 0x7f0e1604

    .line 495
    const v1, 0x7f0e1603

    .line 498
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0826

    new-instance v4, Lcom/android/settings/fmm/FindMyMobileSettings$9;

    invoke-direct {v4, p0}, Lcom/android/settings/fmm/FindMyMobileSettings$9;-><init>(Lcom/android/settings/fmm/FindMyMobileSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e01ba

    new-instance v4, Lcom/android/settings/fmm/FindMyMobileSettings$8;

    invoke-direct {v4, p0}, Lcom/android/settings/fmm/FindMyMobileSettings$8;-><init>(Lcom/android/settings/fmm/FindMyMobileSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/fmm/FindMyMobileSettings$7;

    invoke-direct {v3, p0}, Lcom/android/settings/fmm/FindMyMobileSettings$7;-><init>(Lcom/android/settings/fmm/FindMyMobileSettings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    .line 529
    return-void
.end method

.method private updateAccountInformation()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 612
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 613
    .local v0, "manager":Landroid/accounts/AccountManager;
    const-string v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 614
    .local v1, "samsungAccnts":[Landroid/accounts/Account;
    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    .line 615
    iget-boolean v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-eqz v2, :cond_1

    .line 616
    aget-object v2, v1, v3

    iput-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSamsungAccount:Landroid/accounts/Account;

    .line 617
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget v5, v5, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 632
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 614
    goto :goto_0

    .line 623
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    const v3, 0x7f0e0be8

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 624
    iget-boolean v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mIsSupportLMM:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mHasFMMDMClient:Z

    if-nez v2, :cond_2

    .line 625
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    const v3, 0x7f0e1311

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 630
    :goto_2
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    const v3, 0x7f0401b8

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_1

    .line 628
    :cond_2
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    const v3, 0x7f0e1310

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2
.end method

.method private updateSimChangeAlert()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 541
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 543
    .local v0, "isAirplaneMode":Z
    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 544
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 545
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 568
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "change_alert"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_9

    .line 569
    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0e92

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 573
    :goto_1
    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 575
    :cond_0
    return-void

    .line 548
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-nez v1, :cond_2

    .line 549
    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 551
    :cond_2
    iget-object v4, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_2

    .line 555
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eq v1, v2, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_6

    .line 558
    :cond_5
    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 560
    :cond_6
    iget-boolean v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-nez v1, :cond_7

    .line 561
    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 563
    :cond_7
    iget-object v4, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_8
    move v1, v3

    goto :goto_3

    .line 571
    :cond_9
    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0e93

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 140
    const/16 v0, 0x57

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 421
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 423
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_0

    .line 425
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 426
    invoke-direct {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->checkReactivationLock()Z

    move-result v1

    .line 427
    .local v1, "isReactivationLock":Z
    const-string v2, "FindMyMobileSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reactivation lock is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    if-eqz v1, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_my_mobile"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 430
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.reactivationlock_on"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "FindMyMobileSettings"

    const-string v3, " onActivityResult[reactivationlock_on]"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 433
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 445
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isReactivationLock":Z
    :cond_0
    :goto_0
    return-void

    .line 435
    .restart local v1    # "isReactivationLock":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_my_mobile"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 436
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.reactivationlock_off"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "FindMyMobileSettings"

    const-string v3, " onActivityResult[reactivationlock_off]"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 439
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 442
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isReactivationLock":Z
    :cond_2
    const-string v2, "FindMyMobileSettings"

    const-string v3, "Reactivation lock onActivityResult is not RESULT_OK!!!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 179
    const v6, 0x7f080051

    invoke-virtual {p0, v6}, Lcom/android/settings/fmm/FindMyMobileSettings;->addPreferencesFromResource(I)V

    .line 181
    const-string v6, "go_to_samsungdive"

    invoke-virtual {p0, v6}, Lcom/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/fmm/MultipleLineTitlePreference;

    iput-object v6, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mGoToDive:Lcom/android/settings/fmm/MultipleLineTitlePreference;

    .line 182
    const-string v6, "samsung_account"

    invoke-virtual {p0, v6}, Lcom/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    .line 183
    const-string v6, "remote_controls"

    invoke-virtual {p0, v6}, Lcom/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    .line 184
    const-string v6, "google_location_service"

    invoke-virtual {p0, v6}, Lcom/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/preference/SwitchPreference;

    .line 185
    const-string v6, "send_final_location_info"

    invoke-virtual {p0, v6}, Lcom/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSendFinalLocationInfo:Landroid/preference/SwitchPreference;

    .line 186
    const-string v6, "send_final_location_info"

    invoke-virtual {p0, v6}, Lcom/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    .line 187
    const-string v6, "sim_change_alert"

    invoke-virtual {p0, v6}, Lcom/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    .line 188
    iget-object v6, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e1306

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    const-string v6, "reactivation_lock"

    invoke-virtual {p0, v6}, Lcom/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    .line 192
    iget-object v6, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 193
    iget-object v6, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 194
    iget-object v6, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 196
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 197
    iget-object v6, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/preference/SwitchPreference;

    const v7, 0x7f0e078c

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 198
    iget-object v6, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.osp.app.signin"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 203
    .local v2, "hasSAPackage":Z
    const-string v6, "FindMyMobileSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasSAPackage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    if-eqz v2, :cond_4

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 207
    .local v0, "desc":[Landroid/accounts/AuthenticatorDescription;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_1

    .line 208
    aget-object v6, v0, v3

    iget-object v6, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v7, "com.osp.app.signin"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 209
    aget-object v6, v0, v3

    iput-object v6, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    .line 214
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget-object v7, v7, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_1
    new-instance v5, Lcom/android/settings/IconResizer;

    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    .line 221
    .local v5, "iconResizer":Lcom/android/settings/IconResizer;
    const v6, 0x7f0c00ac

    invoke-virtual {v5, v6}, Lcom/android/settings/IconResizer;->setIconSize(I)V

    .line 222
    const/4 v4, 0x0

    .line 223
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget v7, v7, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 225
    iget-object v6, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 230
    .end local v0    # "desc":[Landroid/accounts/AuthenticatorDescription;
    .end local v3    # "i":I
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "iconResizer":Lcom/android/settings/IconResizer;
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 231
    new-instance v6, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/android/settings/fmm/FindMyMobileSettings;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    .line 233
    :cond_2
    return-void

    .line 207
    .restart local v0    # "desc":[Landroid/accounts/AuthenticatorDescription;
    .restart local v3    # "i":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "FindMyMobileSettings"

    const-string v7, "No Package name for account type com.osp.app.signin"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 227
    .end local v0    # "desc":[Landroid/accounts/AuthenticatorDescription;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "i":I
    :cond_4
    const-string v6, "samsung_account"

    invoke-virtual {p0, v6}, Lcom/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 326
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 331
    iget-object v0, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 334
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 383
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 384
    .local v1, "isChecked":Z
    const/4 v2, 0x1

    .line 386
    .local v2, "result":Z
    iget-object v3, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 387
    if-eqz v1, :cond_3

    .line 388
    const-string v3, "CHM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CHU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    sget-boolean v3, Lcom/android/settings/fmm/FindMyMobileSettings;->chkboxFlag:Z

    if-nez v3, :cond_2

    .line 390
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->showNotificationChargeDialog()V

    .line 416
    :cond_1
    :goto_0
    return v2

    .line 392
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "remote_control"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 393
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.remotecontrol_on"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "FindMyMobileSettings"

    const-string v4, " onCheckedChanged[remotecontrol_on]"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 398
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "remote_control"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 399
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.remotecontrol_off"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "FindMyMobileSettings"

    const-string v4, " onCheckedChanged[remotecontrol_off]"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 403
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/preference/SwitchPreference;

    if-ne p1, v3, :cond_5

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "network"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 406
    :cond_5
    iget-object v3, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    if-eqz v1, :cond_6

    .line 408
    invoke-direct {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->showReactivationLockDialog()V

    .line 409
    const/4 v2, 0x0

    .line 414
    :goto_1
    const-string v3, "FindMyMobileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReactivationLock state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->checkReactivationLock()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 411
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->showReactivationLockDisableDialog()V

    .line 412
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 16
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 339
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/settings/fmm/FindMyMobileSettings;->mIsAddAccountClicked:Z

    if-nez v1, :cond_1

    .line 341
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/android/settings/fmm/FindMyMobileSettings;->mIsAddAccountClicked:Z

    .line 342
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 343
    .local v13, "mIntent":Landroid/content/Intent;
    const-string v1, "com.osp.app.signin"

    const-string v2, "com.osp.app.signin.AccountView"

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v1, "MODE"

    const-string v2, "REMOTE_CONTROLS"

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/fmm/FindMyMobileSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .end local v13    # "mIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 346
    :catch_0
    move-exception v12

    .line 347
    .local v12, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v12}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 351
    .end local v12    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    const-string v1, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/fmm/FindMyMobileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/UserManager;

    .line 352
    .local v14, "mUm":Landroid/os/UserManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 353
    .local v11, "activity":Landroid/app/Activity;
    invoke-virtual {v11}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v1, v14, v2, v4}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v15

    .line 356
    .local v15, "mUserHandle":Landroid/os/UserHandle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 357
    .local v3, "args":Landroid/os/Bundle;
    const-string v1, "account"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSamsungAccount:Landroid/accounts/Account;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 358
    const-string v1, "android.intent.extra.USER"

    invoke-virtual {v3, v1, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const-class v2, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0e0be6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 365
    .end local v3    # "args":Landroid/os/Bundle;
    .end local v11    # "activity":Landroid/app/Activity;
    .end local v14    # "mUm":Landroid/os/UserManager;
    .end local v15    # "mUserHandle":Landroid/os/UserHandle;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const v7, 0x7f0e130a

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 371
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const v7, 0x7f0e1306

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 237
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "shopdemo"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mIsShopDemo:Z

    .line 242
    sput-boolean v4, Lcom/android/settings/fmm/FindMyMobileSettings;->mIsAddAccountClicked:Z

    .line 243
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_0

    .line 244
    iput-boolean v3, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mIsSupportLMM:Z

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mHasFMMDMClient:Z

    .line 251
    iget-boolean v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mIsSupportLMM:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mHasFMMDMClient:Z

    if-nez v2, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const v5, 0x7f0e130b

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 255
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "remote_control"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_b

    .line 256
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 261
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->checkReactivationLock()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "lock_my_mobile"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 267
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "lock_my_mobile"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_d

    .line 268
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 273
    :goto_3
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "network"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 276
    iget-boolean v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mIsSupportLMM:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mIsShopDemo:Z

    if-eqz v2, :cond_3

    .line 277
    :cond_2
    const-string v2, "reactivation_lock"

    invoke-virtual {p0, v2}, Lcom/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    .line 280
    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mHasFMMDMClient:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mIsShopDemo:Z

    if-eqz v2, :cond_e

    .line 281
    :cond_4
    const-string v2, "google_location_service"

    invoke-virtual {p0, v2}, Lcom/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    .line 282
    const-string v2, "remote_controls"

    invoke-virtual {p0, v2}, Lcom/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    .line 283
    const-string v2, "go_to_samsungdive"

    invoke-virtual {p0, v2}, Lcom/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    .line 284
    const-string v2, "sim_change_alert"

    invoke-virtual {p0, v2}, Lcom/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    .line 289
    :cond_5
    :goto_4
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    const-string v5, "com.sec.android.app.mt"

    invoke-static {v2, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 290
    :cond_6
    const-string v2, "sim_change_alert"

    invoke-virtual {p0, v2}, Lcom/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    .line 293
    :cond_7
    const-string v2, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 294
    const-string v2, "sim_change_alert"

    invoke-virtual {p0, v2}, Lcom/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    .line 297
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "com.osp.app.signin"

    invoke-static {v2, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 298
    .local v1, "hasSAPackage":Z
    if-eqz v1, :cond_9

    .line 299
    invoke-direct {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->updateAccountInformation()V

    .line 301
    :cond_9
    iget-boolean v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-eqz v2, :cond_f

    .line 302
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 303
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 304
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 305
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 312
    :goto_5
    invoke-direct {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->updateSimChangeAlert()V

    .line 314
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 315
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0, v7, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "remote_control"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_my_mobile"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 322
    return-void

    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "hasSAPackage":Z
    :cond_a
    move v2, v4

    .line 241
    goto/16 :goto_0

    .line 258
    :cond_b
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 264
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "lock_my_mobile"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 270
    :cond_d
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_3

    .line 285
    :cond_e
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    const-string v5, "com.google.android.gms"

    invoke-static {v2, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 286
    const-string v2, "google_location_service"

    invoke-virtual {p0, v2}, Lcom/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 307
    .restart local v1    # "hasSAPackage":Z
    :cond_f
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 308
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 309
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 310
    iget-object v2, p0, Lcom/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_5
.end method

.method public showNotificationChargeDialog()V
    .locals 6

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040154

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 637
    .local v2, "mDialogLayout":Landroid/view/View;
    const v3, 0x7f0d037f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 638
    .local v0, "chkbox":Landroid/widget/CheckBox;
    new-instance v3, Lcom/android/settings/fmm/FindMyMobileSettings$10;

    invoke-direct {v3, p0}, Lcom/android/settings/fmm/FindMyMobileSettings$10;-><init>(Lcom/android/settings/fmm/FindMyMobileSettings;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e0f85

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/fmm/FindMyMobileSettings$12;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/fmm/FindMyMobileSettings$12;-><init>(Lcom/android/settings/fmm/FindMyMobileSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/settings/fmm/FindMyMobileSettings$11;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/fmm/FindMyMobileSettings$11;-><init>(Lcom/android/settings/fmm/FindMyMobileSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 676
    .local v1, "dialog":Landroid/app/Dialog;
    return-void
.end method
