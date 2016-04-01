.class Lcom/android/server/usb/UsbSettingsManager;
.super Ljava/lang/Object;
.source "UsbSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbSettingsManager$1;,
        Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;,
        Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;,
        Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    }
.end annotation


# static fields
.field private static final APPLE_VENDOR_ID:I = 0x5ac

.field private static final APPLICATIONPOLICY_USBPERMITTEDFORPACKAGE_METHOD:Ljava/lang/String; = "isUsbDevicePermittedForPackage"

.field private static final APPLICATION_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/ApplicationPolicy"

.field private static final BLACKBERRY_VENDOR_ID:I = 0xfca

.field private static final DEBUG:Z = true

.field private static final DEBUG_PROCESS:Z

.field private static final RELEASE_BUILD:Z

.field private static final SAMSUNG_VENDOR_ID:I = 0x4e8

.field private static final SMART_SWITCH_APK_HASH_CODE:I = -0x4c8716a4

.field private static final SMART_SWITCH_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.easyMover"

.field private static final TAG:Ljava/lang/String; = "UsbSettingsManager"

.field private static final sSingleUserSettingsFile:Ljava/io/File;


# instance fields
.field private final mAccessoryPermissionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessoryPreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDevicePermissionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisablePermissionDialogs:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageMonitor:Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private mSmartSwitchInTheProcess:Z

.field private final mUser:Landroid/os/UserHandle;

.field private final mUserContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 106
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/usb_device_manager.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, sSingleUserSettingsFile:Ljava/io/File;

    .line 760
    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, DEBUG_PROCESS:Z

    .line 761
    const-string/jumbo v0, "user"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, RELEASE_BUILD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mDevicePermissionMap:Ljava/util/HashMap;

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mAccessoryPermissionMap:Ljava/util/HashMap;

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mDevicePreferenceMap:Ljava/util/HashMap;

    .line 127
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mAccessoryPreferenceMap:Ljava/util/HashMap;

    .line 130
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, mLock:Ljava/lang/Object;

    .line 530
    new-instance v1, Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;

    invoke-direct {v1, p0, v5}, Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;-><init>(Lcom/android/server/usb/UsbSettingsManager;Lcom/android/server/usb/UsbSettingsManager$1;)V

    iput-object v1, p0, mPackageMonitor:Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;

    .line 765
    iput-boolean v2, p0, mSmartSwitchInTheProcess:Z

    .line 533
    const-string v1, "UsbSettingsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating settings for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :try_start_49
    const-string v1, "android"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, mUserContext:Landroid/content/Context;
    :try_end_52
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_49 .. :try_end_52} :catch_9d

    .line 541
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 542
    iget-object v1, p0, mUserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, mPackageManager:Landroid/content/pm/PackageManager;

    .line 544
    iput-object p2, p0, mUser:Landroid/os/UserHandle;

    .line 545
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "usb_device_manager.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, mSettingsFile:Landroid/util/AtomicFile;

    .line 549
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, mDisablePermissionDialogs:Z

    .line 552
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 553
    :try_start_85
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 554
    invoke-direct {p0}, upgradeSingleUserLocked()V

    .line 556
    :cond_90
    invoke-direct {p0}, readSettingsLocked()V

    .line 557
    monitor-exit v2
    :try_end_94
    .catchall {:try_start_85 .. :try_end_94} :catchall_a6

    .line 559
    iget-object v1, p0, mPackageMonitor:Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;

    iget-object v2, p0, mUserContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/server/usb/UsbSettingsManager$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 560
    return-void

    .line 537
    :catch_9d
    move-exception v0

    .line 538
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Missing android package"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 557
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_a6
    move-exception v1

    :try_start_a7
    monitor-exit v2
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbSettingsManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbSettingsManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0, p1}, handlePackageUpdate(Ljava/lang/String;)V

    return-void
.end method

