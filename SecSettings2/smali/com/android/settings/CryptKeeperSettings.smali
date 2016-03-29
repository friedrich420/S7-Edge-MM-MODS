.class public Lcom/android/settings/CryptKeeperSettings;
.super Lcom/android/settings/InstrumentedFragment;
.source "CryptKeeperSettings.java"


# static fields
.field private static mDeviceType:Ljava/lang/String;

.field private static mSalesCode:Ljava/lang/String;


# instance fields
.field private mBatteryWarning:Landroid/widget/TextView;

.field private mContentView:Landroid/view/View;

.field private mDem:Landroid/dirEncryption/DirEncryptionManager;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

.field private mParent:Landroid/app/Activity;

.field private mPasswordWarning:Landroid/widget/TextView;

.field private mPowerWarning:Landroid/widget/TextView;

.field private mSDcardOngoingWarning:Landroid/view/View;

.field private mThis:Landroid/app/Fragment;

.field private mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

.field private mVzwMessage1:Landroid/widget/TextView;

.field private mVzwMessage2:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const-string v0, ""

    sput-object v0, Lcom/android/settings/CryptKeeperSettings;->mSalesCode:Ljava/lang/String;

    .line 101
    const-string v0, ""

    sput-object v0, Lcom/android/settings/CryptKeeperSettings;->mDeviceType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 94
    iput-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 95
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 105
    iput-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    .line 108
    new-instance v0, Lcom/android/settings/CryptKeeperSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeperSettings$1;-><init>(Lcom/android/settings/CryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 181
    new-instance v0, Lcom/android/settings/CryptKeeperSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeperSettings$2;-><init>(Lcom/android/settings/CryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/CryptKeeperSettings;)Landroid/dirEncryption/DirEncryptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeperSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeperSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/CryptKeeperSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeperSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mSDcardOngoingWarning:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeperSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mPasswordWarning:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeperSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mPowerWarning:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/CryptKeeperSettings;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeperSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mBatteryWarning:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/CryptKeeperSettings;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeperSettings;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeperSettings;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/CryptKeeperSettings;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeperSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method private addEncryptionInfoToPreference(Landroid/preference/Preference;ILjava/lang/String;)V
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "type"    # I
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 430
    .local v0, "activity":Landroid/app/Activity;
    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 432
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    invoke-virtual {p1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "type"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 434
    invoke-virtual {p1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "password"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :goto_0
    return-void

    .line 436
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 437
    invoke-virtual {p1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "password"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 2

    .prologue
    .line 463
    sget-object v0, Lcom/android/settings/CryptKeeperSettings;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/CryptKeeperSettings;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 464
    sget-object v0, Lcom/android/settings/CryptKeeperSettings;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 468
    :goto_0
    return v0

    .line 467
    :cond_0
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/CryptKeeperSettings;->mDeviceType:Ljava/lang/String;

    .line 468
    sget-object v0, Lcom/android/settings/CryptKeeperSettings;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/CryptKeeperSettings;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 7
    .param p1, "request"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 355
    iget-object v3, p0, Lcom/android/settings/CryptKeeperSettings;->mParent:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 356
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    iget-object v3, p0, Lcom/android/settings/CryptKeeperSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v3, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 361
    .local v0, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    iget-object v3, p0, Lcom/android/settings/CryptKeeperSettings;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/CryptKeeperSettings;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    iget v3, v3, Lcom/android/settings/EFSProperties$ODEProperties;->enabledUCSInODE:I

    if-ne v3, v2, :cond_0

    .line 362
    const-string v3, "CryptKeeper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUcsOdeEnabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/CryptKeeperSettings;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    iget v5, v5, Lcom/android/settings/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {v0, p1, v6, v6, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivityforUCMODE(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    .line 378
    :goto_0
    return v2

    .line 372
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    if-nez v3, :cond_1

    .line 374
    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/android/settings/CryptKeeperSettings;->showFinalConfirmation(ILjava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_1
    const v3, 0x7f0e022f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, p1, v3, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v2

    goto :goto_0
.end method

.method private showFinalConfirmation(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 416
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 417
    .local v0, "preference":Landroid/preference/Preference;
    const-class v1, Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 418
    const v1, 0x7f0e0244

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 419
    invoke-direct {p0, v0, p1, p2}, Lcom/android/settings/CryptKeeperSettings;->addEncryptionInfoToPreference(Landroid/preference/Preference;ILjava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mParent:Landroid/app/Activity;

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mParent:Landroid/app/Activity;

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/SettingsActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mParent:Landroid/app/Activity;

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v2, v0}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 284
    const/16 v0, 0x20

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 319
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 321
    .local v6, "activity":Landroid/app/Activity;
    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 322
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "android.app.action.START_ENCRYPTION"

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    const-string v0, "CryptKeeper"

    const-string v2, "Recieved ACTION_START_ENCRYPTION"

    invoke-static {v0, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v0, "device_policy"

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/DevicePolicyManager;

    .line 326
    .local v7, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v7, :cond_0

    .line 328
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/app/admin/DevicePolicyManager;->isEncryptedWithForceEncrypt(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    invoke-virtual {v7}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v9

    .line 331
    .local v9, "status":I
    if-eq v9, v1, :cond_0

    .line 333
    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 343
    .end local v7    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v9    # "status":I
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    const/4 v0, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, " User Interaction: Encrypting storage card"

    move v2, v1

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 384
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 386
    const/16 v2, 0x37

    if-eq p1, v2, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 393
    const-string v2, "type"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 394
    .local v1, "type":I
    const-string v2, "password"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "password":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/CryptKeeperSettings;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/CryptKeeperSettings;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    iget v2, v2, Lcom/android/settings/EFSProperties$ODEProperties;->enabledUCSInODE:I

    if-ne v2, v6, :cond_3

    .line 398
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUcsOdeEnabled in activity result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/CryptKeeperSettings;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    iget v4, v4, Lcom/android/settings/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v2, p0, Lcom/android/settings/CryptKeeperSettings;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    iget v2, v2, Lcom/android/settings/EFSProperties$ODEProperties;->enabledWrap:I

    if-ne v2, v6, :cond_2

    .line 400
    const-string v2, "ucs_savein_false"

    invoke-direct {p0, v5, v2}, Lcom/android/settings/CryptKeeperSettings;->showFinalConfirmation(ILjava/lang/String;)V

    goto :goto_0

    .line 402
    :cond_2
    const-string v2, "ucs_savein_true"

    invoke-direct {p0, v5, v2}, Lcom/android/settings/CryptKeeperSettings;->showFinalConfirmation(ILjava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 410
    invoke-direct {p0, v1, v0}, Lcom/android/settings/CryptKeeperSettings;->showFinalConfirmation(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "parent"    # Landroid/app/Activity;

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onAttach(Landroid/app/Activity;)V

    .line 201
    iput-object p1, p0, Lcom/android/settings/CryptKeeperSettings;->mParent:Landroid/app/Activity;

    .line 202
    iput-object p0, p0, Lcom/android/settings/CryptKeeperSettings;->mThis:Landroid/app/Fragment;

    .line 203
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x50

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 210
    const-string v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/CryptKeeperSettings;->mSalesCode:Ljava/lang/String;

    .line 211
    const-string v0, ""

    sget-object v1, Lcom/android/settings/CryptKeeperSettings;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    sget-object v1, Lcom/android/settings/CryptKeeperSettings;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/CryptKeeperSettings;->mSalesCode:Ljava/lang/String;

    .line 214
    :cond_1
    const-string v0, "VZW"

    sget-object v1, Lcom/android/settings/CryptKeeperSettings;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 215
    const v0, 0x7f04007e

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    .line 220
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 221
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0d014f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    .line 224
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0d014c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mPowerWarning:Landroid/widget/TextView;

    .line 230
    const-string v0, "VZW"

    sget-object v1, Lcom/android/settings/CryptKeeperSettings;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/CryptKeeperSettings;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0d0157

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mVzwMessage1:Landroid/widget/TextView;

    .line 232
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0d0158

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mVzwMessage2:Landroid/widget/TextView;

    .line 234
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mVzwMessage1:Landroid/widget/TextView;

    const v1, 0x7f0e0234

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeperSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mVzwMessage2:Landroid/widget/TextView;

    const v1, 0x7f0e0236

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeperSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mPowerWarning:Landroid/widget/TextView;

    const v1, 0x7f0e0239

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeperSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0d014d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mBatteryWarning:Landroid/widget/TextView;

    .line 241
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mBatteryWarning:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 242
    const-string v0, "VZW"

    sget-object v1, Lcom/android/settings/CryptKeeperSettings;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 243
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mBatteryWarning:Landroid/widget/TextView;

    const v1, 0x7f0e0237

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/CryptKeeperSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 253
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0d014e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mPasswordWarning:Landroid/widget/TextView;

    .line 254
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mPasswordWarning:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 255
    const-string v0, "VZW"

    sget-object v1, Lcom/android/settings/CryptKeeperSettings;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 256
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mPasswordWarning:Landroid/widget/TextView;

    const v1, 0x7f0e023a

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/CryptKeeperSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 267
    :cond_4
    :goto_2
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 268
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 269
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    if-nez v0, :cond_5

    .line 270
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 273
    :cond_5
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v1, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v0, v1, :cond_9

    .line 274
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0d0134

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mSDcardOngoingWarning:Landroid/view/View;

    .line 279
    :goto_3
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    return-object v0

    .line 217
    :cond_6
    const v0, 0x7f04007c

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    goto/16 :goto_0

    .line 247
    :cond_7
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mBatteryWarning:Landroid/widget/TextView;

    const v1, 0x7f0e023d

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/CryptKeeperSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_1

    .line 260
    :cond_8
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mPasswordWarning:Landroid/widget/TextView;

    const v1, 0x7f0e02a7

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/CryptKeeperSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_2

    .line 276
    :cond_9
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f0d0135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mSDcardOngoingWarning:Landroid/view/View;

    goto :goto_3
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 306
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onPause()V

    .line 309
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mParent:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 311
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 289
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onResume()V

    .line 293
    invoke-static {}, Lcom/android/settings/EFSProperties;->loadODEConfig()Lcom/android/settings/EFSProperties$ODEProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    .line 299
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mParent:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 300
    iget-object v0, p0, Lcom/android/settings/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    const v1, 0x7f0e023b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 302
    return-void
.end method
