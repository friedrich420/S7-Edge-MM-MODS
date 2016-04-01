.class final Lcom/android/server/pm/DefaultPermissionGrantPolicy;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicy.java"


# static fields
.field private static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mpeg"

.field private static final CALENDAR_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAMERA_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTACTS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MICROPHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SENSORS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SMS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STORAGE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DefaultPermGrantPolicy"


# instance fields
.field private mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mImePackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private final mService:Lcom/android/server/pm/PackageManagerService;

.field private mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

.field private mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 67
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, PHONE_PERMISSIONS:Ljava/util/Set;

    .line 69
    sget-object v0, PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.USE_SIP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, PHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, CONTACTS_PERMISSIONS:Ljava/util/Set;

    .line 80
    sget-object v0, CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, LOCATION_PERMISSIONS:Ljava/util/Set;

    .line 87
    sget-object v0, LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, CALENDAR_PERMISSIONS:Ljava/util/Set;

    .line 93
    sget-object v0, CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, SMS_PERMISSIONS:Ljava/util/Set;

    .line 99
    sget-object v0, SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_MMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, SMS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CELL_BROADCASTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, MICROPHONE_PERMISSIONS:Ljava/util/Set;

    .line 109
    sget-object v0, MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, CAMERA_PERMISSIONS:Ljava/util/Set;

    .line 114
    sget-object v0, CAMERA_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, SENSORS_PERMISSIONS:Ljava/util/Set;

    .line 119
    sget-object v0, SENSORS_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.BODY_SENSORS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, STORAGE_PERMISSIONS:Ljava/util/Set;

    .line 124
    sget-object v0, STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, mService:Lcom/android/server/pm/PackageManagerService;

    .line 140
    return-void
.end method

.method private static doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z
    .registers 3
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 1989
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private getDefaultMusicHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1812
    iget-object v3, p0, mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v5, p2}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1814
    .local v1, "handler":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_1a

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_1b

    .line 1822
    :cond_1a
    :goto_1a
    return-object v2

    .line 1817
    :cond_1b
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1818
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, p0, mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1822
    :cond_39
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    goto :goto_1a
.end method

.method private getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;
    .registers 6
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1873
    iget-object v1, p0, mService:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 1874
    .local v0, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_10

    .line 1875
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 1877
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 1792
    iget-object v6, p0, mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    iget-object v7, p0, mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x200

    invoke-virtual {v6, p1, v7, v8, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    .line 1795
    .local v3, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_1b

    move-object v2, v5

    .line 1807
    :cond_1a
    :goto_1a
    return-object v2

    .line 1798
    :cond_1b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1799
    .local v1, "handlerCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    if-ge v4, v1, :cond_35

    .line 1800
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1801
    .local v0, "handler":Landroid/content/pm/ResolveInfo;
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 1803
    .local v2, "handlerPackage":Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_1a

    .line 1799
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .end local v0    # "handler":Landroid/content/pm/ResolveInfo;
    .end local v2    # "handlerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_35
    move-object v2, v5

    .line 1807
    goto :goto_1a
.end method

.method private getDefaultSystemHandlerServicePackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 1827
    iget-object v6, p0, mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x200

    invoke-virtual {v6, p1, v7, v8, p2}, Lcom/android/server/pm/PackageManagerService;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    .line 1830
    .local v3, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_19

    move-object v2, v5

    .line 1842
    :cond_18
    :goto_18
    return-object v2

    .line 1833
    :cond_19
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1834
    .local v1, "handlerCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    if-ge v4, v1, :cond_33

    .line 1835
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1836
    .local v0, "handler":Landroid/content/pm/ResolveInfo;
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 1838
    .local v2, "handlerPackage":Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_18

    .line 1834
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .end local v0    # "handler":Landroid/content/pm/ResolveInfo;
    .end local v2    # "handlerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_33
    move-object v2, v5

    .line 1842
    goto :goto_18
.end method

.method private getHeadlessSyncAdapterPackagesLPr([Ljava/lang/String;I)Ljava/util/List;
    .registers 14
    .param p1, "syncAdapterPackageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1847
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1849
    .local v7, "syncAdapterPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1850
    .local v2, "homeIntent":Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1852
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_14
    if-ge v3, v4, :cond_44

    aget-object v6, v0, v3

    .line 1853
    .local v6, "syncAdapterPackageName":Ljava/lang/String;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1855
    iget-object v8, p0, mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    iget-object v9, p0, mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x200

    invoke-virtual {v8, v2, v9, v10, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 1858
    .local v1, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3a

    .line 1852
    :cond_37
    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1862
    :cond_3a
    invoke-direct {p0, v6}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 1863
    .local v5, "syncAdapterPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_37

    .line 1864
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 1868
    .end local v1    # "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "syncAdapterPackage":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "syncAdapterPackageName":Ljava/lang/String;
    :cond_44
    return-object v7
.end method

.method private getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1881
    iget-object v0, p0, mService:Lcom/android/server/pm/PackageManagerService;

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    return-object v0
.end method

.method private getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1885
    invoke-direct {p0, p1}, getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1886
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1887
    invoke-direct {p0, v0}, isSysComponentOrPersistentPlatformSignedPrivAppLPr(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1889
    .end local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_13
    return-object v0

    .restart local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_14
    move-object v0, v1

    .line 1887
    goto :goto_13

    :cond_16
    move-object v0, v1

    .line 1889
    goto :goto_13
.end method

.method private grantDefaultPermissionsToAttApp(I)V
    .registers 19
    .param p1, "userId"    # I

    .prologue
    .line 1505
    const-string v16, "com.cequint.ecid"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 1506
    .local v6, "ecidPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_64

    invoke-static {v6}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_64

    .line 1507
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 1508
    .local v7, "ecidPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v16, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1509
    const-string v16, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1510
    const-string v16, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1511
    const-string v16, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1512
    const-string v16, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1513
    const-string v16, "android.permission.SEND_SMS"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1514
    const-string v16, "android.permission.READ_SMS"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1515
    const-string v16, "android.permission.RECEIVE_MMS"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1516
    const-string v16, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1517
    const-string v16, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1518
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v6, v7, v1}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1522
    .end local v7    # "ecidPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_64
    const-string v16, "com.samsung.acms"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 1523
    .local v4, "ambsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_a5

    invoke-static {v4}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_a5

    .line 1524
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 1525
    .local v5, "ambsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v16, "android.permission.READ_SMS"

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1526
    const-string v16, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1527
    const-string v16, "android.permission.SEND_SMS"

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1528
    const-string v16, "android.permission.CALL_PHONE"

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1529
    const-string v16, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1530
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v5, v1}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1534
    .end local v5    # "ambsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_a5
    new-instance v13, Landroid/content/Intent;

    const-string v16, "android.intent.action.MAIN"

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1535
    .local v13, "vvmIntent":Landroid/content/Intent;
    const-string v16, "com.samsung.att_vvm.pregrant_category"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1536
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v1}, getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v14

    .line 1537
    .local v14, "vvmPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v14, :cond_f4

    invoke-static {v14}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_f4

    .line 1538
    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    .line 1539
    .local v15, "vvmPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v16, "android.permission.CALL_PHONE"

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1540
    const-string v16, "android.permission.READ_PHONE_STATE"

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1541
    const-string v16, "android.permission.READ_SMS"

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1542
    const-string v16, "android.permission.RECEIVE_SMS"

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1543
    const-string v16, "android.permission.SEND_SMS"

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1544
    const-string v16, "android.permission.READ_CONTACTS"

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1545
    const-string v16, "android.permission.RECORD_AUDIO"

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1546
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v14, v15, v1}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1550
    .end local v15    # "vvmPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f4
    const-string v16, "com.sec.att.usagemanager3"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    .line 1551
    .local v12, "usageManagerPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v12, :cond_120

    invoke-static {v12}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_120

    .line 1552
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 1553
    .local v11, "usageManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v16, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1554
    const-string v16, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1555
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v12, v11, v1}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1559
    .end local v11    # "usageManagerPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_120
    new-instance v8, Landroid/content/Intent;

    const-string v16, "com.synchronoss.dcs.r2g.R2G_POST_OEM"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1560
    .local v8, "r2gIntent":Landroid/content/Intent;
    const-string v16, "android.intent.category.DEFAULT"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1561
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v8, v1}, getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v9

    .line 1563
    .local v9, "r2gPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_1a0

    invoke-static {v9}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_1a0

    .line 1565
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 1566
    .local v10, "r2gPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v16, "android.permission.CAMERA"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1567
    const-string v16, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1568
    const-string v16, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1569
    const-string v16, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1570
    const-string v16, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1571
    const-string v16, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1572
    const-string v16, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1573
    const-string v16, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1574
    const-string v16, "android.permission.READ_SMS"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1575
    const-string v16, "android.permission.SEND_SMS"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1576
    const-string v16, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1577
    const-string v16, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1578
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v9, v10, v1}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1582
    .end local v10    # "r2gPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1a0
    const-string v16, "com.samsung.aab"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 1583
    .local v2, "aabSyncmlPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_1e8

    invoke-static {v2}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v16

    if-eqz v16, :cond_1e8

    .line 1584
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1585
    .local v3, "aabSyncnlPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v16, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1586
    const-string v16, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1587
    const-string v16, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1588
    const-string v16, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1589
    const-string v16, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1590
    const-string v16, "android.permission.RECEIVE_WAP_PUSH"

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1591
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v3, v1}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1593
    .end local v3    # "aabSyncnlPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1e8
    return-void
.end method

