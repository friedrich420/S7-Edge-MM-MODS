.class public Lcom/android/settings/vpn2/VpnSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VpnSettings.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final VPN_REQUEST:Landroid/net/NetworkRequest;


# instance fields
.field private isUserAddProfilesAllowed:I

.field private isUserChangeProfilesAllowed:I

.field private isUserSetAlwaysOnAllowed:I

.field private mAppPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/vpn2/AppPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mConfigPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/vpn2/ConfigPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mConnectivityService:Landroid/net/IConnectivityManager;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mManageListener:Landroid/view/View$OnClickListener;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mUnavailable:Z

.field private mUpdater:Landroid/os/Handler;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/android/settings/vpn2/VpnSettings;->VPN_REQUEST:Landroid/net/NetworkRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 104
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityService:Landroid/net/IConnectivityManager;

    .line 109
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/HashMap;

    .line 424
    new-instance v0, Lcom/android/settings/vpn2/VpnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/VpnSettings$1;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mManageListener:Landroid/view/View$OnClickListener;

    .line 446
    new-instance v0, Lcom/android/settings/vpn2/VpnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/VpnSettings$2;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 534
    new-instance v0, Lcom/android/settings/vpn2/VpnSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/VpnSettings$3;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/vpn2/VpnSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/vpn2/VpnSettings;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/vpn2/VpnSettings;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/vpn2/VpnSettings;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/vpn2/VpnSettings;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/vpn2/VpnSettings;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    return-object p1
.end method

.method private getVpnApps()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0x2f

    .line 468
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 471
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 472
    .local v3, "currentProfileIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    iget-object v11, p0, Lcom/android/settings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v11}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    .line 473
    .local v8, "profile":Landroid/os/UserHandle;
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 477
    .end local v8    # "profile":Landroid/os/UserHandle;
    :cond_0
    const-string v11, "appops"

    invoke-virtual {p0, v11}, Lcom/android/settings/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 478
    .local v1, "aom":Landroid/app/AppOpsManager;
    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v13, v11, v12

    invoke-virtual {v1, v11}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v2

    .line 479
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v2, :cond_4

    .line 480
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$PackageOps;

    .line 481
    .local v7, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 482
    .local v10, "userId":I
    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, "allowed":Z
    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    .line 489
    .local v6, "op":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v11

    if-ne v11, v13, :cond_2

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v11

    if-nez v11, :cond_2

    .line 491
    const/4 v0, 0x1

    goto :goto_2

    .line 494
    .end local v6    # "op":Landroid/app/AppOpsManager$OpEntry;
    :cond_3
    if-eqz v0, :cond_1

    .line 495
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 499
    .end local v0    # "allowed":Z
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v10    # "userId":I
    :cond_4
    return-object v9
.end method

