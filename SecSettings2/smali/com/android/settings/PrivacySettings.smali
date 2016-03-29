.class public Lcom/android/settings/PrivacySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PrivacySettings$PrivacySearchIndexProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static hasCorrectMyAccount:Z

.field private static mIsSamsungBackupEnabled:Z

.field private static mIsSamsungStorageEnabled:Z


# instance fields
.field private final PWD_MGR_CLSNAME:Ljava/lang/String;

.field private accountManager:Landroid/accounts/AccountManager;

.field private categorySamsungServices:Landroid/preference/PreferenceGroup;

.field private mAutoRestore:Landroid/preference/SwitchPreference;

.field private mBackup:Landroid/preference/PreferenceScreen;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfigure:Landroid/preference/PreferenceScreen;

.field private mDiagnostics:Landroid/preference/PreferenceScreen;

.field private mEnabled:Z

.field private mIntent:Landroid/content/Intent;

.field private mIsConnected:Z

.field private mResetSettings:Landroid/preference/PreferenceScreen;

.field private mSamsungAutoClean:Landroid/preference/Preference;

.field private mSamsungBackup:Landroid/preference/Preference;

.field private mSamsungBackupInActive:Landroid/preference/Preference;

.field private mSamsungRestore:Landroid/preference/Preference;

.field private mSamsungStorage:Landroid/preference/Preference;

.field private mSmartSwitch:Landroid/preference/Preference;