.method private grantDefaultPermissionsToCricketApp(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 1137
    const-string v2, "com.smithmicro.netwise.director.cricket"

    invoke-direct {p0, v2}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1138
    .local v0, "netWisePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_25

    invoke-static {v0}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1139
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1140
    .local v1, "netWisePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1141
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1142
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1143
    invoke-direct {p0, v0, v1, p1}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1145
    .end local v1    # "netWisePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_25
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V
    .registers 6
    .param p1, "simCallManagerPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .prologue
    .line 1745
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granting permissions to sim call manager for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    invoke-static {p1}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1747
    sget-object v0, PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1748
    sget-object v0, MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1750
    :cond_28
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V
    .registers 4
    .param p1, "dialerPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .prologue
    .line 1685
    invoke-static {p1}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1686
    sget-object v0, PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1687
    sget-object v0, CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1688
    sget-object v0, SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1689
    sget-object v0, MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1691
    :cond_1a
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V
    .registers 4
    .param p1, "smsPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .prologue
    .line 1696
    invoke-static {p1}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1697
    sget-object v0, PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1698
    sget-object v0, CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1699
    sget-object v0, SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1701
    :cond_15
    return-void
.end method

.method private grantDefaultPermissionsToDocomoApp(I)V
    .registers 23
    .param p1, "userId"    # I

    .prologue
    .line 1149
    const-string v19, "com.nttdocomo.android.idmanager"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v9

    .line 1150
    .local v9, "DcmIDManager":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_30

    invoke-static {v9}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v19

    if-eqz v19, :cond_30

    .line 1151
    sget-object v19, PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    invoke-direct {v0, v9, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1152
    sget-object v19, SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    invoke-direct {v0, v9, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1156
    :cond_30
    const-string v19, "com.nttdocomo.android.accountauthenticator"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 1157
    .local v5, "DcmAccountAuthenticator":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_60

    invoke-static {v5}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v19

    if-eqz v19, :cond_60

    .line 1158
    sget-object v19, PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    invoke-direct {v0, v5, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1159
    sget-object v19, CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    invoke-direct {v0, v5, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1163
    :cond_60
    const-string/jumbo v19, "jp.co.nttdocomo.lcsapp"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v16

    .line 1164
    .local v16, "Dcmlcsapp":Landroid/content/pm/PackageParser$Package;
    if-eqz v16, :cond_95

    invoke-static/range {v16 .. v16}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v19

    if-eqz v19, :cond_95

    .line 1165
    sget-object v19, PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1166
    sget-object v19, LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1170
    :cond_95
    const-string v19, "com.nttdocomo.android.wipe"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    .line 1171
    .local v12, "DcmWipe":Landroid/content/pm/PackageParser$Package;
    if-eqz v12, :cond_b6

    invoke-static {v12}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v19

    if-eqz v19, :cond_b6

    .line 1172
    sget-object v19, PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    invoke-direct {v0, v12, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1176
    :cond_b6
    const-string v19, "com.nttdocomo.android.applicationmanager"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 1177
    .local v6, "DcmApplicationManager":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_d7

    invoke-static {v6}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v19

    if-eqz v19, :cond_d7

    .line 1178
    sget-object v19, PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    invoke-direct {v0, v6, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1182
    :cond_d7
    const-string v19, "com.nttdocomo.android.lac"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v15

    .line 1183
    .local v15, "Dcmlac":Landroid/content/pm/PackageParser$Package;
    if-eqz v15, :cond_f8

    invoke-static {v15}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v19

    if-eqz v19, :cond_f8

    .line 1184
    sget-object v19, PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    invoke-direct {v0, v15, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1188
    :cond_f8
    const-string v19, "com.nttdocomo.android.areamail"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    .line 1189
    .local v7, "DcmAreaMail":Landroid/content/pm/PackageParser$Package;
    if-eqz v7, :cond_128

    invoke-static {v7}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v19

    if-eqz v19, :cond_128

    .line 1190
    sget-object v19, PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    invoke-direct {v0, v7, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1191
    sget-object v19, SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    invoke-direct {v0, v7, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1195
    :cond_128
    const-string/jumbo v19, "jp.co.omronsoft.android.decoemojimanager_docomo"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v8

    .line 1196
    .local v8, "DcmEmojiManager":Landroid/content/pm/PackageParser$Package;
    if-eqz v8, :cond_14a

    invoke-static {v8}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v19

    if-eqz v19, :cond_14a

    .line 1197
    sget-object v19, STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    invoke-direct {v0, v8, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1201
    :cond_14a
    const-string/jumbo v19, "jp.co.nttdocomo.saigaiban"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    .line 1202
    .local v18, "Dcmsaigaiban":Landroid/content/pm/PackageParser$Package;
    if-eqz v18, :cond_16e

    invoke-static/range {v18 .. v18}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v19

    if-eqz v19, :cond_16e

    .line 1203
    sget-object v19, SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1207
    :cond_16e
    const-string v19, "com.nttdocomo.android.remotelock"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v11

    .line 1208
    .local v11, "DcmRemotelock":Landroid/content/pm/PackageParser$Package;
    if-eqz v11, :cond_18f

    invoke-static {v11}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v19

    if-eqz v19, :cond_18f

    .line 1209
    sget-object v19, PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    invoke-direct {v0, v11, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1213
    :cond_18f
    const-string v19, "com.nttdocomo.android.osv"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    .line 1214
    .local v17, "Dcmosv":Landroid/content/pm/PackageParser$Package;
    if-eqz v17, :cond_1b2

    invoke-static/range {v17 .. v17}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v19

    if-eqz v19, :cond_1b2

    .line 1215
    sget-object v19, PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1219
    :cond_1b2
    const-string v19, "com.nttdocomo.android.hcebridge"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v14

    .line 1220
    .local v14, "Dcmhcebridge":Landroid/content/pm/PackageParser$Package;
    if-eqz v14, :cond_1d3

    invoke-static {v14}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v19

    if-eqz v19, :cond_1d3

    .line 1221
    sget-object v19, PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    invoke-direct {v0, v14, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1225
    :cond_1d3
    const-string v19, "com.nttdocomo.android.mediaplayer"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v10

    .line 1226
    .local v10, "DcmMediaplayer":Landroid/content/pm/PackageParser$Package;
    if-eqz v10, :cond_1f4

    invoke-static {v10}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v19

    if-eqz v19, :cond_1f4

    .line 1227
    sget-object v19, PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    invoke-direct {v0, v10, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1231
    :cond_1f4
    const-string v19, "com.nttdocomo.android.dhome"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v13

    .line 1232
    .local v13, "Dcmdhome":Landroid/content/pm/PackageParser$Package;
    if-eqz v13, :cond_215

    invoke-static {v13}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v19

    if-eqz v19, :cond_215

    .line 1233
    sget-object v19, PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    invoke-direct {v0, v13, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1235
    :cond_215
    return-void
.end method

.method private grantDefaultPermissionsToSingtelApp(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 1340
    const-string v2, "com.LogiaGroup.LogiaDeck"

    invoke-direct {p0, v2}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 1341
    .local v1, "sinDtIgnitePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_1b

    invoke-static {v1}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1342
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1343
    .local v0, "dtiPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1345
    invoke-direct {p0, v1, v0, p1}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1347
    .end local v0    # "dtiPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1b
    return-void
.end method

.method private grantDefaultPermissionsToSprintApps(I)V
    .registers 23
    .param p1, "userId"    # I

    .prologue
    .line 1245
    :try_start_0
    const-string v19, "com.sprint.dsa"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    .line 1246
    .local v12, "sprDSS":Landroid/content/pm/PackageParser$Package;
    if-eqz v12, :cond_1d

    invoke-static {v12}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v19

    if-eqz v19, :cond_1d

    .line 1247
    sget-object v19, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p1

    invoke-direct {v0, v12, v1, v2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_c7

    .line 1255
    .end local v12    # "sprDSS":Landroid/content/pm/PackageParser$Package;
    :cond_1d
    :goto_1d
    :try_start_1d
    const-string v19, "com.sprint.ce.updater"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v14

    .line 1256
    .local v14, "sprMI":Landroid/content/pm/PackageParser$Package;
    if-eqz v14, :cond_3a

    invoke-static {v14}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v19

    if-eqz v19, :cond_3a

    .line 1257
    sget-object v19, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p1

    invoke-direct {v0, v14, v1, v2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3a} :catch_d5

    .line 1264
    .end local v14    # "sprMI":Landroid/content/pm/PackageParser$Package;
    :cond_3a
    :goto_3a
    :try_start_3a
    const-string v19, "com.sprint.w.installer"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v15

    .line 1265
    .local v15, "sprMobileID":Landroid/content/pm/PackageParser$Package;
    if-eqz v15, :cond_57

    invoke-static {v15}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v19

    if-eqz v19, :cond_57

    .line 1266
    sget-object v19, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p1

    invoke-direct {v0, v15, v1, v2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_57} :catch_e3

    .line 1274
    .end local v15    # "sprMobileID":Landroid/content/pm/PackageParser$Package;
    :cond_57
    :goto_57
    :try_start_57
    const-string v19, "com.sprint.ms.smf.services"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    .line 1275
    .local v17, "sprSMF":Landroid/content/pm/PackageParser$Package;
    if-eqz v17, :cond_76

    invoke-static/range {v17 .. v17}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v19

    if-eqz v19, :cond_76

    .line 1276
    sget-object v19, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_76} :catch_f1

    .line 1282
    .end local v17    # "sprSMF":Landroid/content/pm/PackageParser$Package;
    :cond_76
    :goto_76
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v6, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, "com.locationlabs.sparkle.yellow.pre"

    aput-object v20, v6, v19

    const/16 v19, 0x1

    const-string v20, "com.locationlabs.v3client"

    aput-object v20, v6, v19

    .line 1286
    .local v6, "SDMPkgList":[Ljava/lang/String;
    move-object v8, v6

    .local v8, "arr$":[Ljava/lang/String;
    array-length v11, v8

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_8b
    if-ge v10, v11, :cond_10d

    aget-object v7, v8, v10

    .line 1288
    .local v7, "SdmPkg":Ljava/lang/String;
    :try_start_8f
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v16

    .line 1289
    .local v16, "sprSDM":Landroid/content/pm/PackageParser$Package;
    if-eqz v16, :cond_c4

    invoke-static/range {v16 .. v16}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v19

    if-eqz v19, :cond_c4

    .line 1290
    sget-object v19, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1291
    sget-object v19, SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1292
    sget-object v19, LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_c4} :catch_ff

    .line 1286
    .end local v16    # "sprSDM":Landroid/content/pm/PackageParser$Package;
    :cond_c4
    :goto_c4
    add-int/lit8 v10, v10, 0x1

    goto :goto_8b

    .line 1249
    .end local v6    # "SDMPkgList":[Ljava/lang/String;
    .end local v7    # "SdmPkg":Ljava/lang/String;
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :catch_c7
    move-exception v9

    .line 1250
    .local v9, "e":Ljava/lang/Exception;
    const-string v19, "DefaultPermGrantPolicy"

    const-string v20, "DSS not found"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d

    .line 1259
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_d5
    move-exception v9

    .line 1260
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v19, "DefaultPermGrantPolicy"

    const-string v20, "MobileInstaller not found"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3a

    .line 1268
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_e3
    move-exception v9

    .line 1269
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v19, "DefaultPermGrantPolicy"

    const-string v20, "MobileID not found"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_57

    .line 1278
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_f1
    move-exception v9

    .line 1279
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v19, "DefaultPermGrantPolicy"

    const-string v20, "SMF not found"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_76

    .line 1294
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "SDMPkgList":[Ljava/lang/String;
    .restart local v7    # "SdmPkg":Ljava/lang/String;
    .restart local v8    # "arr$":[Ljava/lang/String;
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    :catch_ff
    move-exception v9

    .line 1295
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v19, "DefaultPermGrantPolicy"

    const-string/jumbo v20, "sprSDM is not found"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c4

    .line 1301
    .end local v7    # "SdmPkg":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_10d
    :try_start_10d
    const-string v19, "com.coremobility.app.vnotes"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    .line 1302
    .local v18, "sprVVM":Landroid/content/pm/PackageParser$Package;
    if-eqz v18, :cond_139

    invoke-static/range {v18 .. v18}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v19

    if-eqz v19, :cond_139

    .line 1303
    sget-object v19, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1304
    sget-object v19, SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_139} :catch_190

    .line 1311
    .end local v18    # "sprVVM":Landroid/content/pm/PackageParser$Package;
    :cond_139
    :goto_139
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v5, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, "com.itsoninc.android.uid"

    aput-object v20, v5, v19

    const/16 v19, 0x1

    const-string v20, "com.itsoninc.android.itsonclient"

    aput-object v20, v5, v19

    const/16 v19, 0x2

    const-string v20, "com.itsoninc.android.itsonservice"

    aput-object v20, v5, v19

    const/16 v19, 0x3

    const-string v20, "com.itsoninc.android.sprintproxy"

    aput-object v20, v5, v19

    .line 1316
    .local v5, "ItsonPkgList":[Ljava/lang/String;
    move-object v8, v5

    array-length v11, v8

    const/4 v10, 0x0

    :goto_15a
    if-ge v10, v11, :cond_1aa

    aget-object v4, v8, v10

    .line 1318
    .local v4, "ItsonPkg":Ljava/lang/String;
    :try_start_15e
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v13

    .line 1319
    .local v13, "sprItson":Landroid/content/pm/PackageParser$Package;
    if-eqz v13, :cond_18d

    invoke-static {v13}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v19

    if-eqz v19, :cond_18d

    .line 1320
    sget-object v19, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p1

    invoke-direct {v0, v13, v1, v2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1321
    sget-object v19, SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p1

    invoke-direct {v0, v13, v1, v2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1322
    sget-object v19, LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p1

    invoke-direct {v0, v13, v1, v2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_18d} :catch_19d

    .line 1316
    .end local v13    # "sprItson":Landroid/content/pm/PackageParser$Package;
    :cond_18d
    :goto_18d
    add-int/lit8 v10, v10, 0x1

    goto :goto_15a

    .line 1306
    .end local v4    # "ItsonPkg":Ljava/lang/String;
    .end local v5    # "ItsonPkgList":[Ljava/lang/String;
    :catch_190
    move-exception v9

    .line 1307
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v19, "DefaultPermGrantPolicy"

    const-string v20, "VVM is not found"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_139

    .line 1324
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v4    # "ItsonPkg":Ljava/lang/String;
    .restart local v5    # "ItsonPkgList":[Ljava/lang/String;
    :catch_19d
    move-exception v9

    .line 1325
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v19, "DefaultPermGrantPolicy"

    const-string v20, "Itson is not found"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18d

    .line 1328
    .end local v4    # "ItsonPkg":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1aa
    return-void
.end method

.method private grantDefaultPermissionsToTmoApp(I)V
    .registers 13
    .param p1, "userId"    # I

    .prologue
    .line 1623
    const-string v10, "com.whitepages.nameid.tmobile"

    invoke-direct {p0, v10}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v9

    .line 1624
    .local v9, "whitepagesPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_43

    invoke-static {v9}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v10

    if-eqz v10, :cond_43

    .line 1625
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 1626
    .local v8, "whitePagesPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v10, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1627
    const-string v10, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1628
    const-string v10, "android.permission.READ_PHONE_STATE"

    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1629
    const-string v10, "android.permission.CALL_PHONE"

    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1630
    const-string v10, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1631
    const-string v10, "android.permission.READ_CALL_LOG"

    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1632
    const-string v10, "android.permission.READ_SMS"

    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1633
    const-string v10, "android.permission.RECEIVE_MMS"

    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1634
    const-string v10, "android.permission.RECEIVE_SMS"

    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1635
    invoke-direct {p0, v9, v8, p1}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1639
    .end local v8    # "whitePagesPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_43
    const-string v10, "com.cequint.ecid"

    invoke-direct {p0, v10}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 1640
    .local v2, "ecidPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_63

    invoke-static {v2}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v10

    if-eqz v10, :cond_63

    .line 1641
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1642
    .local v3, "ecidPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v10, "android.permission.READ_PHONE_STATE"

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1643
    const-string v10, "android.permission.RECEIVE_SMS"

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1644
    invoke-direct {p0, v2, v3, p1}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1649
    .end local v3    # "ecidPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_63
    const-string v10, "com.tmobile.pr.adapt"

    invoke-direct {p0, v10}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1650
    .local v0, "adaptPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_88

    invoke-static {v0}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v10

    if-eqz v10, :cond_88

    .line 1651
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1652
    .local v1, "adaptPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v10, "android.permission.READ_PHONE_STATE"

    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1653
    const-string v10, "android.permission.CALL_PHONE"

    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1654
    const-string v10, "android.permission.RECEIVE_SMS"

    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1655
    invoke-direct {p0, v0, v1, p1}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1659
    .end local v1    # "adaptPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_88
    const-string v10, "com.tmobile.pr.mytmobile"

    invoke-direct {p0, v10}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 1660
    .local v4, "myAccountPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_bc

    invoke-static {v4}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v10

    if-eqz v10, :cond_bc

    .line 1661
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 1662
    .local v5, "myAccountPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v10, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1663
    const-string v10, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1664
    const-string v10, "android.permission.READ_PHONE_STATE"

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1665
    const-string v10, "android.permission.READ_SMS"

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1666
    const-string v10, "android.permission.RECEIVE_MMS"

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1667
    const-string v10, "android.permission.RECEIVE_SMS"

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1668
    invoke-direct {p0, v4, v5, p1}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1672
    .end local v5    # "myAccountPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_bc
    const-string v10, "com.tmobile.vvm.application"

    invoke-direct {p0, v10}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 1673
    .local v6, "tmoVvmPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_e1

    invoke-static {v6}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v10

    if-eqz v10, :cond_e1

    .line 1674
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 1675
    .local v7, "tmoVvmPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v10, "android.permission.READ_PHONE_STATE"

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1676
    const-string v10, "android.permission.SEND_SMS"

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1677
    const-string v10, "android.permission.RECEIVE_SMS"

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1678
    invoke-direct {p0, v6, v7, p1}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1681
    .end local v7    # "tmoVvmPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_e1
    return-void
.end method

.method private grantDefaultPermissionsToUsccApps(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 1603
    const-string v2, "com.LogiaGroup.LogiaDeck"

    invoke-direct {p0, v2}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 1604
    .local v1, "UscIgnitePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_13

    invoke-static {v1}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1605
    sget-object v2, PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v1, v2, p1}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1609
    :cond_13
    const-string v2, "com.cequint.ecid"

    invoke-direct {p0, v2}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1610
    .local v0, "UscCityIDPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_26

    invoke-static {v0}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1611
    sget-object v2, PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v0, v2, p1}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1613
    :cond_26
    return-void
.end method

.method private grantDefaultPermissionsToVerizonApp(I)V
    .registers 31
    .param p1, "userId"    # I

    .prologue
    .line 1358
    const-string v28, "com.vcast.mediamanager"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    .line 1359
    .local v17, "vzCloudPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v17, :cond_63

    invoke-static/range {v17 .. v17}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v28

    if-eqz v28, :cond_63

    .line 1360
    new-instance v27, Landroid/util/ArraySet;

    invoke-direct/range {v27 .. v27}, Landroid/util/ArraySet;-><init>()V

    .line 1361
    .local v27, "vzcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v28, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface/range {v27 .. v28}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1362
    const-string v28, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface/range {v27 .. v28}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1363
    const-string v28, "android.permission.READ_CONTACTS"

    invoke-interface/range {v27 .. v28}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1364
    const-string v28, "android.permission.WRITE_CONTACTS"

    invoke-interface/range {v27 .. v28}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1365
    const-string v28, "android.permission.READ_PHONE_STATE"

    invoke-interface/range {v27 .. v28}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1366
    const-string v28, "android.permission.GET_ACCOUNTS"

    invoke-interface/range {v27 .. v28}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1367
    const-string v28, "android.permission.CALL_PHONE"

    invoke-interface/range {v27 .. v28}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1368
    const-string v28, "android.permission.WRITE_CALL_LOG"

    invoke-interface/range {v27 .. v28}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1369
    const-string v28, "android.permission.READ_CALL_LOG"

    invoke-interface/range {v27 .. v28}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1370
    const-string v28, "android.permission.RECEIVE_SMS"

    invoke-interface/range {v27 .. v28}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1371
    const-string v28, "android.permission.RECEIVE_MMS"

    invoke-interface/range {v27 .. v28}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1372
    const-string v28, "android.permission.SEND_SMS"

    invoke-interface/range {v27 .. v28}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1373
    const-string v28, "android.permission.READ_SMS"

    invoke-interface/range {v27 .. v28}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1374
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1378
    .end local v27    # "vzcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_63
    const-string v28, "com.motricity.verizon.ssodownloadable"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v24

    .line 1379
    .local v24, "vzSsoPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v24, :cond_91

    invoke-static/range {v24 .. v24}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v28

    if-eqz v28, :cond_91

    .line 1380
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 1381
    .local v13, "ssoPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v28, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v28

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1382
    const-string v28, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v28

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1383
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, p1

    invoke-direct {v0, v1, v13, v2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1387
    .end local v13    # "ssoPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_91
    const-string v28, "com.verizon.vzwavs"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 1388
    .local v4, "avsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_b6

    invoke-static {v4}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v28

    if-eqz v28, :cond_b6

    .line 1389
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 1390
    .local v5, "avsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v28, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v28

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1391
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v5, v1}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1395
    .end local v5    # "avsPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b6
    const-string v28, "com.vzw.hss.myverizon"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v23

    .line 1396
    .local v23, "vzMyVerizonPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v23, :cond_115

    invoke-static/range {v23 .. v23}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v28

    if-eqz v28, :cond_115

    .line 1397
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 1398
    .local v12, "mvPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v28, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v28

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1399
    const-string v28, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v28

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1400
    const-string v28, "android.permission.CALL_PHONE"

    move-object/from16 v0, v28

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1401
    const-string v28, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v28

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1402
    const-string v28, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v28

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1403
    const-string v28, "android.permission.SEND_SMS"

    move-object/from16 v0, v28

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1404
    const-string v28, "android.permission.READ_SMS"

    move-object/from16 v0, v28

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1405
    const-string v28, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v28

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1406
    const-string v28, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v28

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1407
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p1

    invoke-direct {v0, v1, v12, v2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1411
    .end local v12    # "mvPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_115
    const-string v28, "com.LogiaGroup.LogiaDeck"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v19

    .line 1412
    .local v19, "vzDtIgnitePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v19, :cond_143

    invoke-static/range {v19 .. v19}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v28

    if-eqz v28, :cond_143

    .line 1413
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 1414
    .local v8, "dtiPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v28, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v28

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1415
    const-string v28, "android.permission.SEND_SMS"

    move-object/from16 v0, v28

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1416
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p1

    invoke-direct {v0, v1, v8, v2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1420
    .end local v8    # "dtiPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_143
    const-string v28, "com.cequint.ecid"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v16

    .line 1421
    .local v16, "vzCallerNameIdPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v16, :cond_19b

    invoke-static/range {v16 .. v16}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v28

    if-eqz v28, :cond_19b

    .line 1422
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 1423
    .local v6, "canIdPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v28, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v28

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1424
    const-string v28, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v28

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1425
    const-string v28, "android.permission.CALL_PHONE"

    move-object/from16 v0, v28

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1426
    const-string v28, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v28

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1427
    const-string v28, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v28

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1428
    const-string v28, "android.permission.SEND_SMS"

    move-object/from16 v0, v28

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1429
    const-string v28, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v28

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1430
    const-string v28, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v28

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1431
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-direct {v0, v1, v6, v2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1435
    .end local v6    # "canIdPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_19b
    const-string v28, "com.telecomsys.directedsms.android.SCG"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v25

    .line 1436
    .local v25, "vzVlaPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v25, :cond_1de

    invoke-static/range {v25 .. v25}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v28

    if-eqz v28, :cond_1de

    .line 1437
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 1438
    .local v14, "vlaPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v28, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1439
    const-string v28, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1440
    const-string v28, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1441
    const-string v28, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1442
    const-string v28, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1443
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, p1

    invoke-direct {v0, v1, v14, v2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1447
    .end local v14    # "vlaPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1de
    const-string v28, "com.vzw.hss.widgets.infozone"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v22

    .line 1448
    .local v22, "vzMyInfozonePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v22, :cond_205

    invoke-static/range {v22 .. v22}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v28

    if-eqz v28, :cond_205

    .line 1449
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 1450
    .local v11, "mizPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v28, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v28

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1451
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p1

    invoke-direct {v0, v1, v11, v2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1455
    .end local v11    # "mizPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_205
    const-string v28, "com.vzw.hss.widgets.infozone.large"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v21

    .line 1456
    .local v21, "vzMyInfozoneLargePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v21, :cond_22c

    invoke-static/range {v21 .. v21}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v28

    if-eqz v28, :cond_22c

    .line 1457
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 1458
    .local v10, "mizLargePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v28, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v28

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1459
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p1

    invoke-direct {v0, v1, v10, v2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1463
    .end local v10    # "mizLargePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_22c
    const-string v28, "com.vzw.hss.widgets.infozone.ellipsis"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v20

    .line 1464
    .local v20, "vzMyInfozoneEllipsisPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v20, :cond_253

    invoke-static/range {v20 .. v20}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v28

    if-eqz v28, :cond_253

    .line 1465
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 1466
    .local v9, "mizEllipsisPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v28, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v28

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1467
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v9, v2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1471
    .end local v9    # "mizEllipsisPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_253
    const-string v28, "com.sec.android.app.cmas"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    .line 1472
    .local v18, "vzCmasPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v18, :cond_28c

    invoke-static/range {v18 .. v18}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v28

    if-eqz v28, :cond_28c

    .line 1473
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 1474
    .local v7, "cmasPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v28, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1475
    const-string v28, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1476
    const-string v28, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1477
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v28

    move/from16 v3, p1

    invoke-direct {v0, v1, v7, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1481
    .end local v7    # "cmasPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_28c
    const-string v28, "com.samsung.vvm"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v26

    .line 1482
    .local v26, "vzVvmPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v26, :cond_2f2

    invoke-static/range {v26 .. v26}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v28

    if-eqz v28, :cond_2f2

    .line 1483
    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    .line 1484
    .local v15, "vvmPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v28, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1485
    const-string v28, "android.permission.CALL_PHONE"

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1486
    const-string v28, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1487
    const-string v28, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1488
    const-string v28, "android.permission.SEND_SMS"

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1489
    const-string v28, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1490
    const-string v28, "android.permission.READ_SMS"

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1491
    const-string v28, "android.permission.RECEIVE_WAP_PUSH"

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1492
    const-string v28, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1493
    const-string v28, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1494
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, p1

    invoke-direct {v0, v1, v15, v2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1496
    .end local v15    # "vvmPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2f2
    return-void
.end method

.method private grantDefaultSystemHandlerPermissions(I)V
    .registers 172
    .param p1, "userId"    # I

    .prologue
    .line 202
    const-string v167, "DefaultPermGrantPolicy"

    new-instance v168, Ljava/lang/StringBuilder;

    invoke-direct/range {v168 .. v168}, Ljava/lang/StringBuilder;-><init>()V

    const-string v169, "Granting permissions to default platform handlers for user "

    invoke-virtual/range {v168 .. v169}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v168

    move-object/from16 v0, v168

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v168

    invoke-virtual/range {v168 .. v168}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v168

    invoke-static/range {v167 .. v168}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v167, v0

    sget-object v168, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v168

    .line 213
    :try_start_25
    move-object/from16 v0, p0

    iget-object v0, v0, mImePackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v88, v0

    .line 214
    .local v88, "imePackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v93, v0

    .line 215
    .local v93, "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v158, v0

    .line 216
    .local v158, "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v138, v0

    .line 217
    .local v138, "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v67, v0

    .line 218
    .local v67, "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v136, v0

    .line 219
    .local v136, "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    iget-object v0, v0, mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    move-object/from16 v145, v0

    .line 220
    .local v145, "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    monitor-exit v168
    :try_end_50
    .catchall {:try_start_25 .. :try_end_50} :catchall_143

    .line 222
    if-eqz v88, :cond_146

    move-object/from16 v0, v88

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v87

    .line 224
    .local v87, "imePackageNames":[Ljava/lang/String;
    :goto_5a
    if-eqz v158, :cond_14a

    move-object/from16 v0, v158

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v157

    .line 226
    .local v157, "voiceInteractPackageNames":[Ljava/lang/String;
    :goto_64
    if-eqz v93, :cond_14e

    move-object/from16 v0, v93

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v92

    .line 228
    .local v92, "locationPackageNames":[Ljava/lang/String;
    :goto_6e
    if-eqz v138, :cond_152

    move-object/from16 v0, v138

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v137

    .line 230
    .local v137, "smsAppPackageNames":[Ljava/lang/String;
    :goto_78
    if-eqz v67, :cond_156

    move-object/from16 v0, v67

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v66

    .line 232
    .local v66, "dialerAppPackageNames":[Ljava/lang/String;
    :goto_82
    if-eqz v136, :cond_15a

    move-object/from16 v0, v136

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v135

    .line 234
    .local v135, "simCallManagerPackageNames":[Ljava/lang/String;
    :goto_8c
    if-eqz v145, :cond_15e

    const-string v167, "com.android.contacts"

    move-object/from16 v0, v145

    move-object/from16 v1, v167

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v60

    .line 236
    .local v60, "contactsSyncAdapterPackages":[Ljava/lang/String;
    :goto_9a
    if-eqz v145, :cond_162

    const-string v167, "com.android.calendar"

    move-object/from16 v0, v145

    move-object/from16 v1, v167

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v43

    .line 239
    .local v43, "calendarSyncAdapterPackages":[Ljava/lang/String;
    :goto_a8
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v167, v0

    sget-object v168, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v168

    .line 241
    :try_start_b1
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v167, v0

    move-object/from16 v0, v167

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    move-object/from16 v167, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v89

    .line 243
    .local v89, "installerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v89, :cond_de

    invoke-static/range {v89 .. v89}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_de

    .line 245
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v89

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 249
    :cond_de
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v167, v0

    move-object/from16 v0, v167

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getRequiredVerifiers(I)Ljava/util/ArrayList;

    move-result-object v119

    .line 250
    .local v119, "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v119 .. v119}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v84

    .local v84, "i$":Ljava/util/Iterator;
    :cond_f0
    :goto_f0
    invoke-interface/range {v84 .. v84}, Ljava/util/Iterator;->hasNext()Z

    move-result v167

    if-eqz v167, :cond_166

    invoke-interface/range {v84 .. v84}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v151

    check-cast v151, Ljava/lang/String;

    .line 251
    .local v151, "verifier":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v151

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v152

    .line 252
    .local v152, "verifierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v152, :cond_f0

    invoke-static/range {v152 .. v152}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_f0

    .line 254
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v152

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 255
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v152

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 256
    sget-object v167, SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v152

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_f0

    .line 1105
    .end local v84    # "i$":Ljava/util/Iterator;
    .end local v89    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v119    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v151    # "verifier":Ljava/lang/String;
    .end local v152    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    :catchall_140
    move-exception v167

    monitor-exit v168
    :try_end_142
    .catchall {:try_start_b1 .. :try_end_142} :catchall_140

    throw v167

    .line 220
    .end local v43    # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .end local v60    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    .end local v66    # "dialerAppPackageNames":[Ljava/lang/String;
    .end local v67    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v87    # "imePackageNames":[Ljava/lang/String;
    .end local v88    # "imePackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v92    # "locationPackageNames":[Ljava/lang/String;
    .end local v93    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v135    # "simCallManagerPackageNames":[Ljava/lang/String;
    .end local v136    # "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v137    # "smsAppPackageNames":[Ljava/lang/String;
    .end local v138    # "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v145    # "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    .end local v157    # "voiceInteractPackageNames":[Ljava/lang/String;
    .end local v158    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    :catchall_143
    move-exception v167

    :try_start_144
    monitor-exit v168
    :try_end_145
    .catchall {:try_start_144 .. :try_end_145} :catchall_143

    throw v167

    .line 222
    .restart local v67    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v88    # "imePackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v93    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v136    # "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v138    # "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v145    # "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    .restart local v158    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    :cond_146
    const/16 v87, 0x0

    goto/16 :goto_5a

    .line 224
    .restart local v87    # "imePackageNames":[Ljava/lang/String;
    :cond_14a
    const/16 v157, 0x0

    goto/16 :goto_64

    .line 226
    .restart local v157    # "voiceInteractPackageNames":[Ljava/lang/String;
    :cond_14e
    const/16 v92, 0x0

    goto/16 :goto_6e

    .line 228
    .restart local v92    # "locationPackageNames":[Ljava/lang/String;
    :cond_152
    const/16 v137, 0x0

    goto/16 :goto_78

    .line 230
    .restart local v137    # "smsAppPackageNames":[Ljava/lang/String;
    :cond_156
    const/16 v66, 0x0

    goto/16 :goto_82

    .line 232
    .restart local v66    # "dialerAppPackageNames":[Ljava/lang/String;
    :cond_15a
    const/16 v135, 0x0

    goto/16 :goto_8c

    .line 234
    .restart local v135    # "simCallManagerPackageNames":[Ljava/lang/String;
    :cond_15e
    const/16 v60, 0x0

    goto/16 :goto_9a

    .line 236
    .restart local v60    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    :cond_162
    const/16 v43, 0x0

    goto/16 :goto_a8

    .line 261
    .restart local v43    # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .restart local v84    # "i$":Ljava/util/Iterator;
    .restart local v89    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v119    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_166
    :try_start_166
    new-instance v129, Landroid/content/Intent;

    const-string v167, "android.intent.action.MAIN"

    move-object/from16 v0, v129

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .local v129, "setupIntent":Landroid/content/Intent;
    const-string v167, "android.intent.category.SETUP_WIZARD"

    move-object/from16 v0, v129

    move-object/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    move-object/from16 v0, p0

    move-object/from16 v1, v129

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v130

    .line 265
    .local v130, "setupPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v130, :cond_1a6

    invoke-static/range {v130 .. v130}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_1a6

    .line 267
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v130

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 268
    sget-object v167, CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v130

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 272
    :cond_1a6
    const-string v167, "com.skt.skaf.A000Z00040"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v146

    .line 273
    .local v146, "tStorePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v146, :cond_1da

    invoke-static/range {v146 .. v146}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_1da

    .line 274
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v146

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 275
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v146

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 279
    :cond_1da
    const-string v167, "com.skt.skaf.Z0000TSEED"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v148

    .line 280
    .local v148, "tStoreUtilityPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v148, :cond_1fd

    invoke-static/range {v148 .. v148}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_1fd

    .line 281
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v148

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 285
    :cond_1fd
    const-string v167, "com.skp.tstore.startup"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v147

    .line 286
    .local v147, "tStoreStartupPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v147, :cond_220

    invoke-static/range {v147 .. v147}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_220

    .line 287
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v147

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 291
    :cond_220
    const-string v167, "com.skt.skaf.OA00018282"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v108

    .line 292
    .local v108, "oneStoreARMPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v108, :cond_243

    invoke-static/range {v108 .. v108}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_243

    .line 293
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 297
    :cond_243
    const-string v167, "com.kt.olleh.storefront"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v16

    .line 298
    .local v16, "OllehMarketPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v16, :cond_277

    invoke-static/range {v16 .. v16}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_277

    .line 299
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 300
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 304
    :cond_277
    const-string v167, "com.kt.serviceagent"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v15

    .line 305
    .local v15, "OSAPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v15, :cond_2b6

    invoke-static {v15}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_2b6

    .line 306
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, v169

    move/from16 v3, p1

    invoke-direct {v0, v15, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 307
    sget-object v167, SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, v169

    move/from16 v3, p1

    invoke-direct {v0, v15, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 308
    sget-object v167, LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, v169

    move/from16 v3, p1

    invoke-direct {v0, v15, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 312
    :cond_2b6
    const-string v167, "com.kt.om.ktpackageinstaller"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v8

    .line 313
    .local v8, "KTPackageInstallerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v8, :cond_2d7

    invoke-static {v8}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_2d7

    .line 314
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, v169

    move/from16 v3, p1

    invoke-direct {v0, v8, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 318
    :cond_2d7
    const-string v167, "com.lguplus.appstore"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v13

    .line 319
    .local v13, "LGUPlusStorePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v13, :cond_307

    invoke-static {v13}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_307

    .line 320
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, v169

    move/from16 v3, p1

    invoke-direct {v0, v13, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 321
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, v169

    move/from16 v3, p1

    invoke-direct {v0, v13, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 325
    :cond_307
    const-string v167, "com.lguplus.downloader"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v11

    .line 326
    .local v11, "LGUPlusDownloaderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v11, :cond_337

    invoke-static {v11}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_337

    .line 327
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, v169

    move/from16 v3, p1

    invoke-direct {v0, v11, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 328
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, v169

    move/from16 v3, p1

    invoke-direct {v0, v11, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 332
    :cond_337
    const-string v167, "com.lguplus.pushagent"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    .line 333
    .local v12, "LGUPlusPushPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v12, :cond_358

    invoke-static {v12}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_358

    .line 334
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, v169

    move/from16 v3, p1

    invoke-direct {v0, v12, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 338
    :cond_358
    const-string v167, "com.lguplus.common"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v10

    .line 339
    .local v10, "LGUPlusCommonServicePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v10, :cond_388

    invoke-static {v10}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_388

    .line 340
    sget-object v167, LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, v169

    move/from16 v3, p1

    invoke-direct {v0, v10, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 341
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, v169

    move/from16 v3, p1

    invoke-direct {v0, v10, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 345
    :cond_388
    const-string v167, "com.lgt.arm"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v9

    .line 346
    .local v9, "LGUPlusArmServicePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_3a9

    invoke-static {v9}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_3a9

    .line 347
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, v169

    move/from16 v3, p1

    invoke-direct {v0, v9, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 351
    :cond_3a9
    invoke-direct/range {p0 .. p1}, grantDefaultPermissionsToCricketApp(I)V

    .line 354
    invoke-direct/range {p0 .. p1}, grantDefaultPermissionsToDocomoApp(I)V

    .line 357
    new-instance v45, Landroid/content/Intent;

    const-string v167, "android.media.action.IMAGE_CAPTURE"

    move-object/from16 v0, v45

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .local v45, "cameraIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v46

    .line 360
    .local v46, "cameraPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v46, :cond_400

    invoke-static/range {v46 .. v46}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_400

    .line 362
    sget-object v167, CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 363
    sget-object v167, MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 364
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 365
    sget-object v167, LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 369
    :cond_400
    const-string v167, "com.sec.android.app.camera.plb"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v14

    .line 370
    .local v14, "LiveBroadcastPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v14, :cond_451

    invoke-static {v14}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_451

    .line 371
    sget-object v167, CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, p1

    invoke-direct {v0, v14, v1, v2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 372
    sget-object v167, MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, p1

    invoke-direct {v0, v14, v1, v2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 373
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, p1

    invoke-direct {v0, v14, v1, v2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 374
    sget-object v167, SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, v169

    move/from16 v3, p1

    invoke-direct {v0, v14, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 375
    sget-object v167, CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, v169

    move/from16 v3, p1

    invoke-direct {v0, v14, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 379
    :cond_451
    const-string v167, "com.samsung.android.spay"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v124

    .line 380
    .local v124, "samsungPayPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v124, :cond_498

    invoke-static/range {v124 .. v124}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_498

    .line 381
    new-instance v125, Landroid/util/ArraySet;

    invoke-direct/range {v125 .. v125}, Landroid/util/ArraySet;-><init>()V

    .line 382
    .local v125, "samsungPayPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v167, "US"

    const-string/jumbo v169, "ro.csc.countryiso_code"

    invoke-static/range {v169 .. v169}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v169

    move-object/from16 v0, v167

    move-object/from16 v1, v169

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v167

    if-eqz v167, :cond_5ed

    .line 383
    const-string v167, "android.permission.CAMERA"

    move-object/from16 v0, v125

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 384
    const-string v167, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v125

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 394
    :goto_48d
    move-object/from16 v0, p0

    move-object/from16 v1, v124

    move-object/from16 v2, v125

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 398
    .end local v125    # "samsungPayPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_498
    const-string v167, "com.sec.android.app.shealth"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v131

    .line 399
    .local v131, "shealthPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v131, :cond_4e7

    invoke-static/range {v131 .. v131}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_4e7

    .line 400
    new-instance v132, Landroid/util/ArraySet;

    invoke-direct/range {v132 .. v132}, Landroid/util/ArraySet;-><init>()V

    .line 402
    .local v132, "shealthPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v167, "android.permission.BODY_SENSORS"

    move-object/from16 v0, v132

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 403
    const-string v167, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v132

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 404
    const-string v167, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v132

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 405
    const-string v167, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v132

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 406
    const-string v167, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v132

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 408
    move-object/from16 v0, p0

    move-object/from16 v1, v131

    move-object/from16 v2, v132

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 412
    .end local v132    # "shealthPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4e7
    const-string/jumbo v167, "media"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v96

    .line 414
    .local v96, "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v96, :cond_507

    .line 415
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 419
    :cond_507
    const-string/jumbo v167, "downloads"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v70

    .line 421
    .local v70, "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v70, :cond_527

    .line 422
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 426
    :cond_527
    new-instance v71, Landroid/content/Intent;

    const-string v167, "android.intent.action.VIEW_DOWNLOADS"

    move-object/from16 v0, v71

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v71, "downloadsUiIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v71

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v72

    .line 429
    .local v72, "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v72, :cond_555

    invoke-static/range {v72 .. v72}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_555

    .line 431
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 435
    :cond_555
    const-string v167, "com.android.externalstorage.documents"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v142

    .line 437
    .local v142, "storagePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v142, :cond_574

    .line 438
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v142

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 442
    :cond_574
    new-instance v51, Landroid/content/Intent;

    const-string v167, "android.credentials.INSTALL"

    move-object/from16 v0, v51

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    .local v51, "certInstallerIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v52

    .line 445
    .local v52, "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v52, :cond_5a2

    invoke-static/range {v52 .. v52}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_5a2

    .line 447
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 451
    :cond_5a2
    if-nez v66, :cond_62e

    .line 452
    new-instance v68, Landroid/content/Intent;

    const-string v167, "android.intent.action.DIAL"

    move-object/from16 v0, v68

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    .local v68, "dialerIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v69

    .line 455
    .local v69, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v69, :cond_5c4

    .line 456
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    .line 468
    .end local v68    # "dialerIntent":Landroid/content/Intent;
    .end local v69    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v84    # "i$":Ljava/util/Iterator;
    :cond_5c4
    if-eqz v135, :cond_655

    .line 469
    move-object/from16 v35, v135

    .local v35, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v90, v0

    .local v90, "len$":I
    const/16 v84, 0x0

    .local v84, "i$":I
    :goto_5cf
    move/from16 v0, v84

    move/from16 v1, v90

    if-ge v0, v1, :cond_655

    aget-object v134, v35, v84

    .line 470
    .local v134, "simCallManagerPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v133

    .line 472
    .local v133, "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v133, :cond_5ea

    .line 473
    move-object/from16 v0, p0

    move-object/from16 v1, v133

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V

    .line 469
    :cond_5ea
    add-int/lit8 v84, v84, 0x1

    goto :goto_5cf

    .line 386
    .end local v35    # "arr$":[Ljava/lang/String;
    .end local v51    # "certInstallerIntent":Landroid/content/Intent;
    .end local v52    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v70    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v71    # "downloadsUiIntent":Landroid/content/Intent;
    .end local v72    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .end local v90    # "len$":I
    .end local v96    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .end local v131    # "shealthPackage":Landroid/content/pm/PackageParser$Package;
    .end local v133    # "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v134    # "simCallManagerPackageName":Ljava/lang/String;
    .end local v142    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .local v84, "i$":Ljava/util/Iterator;
    .restart local v125    # "samsungPayPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5ed
    const-string v167, "android.permission.CAMERA"

    move-object/from16 v0, v125

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 387
    const-string v167, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v125

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 388
    const-string v167, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v125

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 389
    const-string v167, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v125

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 390
    const-string v167, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v125

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 391
    const-string v167, "android.permission.RECORD_AUDIO"

    move-object/from16 v0, v125

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 392
    const-string v167, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v125

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_48d

    .line 459
    .end local v125    # "samsungPayPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v51    # "certInstallerIntent":Landroid/content/Intent;
    .restart local v52    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v70    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v71    # "downloadsUiIntent":Landroid/content/Intent;
    .restart local v72    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v96    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .restart local v131    # "shealthPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v142    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    :cond_62e
    move-object/from16 v35, v66

    .restart local v35    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v90, v0

    .restart local v90    # "len$":I
    const/16 v84, 0x0

    .local v84, "i$":I
    :goto_637
    move/from16 v0, v84

    move/from16 v1, v90

    if-ge v0, v1, :cond_5c4

    aget-object v65, v35, v84

    .line 460
    .local v65, "dialerAppPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v69

    .line 461
    .restart local v69    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v69, :cond_652

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    .line 459
    :cond_652
    add-int/lit8 v84, v84, 0x1

    goto :goto_637

    .line 480
    .end local v35    # "arr$":[Ljava/lang/String;
    .end local v65    # "dialerAppPackageName":Ljava/lang/String;
    .end local v69    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v84    # "i$":I
    .end local v90    # "len$":I
    :cond_655
    if-nez v137, :cond_787

    .line 481
    new-instance v139, Landroid/content/Intent;

    const-string v167, "android.intent.action.MAIN"

    move-object/from16 v0, v139

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    .local v139, "smsIntent":Landroid/content/Intent;
    const-string v167, "android.intent.category.APP_MESSAGING"

    move-object/from16 v0, v139

    move-object/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    move-object/from16 v0, p0

    move-object/from16 v1, v139

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v140

    .line 485
    .local v140, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v140, :cond_680

    .line 486
    move-object/from16 v0, p0

    move-object/from16 v1, v140

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    .line 498
    .end local v139    # "smsIntent":Landroid/content/Intent;
    .end local v140    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    :cond_680
    new-instance v49, Landroid/content/Intent;

    const-string v167, "android.provider.Telephony.SMS_CB_RECEIVED"

    move-object/from16 v0, v49

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 499
    .local v49, "cbrIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v50

    .line 501
    .local v50, "cbrPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v50, :cond_6aa

    invoke-static/range {v50 .. v50}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_6aa

    .line 502
    sget-object v167, SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 506
    :cond_6aa
    new-instance v47, Landroid/content/Intent;

    const-string v167, "android.provider.Telephony.SMS_CARRIER_PROVISION"

    move-object/from16 v0, v47

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    .local v47, "carrierProvIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getDefaultSystemHandlerServicePackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v48

    .line 509
    .local v48, "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v48, :cond_6d8

    invoke-static/range {v48 .. v48}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_6d8

    .line 510
    sget-object v167, SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 514
    :cond_6d8
    new-instance v38, Landroid/content/Intent;

    const-string v167, "android.intent.action.MAIN"

    move-object/from16 v0, v38

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 515
    .local v38, "calendarIntent":Landroid/content/Intent;
    const-string v167, "android.intent.category.APP_CALENDAR"

    move-object/from16 v0, v38

    move-object/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v39

    .line 518
    .local v39, "calendarPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v39, :cond_718

    invoke-static/range {v39 .. v39}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_718

    .line 520
    sget-object v167, CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 521
    sget-object v167, CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 525
    :cond_718
    const-string v167, "com.android.calendar"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v40

    .line 527
    .local v40, "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v40, :cond_751

    .line 528
    sget-object v167, CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 529
    sget-object v167, CALENDAR_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 531
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 535
    :cond_751
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getHeadlessSyncAdapterPackagesLPr([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v44

    .line 537
    .local v44, "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v42

    .line 538
    .local v42, "calendarSyncAdapterCount":I
    const/16 v83, 0x0

    .local v83, "i":I
    :goto_761
    move/from16 v0, v83

    move/from16 v1, v42

    if-ge v0, v1, :cond_7ae

    .line 539
    move-object/from16 v0, v44

    move/from16 v1, v83

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/content/pm/PackageParser$Package;

    .line 540
    .local v41, "calendarSyncAdapter":Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v41 .. v41}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_784

    .line 541
    sget-object v167, CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 538
    :cond_784
    add-int/lit8 v83, v83, 0x1

    goto :goto_761

    .line 489
    .end local v38    # "calendarIntent":Landroid/content/Intent;
    .end local v39    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .end local v40    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .end local v41    # "calendarSyncAdapter":Landroid/content/pm/PackageParser$Package;
    .end local v42    # "calendarSyncAdapterCount":I
    .end local v44    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v47    # "carrierProvIntent":Landroid/content/Intent;
    .end local v48    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .end local v49    # "cbrIntent":Landroid/content/Intent;
    .end local v50    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .end local v83    # "i":I
    :cond_787
    move-object/from16 v35, v137

    .restart local v35    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v90, v0

    .restart local v90    # "len$":I
    const/16 v84, 0x0

    .restart local v84    # "i$":I
    :goto_790
    move/from16 v0, v84

    move/from16 v1, v90

    if-ge v0, v1, :cond_680

    aget-object v141, v35, v84

    .line 490
    .local v141, "smsPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v141

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v140

    .line 491
    .restart local v140    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v140, :cond_7ab

    .line 492
    move-object/from16 v0, p0

    move-object/from16 v1, v140

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    .line 489
    :cond_7ab
    add-int/lit8 v84, v84, 0x1

    goto :goto_790

    .line 546
    .end local v35    # "arr$":[Ljava/lang/String;
    .end local v84    # "i$":I
    .end local v90    # "len$":I
    .end local v140    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v141    # "smsPackageName":Ljava/lang/String;
    .restart local v38    # "calendarIntent":Landroid/content/Intent;
    .restart local v39    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v40    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v42    # "calendarSyncAdapterCount":I
    .restart local v44    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v47    # "carrierProvIntent":Landroid/content/Intent;
    .restart local v48    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v49    # "cbrIntent":Landroid/content/Intent;
    .restart local v50    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v83    # "i":I
    :cond_7ae
    new-instance v55, Landroid/content/Intent;

    const-string v167, "android.intent.action.MAIN"

    move-object/from16 v0, v55

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    .local v55, "contactsIntent":Landroid/content/Intent;
    const-string v167, "android.intent.category.APP_CONTACTS"

    move-object/from16 v0, v55

    move-object/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v56

    .line 550
    .local v56, "contactsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v56, :cond_7fb

    invoke-static/range {v56 .. v56}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_7fb

    .line 552
    sget-object v167, CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 553
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 554
    sget-object v167, CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 558
    :cond_7fb
    const-string v167, "com.samsung.contacts"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v20

    .line 559
    .local v20, "SamsungContacts":Landroid/content/pm/PackageParser$Package;
    if-eqz v20, :cond_82e

    .line 560
    sget-object v167, CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 561
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 562
    sget-object v167, CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 566
    :cond_82e
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getHeadlessSyncAdapterPackagesLPr([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v61

    .line 568
    .local v61, "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface/range {v61 .. v61}, Ljava/util/List;->size()I

    move-result v59

    .line 569
    .local v59, "contactsSyncAdapterCount":I
    const/16 v83, 0x0

    :goto_83e
    move/from16 v0, v83

    move/from16 v1, v59

    if-ge v0, v1, :cond_864

    .line 570
    move-object/from16 v0, v61

    move/from16 v1, v83

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/content/pm/PackageParser$Package;

    .line 571
    .local v58, "contactsSyncAdapter":Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v58 .. v58}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_861

    .line 572
    sget-object v167, CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 569
    :cond_861
    add-int/lit8 v83, v83, 0x1

    goto :goto_83e

    .line 577
    .end local v58    # "contactsSyncAdapter":Landroid/content/pm/PackageParser$Package;
    :cond_864
    const-string v167, "com.android.contacts"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v57

    .line 579
    .local v57, "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v57, :cond_8a1

    .line 580
    sget-object v167, CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 582
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 584
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 588
    :cond_8a1
    new-instance v63, Landroid/content/Intent;

    const-string v167, "android.app.action.PROVISION_MANAGED_DEVICE"

    move-object/from16 v0, v63

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 590
    .local v63, "deviceProvisionIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v64

    .line 592
    .local v64, "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v64, :cond_8cb

    invoke-static/range {v64 .. v64}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_8cb

    .line 594
    sget-object v167, CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 598
    :cond_8cb
    new-instance v94, Landroid/content/Intent;

    const-string v167, "android.intent.action.MAIN"

    move-object/from16 v0, v94

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 599
    .local v94, "mapsIntent":Landroid/content/Intent;
    const-string v167, "android.intent.category.APP_MAPS"

    move-object/from16 v0, v94

    move-object/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v95

    .line 602
    .local v95, "mapsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v95, :cond_8fe

    invoke-static/range {v95 .. v95}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_8fe

    .line 604
    sget-object v167, LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 608
    :cond_8fe
    new-instance v78, Landroid/content/Intent;

    const-string v167, "android.intent.action.MAIN"

    move-object/from16 v0, v78

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .local v78, "galleryIntent":Landroid/content/Intent;
    const-string v167, "android.intent.category.APP_GALLERY"

    move-object/from16 v0, v78

    move-object/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v79

    .line 612
    .local v79, "galleryPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v79, :cond_931

    invoke-static/range {v79 .. v79}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_931

    .line 614
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 618
    :cond_931
    new-instance v73, Landroid/content/Intent;

    const-string v167, "android.intent.action.MAIN"

    move-object/from16 v0, v73

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    .local v73, "emailIntent":Landroid/content/Intent;
    const-string v167, "android.intent.category.APP_EMAIL"

    move-object/from16 v0, v73

    move-object/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v74

    .line 622
    .local v74, "emailPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v74, :cond_964

    invoke-static/range {v74 .. v74}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_964

    .line 624
    sget-object v167, CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v74

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 628
    :cond_964
    const/16 v37, 0x0

    .line 629
    .local v37, "browserPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v167, v0

    move-object/from16 v0, v167

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v62

    .line 630
    .local v62, "defaultBrowserPackage":Ljava/lang/String;
    if-eqz v62, :cond_97e

    .line 631
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v1}, getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v37

    .line 633
    :cond_97e
    if-nez v37, :cond_99e

    .line 634
    new-instance v36, Landroid/content/Intent;

    const-string v167, "android.intent.action.MAIN"

    move-object/from16 v0, v36

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 635
    .local v36, "browserIntent":Landroid/content/Intent;
    const-string v167, "android.intent.category.APP_BROWSER"

    move-object/from16 v0, v36

    move-object/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v37

    .line 639
    .end local v36    # "browserIntent":Landroid/content/Intent;
    :cond_99e
    if-eqz v37, :cond_9b3

    invoke-static/range {v37 .. v37}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_9b3

    .line 641
    sget-object v167, LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 645
    :cond_9b3
    const-string v167, "com.sec.android.app.sbrowser"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v127

    .line 646
    .local v127, "sbrowserPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v127, :cond_9f0

    invoke-static/range {v127 .. v127}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_9f0

    .line 647
    new-instance v128, Landroid/util/ArraySet;

    invoke-direct/range {v128 .. v128}, Landroid/util/ArraySet;-><init>()V

    .line 648
    .local v128, "sbrowserPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v167, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v128

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 649
    const-string v167, "android.permission.RECORD_AUDIO"

    move-object/from16 v0, v128

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 650
    const-string v167, "android.permission.CAMERA"

    move-object/from16 v0, v128

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 652
    move-object/from16 v0, p0

    move-object/from16 v1, v127

    move-object/from16 v2, v128

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 656
    .end local v128    # "sbrowserPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_9f0
    if-eqz v87, :cond_a23

    .line 657
    move-object/from16 v35, v87

    .restart local v35    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v90, v0

    .restart local v90    # "len$":I
    const/16 v84, 0x0

    .restart local v84    # "i$":I
    :goto_9fb
    move/from16 v0, v84

    move/from16 v1, v90

    if-ge v0, v1, :cond_a23

    aget-object v86, v35, v84

    .line 658
    .local v86, "imePackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v85

    .line 659
    .local v85, "imePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v85, :cond_a20

    invoke-static/range {v85 .. v85}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_a20

    .line 661
    sget-object v167, CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 657
    :cond_a20
    add-int/lit8 v84, v84, 0x1

    goto :goto_9fb

    .line 665
    .end local v35    # "arr$":[Ljava/lang/String;
    .end local v84    # "i$":I
    .end local v85    # "imePackage":Landroid/content/pm/PackageParser$Package;
    .end local v86    # "imePackageName":Ljava/lang/String;
    .end local v90    # "len$":I
    :cond_a23
    const-string v167, "com.sec.android.inputmethod"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v121

    .line 666
    .local v121, "samsungIME":Landroid/content/pm/PackageParser$Package;
    if-eqz v121, :cond_a46

    invoke-static/range {v121 .. v121}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_a46

    .line 667
    sget-object v167, CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v121

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 671
    :cond_a46
    if-eqz v157, :cond_aba

    .line 672
    move-object/from16 v35, v157

    .restart local v35    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v90, v0

    .restart local v90    # "len$":I
    const/16 v84, 0x0

    .restart local v84    # "i$":I
    :goto_a51
    move/from16 v0, v84

    move/from16 v1, v90

    if-ge v0, v1, :cond_aba

    aget-object v156, v35, v84

    .line 673
    .local v156, "voiceInteractPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v156

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v155

    .line 675
    .local v155, "voiceInteractPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v155, :cond_ab7

    invoke-static/range {v155 .. v155}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_ab7

    .line 677
    sget-object v167, CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v155

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 679
    sget-object v167, CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v155

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 681
    sget-object v167, MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v155

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 683
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v155

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 685
    sget-object v167, SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v155

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 687
    sget-object v167, LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v155

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 672
    :cond_ab7
    add-int/lit8 v84, v84, 0x1

    goto :goto_a51

    .line 694
    .end local v35    # "arr$":[Ljava/lang/String;
    .end local v84    # "i$":I
    .end local v90    # "len$":I
    .end local v155    # "voiceInteractPackage":Landroid/content/pm/PackageParser$Package;
    .end local v156    # "voiceInteractPackageName":Ljava/lang/String;
    :cond_aba
    new-instance v159, Landroid/content/Intent;

    const-string v167, "android.speech.RecognitionService"

    move-object/from16 v0, v159

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 695
    .local v159, "voiceRecoIntent":Landroid/content/Intent;
    const-string v167, "android.intent.category.DEFAULT"

    move-object/from16 v0, v159

    move-object/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    move-object/from16 v0, p0

    move-object/from16 v1, v159

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getDefaultSystemHandlerServicePackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v160

    .line 698
    .local v160, "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v160, :cond_aed

    invoke-static/range {v160 .. v160}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_aed

    .line 700
    sget-object v167, MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v160

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 704
    :cond_aed
    if-eqz v92, :cond_b8d

    .line 705
    move-object/from16 v35, v92

    .restart local v35    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v90, v0

    .restart local v90    # "len$":I
    const/16 v84, 0x0

    .restart local v84    # "i$":I
    :goto_af8
    move/from16 v0, v84

    move/from16 v1, v90

    if-ge v0, v1, :cond_b8d

    aget-object v109, v35, v84

    .line 706
    .local v109, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v109

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v91

    .line 707
    .local v91, "locationPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v91, :cond_b89

    invoke-static/range {v91 .. v91}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_b89

    .line 709
    sget-object v167, CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v91

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 710
    sget-object v167, CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v91

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 711
    sget-object v167, MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v91

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 712
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v91

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 713
    sget-object v167, SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v91

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 714
    sget-object v167, LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v91

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 716
    sget-object v167, CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v91

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 717
    sget-object v167, SENSORS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v91

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 718
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v91

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 705
    :cond_b89
    add-int/lit8 v84, v84, 0x1

    goto/16 :goto_af8

    .line 724
    .end local v35    # "arr$":[Ljava/lang/String;
    .end local v84    # "i$":I
    .end local v90    # "len$":I
    .end local v91    # "locationPackage":Landroid/content/pm/PackageParser$Package;
    .end local v109    # "packageName":Ljava/lang/String;
    :cond_b8d
    new-instance v101, Landroid/content/Intent;

    const-string v167, "android.intent.action.VIEW"

    move-object/from16 v0, v101

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 725
    .local v101, "musicIntent":Landroid/content/Intent;
    const-string v167, "android.intent.category.DEFAULT"

    move-object/from16 v0, v101

    move-object/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 726
    new-instance v167, Ljava/io/File;

    const-string/jumbo v169, "foo.mp3"

    move-object/from16 v0, v167

    move-object/from16 v1, v169

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v167 .. v167}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v167

    const-string v169, "audio/mpeg"

    move-object/from16 v0, v101

    move-object/from16 v1, v167

    move-object/from16 v2, v169

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, getDefaultMusicHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v102

    .line 730
    .local v102, "musicPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v102, :cond_bdb

    invoke-static/range {v102 .. v102}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_bdb

    .line 732
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 737
    :cond_bdb
    const-string v167, "com.samsung.mdl.radio"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v122

    .line 738
    .local v122, "samsungMilkMusicPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v122, :cond_c21

    invoke-static/range {v122 .. v122}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_c21

    .line 739
    new-instance v123, Landroid/util/ArraySet;

    invoke-direct/range {v123 .. v123}, Landroid/util/ArraySet;-><init>()V

    .line 740
    .local v123, "samsungMilkMusicPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v167, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v123

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 741
    const-string v167, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v123

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 742
    const-string v167, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v123

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 743
    const-string v167, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v123

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 744
    move-object/from16 v0, p0

    move-object/from16 v1, v122

    move-object/from16 v2, v123

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 748
    .end local v123    # "samsungMilkMusicPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c21
    const-string/jumbo v167, "de.telekom.tsc"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v24

    .line 749
    .local v24, "TelekomTscPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v24, :cond_c41

    invoke-static/range {v24 .. v24}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_c41

    .line 750
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 754
    :cond_c41
    const-string/jumbo v167, "de.telekom.mds.mbp"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v23

    .line 755
    .local v23, "TelekomMbpPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v23, :cond_c6e

    invoke-static/range {v23 .. v23}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_c6e

    .line 756
    sget-object v167, SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 757
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 761
    :cond_c6e
    const-string v167, "at.tmobile.android.myt"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v26

    .line 762
    .local v26, "TmobileMytPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v26, :cond_c8d

    invoke-static/range {v26 .. v26}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_c8d

    .line 763
    sget-object v167, LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 767
    :cond_c8d
    const-string/jumbo v167, "pl.tmobile.miboa"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v25

    .line 768
    .local v25, "TmobileMiboaPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v25, :cond_cba

    invoke-static/range {v25 .. v25}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_cba

    .line 769
    sget-object v167, SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 770
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 774
    :cond_cba
    const-string/jumbo v167, "pl.tmobile.panel"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v27

    .line 775
    .local v27, "TmobilePanelPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v27, :cond_ce7

    invoke-static/range {v27 .. v27}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_ce7

    .line 776
    sget-object v167, SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 777
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 781
    :cond_ce7
    const-string v167, "com.wsomacp"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v107

    .line 782
    .local v107, "omacpPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v107, :cond_d13

    invoke-static/range {v107 .. v107}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_d13

    .line 783
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v107

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 784
    sget-object v167, SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v107

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 788
    :cond_d13
    const-string v167, "com.att.mobiletransfer"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v99

    .line 789
    .local v99, "mobileTransferPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v99, :cond_d7d

    invoke-static/range {v99 .. v99}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_d7d

    .line 790
    new-instance v100, Landroid/util/ArraySet;

    invoke-direct/range {v100 .. v100}, Landroid/util/ArraySet;-><init>()V

    .line 791
    .local v100, "mobileTransferPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v167, "android.permission.CAMERA"

    move-object/from16 v0, v100

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 792
    const-string v167, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v100

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 793
    const-string v167, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v100

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 794
    const-string v167, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v100

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 795
    const-string v167, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v100

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 796
    const-string v167, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v100

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 797
    const-string v167, "android.permission.SEND_SMS"

    move-object/from16 v0, v100

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 798
    const-string v167, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v100

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 799
    move-object/from16 v0, p0

    move-object/from16 v1, v99

    move-object/from16 v2, v100

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 803
    .end local v100    # "mobileTransferPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d7d
    const-string/jumbo v167, "net.aetherpal.device"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v117

    .line 804
    .local v117, "remoteSupprotPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v117, :cond_dc4

    invoke-static/range {v117 .. v117}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_dc4

    .line 805
    new-instance v118, Landroid/util/ArraySet;

    invoke-direct/range {v118 .. v118}, Landroid/util/ArraySet;-><init>()V

    .line 806
    .local v118, "remoteSupprotPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v167, "android.permission.CALL_PHONE"

    move-object/from16 v0, v118

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 807
    const-string v167, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v118

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 808
    const-string v167, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v118

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 809
    const-string v167, "android.permission.READ_SMS"

    move-object/from16 v0, v118

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 810
    move-object/from16 v0, p0

    move-object/from16 v1, v117

    move-object/from16 v2, v118

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 814
    .end local v118    # "remoteSupprotPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_dc4
    const-string v167, "com.locationlabs.sparkle.blue"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v75

    .line 815
    .local v75, "familyUtilityPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v75, :cond_e13

    invoke-static/range {v75 .. v75}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_e13

    .line 816
    new-instance v76, Landroid/util/ArraySet;

    invoke-direct/range {v76 .. v76}, Landroid/util/ArraySet;-><init>()V

    .line 817
    .local v76, "familyUtilityPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v167, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v76

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 818
    const-string v167, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v76

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 819
    const-string v167, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v76

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 820
    const-string v167, "android.permission.SEND_SMS"

    move-object/from16 v0, v76

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 821
    const-string v167, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v76

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 822
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    move-object/from16 v2, v76

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 826
    .end local v76    # "familyUtilityPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_e13
    const-string v167, "com.asurion.android.mobilerecovery.att"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v112

    .line 827
    .local v112, "protectionPlusPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v112, :cond_e6e

    invoke-static/range {v112 .. v112}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_e6e

    .line 828
    new-instance v113, Landroid/util/ArraySet;

    invoke-direct/range {v113 .. v113}, Landroid/util/ArraySet;-><init>()V

    .line 829
    .local v113, "protectionPlusPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v167, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v113

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 830
    const-string v167, "android.permission.CALL_PHONE"

    move-object/from16 v0, v113

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 831
    move-object/from16 v0, p0

    move-object/from16 v1, v112

    move-object/from16 v2, v113

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 832
    sget-object v167, CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 833
    sget-object v167, LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 834
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 838
    .end local v113    # "protectionPlusPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_e6e
    const-string v167, "com.matchboxmobile.wisp"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v81

    .line 839
    .local v81, "hotSpotPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v81, :cond_e99

    invoke-static/range {v81 .. v81}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_e99

    .line 840
    new-instance v82, Landroid/util/ArraySet;

    invoke-direct/range {v82 .. v82}, Landroid/util/ArraySet;-><init>()V

    .line 841
    .local v82, "hotSpotPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v167, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v82

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 842
    move-object/from16 v0, p0

    move-object/from16 v1, v81

    move-object/from16 v2, v82

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 846
    .end local v82    # "hotSpotPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_e99
    const-string v167, "com.att.myWireless"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v103

    .line 847
    .local v103, "myATTPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v103, :cond_ec4

    invoke-static/range {v103 .. v103}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_ec4

    .line 848
    new-instance v104, Landroid/util/ArraySet;

    invoke-direct/range {v104 .. v104}, Landroid/util/ArraySet;-><init>()V

    .line 849
    .local v104, "myATTPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v167, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v104

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 850
    move-object/from16 v0, p0

    move-object/from16 v1, v103

    move-object/from16 v2, v104

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 854
    .end local v104    # "myATTPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_ec4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v167

    const-string v169, "CscFeature_Common_SupportHuxPermissionPregrant"

    move-object/from16 v0, v167

    move-object/from16 v1, v169

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 855
    .local v29, "VZW":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v167

    if-nez v167, :cond_ee7

    const-string v167, "VZW"

    move-object/from16 v0, v167

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v167

    if-eqz v167, :cond_ee7

    .line 856
    invoke-direct/range {p0 .. p1}, grantDefaultPermissionsToVerizonApp(I)V

    .line 860
    :cond_ee7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v167

    const-string v169, "CscFeature_Common_SupportHuxPermissionPregrant"

    move-object/from16 v0, v167

    move-object/from16 v1, v169

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 861
    .local v5, "ATT":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v167

    if-nez v167, :cond_f08

    const-string v167, "ATT"

    move-object/from16 v0, v167

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v167

    if-eqz v167, :cond_f08

    .line 862
    invoke-direct/range {p0 .. p1}, grantDefaultPermissionsToAttApp(I)V

    .line 866
    :cond_f08
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v167

    const-string v169, "CscFeature_Common_SupportHuxPermissionPregrant"

    move-object/from16 v0, v167

    move-object/from16 v1, v169

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 867
    .local v22, "TMO":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v167

    if-nez v167, :cond_f2b

    const-string v167, "TMO"

    move-object/from16 v0, v167

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v167

    if-eqz v167, :cond_f2b

    .line 868
    invoke-direct/range {p0 .. p1}, grantDefaultPermissionsToTmoApp(I)V

    .line 872
    :cond_f2b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v167

    const-string v169, "CscFeature_Common_SupportHuxPermissionPregrant"

    move-object/from16 v0, v167

    move-object/from16 v1, v169

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 873
    .local v18, "SIN":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v167

    if-nez v167, :cond_f4e

    const-string v167, "SIN"

    move-object/from16 v0, v167

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v167

    if-eqz v167, :cond_f4e

    .line 874
    invoke-direct/range {p0 .. p1}, grantDefaultPermissionsToSingtelApp(I)V

    .line 879
    :cond_f4e
    const-string v167, "com.sec.android.daemonapp"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v164

    .line 880
    .local v164, "weatherDaemonPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v164, :cond_f7a

    invoke-static/range {v164 .. v164}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_f7a

    .line 881
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v164

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 882
    sget-object v167, LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v164

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 886
    :cond_f7a
    const-string v167, "com.sec.android.widgetapp.ap.hero.accuweather"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v162

    .line 887
    .local v162, "weatherAccuPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v162, :cond_fa6

    invoke-static/range {v162 .. v162}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_fa6

    .line 888
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v162

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 889
    sget-object v167, LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v162

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 893
    :cond_fa6
    const-string v167, "com.sec.android.widgetapp.ap.hero.cmaweather"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v163

    .line 894
    .local v163, "weatherCMAPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v163, :cond_fd2

    invoke-static/range {v163 .. v163}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_fd2

    .line 895
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v163

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 896
    sget-object v167, LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v163

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 900
    :cond_fd2
    const-string v167, "com.sec.android.widgetapp.ap.hero.kweather"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v166

    .line 901
    .local v166, "weatherNewsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v166, :cond_ffe

    invoke-static/range {v166 .. v166}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_ffe

    .line 902
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v166

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 903
    sget-object v167, LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v166

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 907
    :cond_ffe
    const-string v167, "com.sec.android.widgetapp.ap.hero.weathernewsjp"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v165

    .line 908
    .local v165, "weatherNewsJPPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v165, :cond_102a

    invoke-static/range {v165 .. v165}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_102a

    .line 909
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v165

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 910
    sget-object v167, LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v165

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 914
    :cond_102a
    const-string v167, "com.osp.app.signin"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v19

    .line 915
    .local v19, "SamsungAccountPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v19, :cond_1049

    invoke-static/range {v19 .. v19}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_1049

    .line 916
    sget-object v167, SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 920
    :cond_1049
    const-string v167, "com.samsung.android.app.galaxyfinder"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v120

    .line 921
    .local v120, "sFinderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v120, :cond_109c

    invoke-static/range {v120 .. v120}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_109c

    .line 922
    sget-object v167, CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v120

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 923
    sget-object v167, CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v120

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 924
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v120

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 925
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v120

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 926
    sget-object v167, MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v120

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 930
    :cond_109c
    const-string v167, "com.samsung.voiceserviceplatform"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v144

    .line 931
    .local v144, "svoicePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v144, :cond_10fc

    invoke-static/range {v144 .. v144}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_10fc

    .line 932
    sget-object v167, CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v144

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 933
    sget-object v167, CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v144

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 934
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v144

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 935
    sget-object v167, MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v144

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 936
    sget-object v167, SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v144

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 937
    sget-object v167, LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v144

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 941
    :cond_10fc
    const-string v167, "com.samsung.android.svoiceime"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v143

    .line 942
    .local v143, "svoiceImePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v143, :cond_111b

    invoke-static/range {v143 .. v143}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_111b

    .line 943
    sget-object v167, MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 947
    :cond_111b
    const-string v167, "com.samsung.android.video"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v126

    .line 948
    .local v126, "samsungVideoPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v126, :cond_113a

    invoke-static/range {v126 .. v126}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_113a

    .line 949
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v126

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 953
    :cond_113a
    const-string v167, "com.samsung.everglades.video"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v153

    .line 954
    .local v153, "videoListMPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v153, :cond_1159

    invoke-static/range {v153 .. v153}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_1159

    .line 955
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v153

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 959
    :cond_1159
    const-string v167, "com.sec.android.app.videoplayer"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v154

    .line 960
    .local v154, "videoPlayerMPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v154, :cond_1178

    invoke-static/range {v154 .. v154}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_1178

    .line 961
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v154

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 965
    :cond_1178
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v167

    const-string v169, "CscFeature_Common_EnableSprintExtension"

    move-object/from16 v0, v167

    move-object/from16 v1, v169

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v167

    if-eqz v167, :cond_118b

    .line 966
    invoke-direct/range {p0 .. p1}, grantDefaultPermissionsToSprintApps(I)V

    .line 970
    :cond_118b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v167

    const-string v169, "CscFeature_Common_SupportHuxPermissionPregrant"

    move-object/from16 v0, v167

    move-object/from16 v1, v169

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 971
    .local v28, "USC_pregrant":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v167

    if-nez v167, :cond_11ae

    const-string v167, "USC"

    move-object/from16 v0, v167

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v167

    if-eqz v167, :cond_11ae

    .line 972
    invoke-direct/range {p0 .. p1}, grantDefaultPermissionsToUsccApps(I)V

    .line 975
    :cond_11ae
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v167, v0

    move-object/from16 v0, v167

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v167, v0

    move-object/from16 v0, v167

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->onDefaultRuntimePermissionsGrantedLPr(I)V

    .line 978
    const-string v167, "com.sec.android.app.voicenote"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v34

    .line 979
    .local v34, "VoiceRecorderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v34, :cond_1210

    invoke-static/range {v34 .. v34}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_1210

    .line 980
    new-instance v161, Landroid/util/ArraySet;

    invoke-direct/range {v161 .. v161}, Landroid/util/ArraySet;-><init>()V

    .line 981
    .local v161, "voicenotePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v167, "android.permission.RECORD_AUDIO"

    move-object/from16 v0, v161

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 982
    const-string v167, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v161

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 983
    const-string v167, "android.permission.CALL_PHONE"

    move-object/from16 v0, v161

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 984
    const-string v167, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v161

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 985
    const-string v167, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v161

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 987
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v161

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 991
    .end local v161    # "voicenotePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1210
    const-string v167, "com.samsung.android.app.memo"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v97

    .line 992
    .local v97, "memoPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v97, :cond_123b

    invoke-static/range {v97 .. v97}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_123b

    .line 993
    new-instance v98, Landroid/util/ArraySet;

    invoke-direct/range {v98 .. v98}, Landroid/util/ArraySet;-><init>()V

    .line 994
    .local v98, "memoPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v167, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v98

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 996
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move-object/from16 v2, v98

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1000
    .end local v98    # "memoPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_123b
    const-string v167, "com.samsung.android.game.gametools"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v80

    .line 1001
    .local v80, "gameToolsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v80, :cond_1281

    invoke-static/range {v80 .. v80}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_1281

    .line 1002
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1003
    sget-object v167, MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1004
    sget-object v167, CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1005
    sget-object v167, CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1009
    :cond_1281
    const-string v167, "com.samsung.android.service.peoplestripe"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v110

    .line 1010
    .local v110, "peopleEdgePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v110, :cond_12d0

    invoke-static/range {v110 .. v110}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_12d0

    .line 1012
    new-instance v111, Landroid/util/ArraySet;

    invoke-direct/range {v111 .. v111}, Landroid/util/ArraySet;-><init>()V

    .line 1013
    .local v111, "peoplePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v167, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v111

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1014
    const-string v167, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v111

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1015
    const-string v167, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v111

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1016
    const-string v167, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v111

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1017
    const-string v167, "android.permission.CAMERA"

    move-object/from16 v0, v111

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1018
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move-object/from16 v2, v111

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1022
    .end local v111    # "peoplePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_12d0
    const-string v167, "com.sec.android.widgetapp.locationwidget"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v105

    .line 1023
    .local v105, "myPlacesPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v105, :cond_1331

    invoke-static/range {v105 .. v105}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_1331

    .line 1025
    new-instance v106, Landroid/util/ArraySet;

    invoke-direct/range {v106 .. v106}, Landroid/util/ArraySet;-><init>()V

    .line 1026
    .local v106, "myPlacesPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v167, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v106

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1027
    const-string v167, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v106

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1028
    const-string v167, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v106

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1029
    const-string v167, "android.permission.CALL_PHONE"

    move-object/from16 v0, v106

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1030
    const-string v167, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v106

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1031
    const-string v167, "android.permission.SEND_SMS"

    move-object/from16 v0, v106

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1032
    const-string v167, "android.permission.READ_CALENDAR"

    move-object/from16 v0, v106

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1033
    move-object/from16 v0, p0

    move-object/from16 v1, v105

    move-object/from16 v2, v106

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1037
    .end local v106    # "myPlacesPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1331
    const-string v167, "com.sec.android.app.samsungapps"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v77

    .line 1038
    .local v77, "galaxyAppsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v77, :cond_1377

    invoke-static/range {v77 .. v77}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_1377

    .line 1039
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1040
    sget-object v167, CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1041
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1042
    sget-object v167, SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1046
    :cond_1377
    const-string v167, "com.vodafone.callplushybrid"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v32

    .line 1047
    .local v32, "VodafoneCallPlus":Landroid/content/pm/PackageParser$Package;
    if-eqz v32, :cond_13e1

    invoke-static/range {v32 .. v32}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_13e1

    .line 1048
    new-instance v33, Landroid/util/ArraySet;

    invoke-direct/range {v33 .. v33}, Landroid/util/ArraySet;-><init>()V

    .line 1049
    .local v33, "VodafoneCallPlusPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v167, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v33

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1050
    const-string v167, "android.permission.CALL_PHONE"

    move-object/from16 v0, v33

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1051
    const-string v167, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v33

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1052
    const-string v167, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v33

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1053
    const-string v167, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v33

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1054
    const-string v167, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v33

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1055
    const-string v167, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v33

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1056
    const-string v167, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    move-object/from16 v0, v33

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1057
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1061
    .end local v33    # "VodafoneCallPlusPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_13e1
    const-string v167, "com.samsung.android.themestore"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v149

    .line 1062
    .local v149, "themeStorePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v149, :cond_1426

    invoke-static/range {v149 .. v149}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_1426

    .line 1063
    new-instance v150, Landroid/util/ArraySet;

    invoke-direct/range {v150 .. v150}, Landroid/util/ArraySet;-><init>()V

    .line 1064
    .local v150, "themeStorePermission":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v167, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v150

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1065
    sget-object v167, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v149

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1066
    sget-object v167, CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v149

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1067
    move-object/from16 v0, p0

    move-object/from16 v1, v149

    move-object/from16 v2, v150

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1071
    .end local v150    # "themeStorePermission":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1426
    const-string v167, "com.sec.android.mimage.photoretouching"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    .line 1072
    .local v17, "PhotoEditorPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v17, :cond_1449

    invoke-static/range {v17 .. v17}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_1449

    .line 1073
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1077
    :cond_1449
    const-string v167, "com.sec.android.app.vepreload"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v31

    .line 1078
    .local v31, "VideoEditorPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v31, :cond_146c

    invoke-static/range {v31 .. v31}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_146c

    .line 1079
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1083
    :cond_146c
    const-string v167, "com.samsung.app.slowmotion"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v21

    .line 1084
    .local v21, "SlowMotionPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v21, :cond_148f

    invoke-static/range {v21 .. v21}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_148f

    .line 1085
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1089
    :cond_148f
    const-string v167, "com.samsung.app.highlightplayer"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    .line 1090
    .local v7, "HighlightPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v7, :cond_14b0

    invoke-static {v7}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_14b0

    .line 1091
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    move/from16 v2, v169

    move/from16 v3, p1

    invoke-direct {v0, v7, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1095
    :cond_14b0
    const-string v167, "com.sec.android.app.clipvideo"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v30

    .line 1096
    .local v30, "VideoCollagePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v30, :cond_14d3

    invoke-static/range {v30 .. v30}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_14d3

    .line 1097
    sget-object v167, STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v169, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v167

    move/from16 v3, v169

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    .line 1101
    :cond_14d3
    const-string v167, "com.sec.android.app.clockpackage"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v53

    .line 1102
    .local v53, "clockPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v53, :cond_14f2

    invoke-static/range {v53 .. v53}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_14f2

    .line 1103
    sget-object v167, CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1105
    :cond_14f2
    monitor-exit v168
    :try_end_14f3
    .catchall {:try_start_166 .. :try_end_14f3} :catchall_140

    .line 1108
    const-string v167, "com.samsung.android.qconnect"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v114

    .line 1109
    .local v114, "qcHeroPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v114, :cond_1530

    invoke-static/range {v114 .. v114}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_1530

    .line 1110
    new-instance v116, Landroid/util/ArraySet;

    invoke-direct/range {v116 .. v116}, Landroid/util/ArraySet;-><init>()V

    .line 1111
    .local v116, "qcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v167, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v116

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1112
    const-string v167, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v116

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1113
    const-string v167, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v116

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1114
    move-object/from16 v0, p0

    move-object/from16 v1, v114

    move-object/from16 v2, v116

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1117
    .end local v116    # "qcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1530
    const-string v167, "com.samsung.android.sconnect"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v115

    .line 1118
    .local v115, "qcPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v115, :cond_156d

    invoke-static/range {v115 .. v115}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_156d

    .line 1119
    new-instance v116, Landroid/util/ArraySet;

    invoke-direct/range {v116 .. v116}, Landroid/util/ArraySet;-><init>()V

    .line 1120
    .restart local v116    # "qcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v167, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v116

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1121
    const-string v167, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v116

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1122
    const-string v167, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v116

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1123
    move-object/from16 v0, p0

    move-object/from16 v1, v115

    move-object/from16 v2, v116

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1127
    .end local v116    # "qcPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_156d
    const-string v167, "com.sec.android.cloudagent"

    move-object/from16 v0, p0

    move-object/from16 v1, v167

    invoke-direct {v0, v1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 1128
    .local v6, "CloudAgentPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_1596

    invoke-static {v6}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v167

    if-eqz v167, :cond_1596

    .line 1129
    new-instance v54, Landroid/util/ArraySet;

    invoke-direct/range {v54 .. v54}, Landroid/util/ArraySet;-><init>()V

    .line 1130
    .local v54, "cloudPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v167, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v54

    move-object/from16 v1, v167

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1131
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move/from16 v2, p1

    invoke-direct {v0, v6, v1, v2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1133
    .end local v54    # "cloudPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1596
    return-void
.end method

.method private grantPermissionsToSysComponentsAndPrivApps(I)V
    .registers 12
    .param p1, "userId"    # I

    .prologue
    .line 176
    const-string v7, "DefaultPermGrantPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Granting permissions to platform components for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v7, p0, mService:Lcom/android/server/pm/PackageManagerService;

    sget-object v8, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 179
    :try_start_1d
    iget-object v7, p0, mService:Lcom/android/server/pm/PackageManagerService;

    sget-object v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_29
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    .line 180
    .local v6, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-direct {p0, v6}, isSysComponentOrPersistentPlatformSignedPrivAppLPr(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_29

    invoke-static {v6}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_29

    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_29

    .line 185
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 186
    .local v5, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 187
    .local v4, "permissionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_55
    if-ge v1, v4, :cond_79

    .line 188
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 189
    .local v3, "permission":Ljava/lang/String;
    iget-object v7, p0, mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 190
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_76

    invoke-virtual {v0}, Lcom/android/server/pm/BasePermission;->isRuntime()Z

    move-result v7

    if-eqz v7, :cond_76

    .line 191
    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 194
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v3    # "permission":Ljava/lang/String;
    :cond_79
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_29

    .line 195
    const/4 v7, 0x1

    invoke-direct {p0, v6, v5, v7, p1}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    goto :goto_29

    .line 198
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "permissionCount":I
    .end local v5    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_84
    move-exception v7

    monitor-exit v8
    :try_end_86
    .catchall {:try_start_1d .. :try_end_86} :catchall_84

    throw v7

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_87
    :try_start_87
    monitor-exit v8
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_84

    .line 199
    return-void
.end method

.method private grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    .registers 10
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1894
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p3

    invoke-direct/range {v0 .. v5}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1895
    return-void
.end method

.method private grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V
    .registers 11
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 1899
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1900
    return-void
.end method

.method private grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V
    .registers 20
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "overrideUserChoice"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZI)V"
        }
    .end annotation

    .prologue
    .line 1904
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1967
    :cond_8
    return-void

    .line 1908
    :cond_9
    iget-object v12, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 1909
    .local v12, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 1911
    .local v10, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1912
    iget-object v1, p0, mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v13

    .line 1913
    .local v13, "sysPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_3b

    .line 1914
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1917
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-interface {v12, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 1918
    new-instance v10, Landroid/util/ArraySet;

    .end local v10    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v10, v12}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 1919
    .restart local v10    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v12, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 1924
    .end local v13    # "sysPs":Lcom/android/server/pm/PackageSetting;
    :cond_3b
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    .line 1925
    .local v9, "grantablePermissionCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_40
    if-ge v11, v9, :cond_8

    .line 1926
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1930
    .local v2, "permission":Ljava/lang/String;
    if-eqz v10, :cond_53

    invoke-interface {v10, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 1925
    :cond_50
    :goto_50
    add-int/lit8 v11, v11, 0x1

    goto :goto_40

    .line 1934
    :cond_53
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1935
    iget-object v1, p0, mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move/from16 v0, p5

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/pm/PackageManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 1943
    .local v8, "flags":I
    if-eqz v8, :cond_69

    if-eqz p4, :cond_50

    .line 1945
    :cond_69
    const/16 v7, 0x14

    .line 1947
    .local v7, "fixedFlags":I
    and-int/lit8 v1, v8, 0x14

    if-nez v1, :cond_50

    .line 1951
    iget-object v1, p0, mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move/from16 v0, p5

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/pm/PackageManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1957
    const/16 v4, 0x20

    .line 1958
    .local v4, "newFlags":I
    if-eqz p3, :cond_7e

    .line 1959
    or-int/lit8 v4, v4, 0x10

    .line 1962
    :cond_7e
    iget-object v1, p0, mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move v5, v4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_50
.end method

.method private isSysComponentOrPersistentPlatformSignedPrivAppLPr(Landroid/content/pm/PackageParser$Package;)Z
    .registers 7
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1970
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_10

    move v2, v1

    .line 1984
    :cond_f
    :goto_f
    return v2

    .line 1973
    :cond_10
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isPrivilegedApp()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1976
    iget-object v3, p0, mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1977
    .local v0, "sysPkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_3c

    .line 1978
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_f

    .line 1984
    :cond_2c
    iget-object v3, p0, mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v3

    if-nez v3, :cond_45

    :goto_3a
    move v2, v1

    goto :goto_f

    .line 1981
    :cond_3c
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_2c

    goto :goto_f

    :cond_45
    move v1, v2

    .line 1984
    goto :goto_3a
.end method


# virtual methods
.method public grantDefaultPermissions(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 171
    invoke-direct {p0, p1}, grantPermissionsToSysComponentsAndPrivApps(I)V

    .line 172
    invoke-direct {p0, p1}, grantDefaultSystemHandlerPermissions(I)V

    .line 173
    return-void
.end method

.method public grantDefaultPermissionsToDefaultBrowserLPr(Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1779
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Granting permissions to default browser for user:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    if-nez p1, :cond_1c

    .line 1788
    :cond_1b
    :goto_1b
    return-void

    .line 1783
    :cond_1c
    invoke-direct {p0, p1}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 1784
    .local v1, "browserPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_1b

    invoke-static {v1}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1786
    sget-object v2, LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v4, v3

    move v5, p2

    invoke-direct/range {v0 .. v5}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    goto :goto_1b
.end method

.method public grantDefaultPermissionsToDefaultDialerAppLPr(Ljava/lang/String;I)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1718
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Granting permissions to default dialer app for user:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    if-nez p1, :cond_1d

    .line 1741
    :cond_1c
    :goto_1c
    return-void

    .line 1722
    :cond_1d
    invoke-direct {p0, p1}, getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 1723
    .local v1, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_1c

    invoke-static {v1}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1725
    sget-object v2, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1726
    sget-object v2, CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1727
    sget-object v2, SMS_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1728
    sget-object v2, MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1729
    const-string v0, "com.skt.prod.dialer"

    invoke-direct {p0, v0}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v0, "com.skt.prod.dialer"

    invoke-direct {p0, v0}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    if-ne v1, v0, :cond_1c

    .line 1730
    sget-object v2, LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1731
    const-string v0, "com.skt.prod.phone"

    invoke-direct {p0, v0}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 1732
    .local v6, "tPhonePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_1c

    invoke-static {v6}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1733
    sget-object v7, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object v5, p0

    move v8, v3

    move v9, v4

    move v10, p2

    invoke-direct/range {v5 .. v10}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1734
    sget-object v7, CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object v5, p0

    move v8, v3

    move v9, v4

    move v10, p2

    invoke-direct/range {v5 .. v10}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1735
    sget-object v7, SMS_PERMISSIONS:Ljava/util/Set;

    move-object v5, p0

    move v8, v3

    move v9, v4

    move v10, p2

    invoke-direct/range {v5 .. v10}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1736
    sget-object v7, MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object v5, p0

    move v8, v3

    move v9, v4

    move v10, p2

    invoke-direct/range {v5 .. v10}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1737
    sget-object v7, LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object v5, p0

    move v8, v3

    move v9, v4

    move v10, p2

    invoke-direct/range {v5 .. v10}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    goto :goto_1c
.end method

.method public grantDefaultPermissionsToDefaultSimCallManagerLPr(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1753
    if-nez p1, :cond_3

    .line 1760
    :cond_2
    :goto_2
    return-void

    .line 1756
    :cond_3
    invoke-direct {p0, p1}, getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1757
    .local v0, "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_2

    .line 1758
    invoke-direct {p0, v0, p2}, grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V

    goto :goto_2
.end method

.method public grantDefaultPermissionsToDefaultSmsAppLPr(Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1705
    const-string v0, "DefaultPermGrantPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Granting permissions to default sms app for user:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    if-nez p1, :cond_1d

    .line 1715
    :cond_1c
    :goto_1c
    return-void

    .line 1709
    :cond_1d
    invoke-direct {p0, p1}, getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 1710
    .local v1, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_1c

    invoke-static {v1}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1711
    sget-object v2, PHONE_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1712
    sget-object v2, CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    .line 1713
    sget-object v2, SMS_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    goto :goto_1c
.end method

.method public grantDefaultPermissionsToEnabledCarrierAppsLPr([Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1763
    const-string v5, "DefaultPermGrantPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Granting permissions to enabled carrier apps for user:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    if-nez p1, :cond_1b

    .line 1776
    :cond_1a
    return-void

    .line 1767
    :cond_1b
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1e
    if-ge v2, v3, :cond_1a

    aget-object v4, v0, v2

    .line 1768
    .local v4, "packageName":Ljava/lang/String;
    invoke-direct {p0, v4}, getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 1769
    .local v1, "carrierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_3d

    invoke-static {v1}, doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 1771
    sget-object v5, PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v1, v5, p2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1772
    sget-object v5, LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v1, v5, p2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1773
    sget-object v5, SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v1, v5, p2}, grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    .line 1767
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e
.end method

.method public setDialerAppPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 159
    iput-object p1, p0, mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 160
    return-void
.end method

.method public setImePackagesProviderLPr(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 143
    iput-object p1, p0, mImePackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 144
    return-void
.end method

.method public setLocationPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 147
    iput-object p1, p0, mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 148
    return-void
.end method

.method public setSimCallManagerPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 163
    iput-object p1, p0, mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 164
    return-void
.end method

.method public setSmsAppPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 155
    iput-object p1, p0, mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 156
    return-void
.end method

.method public setSyncAdapterPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V
    .registers 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .prologue
    .line 167
    iput-object p1, p0, mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    .line 168
    return-void
.end method

.method public setVoiceInteractionPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 2
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .prologue
    .line 151
    iput-object p1, p0, mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    .line 152
    return-void
.end method