.method private static getVpnIdentifier(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static varargs loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;
    .locals 8
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "excludeTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/KeyStore;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 507
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    invoke-virtual {p0}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v6

    if-nez v6, :cond_1

    .line 518
    :cond_0
    return-object v5

    .line 512
    :cond_1
    const-string v6, "VPN_"

    invoke-virtual {p0, v6}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 513
    .local v2, "key":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VPN_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v4

    .line 514
    .local v4, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v4, :cond_2

    iget v6, v4, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {p1, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-nez v6, :cond_2

    .line 515
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private removePreferences()V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 559
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 560
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 464
    const v0, 0x7f0e0d75

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 127
    const/16 v0, 0x64

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 313
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 317
    .local v9, "vpnGroup":Landroid/preference/PreferenceGroup;
    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 318
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 319
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 322
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    const/4 v11, 0x0

    new-array v11, v11, [I

    invoke-static {v10, v11}, Lcom/android/settings/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/net/VpnProfile;

    .line 323
    .local v8, "profile":Lcom/android/internal/net/VpnProfile;
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 324
    .local v4, "mContext":Landroid/content/Context;
    if-nez v4, :cond_1

    .line 326
    const-string v10, "VpnSettings"

    const-string v11, "getActivity is returning NULL"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v10, 0x0

    .line 378
    .end local v4    # "mContext":Landroid/content/Context;
    .end local v8    # "profile":Lcom/android/internal/net/VpnProfile;
    :goto_1
    return v10

    .line 329
    .restart local v4    # "mContext":Landroid/content/Context;
    .restart local v8    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_1
    new-instance v6, Lcom/android/settings/vpn2/ConfigPreference;

    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mManageListener:Landroid/view/View$OnClickListener;

    invoke-direct {v6, v4, v10, v8}, Lcom/android/settings/vpn2/ConfigPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/android/internal/net/VpnProfile;)V

    .line 331
    .local v6, "pref":Lcom/android/settings/vpn2/ConfigPreference;
    invoke-virtual {v6, p0}, Lcom/android/settings/vpn2/ConfigPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 332
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    iget-object v11, v8, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-virtual {v9, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 334
    iget v10, p0, Lcom/android/settings/vpn2/VpnSettings;->isUserChangeProfilesAllowed:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 335
    iget v10, p0, Lcom/android/settings/vpn2/VpnSettings;->isUserChangeProfilesAllowed:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v6, v10}, Lcom/android/settings/vpn2/ConfigPreference;->enableManage(Z)V

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 340
    .end local v4    # "mContext":Landroid/content/Context;
    .end local v6    # "pref":Lcom/android/settings/vpn2/ConfigPreference;
    .end local v8    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnSettings;->getVpnApps()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 341
    .local v5, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/settings/vpn2/VpnSettings;->getVpnIdentifier(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, "key":Ljava/lang/String;
    new-instance v6, Lcom/android/settings/vpn2/AppPreference;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/vpn2/VpnSettings;->mManageListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v13

    invoke-direct {v6, v10, v11, v12, v13}, Lcom/android/settings/vpn2/AppPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Ljava/lang/String;I)V

    .line 344
    .local v6, "pref":Lcom/android/settings/vpn2/AppPreference;
    invoke-virtual {v6, p0}, Lcom/android/settings/vpn2/AppPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 345
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/HashMap;

    invoke-virtual {v10, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-virtual {v9, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 352
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v6    # "pref":Lcom/android/settings/vpn2/AppPreference;
    :cond_4
    const/4 v10, 0x0

    :try_start_0
    iput-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    .line 353
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-interface {v10, v11}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v2

    .line 354
    .local v2, "info":Lcom/android/internal/net/LegacyVpnInfo;
    if-eqz v2, :cond_5

    .line 355
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    iget-object v11, v2, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/vpn2/ConfigPreference;

    .line 356
    .local v7, "preference":Lcom/android/settings/vpn2/ConfigPreference;
    if-eqz v7, :cond_5

    .line 357
    iget v10, v2, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v7, v10}, Lcom/android/settings/vpn2/ConfigPreference;->setState(I)V

    .line 358
    iput-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    .line 363
    .end local v7    # "preference":Lcom/android/settings/vpn2/ConfigPreference;
    :cond_5
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    .line 364
    .local v8, "profile":Landroid/os/UserHandle;
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    invoke-interface {v10, v11}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v0

    .line 365
    .local v0, "cfg":Lcom/android/internal/net/VpnConfig;
    if-eqz v0, :cond_6

    .line 366
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    iget-object v11, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/settings/vpn2/VpnSettings;->getVpnIdentifier(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 367
    .restart local v3    # "key":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/vpn2/AppPreference;

    .line 368
    .local v7, "preference":Lcom/android/settings/vpn2/AppPreference;
    if-eqz v7, :cond_6

    .line 369
    const/4 v10, 0x3

    invoke-virtual {v7, v10}, Lcom/android/settings/vpn2/AppPreference;->setState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 373
    .end local v0    # "cfg":Lcom/android/internal/net/VpnConfig;
    .end local v2    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    .end local v3    # "key":Ljava/lang/String;
    .end local v7    # "preference":Lcom/android/settings/vpn2/AppPreference;
    .end local v8    # "profile":Landroid/os/UserHandle;
    :catch_0
    move-exception v10

    .line 377
    :cond_7
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const/4 v11, 0x0

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 378
    const/4 v10, 0x1

    goto/16 :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v11

    .line 161
    .local v11, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 162
    .local v12, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0c00a2

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f0c00b0

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    const v3, 0x7f0c00ac

    invoke-virtual {v12, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v4, v1, v3

    .line 165
    .local v4, "divider_inset_size":I
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v11}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 168
    .local v0, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 176
    :goto_0
    return-void

    .line 170
    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    :cond_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v11}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v5, v0

    move v7, v4

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 172
    .restart local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const-string v1, "user"

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    .line 135
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_config_vpn"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iput-boolean v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    .line 137
    new-instance v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/VpnSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 138
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/VpnSettings;->setHasOptionsMenu(Z)V

    .line 153
    :goto_0
    return-void

    .line 144
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "edm.intent.action.internal.VPN_NEW_PROFILE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 151
    invoke-virtual {p0, v3}, Lcom/android/settings/vpn2/VpnSettings;->setHasOptionsMenu(Z)V

    .line 152
    const v1, 0x7f0800d5

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/VpnSettings;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 179
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 180
    const v0, 0x7f140010

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 181
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 524
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 527
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnSettings;->removePreferences()V

    .line 532
    return-void

    .line 528
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VpnSettings"

    const-string v2, "MDM Receiver doesn\'t registed before."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 202
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 229
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    .line 205
    :pswitch_0
    iget v5, p0, Lcom/android/settings/vpn2/VpnSettings;->isUserAddProfilesAllowed:I

    if-eqz v5, :cond_0

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 212
    .local v0, "millis":J
    :goto_1
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings;->mConfigPreferences:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 213
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    goto :goto_1

    .line 215
    :cond_1
    new-instance v2, Lcom/android/internal/net/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 216
    .local v2, "profile":Lcom/android/internal/net/VpnProfile;
    invoke-static {p0, v2, v4, v3}, Lcom/android/settings/vpn2/ConfigDialogFragment;->show(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    move v3, v4

    .line 217
    goto :goto_0

    .line 221
    .end local v0    # "millis":J
    .end local v2    # "profile":Lcom/android/internal/net/VpnProfile;
    :pswitch_1
    iget v5, p0, Lcom/android/settings/vpn2/VpnSettings;->isUserSetAlwaysOnAllowed:I

    if-eqz v5, :cond_0

    .line 225
    invoke-static {p0}, Lcom/android/settings/vpn2/LockdownConfigFragment;->show(Lcom/android/settings/vpn2/VpnSettings;)V

    move v3, v4

    .line 226
    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d06db
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 297
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 309
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 304
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 308
    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 13
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v12, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 383
    instance-of v10, p1, Lcom/android/settings/vpn2/ConfigPreference;

    if-eqz v10, :cond_1

    .line 384
    check-cast p1, Lcom/android/settings/vpn2/ConfigPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Lcom/android/settings/vpn2/ConfigPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v5

    .line 385
    .local v5, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v10, :cond_0

    iget-object v10, v5, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v11, v11, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget v10, v10, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    if-ne v10, v12, :cond_0

    .line 388
    :try_start_0
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v10, v10, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v10}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    :goto_0
    return v8

    .line 390
    .restart local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    :catch_0
    move-exception v10

    .line 394
    :cond_0
    invoke-static {p0, v5, v9, v8}, Lcom/android/settings/vpn2/ConfigDialogFragment;->show(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    goto :goto_0

    .line 396
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .restart local p1    # "preference":Landroid/preference/Preference;
    :cond_1
    instance-of v10, p1, Lcom/android/settings/vpn2/AppPreference;

    if-eqz v10, :cond_4

    move-object v4, p1

    .line 397
    check-cast v4, Lcom/android/settings/vpn2/AppPreference;

    .line 398
    .local v4, "pref":Lcom/android/settings/vpn2/AppPreference;
    invoke-virtual {v4}, Lcom/android/settings/vpn2/AppPreference;->getState()I

    move-result v10

    if-ne v10, v12, :cond_3

    move v1, v8

    .line 400
    .local v1, "connected":Z
    :goto_1
    if-nez v1, :cond_2

    .line 402
    :try_start_1
    new-instance v6, Landroid/os/UserHandle;

    invoke-virtual {v4}, Lcom/android/settings/vpn2/AppPreference;->getUid()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-direct {v6, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 403
    .local v6, "user":Landroid/os/UserHandle;
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v6}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v7

    .line 405
    .local v7, "userContext":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 406
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4}, Lcom/android/settings/vpn2/AppPreference;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 407
    .local v0, "appIntent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 408
    invoke-virtual {v7, v0, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 411
    .end local v0    # "appIntent":Landroid/content/Intent;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "user":Landroid/os/UserHandle;
    .end local v7    # "userContext":Landroid/content/Context;
    :catch_1
    move-exception v10

    .line 417
    :cond_2
    invoke-virtual {v4}, Lcom/android/settings/vpn2/AppPreference;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 418
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v4}, Lcom/android/settings/vpn2/AppPreference;->getLabel()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v2, v10, v9, v1}, Lcom/android/settings/vpn2/AppDialogFragment;->show(Lcom/android/settings/vpn2/VpnSettings;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V

    goto :goto_0

    .end local v1    # "connected":Z
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    move v1, v9

    .line 398
    goto :goto_1

    .end local v4    # "pref":Lcom/android/settings/vpn2/AppPreference;
    :cond_4
    move v8, v9

    .line 421
    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v4, 0x7f0d06dc

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 185
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 188
    const-string v0, "persist.radio.imsregrequired"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 193
    :cond_0
    iget v0, p0, Lcom/android/settings/vpn2/VpnSettings;->isUserAddProfilesAllowed:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 194
    const v0, 0x7f0d06db

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/settings/vpn2/VpnSettings;->isUserAddProfilesAllowed:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 195
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/vpn2/VpnSettings;->isUserSetAlwaysOnAllowed:I

    if-ne v3, v1, :cond_3

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 198
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 194
    goto :goto_0

    :cond_3
    move v1, v2

    .line 195
    goto :goto_1
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 234
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 236
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    const-string v5, "no_config_vpn"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    iput-boolean v6, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    .line 245
    :cond_0
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "false"

    aput-object v4, v3, v7

    .line 246
    .local v3, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "content://com.sec.knox.provider2/vpnPolicy"

    const-string v6, "isUserAddProfilesAllowed"

    invoke-static {v4, v5, v6, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/vpn2/VpnSettings;->isUserAddProfilesAllowed:I

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "content://com.sec.knox.provider2/vpnPolicy"

    const-string v6, "isUserChangeProfilesAllowed"

    invoke-static {v4, v5, v6, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/vpn2/VpnSettings;->isUserChangeProfilesAllowed:I

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "content://com.sec.knox.provider2/vpnPolicy"

    const-string v6, "isUserSetAlwaysOnAllowed"

    invoke-static {v4, v5, v6, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/vpn2/VpnSettings;->isUserSetAlwaysOnAllowed:I

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 256
    .local v0, "emptyView":Landroid/widget/TextView;
    if-eqz v0, :cond_3

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 258
    iget-boolean v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    if-eqz v4, :cond_2

    .line 260
    const v4, 0x7f0e08c3

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 292
    :cond_1
    :goto_0
    return-void

    .line 263
    :cond_2
    const v4, 0x7f0e13ce

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f01fa

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 268
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.net.vpn.PICK_LOCKDOWN"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 270
    .local v2, "pickLockdown":Z
    if-eqz v2, :cond_4

    .line 271
    invoke-static {p0}, Lcom/android/settings/vpn2/LockdownConfigFragment;->show(Lcom/android/settings/vpn2/VpnSettings;)V

    .line 275
    :cond_4
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v5, Lcom/android/settings/vpn2/VpnSettings;->VPN_REQUEST:Landroid/net/NetworkRequest;

    iget-object v6, p0, Lcom/android/settings/vpn2/VpnSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v4, v5, v6}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 278
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-nez v4, :cond_5

    .line 279
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    .line 281
    :cond_5
    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string v6, "isVpnAllowed"

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 288
    .local v1, "isVpnAllowed":I
    if-nez v1, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