.method private clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    .prologue
    .line 995
    const/4 v0, 0x0

    .line 996
    .local v0, "changed":Z
    iget-object v3, p0, mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    .line 997
    .local v2, "test":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    invoke-virtual {p2, v2}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->matches(Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 998
    iget-object v3, p0, mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    const/4 v0, 0x1

    goto :goto_b

    .line 1002
    .end local v2    # "test":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    :cond_24
    return v0
.end method

.method private clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    .prologue
    .line 984
    const/4 v0, 0x0

    .line 985
    .local v0, "changed":Z
    iget-object v3, p0, mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    .line 986
    .local v2, "test":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    invoke-virtual {p2, v2}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 987
    iget-object v3, p0, mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    const/4 v0, 0x1

    goto :goto_b

    .line 991
    .end local v2    # "test":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_24
    return v0
.end method

.method private clearPackageDefaultsLocked(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1402
    const/4 v0, 0x0

    .line 1403
    .local v0, "cleared":Z
    iget-object v5, p0, mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1404
    :try_start_4
    iget-object v4, p0, mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1406
    iget-object v4, p0, mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 1407
    .local v3, "keys":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    array-length v4, v3

    if-ge v1, v4, :cond_31

    .line 1408
    aget-object v2, v3, v1

    .line 1409
    .local v2, "key":Ljava/lang/Object;
    iget-object v4, p0, mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1410
    iget-object v4, p0, mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    const/4 v0, 0x1

    .line 1407
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1415
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "keys":[Ljava/lang/Object;
    :cond_31
    iget-object v4, p0, mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 1417
    iget-object v4, p0, mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 1418
    .restart local v3    # "keys":[Ljava/lang/Object;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_44
    array-length v4, v3

    if-ge v1, v4, :cond_5e

    .line 1419
    aget-object v2, v3, v1

    .line 1420
    .restart local v2    # "key":Ljava/lang/Object;
    iget-object v4, p0, mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 1421
    iget-object v4, p0, mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    const/4 v0, 0x1

    .line 1418
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 1426
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "keys":[Ljava/lang/Object;
    :cond_5e
    monitor-exit v5

    return v0

    .line 1427
    :catchall_60
    move-exception v4

    monitor-exit v5
    :try_end_62
    .catchall {:try_start_4 .. :try_end_62} :catchall_60

    throw v4
.end method

.method private final getAccessoryMatchesLocked(Landroid/hardware/usb/UsbAccessory;Landroid/content/Intent;)Ljava/util/ArrayList;
    .registers 10
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 747
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v5, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 750
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 751
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_2b

    .line 752
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 753
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v6, p1}, packageMatchesLocked(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 754
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 757
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2b
    return-object v2
.end method

.method private final getDeviceMatchesLocked(Landroid/hardware/usb/UsbDevice;Landroid/content/Intent;)Ljava/util/ArrayList;
    .registers 10
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDevice;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 732
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v5, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 735
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 736
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_2b

    .line 737
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 738
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, p1, v6}, packageMatchesLocked(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 739
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 742
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2b
    return-object v2
.end method

.method private grantAccessoryPermissionLocked(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 6
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    .prologue
    const/4 v2, 0x1

    .line 1359
    iget-object v1, p0, mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 1360
    .local v0, "uidList":Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_15

    .line 1361
    new-instance v0, Landroid/util/SparseBooleanArray;

    .end local v0    # "uidList":Landroid/util/SparseBooleanArray;
    invoke-direct {v0, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1362
    .restart local v0    # "uidList":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    :cond_15
    invoke-virtual {v0, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1365
    return-void
.end method

.method private grantDevicePermissionLocked(Landroid/hardware/usb/UsbDevice;I)V
    .registers 9
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"    # I

    .prologue
    const/4 v5, 0x1

    .line 1333
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 1334
    .local v0, "deviceName":Ljava/lang/String;
    iget-object v2, p0, mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 1335
    .local v1, "uidList":Landroid/util/SparseBooleanArray;
    const-string v2, "UsbSettingsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "grantDevicePermission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    if-nez v1, :cond_3c

    .line 1337
    new-instance v1, Landroid/util/SparseBooleanArray;

    .end local v1    # "uidList":Landroid/util/SparseBooleanArray;
    invoke-direct {v1, v5}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1338
    .restart local v1    # "uidList":Landroid/util/SparseBooleanArray;
    iget-object v2, p0, mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    :cond_3c
    const-string v2, "UsbSettingsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "grantDevicePermission: mDevicePermissionMap put "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    invoke-virtual {v1, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1342
    return-void
.end method

.method private handlePackageUpdate(Ljava/lang/String;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1042
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1044
    const/4 v1, 0x0

    .line 1047
    .local v1, "changed":Z
    :try_start_4
    iget-object v5, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x81

    invoke-virtual {v5, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_b} :catch_12
    .catchall {:try_start_4 .. :try_end_b} :catchall_2e

    move-result-object v4

    .line 1054
    .local v4, "info":Landroid/content/pm/PackageInfo;
    :try_start_c
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 1055
    .local v0, "activities":[Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_31

    monitor-exit v6

    .line 1072
    .end local v0    # "activities":[Landroid/content/pm/ActivityInfo;
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :goto_11
    return-void

    .line 1049
    :catch_12
    move-exception v2

    .line 1050
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "UsbSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handlePackageUpdate could not find package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1051
    monitor-exit v6

    goto :goto_11

    .line 1071
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_2e
    move-exception v5

    monitor-exit v6
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_2e

    throw v5

    .line 1056
    .restart local v0    # "activities":[Landroid/content/pm/ActivityInfo;
    .restart local v4    # "info":Landroid/content/pm/PackageInfo;
    :cond_31
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_32
    :try_start_32
    array-length v5, v0

    if-ge v3, v5, :cond_4e

    .line 1058
    aget-object v5, v0, v3

    const-string v7, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {p0, p1, v5, v7}, handlePackageUpdateLocked(Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 1060
    const/4 v1, 0x1

    .line 1062
    :cond_40
    aget-object v5, v0, v3

    const-string v7, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {p0, p1, v5, v7}, handlePackageUpdateLocked(Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 1064
    const/4 v1, 0x1

    .line 1056
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 1068
    :cond_4e
    if-eqz v1, :cond_53

    .line 1069
    invoke-direct {p0}, writeSettingsLocked()V

    .line 1071
    :cond_53
    monitor-exit v6
    :try_end_54
    .catchall {:try_start_32 .. :try_end_54} :catchall_2e

    goto :goto_11
.end method

.method private handlePackageUpdateLocked(Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "metaDataName"    # Ljava/lang/String;

    .prologue
    .line 1007
    const/4 v3, 0x0

    .line 1008
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v0, 0x0

    .line 1011
    .local v0, "changed":Z
    :try_start_2
    iget-object v5, p0, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v5, p3}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_37
    .catchall {:try_start_2 .. :try_end_7} :catchall_76

    move-result-object v3

    .line 1012
    if-nez v3, :cond_11

    const/4 v5, 0x0

    .line 1034
    if-eqz v3, :cond_10

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1036
    :cond_10
    :goto_10
    return v5

    .line 1014
    :cond_11
    :try_start_11
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1015
    :goto_14
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_70

    .line 1016
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1017
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "usb-device"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 1018
    invoke-static {v3}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    move-result-object v2

    .line 1019
    .local v2, "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    invoke-direct {p0, p1, v2}, clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 1020
    const/4 v0, 0x1

    .line 1029
    .end local v2    # "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_33
    :goto_33
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_36} :catch_37
    .catchall {:try_start_11 .. :try_end_36} :catchall_76

    goto :goto_14

    .line 1031
    .end local v4    # "tagName":Ljava/lang/String;
    :catch_37
    move-exception v1

    .line 1032
    .local v1, "e":Ljava/lang/Exception;
    :try_start_38
    const-string v5, "UsbSettingsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load component info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_38 .. :try_end_54} :catchall_76

    .line 1034
    if-eqz v3, :cond_59

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_59
    :goto_59
    move v5, v0

    .line 1036
    goto :goto_10

    .line 1023
    .restart local v4    # "tagName":Ljava/lang/String;
    :cond_5b
    :try_start_5b
    const-string/jumbo v5, "usb-accessory"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 1024
    invoke-static {v3}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    move-result-object v2

    .line 1025
    .local v2, "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    invoke-direct {p0, p1, v2}, clearCompatibleMatchesLocked(Ljava/lang/String;Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;)Z
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_6b} :catch_37
    .catchall {:try_start_5b .. :try_end_6b} :catchall_76

    move-result v5

    if-eqz v5, :cond_33

    .line 1026
    const/4 v0, 0x1

    goto :goto_33

    .line 1034
    .end local v2    # "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_70
    if-eqz v3, :cond_59

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_59

    :catchall_76
    move-exception v5

    if-eqz v3, :cond_7c

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7c
    throw v5
.end method

.method private isPreinstolledPackage(Ljava/util/List;Ljava/lang/String;)Z
    .registers 8
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x1

    .line 770
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 771
    .local v0, "count":I
    const/4 v1, 0x0

    .line 772
    .local v1, "ret":Z
    iget-object v3, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android"

    invoke-virtual {v3, v4, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4c

    move v1, v2

    .line 773
    :goto_11
    sget-boolean v3, RELEASE_BUILD:Z

    if-eq v3, v2, :cond_32

    .line 774
    sget-boolean v2, DEBUG_PROCESS:Z

    if-eqz v2, :cond_31

    const-string v2, "UsbSettingsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip signature verification, ret"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_31
    const/4 v1, 0x1

    .line 777
    :cond_32
    const-string v2, "UsbSettingsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPreinstolledPackage, ret "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    return v1

    .line 772
    :cond_4c
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private isSmartSwitchInTheProcess(Landroid/hardware/usb/UsbDevice;Ljava/util/List;)Z
    .registers 13
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDevice;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 783
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 784
    .local v0, "am":Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 785
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 786
    .local v3, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    sget-boolean v5, DEBUG_PROCESS:Z

    if-eqz v5, :cond_17

    const-string v5, "UsbSettingsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isSmartSwitchInTheProcess: task.topActivity.getPackageName() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 788
    .end local v3    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_47
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 789
    .local v1, "foregroundApp":Ljava/lang/String;
    sget-boolean v5, DEBUG_PROCESS:Z

    if-eqz v5, :cond_74

    const-string v5, "UsbSettingsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isSmartSwitchInTheProcess: foregroundApp "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_74
    const-string v5, "com.sec.android.easyMover"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_94

    const-string v5, "com.sec.android.easyMover"

    invoke-direct {p0, p2, v5}, isPreinstolledPackage(Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 792
    sget-boolean v5, DEBUG_PROCESS:Z

    if-eqz v5, :cond_90

    const-string v5, "UsbSettingsManager"

    const-string/jumbo v7, "isSmartSwitchInTheProcess: set it as default"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_90
    iput-boolean v6, p0, mSmartSwitchInTheProcess:Z

    move v5, v6

    .line 796
    :goto_93
    return v5

    :cond_94
    move v5, v7

    goto :goto_93
.end method

.method private isUsbDevicePermittedForPackage(ILandroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z
    .registers 15
    .param p1, "uid"    # I
    .param p2, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1471
    const-string v0, "content://com.sec.knox.provider2/ApplicationPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1472
    .local v1, "uri":Landroid/net/Uri;
    const-string v0, "UsbSettingsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request Permission for Device vendorId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", productId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    const/4 v0, 0x3

    :try_start_3d
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x2

    aput-object p3, v4, v0

    .line 1475
    .local v4, "args":[Ljava/lang/String;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string/jumbo v3, "isUsbDevicePermittedForPackage"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1476
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_9b

    .line 1477
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1478
    const-string/jumbo v0, "isUsbDevicePermittedForPackage"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1479
    .local v8, "restrict":Ljava/lang/String;
    const-string v0, "UsbSettingsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "policy : restrict(grand) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    const-string/jumbo v0, "false"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 1481
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 1492
    .end local v4    # "args":[Ljava/lang/String;
    .end local v6    # "cr":Landroid/database/Cursor;
    .end local v8    # "restrict":Ljava/lang/String;
    :goto_95
    return v0

    .line 1484
    .restart local v4    # "args":[Ljava/lang/String;
    .restart local v6    # "cr":Landroid/database/Cursor;
    .restart local v8    # "restrict":Ljava/lang/String;
    :cond_96
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v4    # "args":[Ljava/lang/String;
    .end local v6    # "cr":Landroid/database/Cursor;
    .end local v8    # "restrict":Ljava/lang/String;
    :goto_99
    move v0, v10

    .line 1492
    goto :goto_95

    .line 1486
    .restart local v4    # "args":[Ljava/lang/String;
    .restart local v6    # "cr":Landroid/database/Cursor;
    :cond_9b
    const-string v0, "UsbSettingsManager"

    const-string v2, " policy not yet?"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_a2} :catch_a3

    goto :goto_99

    .line 1488
    .end local v4    # "args":[Ljava/lang/String;
    .end local v6    # "cr":Landroid/database/Cursor;
    :catch_a3
    move-exception v7

    .line 1489
    .local v7, "ex":Ljava/lang/Exception;
    const-string v0, "UsbSettingsManager"

    const-string/jumbo v2, "policy : return exception"

    invoke-static {v0, v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_99
.end method

.method private isUsbForKnox2_5()Z
    .registers 4

    .prologue
    .line 1498
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v0

    .line 1499
    .local v0, "currentVersion":Landroid/os/PersonaManager$KnoxContainerVersion;
    sget-object v2, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v0, v2}, Landroid/os/PersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_1a

    .line 1500
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1501
    .local v1, "userId":I
    const/16 v2, 0x64

    if-lt v1, v2, :cond_1a

    const/16 v2, 0xc8

    if-gt v1, v2, :cond_1a

    .line 1502
    const/4 v2, 0x1

    .line 1506
    .end local v1    # "userId":I
    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method private isUsbHostModeEnabledForContainer()Z
    .registers 13

    .prologue
    .line 1510
    const/4 v5, 0x0

    .line 1511
    .local v5, "status":Z
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 1512
    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1514
    .local v6, "uid":J
    :try_start_9
    const-string v9, "UsbSettingsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isUsbHostModeEnabledForContainer: userId-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1516
    .local v2, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v4

    .line 1517
    .local v4, "ownerUid":I
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v9

    iget-object v10, p0, mContext:Landroid/content/Context;

    new-instance v11, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v11, v4, v8}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {v9, v10, v11}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v3

    .line 1518
    .local v3, "kcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    if-eqz v3, :cond_69

    .line 1519
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;

    move-result-object v0

    .line 1520
    .local v0, "ccp":Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;
    if-eqz v0, :cond_69

    .line 1521
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;->isUsbAccessEnabled()Z

    move-result v5

    .line 1522
    if-nez v5, :cond_69

    .line 1523
    const-string v9, "UsbSettingsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isUsbHostModeEnabledForContainer: Usb Host Mode sdcard is disabled for User-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Ignoring USB device access request..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_69} :catch_6d
    .catchall {:try_start_9 .. :try_end_69} :catchall_8d

    .line 1531
    .end local v0    # "ccp":Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;
    :cond_69
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1533
    .end local v2    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v3    # "kcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v4    # "ownerUid":I
    :goto_6c
    return v5

    .line 1527
    :catch_6d
    move-exception v1

    .line 1528
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6e
    const-string v9, "UsbSettingsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception in isUsbHostModeEnabledForContainer:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_89
    .catchall {:try_start_6e .. :try_end_89} :catchall_8d

    .line 1531
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6c

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_8d
    move-exception v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method private packageMatchesLocked(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)Z
    .registers 14
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "metaDataName"    # Ljava/lang/String;
    .param p3, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p4, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 696
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 698
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .line 700
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_5
    iget-object v7, p0, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v7, p2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 701
    if-nez v3, :cond_2c

    .line 702
    const-string v6, "UsbSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "no meta-data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_26} :catch_75
    .catchall {:try_start_5 .. :try_end_26} :catchall_9e

    .line 726
    if-eqz v3, :cond_2b

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 728
    :cond_2b
    :goto_2b
    return v5

    .line 706
    :cond_2c
    :try_start_2c
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 707
    :goto_2f
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v7

    if-eq v7, v6, :cond_98

    .line 708
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 709
    .local v4, "tagName":Ljava/lang/String;
    if-eqz p3, :cond_55

    const-string/jumbo v7, "usb-device"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 710
    invoke-static {v3}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    move-result-object v2

    .line 711
    .local v2, "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    invoke-virtual {v2, p3}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(Landroid/hardware/usb/UsbDevice;)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4b} :catch_75
    .catchall {:try_start_2c .. :try_end_4b} :catchall_9e

    move-result v7

    if-eqz v7, :cond_71

    .line 726
    if-eqz v3, :cond_53

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_53
    move v5, v6

    goto :goto_2b

    .line 715
    .end local v2    # "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_55
    if-eqz p4, :cond_71

    :try_start_57
    const-string/jumbo v7, "usb-accessory"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 716
    invoke-static {v3}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    move-result-object v2

    .line 717
    .local v2, "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    invoke-virtual {v2, p4}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->matches(Landroid/hardware/usb/UsbAccessory;)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_67} :catch_75
    .catchall {:try_start_57 .. :try_end_67} :catchall_9e

    move-result v7

    if-eqz v7, :cond_71

    .line 726
    if-eqz v3, :cond_6f

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6f
    move v5, v6

    goto :goto_2b

    .line 721
    .end local v2    # "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    :cond_71
    :try_start_71
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_75
    .catchall {:try_start_71 .. :try_end_74} :catchall_9e

    goto :goto_2f

    .line 723
    .end local v4    # "tagName":Ljava/lang/String;
    :catch_75
    move-exception v1

    .line 724
    .local v1, "e":Ljava/lang/Exception;
    :try_start_76
    const-string v6, "UsbSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load component info "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_92
    .catchall {:try_start_76 .. :try_end_92} :catchall_9e

    .line 726
    if-eqz v3, :cond_2b

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2b

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_98
    if-eqz v3, :cond_2b

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2b

    :catchall_9e
    move-exception v5

    if-eqz v3, :cond_a4

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_a4
    throw v5
.end method

.method private readPreference(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    const/4 v3, 0x0

    .line 565
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 566
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_19

    .line 567
    const-string/jumbo v4, "package"

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 568
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 572
    :cond_19
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 573
    const-string/jumbo v4, "usb-device"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 574
    invoke-static {p1}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    move-result-object v1

    .line 575
    .local v1, "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    iget-object v4, p0, mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    .end local v1    # "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_32
    :goto_32
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 581
    return-void

    .line 566
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 576
    :cond_39
    const-string/jumbo v4, "usb-accessory"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 577
    invoke-static {p1}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    move-result-object v1

    .line 578
    .local v1, "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    iget-object v4, p0, mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32
.end method

.method private readSettingsLocked()V
    .registers 7

    .prologue
    .line 623
    const-string v4, "UsbSettingsManager"

    const-string/jumbo v5, "readSettingsLocked()"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v4, p0, mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 626
    iget-object v4, p0, mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 628
    const/4 v2, 0x0

    .line 630
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_13
    iget-object v4, p0, mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 631
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 632
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 634
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 635
    :goto_29
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_64

    .line 636
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 637
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "preference"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 638
    invoke-direct {p0, v1}, readPreference(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_40} :catch_41
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_40} :catch_52
    .catchall {:try_start_13 .. :try_end_40} :catchall_68

    goto :goto_29

    .line 643
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "tagName":Ljava/lang/String;
    :catch_41
    move-exception v0

    .line 644
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_42
    const-string v4, "UsbSettingsManager"

    const-string/jumbo v5, "settings file not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_68

    .line 649
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 651
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_4d
    return-void

    .line 640
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "tagName":Ljava/lang/String;
    :cond_4e
    :try_start_4e
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_51} :catch_41
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_52
    .catchall {:try_start_4e .. :try_end_51} :catchall_68

    goto :goto_29

    .line 645
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "tagName":Ljava/lang/String;
    :catch_52
    move-exception v0

    .line 646
    .local v0, "e":Ljava/lang/Exception;
    :try_start_53
    const-string v4, "UsbSettingsManager"

    const-string/jumbo v5, "error reading settings file, deleting to start fresh"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 647
    iget-object v4, p0, mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->delete()V
    :try_end_60
    .catchall {:try_start_53 .. :try_end_60} :catchall_68

    .line 649
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_4d

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_64
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_4d

    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_68
    move-exception v4

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4
.end method

.method private requestPermissionDialog(Landroid/content/Intent;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1137
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1138
    .local v4, "uid":I
    const-string v5, "UsbSettingsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestPermissionDialog: for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget-boolean v5, p0, mSmartSwitchInTheProcess:Z

    if-eqz v5, :cond_3d

    .line 1140
    const-string v5, "UsbSettingsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestPermissionDialog: mSmartSwitchInTheProcess "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, mSmartSwitchInTheProcess:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :goto_3c
    return-void

    .line 1145
    :cond_3d
    :try_start_3d
    iget-object v5, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1146
    .local v0, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, v4, :cond_8d

    .line 1147
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not match caller\'s uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_6c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3d .. :try_end_6c} :catch_6c

    .line 1150
    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :catch_6c
    move-exception v1

    .line 1151
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1154
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_8d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1155
    .local v2, "identity":J
    const-string v5, "com.android.systemui"

    const-string v6, "com.android.systemui.usb.UsbPermissionActivity"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1157
    const/high16 v5, 0x10000000

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1158
    const-string v5, "android.intent.extra.INTENT"

    invoke-virtual {p1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1159
    const-string/jumbo v5, "package"

    invoke-virtual {p1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1160
    const-string v5, "android.intent.extra.UID"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1162
    :try_start_ad
    const-string v5, "UsbSettingsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestPermissionDialog: startActivityAsUser UsbPermissionActivity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mUser"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mUser:Landroid/os/UserHandle;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object v5, p0, mUserContext:Landroid/content/Context;

    iget-object v6, p0, mUser:Landroid/os/UserHandle;

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_e3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_ad .. :try_end_e3} :catch_e8
    .catchall {:try_start_ad .. :try_end_e3} :catchall_f6

    .line 1167
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3c

    .line 1164
    :catch_e8
    move-exception v1

    .line 1165
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    :try_start_e9
    const-string v5, "UsbSettingsManager"

    const-string/jumbo v6, "unable to start UsbPermissionActivity"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f1
    .catchall {:try_start_e9 .. :try_end_f1} :catchall_f6

    .line 1167
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3c

    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_f6
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "defaultPackage"    # Ljava/lang/String;
    .param p4, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p5, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            "Landroid/hardware/usb/UsbAccessory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 870
    .local p2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 871
    .local v1, "count":I
    const-string v9, "UsbSettingsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "resolveActivity : matches count = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", defaultPackage = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    if-nez v1, :cond_67

    .line 876
    if-eqz p5, :cond_5c

    .line 877
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v8

    .line 878
    .local v8, "uri":Ljava/lang/String;
    if-eqz v8, :cond_5c

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5c

    .line 881
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 882
    .local v3, "dialogIntent":Landroid/content/Intent;
    const-string v9, "com.android.systemui"

    const-string v10, "com.android.systemui.usb.UsbAccessoryUriActivity"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 884
    const/high16 v9, 0x10000000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 885
    const-string v9, "accessory"

    move-object/from16 v0, p5

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 886
    const-string/jumbo v9, "uri"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 888
    :try_start_55
    iget-object v9, p0, mUserContext:Landroid/content/Context;

    iget-object v10, p0, mUser:Landroid/os/UserHandle;

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_55 .. :try_end_5c} :catch_5d

    .line 981
    .end local v3    # "dialogIntent":Landroid/content/Intent;
    .end local v8    # "uri":Ljava/lang/String;
    :cond_5c
    :goto_5c
    return-void

    .line 889
    .restart local v3    # "dialogIntent":Landroid/content/Intent;
    .restart local v8    # "uri":Ljava/lang/String;
    :catch_5d
    move-exception v4

    .line 890
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    const-string v9, "UsbSettingsManager"

    const-string/jumbo v10, "unable to start UsbAccessoryUriActivity"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 899
    .end local v3    # "dialogIntent":Landroid/content/Intent;
    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    .end local v8    # "uri":Ljava/lang/String;
    :cond_67
    const/4 v2, 0x0

    .line 900
    .local v2, "defaultRI":Landroid/content/pm/ResolveInfo;
    const/4 v9, 0x1

    if-ne v1, v9, :cond_9c

    if-nez p3, :cond_9c

    .line 903
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 904
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_89

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_89

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_89

    .line 907
    move-object v2, v6

    .line 910
    :cond_89
    iget-boolean v9, p0, mDisablePermissionDialogs:Z

    if-eqz v9, :cond_9c

    .line 912
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 913
    .restart local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_9c

    .line 914
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p3, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 919
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_9c
    if-nez v2, :cond_b8

    if-eqz p3, :cond_b8

    .line 921
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_a1
    if-ge v5, v1, :cond_b8

    .line 922
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 923
    .restart local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_125

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_125

    .line 925
    move-object v2, v6

    .line 931
    .end local v5    # "i":I
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_b8
    if-eqz v2, :cond_137

    .line 932
    const-string v9, "UsbSettingsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "resolveActivity : defaultRI = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    if-eqz p4, :cond_129

    .line 935
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    invoke-direct {p0, v0, v9}, grantDevicePermissionLocked(Landroid/hardware/usb/UsbDevice;I)V

    .line 939
    :cond_e4
    :goto_e4
    const-string v9, "UsbSettingsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "resolveActivity : permissionsGranted to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :try_start_101
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 946
    iget-object v9, p0, mUserContext:Landroid/content/Context;

    iget-object v10, p0, mUser:Landroid/os/UserHandle;

    invoke-virtual {v9, p1, v10}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_118
    .catch Landroid/content/ActivityNotFoundException; {:try_start_101 .. :try_end_118} :catch_11a

    goto/16 :goto_5c

    .line 947
    :catch_11a
    move-exception v4

    .line 948
    .restart local v4    # "e":Landroid/content/ActivityNotFoundException;
    const-string v9, "UsbSettingsManager"

    const-string/jumbo v10, "startActivity failed"

    invoke-static {v9, v10, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5c

    .line 921
    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v5    # "i":I
    .restart local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_125
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_a1

    .line 936
    .end local v5    # "i":I
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_129
    if-eqz p5, :cond_e4

    .line 937
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v9}, grantAccessoryPermissionLocked(Landroid/hardware/usb/UsbAccessory;I)V

    goto :goto_e4

    .line 951
    :cond_137
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 952
    .local v7, "resolverIntent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v7, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 954
    const/4 v9, 0x1

    if-ne v1, v9, :cond_197

    .line 956
    const-string v9, "com.android.systemui"

    const-string v10, "com.android.systemui.usb.UsbConfirmActivity"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 958
    const-string/jumbo v10, "rinfo"

    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Parcelable;

    invoke-virtual {v7, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 960
    if-eqz p4, :cond_18f

    .line 961
    const-string/jumbo v9, "device"

    move-object/from16 v0, p4

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 965
    :goto_162
    const-string v9, "UsbSettingsManager"

    const-string/jumbo v10, "resolveActivity : UsbConfirmActivity"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :goto_16a
    :try_start_16a
    iget-object v9, p0, mUserContext:Landroid/content/Context;

    iget-object v10, p0, mUser:Landroid/os/UserHandle;

    invoke-virtual {v9, v7, v10}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_171
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16a .. :try_end_171} :catch_173

    goto/16 :goto_5c

    .line 977
    :catch_173
    move-exception v4

    .line 978
    .restart local v4    # "e":Landroid/content/ActivityNotFoundException;
    const-string v9, "UsbSettingsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unable to start activity "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c

    .line 963
    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    :cond_18f
    const-string v9, "accessory"

    move-object/from16 v0, p5

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_162

    .line 968
    :cond_197
    const-string v9, "com.android.systemui"

    const-string v10, "com.android.systemui.usb.UsbResolverActivity"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 970
    const-string/jumbo v9, "rlist"

    invoke-virtual {v7, v9, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 971
    const-string v9, "android.intent.extra.INTENT"

    invoke-virtual {v7, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 972
    const-string/jumbo v9, "fromUsbSettingsManager"

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 973
    const-string v9, "UsbSettingsManager"

    const-string/jumbo v10, "resolveActivity : UsbResolverActivity"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16a
.end method

.method private upgradeSingleUserLocked()V
    .registers 8

    .prologue
    .line 588
    sget-object v5, sSingleUserSettingsFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 589
    iget-object v5, p0, mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 590
    iget-object v5, p0, mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 592
    const/4 v1, 0x0

    .line 594
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_13
    new-instance v2, Ljava/io/FileInputStream;

    sget-object v5, sSingleUserSettingsFile:Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1a} :catch_77
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_1a} :catch_75
    .catchall {:try_start_13 .. :try_end_1a} :catchall_6d

    .line 595
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 596
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 598
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 599
    :goto_2a
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_68

    .line 600
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 601
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "preference"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 602
    invoke-direct {p0, v3}, readPreference(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_41} :catch_42
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_41} :catch_5b
    .catchall {:try_start_1a .. :try_end_41} :catchall_72

    goto :goto_2a

    .line 607
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "tagName":Ljava/lang/String;
    :catch_42
    move-exception v0

    move-object v1, v2

    .line 608
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :goto_44
    :try_start_44
    const-string v5, "UsbSettingsManager"

    const-string v6, "Failed to read single-user settings"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_6d

    .line 612
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 615
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4e
    invoke-direct {p0}, writeSettingsLocked()V

    .line 618
    sget-object v5, sSingleUserSettingsFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 620
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :cond_56
    return-void

    .line 604
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "tagName":Ljava/lang/String;
    :cond_57
    :try_start_57
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_42
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_57 .. :try_end_5a} :catch_5b
    .catchall {:try_start_57 .. :try_end_5a} :catchall_72

    goto :goto_2a

    .line 609
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "tagName":Ljava/lang/String;
    :catch_5b
    move-exception v0

    move-object v1, v2

    .line 610
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :goto_5d
    :try_start_5d
    const-string v5, "UsbSettingsManager"

    const-string v6, "Failed to read single-user settings"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_6d

    .line 612
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_4e

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_68
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v1, v2

    .line 613
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_4e

    .line 612
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_6d
    move-exception v5

    :goto_6e
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_72
    move-exception v5

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_6e

    .line 609
    :catch_75
    move-exception v0

    goto :goto_5d

    .line 607
    :catch_77
    move-exception v0

    goto :goto_44
.end method

.method private writeSettingsLocked()V
    .registers 9

    .prologue
    .line 654
    const-string v5, "UsbSettingsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeSettingsLocked: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v2, 0x0

    .line 658
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_24
    iget-object v5, p0, mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 660
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 661
    .local v4, "serializer":Lcom/android/internal/util/FastXmlSerializer;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 662
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 663
    const-string/jumbo v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 664
    const/4 v5, 0x0

    const-string/jumbo v6, "settings"

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 666
    iget-object v5, p0, mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_59
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_96

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    .line 667
    .local v1, "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    const/4 v5, 0x0

    const-string/jumbo v6, "preference"

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 668
    const/4 v6, 0x0

    const-string/jumbo v7, "package"

    iget-object v5, p0, mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v5}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 669
    invoke-virtual {v1, v4}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 670
    const/4 v5, 0x0

    const-string/jumbo v6, "preference"

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_85} :catch_86

    goto :goto_59

    .line 684
    .end local v1    # "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "serializer":Lcom/android/internal/util/FastXmlSerializer;
    :catch_86
    move-exception v0

    .line 685
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "UsbSettingsManager"

    const-string v6, "Failed to write settings"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 686
    if-eqz v2, :cond_95

    .line 687
    iget-object v5, p0, mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 690
    .end local v0    # "e":Ljava/io/IOException;
    :cond_95
    :goto_95
    return-void

    .line 673
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "serializer":Lcom/android/internal/util/FastXmlSerializer;
    :cond_96
    :try_start_96
    iget-object v5, p0, mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_cd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    .line 674
    .local v1, "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    const/4 v5, 0x0

    const-string/jumbo v6, "preference"

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 675
    const/4 v6, 0x0

    const-string/jumbo v7, "package"

    iget-object v5, p0, mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v5}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 676
    invoke-virtual {v1, v4}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 677
    const/4 v5, 0x0

    const-string/jumbo v6, "preference"

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_a0

    .line 680
    .end local v1    # "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    :cond_cd
    const/4 v5, 0x0

    const-string/jumbo v6, "settings"

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 681
    invoke-virtual {v4}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 683
    iget-object v5, p0, mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_dc} :catch_86

    goto :goto_95
.end method


# virtual methods
.method public accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V
    .registers 8
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 842
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 843
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "accessory"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 844
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 848
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 849
    :try_start_14
    invoke-direct {p0, p1, v1}, getAccessoryMatchesLocked(Landroid/hardware/usb/UsbAccessory;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v2

    .line 852
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, mAccessoryPreferenceMap:Ljava/util/HashMap;

    new-instance v5, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    invoke-direct {v5, p1}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 853
    .local v3, "defaultPackage":Ljava/lang/String;
    monitor-exit v4
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_2d

    .line 855
    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    .line 856
    return-void

    .line 853
    .end local v2    # "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "defaultPackage":Ljava/lang/String;
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public accessoryDetached(Landroid/hardware/usb/UsbAccessory;)V
    .registers 5
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 860
    iget-object v1, p0, mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 864
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "accessory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 865
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 866
    return-void
.end method

.method public checkPermission(Landroid/hardware/usb/UsbAccessory;)V
    .registers 5
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 1131
    invoke-virtual {p0, p1}, hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1132
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User has not given permission to accessory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1134
    :cond_1f
    return-void
.end method

.method public checkPermission(Landroid/hardware/usb/UsbDevice;)V
    .registers 5
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 1124
    const-string v0, "UsbSettingsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPermission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    invoke-virtual {p0, p1}, hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1126
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User has not given permission to device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1128
    :cond_3b
    return-void
.end method

.method public clearDefaults(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1386
    invoke-direct {p0}, isUsbForKnox2_5()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1387
    invoke-direct {p0}, isUsbHostModeEnabledForContainer()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1399
    :goto_c
    return-void

    .line 1393
    :cond_d
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1394
    :try_start_10
    const-string v0, "UsbSettingsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearDefaults: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    invoke-direct {p0, p1}, clearPackageDefaultsLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1396
    invoke-direct {p0}, writeSettingsLocked()V

    .line 1398
    :cond_31
    monitor-exit v1

    goto :goto_c

    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public deviceAttached(Landroid/hardware/usb/UsbDevice;)V
    .registers 10
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    const/4 v7, 0x1

    .line 800
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 801
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "device"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 802
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 806
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 807
    :try_start_16
    invoke-direct {p0, p1, v1}, getDeviceMatchesLocked(Landroid/hardware/usb/UsbDevice;Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v2

    .line 810
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, p1, v2}, isSmartSwitchInTheProcess(Landroid/hardware/usb/UsbDevice;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_87

    const-string v3, "com.sec.android.easyMover"

    .line 813
    .local v3, "defaultPackage":Ljava/lang/String;
    :goto_22
    const-string v0, "UsbSettingsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deviceAttached: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " def package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-string v0, "UsbSettingsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deviceAttached, send intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v0, p0, mUserContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 820
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "user_setup_complete"

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v7, :cond_96

    invoke-direct {p0, p1, v2}, isSmartSwitchInTheProcess(Landroid/hardware/usb/UsbDevice;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_96

    .line 822
    const-string v0, "UsbSettingsManager"

    const-string/jumbo v4, "deviceAttached : setupwizard is not finished"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    monitor-exit v6

    .line 829
    :goto_86
    return-void

    .line 810
    .end local v3    # "defaultPackage":Ljava/lang/String;
    :cond_87
    iget-object v0, p0, mDevicePreferenceMap:Ljava/util/HashMap;

    new-instance v4, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    invoke-direct {v4, p1}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    goto :goto_22

    .line 825
    .restart local v3    # "defaultPackage":Ljava/lang/String;
    :cond_96
    const-string v0, "UsbSettingsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deviceAttached, call to resolveActivity started, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, resolveActivity(Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V

    .line 827
    const-string v0, "UsbSettingsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deviceAttached, call to resolveActivity ended, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    monitor-exit v6

    goto :goto_86

    .end local v2    # "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "defaultPackage":Ljava/lang/String;
    :catchall_d0
    move-exception v0

    monitor-exit v6
    :try_end_d2
    .catchall {:try_start_16 .. :try_end_d2} :catchall_d0

    throw v0
.end method

.method public deviceDetached(Landroid/hardware/usb/UsbDevice;)V
    .registers 6
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 833
    iget-object v1, p0, mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    const/4 v1, 0x0

    iput-boolean v1, p0, mSmartSwitchInTheProcess:Z

    .line 835
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 836
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "device"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 837
    const-string v1, "UsbSettingsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "usbDeviceRemoved, sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 839
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 12
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 1432
    iget-object v8, p0, mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1433
    :try_start_3
    const-string v7, "Device permissions:"

    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1434
    iget-object v7, p0, mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_71

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1435
    .local v2, "deviceName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1436
    iget-object v7, p0, mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseBooleanArray;

    .line 1437
    .local v6, "uidList":Landroid/util/SparseBooleanArray;
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 1438
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_47
    if-ge v4, v1, :cond_6a

    .line 1439
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1438
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 1441
    :cond_6a
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_12

    .line 1463
    .end local v1    # "count":I
    .end local v2    # "deviceName":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "uidList":Landroid/util/SparseBooleanArray;
    :catchall_6e
    move-exception v7

    monitor-exit v8
    :try_end_70
    .catchall {:try_start_3 .. :try_end_70} :catchall_6e

    throw v7

    .line 1443
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_71
    :try_start_71
    const-string v7, "Accessory permissions:"

    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1444
    iget-object v7, p0, mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_80
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_dc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 1445
    .local v0, "accessory":Landroid/hardware/usb/UsbAccessory;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1446
    iget-object v7, p0, mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseBooleanArray;

    .line 1447
    .restart local v6    # "uidList":Landroid/util/SparseBooleanArray;
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 1448
    .restart local v1    # "count":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_b5
    if-ge v4, v1, :cond_d8

    .line 1449
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1448
    add-int/lit8 v4, v4, 0x1

    goto :goto_b5

    .line 1451
    :cond_d8
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_80

    .line 1453
    .end local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .end local v1    # "count":I
    .end local v4    # "i":I
    .end local v6    # "uidList":Landroid/util/SparseBooleanArray;
    :cond_dc
    const-string v7, "Device preferences:"

    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1454
    iget-object v7, p0, mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_eb
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_120

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    .line 1455
    .local v3, "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_eb

    .line 1457
    .end local v3    # "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_120
    const-string v7, "Accessory preferences:"

    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1458
    iget-object v7, p0, mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_164

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    .line 1459
    .local v3, "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12f

    .line 1461
    .end local v3    # "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    :cond_164
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  SmartSwitch: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mSmartSwitchInTheProcess:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1463
    monitor-exit v8
    :try_end_17d
    .catchall {:try_start_71 .. :try_end_17d} :catchall_6e

    .line 1464
    return-void
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 5
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    .prologue
    .line 1346
    invoke-direct {p0}, isUsbForKnox2_5()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1347
    invoke-direct {p0}, isUsbHostModeEnabledForContainer()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1356
    :goto_c
    return-void

    .line 1353
    :cond_d
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1354
    :try_start_10
    invoke-direct {p0, p1, p2}, grantAccessoryPermissionLocked(Landroid/hardware/usb/UsbAccessory;I)V

    .line 1355
    monitor-exit v1

    goto :goto_c

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 5
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"    # I

    .prologue
    .line 1320
    invoke-direct {p0}, isUsbForKnox2_5()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1321
    invoke-direct {p0}, isUsbHostModeEnabledForContainer()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1330
    :goto_c
    return-void

    .line 1327
    :cond_d
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1328
    :try_start_10
    invoke-direct {p0, p1, p2}, grantDevicePermissionLocked(Landroid/hardware/usb/UsbDevice;I)V

    .line 1329
    monitor-exit v1

    goto :goto_c

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public hasDefaults(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1369
    invoke-direct {p0}, isUsbForKnox2_5()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1370
    invoke-direct {p0}, isUsbHostModeEnabledForContainer()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1380
    :goto_e
    return v0

    .line 1376
    :cond_f
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1377
    :try_start_12
    iget-object v3, p0, mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    monitor-exit v2

    move v0, v1

    goto :goto_e

    .line 1378
    :cond_21
    iget-object v3, p0, mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    monitor-exit v2

    move v0, v1

    goto :goto_e

    .line 1379
    :cond_30
    const-string v1, "UsbSettingsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hasDefaults: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FALSE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    monitor-exit v2

    goto :goto_e

    .line 1381
    :catchall_51
    move-exception v0

    monitor-exit v2
    :try_end_53
    .catchall {:try_start_12 .. :try_end_53} :catchall_51

    throw v0
.end method

.method public hasPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .registers 9
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    const/4 v2, 0x0

    .line 1102
    invoke-direct {p0}, isUsbForKnox2_5()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1103
    invoke-direct {p0}, isUsbHostModeEnabledForContainer()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1119
    :goto_d
    return v2

    .line 1109
    :cond_e
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1110
    :try_start_11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1111
    .local v0, "uid":I
    const/16 v4, 0x3e8

    if-eq v0, v4, :cond_1d

    iget-boolean v4, p0, mDisablePermissionDialogs:Z

    if-eqz v4, :cond_23

    .line 1112
    :cond_1d
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_d

    .line 1120
    .end local v0    # "uid":I
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_20

    throw v2

    .line 1114
    .restart local v0    # "uid":I
    :cond_23
    :try_start_23
    iget-object v4, p0, mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 1115
    .local v1, "uidList":Landroid/util/SparseBooleanArray;
    const-string v4, "UsbSettingsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hasPermission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    if-nez v1, :cond_53

    .line 1117
    monitor-exit v3

    goto :goto_d

    .line 1119
    :cond_53
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    monitor-exit v3
    :try_end_58
    .catchall {:try_start_23 .. :try_end_58} :catchall_20

    goto :goto_d
.end method

.method public hasPermission(Landroid/hardware/usb/UsbDevice;)Z
    .registers 9
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    const/4 v2, 0x0

    .line 1075
    const-string v3, "UsbSettingsManager"

    const-string/jumbo v4, "hasPermission++"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    invoke-direct {p0}, isUsbForKnox2_5()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1079
    invoke-direct {p0}, isUsbHostModeEnabledForContainer()Z

    move-result v3

    if-nez v3, :cond_16

    .line 1095
    :goto_15
    return v2

    .line 1085
    :cond_16
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1086
    :try_start_19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1087
    .local v0, "uid":I
    const/16 v4, 0x3e8

    if-eq v0, v4, :cond_25

    iget-boolean v4, p0, mDisablePermissionDialogs:Z

    if-eqz v4, :cond_2b

    .line 1088
    :cond_25
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_15

    .line 1096
    .end local v0    # "uid":I
    :catchall_28
    move-exception v2

    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_28

    throw v2

    .line 1090
    .restart local v0    # "uid":I
    :cond_2b
    :try_start_2b
    iget-object v4, p0, mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 1091
    .local v1, "uidList":Landroid/util/SparseBooleanArray;
    const-string v4, "UsbSettingsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hasPermission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    if-nez v1, :cond_5f

    .line 1093
    monitor-exit v3

    goto :goto_15

    .line 1095
    :cond_5f
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    monitor-exit v3
    :try_end_64
    .catchall {:try_start_2b .. :try_end_64} :catchall_28

    goto :goto_15
.end method

.method public requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 8
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1238
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1241
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0}, isUsbForKnox2_5()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1242
    invoke-direct {p0}, isUsbHostModeEnabledForContainer()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1263
    :goto_11
    return-void

    .line 1250
    :cond_12
    invoke-virtual {p0, p1}, hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1251
    const-string v2, "accessory"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1252
    const-string/jumbo v2, "permission"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1254
    :try_start_24
    iget-object v2, p0, mUserContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2a
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_24 .. :try_end_2a} :catch_2b

    goto :goto_11

    .line 1255
    :catch_2b
    move-exception v0

    .line 1256
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "UsbSettingsManager"

    const-string/jumbo v3, "requestPermission PendingIntent was cancelled"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1261
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_35
    const-string v2, "accessory"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1262
    invoke-direct {p0, v1, p2, p3}, requestPermissionDialog(Landroid/content/Intent;Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_11
.end method

.method public requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 12
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v7, 0x1

    .line 1172
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1173
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "UsbSettingsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestPermission:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,packageName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,pi "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    invoke-direct {p0}, isUsbForKnox2_5()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 1180
    invoke-direct {p0}, isUsbHostModeEnabledForContainer()Z

    move-result v4

    if-nez v4, :cond_44

    .line 1235
    :goto_43
    return-void

    .line 1187
    :cond_44
    const-string v4, "application_policy"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1188
    .local v2, "uapp":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v2, :cond_9d

    .line 1189
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1190
    .local v3, "uid":I
    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isUsbDevicePermittedForPackage(ILandroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 1192
    invoke-virtual {p0, p1}, hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v4

    if-nez v4, :cond_79

    .line 1193
    const-string v4, "UsbSettingsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MDM :: Granting device permission for uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    invoke-virtual {p0, p1, v3}, grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 1198
    :cond_79
    const-string/jumbo v4, "device"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1199
    const-string/jumbo v4, "permission"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1201
    :try_start_85
    const-string v4, "UsbSettingsManager"

    const-string v5, "MDM :: Sending intent "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-object v4, p0, mUserContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {p3, v4, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_92
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_85 .. :try_end_92} :catch_93

    goto :goto_43

    .line 1203
    :catch_93
    move-exception v0

    .line 1204
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v4, "UsbSettingsManager"

    const-string/jumbo v5, "requestPermission PendingIntent was cancelled"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 1219
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v3    # "uid":I
    :cond_9d
    invoke-virtual {p0, p1}, hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v4

    if-eqz v4, :cond_e5

    .line 1220
    const-string v4, "UsbSettingsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestPermission:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has permissions"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    const-string/jumbo v4, "device"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1222
    const-string/jumbo v4, "permission"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1224
    :try_start_d2
    iget-object v4, p0, mUserContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {p3, v4, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_d8
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_d2 .. :try_end_d8} :catch_da

    goto/16 :goto_43

    .line 1225
    :catch_da
    move-exception v0

    .line 1226
    .restart local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    const-string v4, "UsbSettingsManager"

    const-string/jumbo v5, "requestPermission PendingIntent was cancelled"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_43

    .line 1231
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_e5
    const-string v4, "UsbSettingsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestPermission:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hasn\'t permissions, request it"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const-string/jumbo v4, "device"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1234
    invoke-direct {p0, v1, p2, p3}, requestPermissionDialog(Landroid/content/Intent;Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto/16 :goto_43
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V
    .registers 9
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1294
    invoke-direct {p0}, isUsbForKnox2_5()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1295
    invoke-direct {p0}, isUsbHostModeEnabledForContainer()Z

    move-result v4

    if-nez v4, :cond_f

    .line 1316
    :goto_e
    return-void

    .line 1301
    :cond_f
    new-instance v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    invoke-direct {v1, p1}, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    .line 1302
    .local v1, "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    const/4 v0, 0x0

    .line 1303
    .local v0, "changed":Z
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1304
    if-nez p2, :cond_2f

    .line 1305
    :try_start_1a
    iget-object v5, p0, mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2d

    move v0, v2

    .line 1312
    :cond_23
    :goto_23
    if-eqz v0, :cond_28

    .line 1313
    invoke-direct {p0}, writeSettingsLocked()V

    .line 1315
    :cond_28
    monitor-exit v4

    goto :goto_e

    :catchall_2a
    move-exception v2

    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_2a

    throw v2

    :cond_2d
    move v0, v3

    .line 1305
    goto :goto_23

    .line 1307
    :cond_2f
    :try_start_2f
    iget-object v5, p0, mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    move v0, v2

    .line 1308
    :goto_3c
    if-eqz v0, :cond_23

    .line 1309
    iget-object v2, p0, mAccessoryPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catchall {:try_start_2f .. :try_end_43} :catchall_2a

    goto :goto_23

    :cond_44
    move v0, v3

    .line 1307
    goto :goto_3c
.end method

.method public setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    .registers 11
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1267
    invoke-direct {p0}, isUsbForKnox2_5()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1268
    invoke-direct {p0}, isUsbHostModeEnabledForContainer()Z

    move-result v4

    if-nez v4, :cond_f

    .line 1290
    :goto_e
    return-void

    .line 1274
    :cond_f
    new-instance v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    invoke-direct {v1, p1}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 1275
    .local v1, "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    const/4 v0, 0x0

    .line 1276
    .local v0, "changed":Z
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1277
    :try_start_18
    const-string v5, "UsbSettingsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setDevicePackage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    if-nez p2, :cond_56

    .line 1279
    iget-object v5, p0, mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_54

    move v0, v2

    .line 1286
    :cond_4a
    :goto_4a
    if-eqz v0, :cond_4f

    .line 1287
    invoke-direct {p0}, writeSettingsLocked()V

    .line 1289
    :cond_4f
    monitor-exit v4

    goto :goto_e

    :catchall_51
    move-exception v2

    monitor-exit v4
    :try_end_53
    .catchall {:try_start_18 .. :try_end_53} :catchall_51

    throw v2

    :cond_54
    move v0, v3

    .line 1279
    goto :goto_4a

    .line 1281
    :cond_56
    :try_start_56
    iget-object v5, p0, mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6b

    move v0, v2

    .line 1282
    :goto_63
    if-eqz v0, :cond_4a

    .line 1283
    iget-object v2, p0, mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6a
    .catchall {:try_start_56 .. :try_end_6a} :catchall_51

    goto :goto_4a

    :cond_6b
    move v0, v3

    .line 1281
    goto :goto_63
.end method