.field private preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private sAutoRestart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 100
    sput-boolean v0, Lcom/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    .line 108
    sput-boolean v0, Lcom/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    .line 109
    sput-boolean v0, Lcom/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    .line 675
    new-instance v0, Lcom/android/settings/PrivacySettings$PrivacySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/settings/PrivacySettings$PrivacySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 122
    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    .line 123
    iput-boolean v0, p0, Lcom/android/settings/PrivacySettings;->mIsConnected:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/settings/PrivacySettings;->sAutoRestart:Z

    .line 135
    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    .line 140
    const-string v0, "jp.softbank.mb.passwordmanager.Pwdmanager"

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->PWD_MGR_CLSNAME:Ljava/lang/String;

    .line 275
    new-instance v0, Lcom/android/settings/PrivacySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/PrivacySettings$1;-><init>(Lcom/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 368
    new-instance v0, Lcom/android/settings/PrivacySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/PrivacySettings$2;-><init>(Lcom/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 678
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PrivacySettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PrivacySettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mDiagnostics:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/PrivacySettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PrivacySettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/PrivacySettings;)Landroid/app/backup/IBackupManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PrivacySettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 78
    invoke-static {p0, p1}, Lcom/android/settings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/PrivacySettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PrivacySettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mSmartSwitch:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/PrivacySettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PrivacySettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mSamsungAutoClean:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/PrivacySettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PrivacySettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/PrivacySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/PrivacySettings;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->onBackUpClicked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/PrivacySettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PrivacySettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/PrivacySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/PrivacySettings;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->onRestoreClicked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/PrivacySettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/PrivacySettings;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/PrivacySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/PrivacySettings;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->onStorageClicked()V

    return-void
.end method

.method private addSamsungAccount()V
    .locals 7

    .prologue
    .line 634
    iget-object v5, p0, Lcom/android/settings/PrivacySettings;->accountManager:Landroid/accounts/AccountManager;

    const-string v6, "com.osp.app.signin"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 636
    .local v4, "samsungAccount":[Landroid/accounts/Account;
    if-eqz v4, :cond_0

    .line 637
    array-length v5, v4

    if-nez v5, :cond_0

    .line 638
    const-string v0, "tj9u972o46"

    .line 639
    .local v0, "clientId":Ljava/lang/String;
    const-string v1, "D234AE3C42F092D4334433173AE9E264"

    .line 640
    .local v1, "clientSecret":Ljava/lang/String;
    const-string v3, "com.samsung.android.scloud"

    .line 641
    .local v3, "packageName":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 642
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "client_id"

    const-string v6, "tj9u972o46"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    const-string v5, "client_secret"

    const-string v6, "D234AE3C42F092D4334433173AE9E264"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    const-string v5, "mypackage"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    const-string v5, "OSP_VER"

    const-string v6, "OSP_02"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    const-string v5, "MODE"

    const-string v6, "ADD_ACCOUNT"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    const/16 v5, 0x3e9

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/PrivacySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 650
    .end local v0    # "clientId":Ljava/lang/String;
    .end local v1    # "clientSecret":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static canResolveActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 422
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 423
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 425
    const/4 v1, 0x1

    .line 428
    :goto_0
    return v1

    .line 427
    :cond_0
    const-string v1, "PrivacySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t resolve action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static checkIsDeviceOwner(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 664
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 665
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 666
    const-string v1, "PrivacySettings"

    const-string v2, "Device owner case. Backup and Restore needs to be disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v1, 0x1

    .line 669
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static checkSamsungBackupAndStorageAvailble(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 512
    const/4 v1, 0x0

    .line 515
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.scloud"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 516
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_0

    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 517
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.scloud.quota"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 524
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_1

    .line 525
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 530
    :cond_1
    :goto_1
    return-void

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sput-boolean v5, Lcom/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    goto :goto_0

    .line 527
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 528
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sput-boolean v5, Lcom/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    goto :goto_1
.end method

.method private static getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 716
    .local p1, "nonVisibleKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v14, "backup"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    .line 718
    .local v1, "backupManager":Landroid/app/backup/IBackupManager;
    const/4 v6, 0x0

    .line 721
    .local v6, "isServiceActive":Z
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    invoke-interface {v1, v14}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 728
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string v15, "com.google.settings"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v14

    if-nez v14, :cond_12

    const/4 v13, 0x1

    .line 731
    .local v13, "vendorSpecific":Z
    :goto_1
    if-eqz v13, :cond_0

    .line 732
    const-string v14, "backup_category"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 735
    :cond_0
    if-nez v13, :cond_1

    if-eqz v6, :cond_2

    .line 736
    :cond_1
    const-string v14, "backup_inactive"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 738
    :cond_2
    if-nez v13, :cond_3

    if-nez v6, :cond_4

    .line 739
    :cond_3
    const-string v14, "backup_data"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 740
    const-string v14, "auto_restore"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 741
    const-string v14, "configure_account"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 743
    :cond_4
    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v14

    const-string v15, "no_factory_reset"

    invoke-virtual {v14, v15}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 745
    const-string v14, "factory_reset"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 747
    :cond_5
    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v14

    const-string v15, "no_network_reset"

    invoke-virtual {v14, v15}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 749
    const-string v14, "network_reset"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 751
    :cond_6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    if-eqz v14, :cond_7

    .line 752
    const-string v14, "settings_reset"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 754
    :cond_7
    const-string v14, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 756
    :cond_8
    const-string v14, "pref_backUp"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 757
    const-string v14, "pref_restore"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 760
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 761
    .local v10, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    .line 763
    .local v4, "hasCIQ":Z
    :try_start_1
    const-string v14, "com.carrieriq.tmobile.IQToggle"

    const/16 v15, 0x80

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 769
    :goto_2
    const/4 v5, 0x0

    .line 771
    .local v5, "hasMyAccountEnabled":Z
    :try_start_2
    const-string v14, "com.tmobile.pr.mytmobile"

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 772
    .local v9, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v11, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 773
    .local v11, "rawVersion":Ljava/lang/String;
    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 774
    .local v12, "stringVerson":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 776
    .local v8, "numVersion":F
    const-string v14, "PrivacySettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isSkipMyAccount: rawVersion = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", stringVerson = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", numVersion = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const v14, 0x40666666    # 3.6f

    cmpl-float v14, v8, v14

    if-ltz v14, :cond_13

    const/4 v14, 0x1

    :goto_3
    sput-boolean v14, Lcom/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    .line 781
    iget-object v14, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v14, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 782
    const-string v14, "PrivacySettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "hasMyAccountEnabled: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    .line 791
    .end local v8    # "numVersion":F
    .end local v9    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v11    # "rawVersion":Ljava/lang/String;
    .end local v12    # "stringVerson":Ljava/lang/String;
    :goto_4
    if-nez v4, :cond_a

    sget-boolean v14, Lcom/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    if-eqz v14, :cond_b

    :cond_a
    if-nez v5, :cond_c

    .line 792
    :cond_b
    const-string v14, "collect_diagnostics"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 796
    :cond_c
    invoke-static/range {p0 .. p0}, Lcom/android/settings/PrivacySettings;->checkSamsungBackupAndStorageAvailble(Landroid/content/Context;)V

    .line 797
    sget-boolean v14, Lcom/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    if-eqz v14, :cond_d

    invoke-static/range {p0 .. p0}, Lcom/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_e

    .line 798
    :cond_d
    const-string v14, "samsung_backup_inactive"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 801
    :cond_e
    invoke-static/range {p0 .. p0}, Lcom/android/settings/PrivacySettings;->shouldRemoveAutoRestart(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 802
    const-string v14, "pref_auto_clean"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 805
    :cond_f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Common_ConfigSmartSwitchFunction"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 806
    .local v3, "functions":Ljava/lang/String;
    const-string v14, "setupwizard"

    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_10

    const-string v14, "none"

    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 807
    :cond_10
    const-string v14, "category_smart_switch"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 810
    :cond_11
    return-void

    .line 722
    .end local v3    # "functions":Ljava/lang/String;
    .end local v4    # "hasCIQ":Z
    .end local v5    # "hasMyAccountEnabled":Z
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "vendorSpecific":Z
    :catch_0
    move-exception v2

    .line 723
    .local v2, "e":Landroid/os/RemoteException;
    const-string v14, "PrivacySettings"

    const-string v15, "Failed querying backup manager service activity status. Assuming it is inactive."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 728
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_12
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 764
    .restart local v4    # "hasCIQ":Z
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "vendorSpecific":Z
    :catch_1
    move-exception v2

    .line 765
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    .line 766
    const-string v14, "PrivacySettings"

    const-string v15, "Package not found : IQToggle"

    invoke-static {v14, v15}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 779
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "hasMyAccountEnabled":Z
    .restart local v8    # "numVersion":F
    .restart local v9    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v11    # "rawVersion":Ljava/lang/String;
    .restart local v12    # "stringVerson":Ljava/lang/String;
    :cond_13
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 783
    .end local v8    # "numVersion":F
    .end local v9    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v11    # "rawVersion":Ljava/lang/String;
    .end local v12    # "stringVerson":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 784
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v14, 0x0

    sput-boolean v14, Lcom/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    .line 785
    const-string v14, "PrivacySettings"

    const-string v15, "NameNotFoundException : MyAccount"

    invoke-static {v14, v15}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 786
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_3
    move-exception v7

    .line 787
    .local v7, "nfe":Ljava/lang/NumberFormatException;
    const/4 v14, 0x0

    sput-boolean v14, Lcom/android/settings/PrivacySettings;->hasCorrectMyAccount:Z

    .line 788
    const-string v14, "PrivacySettings"

    const-string v15, "NumberFormatException : MyAccount version"

    invoke-static {v14, v15}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 585
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 588
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_3

    .line 589
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 591
    .local v3, "wifiNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 593
    .local v2, "mobileNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 595
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 606
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "mobileNetwork":Landroid/net/NetworkInfo;
    .end local v3    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v4

    .line 598
    .restart local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .restart local v2    # "mobileNetwork":Landroid/net/NetworkInfo;
    .restart local v3    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-nez v6, :cond_0

    .line 601
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-nez v6, :cond_0

    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "mobileNetwork":Landroid/net/NetworkInfo;
    .end local v3    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_3
    move v4, v5

    .line 606
    goto :goto_0
.end method

.method private onBackUpClicked()V
    .locals 5

    .prologue
    .line 533
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    .line 534
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.scloud"

    const-string v4, "com.samsung.android.scloud.backup.SamsungBackup"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 535
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x34010000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 537
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->samsungAccountExists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V

    .line 547
    :goto_0
    return-void

    .line 541
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->addSamsungAccount()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "PrivacySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity Not Found Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onRestoreClicked()V
    .locals 5

    .prologue
    .line 549
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    .line 550
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.scloud"

    const-string v4, "com.samsung.android.scloud.backup.ManualRestoreActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 551
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    const-string v2, "com.samsung.android.scloud.backup.START_RESTORE_ACTIVITY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x34010000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 554
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->samsungAccountExists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V

    .line 564
    :goto_0
    return-void

    .line 558
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->addSamsungAccount()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "PrivacySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity Not Found Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onStorageClicked()V
    .locals 5

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/PrivacySettings;->isConnected(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/PrivacySettings;->mIsConnected:Z

    .line 568
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    .line 569
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.scloud.quota"

    const-string v4, "com.samsung.android.scloud.quota.StorageList"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 572
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->samsungAccountExists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V

    .line 582
    :goto_0
    return-void

    .line 576
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->addSamsungAccount()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "PrivacySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity Not Found Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private samsungAccountExists()Z
    .locals 3

    .prologue
    .line 623
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 625
    .local v0, "samsungAccount":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 626
    array-length v1, v0

    if-nez v1, :cond_0

    .line 627
    const/4 v1, 0x0

    .line 630
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 499
    if-eqz p1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 504
    :goto_0
    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0e0ba0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private static shouldRemoveAutoRestart(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 432
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_ELECTRIC_RATED_VALUE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "rate":Ljava/lang/String;
    const-string v1, "PrivacySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check the feature for In-Cell model : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.android.sm.ACTION_AUTO_RESET_SETTING"

    invoke-static {p0, v1}, Lcom/android/settings/PrivacySettings;->canResolveActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p3, "isShow"    # Z

    .prologue
    .line 653
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 654
    if-eqz p3, :cond_1

    .line 655
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 445
    .local v5, "res":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 446
    .local v0, "backupEnabled":Z
    const/4 v1, 0x0

    .line 447
    .local v1, "configIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 448
    .local v2, "configSummary":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/PrivacySettings;->checkSamsungBackupAndStorageAvailble(Landroid/content/Context;)V

    .line 449
    sget-boolean v7, Lcom/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    if-nez v7, :cond_2

    .line 450
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v7, v10, v9}, Lcom/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 451
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v7, v10, v9}, Lcom/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 452
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mSamsungBackupInActive:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v7, v10, v9}, Lcom/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 462
    :goto_0
    sget-boolean v7, Lcom/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    if-nez v7, :cond_4

    .line 463
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v7, v10, v9}, Lcom/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 469
    :cond_0
    :goto_1
    sget-boolean v7, Lcom/android/settings/PrivacySettings;->mIsSamsungBackupEnabled:Z

    if-nez v7, :cond_1

    sget-boolean v7, Lcom/android/settings/PrivacySettings;->mIsSamsungStorageEnabled:Z

    if-nez v7, :cond_1

    .line 470
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-direct {p0, v7, v10, v9}, Lcom/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 473
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    .line 474
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v6

    .line 475
    .local v6, "transport":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 476
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 478
    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_5

    const v7, 0x7f0e0e92

    :goto_2
    invoke-virtual {v10, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    .end local v6    # "transport":Ljava/lang/String;
    :goto_3
    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    const-string v7, "backup_auto_restore"

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_6

    move v7, v8

    :goto_4
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 488
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 490
    const-string v7, "backup"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "configIntent : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    move v3, v8

    .line 492
    .local v3, "configureEnabled":Z
    :goto_5
    const-string v7, "backup"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "configureEnabled : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 494
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 495
    invoke-direct {p0, v2}, Lcom/android/settings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    .line 496
    return-void

    .line 455
    .end local v3    # "configureEnabled":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 456
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v7, v10, v9}, Lcom/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 457
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v7, v10, v9}, Lcom/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_0

    .line 459
    :cond_3
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mSamsungBackupInActive:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v7, v10, v9}, Lcom/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_0

    .line 465
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/PrivacySettings;->checkIsDeviceOwner(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 466
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v7, v10, v9}, Lcom/android/settings/PrivacySettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto/16 :goto_1

    .line 478
    .restart local v6    # "transport":Ljava/lang/String;
    :cond_5
    const v7, 0x7f0e0e93

    goto/16 :goto_2

    .line 481
    .end local v6    # "transport":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 483
    .local v4, "e":Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_3

    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_6
    move v7, v9

    .line 486
    goto/16 :goto_4

    :cond_7
    move v3, v9

    .line 491
    goto :goto_5
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 508
    const v0, 0x7f0e0d7a

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 145
    const/16 v0, 0x51

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 390
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 391
    if-ne p1, v0, :cond_2

    .line 392
    if-ne p2, v0, :cond_1

    .line 394
    const-string v0, "PrivacySettings"

    const-string v1, "Succeed to set password on Password manager"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/MasterClear;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0e072c

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    const-string v0, "PrivacySettings"

    const-string v1, "Failed to set password on Password manager"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 403
    :cond_2
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 404
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 405
    const-string v0, "PrivacySettings"

    const-string v1, "Samsung Account added"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 408
    :cond_3
    if-nez p2, :cond_4

    .line 409
    const-string v0, "PrivacySettings"

    const-string v1, "Samsung Account Login : cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 411
    :cond_4
    const-string v0, "PrivacySettings"

    const-string v1, "Samsung Account Login : other reasons"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x1

    .line 150
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 152
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserHandle;->isOwner()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/settings/PrivacySettings;->mEnabled:Z

    .line 153
    iget-boolean v11, p0, Lcom/android/settings/PrivacySettings;->mEnabled:Z

    if-nez v11, :cond_0

    .line 227
    :goto_0
    return-void

    .line 157
    :cond_0
    const v11, 0x7f080093

    invoke-virtual {p0, v11}, Lcom/android/settings/PrivacySettings;->addPreferencesFromResource(I)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 160
    .local v7, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 161
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    .line 163
    const v11, 0x7f0e1535

    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setTitle(I)V

    .line 166
    :cond_2
    const-string v11, "backup"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 169
    const-string v11, "backup_data"

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    iput-object v11, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/PreferenceScreen;

    .line 170
    iget-object v11, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 172
    const-string v11, "auto_restore"

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    .line 173
    iget-object v11, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    iget-object v12, p0, Lcom/android/settings/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    const-string v11, "configure_account"

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    iput-object v11, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    .line 176
    iget-object v11, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v11, v13}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 178
    const-string v11, "category_restart"

    invoke-virtual {p0, v11}, Lcom/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 179
    .local v6, "resetCategory":Landroid/preference/PreferenceCategory;
    const-string v11, "pref_auto_clean"

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/PrivacySettings;->mSamsungAutoClean:Landroid/preference/Preference;

    .line 180
    iget-object v11, p0, Lcom/android/settings/PrivacySettings;->mSamsungAutoClean:Landroid/preference/Preference;

    iget-object v12, p0, Lcom/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 181
    iget-object v11, p0, Lcom/android/settings/PrivacySettings;->mSamsungAutoClean:Landroid/preference/Preference;

    invoke-virtual {v11, v13}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 183
    const-string v11, "pref_smartswitch"

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/PrivacySettings;->mSmartSwitch:Landroid/preference/Preference;

    .line 184
    iget-object v11, p0, Lcom/android/settings/PrivacySettings;->mSmartSwitch:Landroid/preference/Preference;

    iget-object v12, p0, Lcom/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/PrivacySettings;->shouldRemoveAutoRestart(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 187
    const-string v11, "PrivacySettings"

    const-string v12, "Auto reset not support model"

    invoke-static {v11, v12}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v7, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    :cond_3
    const-string v11, "category_samsungservices"

    invoke-virtual {p0, v11}, Lcom/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceGroup;

    iput-object v11, p0, Lcom/android/settings/PrivacySettings;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    .line 192
    const-string v11, "pref_backUp"

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;

    .line 193
    iget-object v11, p0, Lcom/android/settings/PrivacySettings;->mSamsungBackup:Landroid/preference/Preference;

    iget-object v12, p0, Lcom/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 194
    const-string v11, "pref_restore"

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;

    .line 195
    iget-object v11, p0, Lcom/android/settings/PrivacySettings;->mSamsungRestore:Landroid/preference/Preference;

    iget-object v12, p0, Lcom/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 196
    const-string v11, "pref_storage"

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;

    .line 197
    iget-object v11, p0, Lcom/android/settings/PrivacySettings;->mSamsungStorage:Landroid/preference/Preference;

    iget-object v12, p0, Lcom/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 198
    const-string v11, "samsung_backup_inactive"

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/PrivacySettings;->mSamsungBackupInActive:Landroid/preference/Preference;

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/PrivacySettings;->accountManager:Landroid/accounts/AccountManager;

    .line 201
    const-string v11, "settings_reset"

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    iput-object v11, p0, Lcom/android/settings/PrivacySettings;->mResetSettings:Landroid/preference/PreferenceScreen;

    .line 203
    const-string v11, "collect_diagnostics"

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    iput-object v11, p0, Lcom/android/settings/PrivacySettings;->mDiagnostics:Landroid/preference/PreferenceScreen;

    .line 204
    iget-object v11, p0, Lcom/android/settings/PrivacySettings;->mDiagnostics:Landroid/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/android/settings/PrivacySettings;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 206
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 207
    .local v3, "keysToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11, v3}, Lcom/android/settings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    .line 208
    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v8

    .line 209
    .local v8, "screenPreferenceCount":I
    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_7

    .line 210
    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 211
    .local v5, "preference":Landroid/preference/Preference;
    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 212
    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 213
    :cond_5
    instance-of v11, v5, Landroid/preference/PreferenceCategory;

    if-eqz v11, :cond_4

    move-object v4, v5

    .line 214
    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 215
    .local v4, "pref":Landroid/preference/PreferenceCategory;
    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v10

    .line 216
    .local v10, "subPreferenceCount":I
    add-int/lit8 v2, v10, -0x1

    .local v2, "j":I
    :goto_2
    if-ltz v2, :cond_4

    .line 217
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v9

    .line 218
    .local v9, "subPreference":Landroid/preference/Preference;
    invoke-virtual {v9}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 219
    invoke-virtual {v4, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 216
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 226
    .end local v2    # "j":I
    .end local v4    # "pref":Landroid/preference/PreferenceCategory;
    .end local v5    # "preference":Landroid/preference/Preference;
    .end local v9    # "subPreference":Landroid/preference/Preference;
    .end local v10    # "subPreferenceCount":I
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateToggles()V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 262
    const-string v2, "factory_reset"

    invoke-virtual {p0, v2}, Lcom/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne p2, v2, :cond_0

    .line 263
    invoke-static {}, Lcom/android/settings/Utils;->isJapanSBMModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 265
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "jp.softbank.mb.passwordmanager"

    const-string v3, "jp.softbank.mb.passwordmanager.Pwdmanager"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string v2, "FuncCode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    const-string v2, "ResultString"

    const-string v3, "fghigklmn087"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/PrivacySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 272
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 231
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 234
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "false"

    aput-object v4, v3, v5

    .line 235
    .local v3, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v7, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v8, "isBackupAllowed"

    invoke-static {v4, v7, v8, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 236
    .local v1, "isBackupAllowed":I
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v7, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v8, "isFactoryResetAllowed"

    invoke-static {v4, v7, v8}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 238
    .local v2, "isFactoryResetAllowed":I
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/PreferenceScreen;

    if-eq v1, v9, :cond_0

    if-ne v1, v6, :cond_4

    :cond_0
    move v4, v6

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v7, "factory_reset"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 241
    .local v0, "factoryReset":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_2

    .line 242
    if-eq v2, v9, :cond_1

    if-ne v2, v6, :cond_5

    :cond_1
    :goto_1
    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 247
    :cond_2
    iget-boolean v4, p0, Lcom/android/settings/PrivacySettings;->mEnabled:Z

    if-eqz v4, :cond_3

    .line 248
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateToggles()V

    .line 251
    :cond_3
    iget-object v6, p0, Lcom/android/settings/PrivacySettings;->mSamsungAutoClean:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "sec_silent_auto_reset"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    const v4, 0x7f0e0e92

    :goto_2
    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 253
    return-void

    .end local v0    # "factoryReset":Landroid/preference/PreferenceScreen;
    :cond_4
    move v4, v5

    .line 238
    goto :goto_0

    .restart local v0    # "factoryReset":Landroid/preference/PreferenceScreen;
    :cond_5
    move v6, v5

    .line 242
    goto :goto_1

    .line 251
    :cond_6
    const v4, 0x7f0e0e93

    goto :goto_2
.end method
