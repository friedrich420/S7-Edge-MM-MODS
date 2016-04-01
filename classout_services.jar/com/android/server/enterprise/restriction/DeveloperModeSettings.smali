.class Lcom/android/server/enterprise/restriction/DeveloperModeSettings;
.super Ljava/lang/Object;
.source "DeveloperModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/restriction/DeveloperModeSettings$SystemPropPoker;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String; = "262144"

.field private static final DEFAULT_USB_FUNCTION:Ljava/lang/String; = "none"

.field static final GLOBAL_SETTINGS_DEFAULT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HARDWARE_UI_PROPERTY:Ljava/lang/String; = "persist.sys.ui.hw"

.field private static final HDCP_CHECKING_PROPERTY:Ljava/lang/String; = "persist.sys.hdcp_checking"

.field private static final HDCP_DEFAULT_VALUE:Ljava/lang/String; = "drm-only"

.field private static final MSAA_PROPERTY:Ljava/lang/String; = "debug.egl.force_msaa"

.field private static final MULTI_WINDOW_SYSTEM_PROPERTY:Ljava/lang/String; = "persist.sys.debug.multi_window"

.field private static final OPENGL_TRACES_PROPERTY:Ljava/lang/String; = "debug.egl.trace"

.field private static final PACKAGE_SETTINGS_APP:Ljava/lang/String; = "com.android.settings"

.field static final SECURE_SETTINGS_DEFAULT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SELECT_LOGD_SIZE_PROPERTY:Ljava/lang/String; = "persist.logd.size"

.field private static final SURFACE_COMPOSER:Ljava/lang/String; = "android.ui.ISurfaceComposer"

.field private static final SURFACE_FLINGER_SERVICE:Ljava/lang/String; = "SurfaceFlinger"

.field static final SYSTEM_PROPERTIES_DEFAULT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final SYSTEM_SETTINGS_DEFAULT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DeveloperModeSettings"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 95
    new-instance v0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$1;

    invoke-direct {v0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$1;-><init>()V

    sput-object v0, SYSTEM_SETTINGS_DEFAULT:Ljava/util/Map;

    .line 107
    new-instance v0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$2;

    invoke-direct {v0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$2;-><init>()V

    sput-object v0, SECURE_SETTINGS_DEFAULT:Ljava/util/Map;

    .line 121
    new-instance v0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$3;

    invoke-direct {v0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$3;-><init>()V

    sput-object v0, GLOBAL_SETTINGS_DEFAULT:Ljava/util/Map;

    .line 152
    new-instance v0, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;

    invoke-direct {v0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$4;-><init>()V

    sput-object v0, SYSTEM_PROPERTIES_DEFAULT:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 184
    return-void
.end method

.method private isShowingScreenUpdateAndReloadSurface()Z
    .registers 14

    .prologue
    const/4 v9, 0x0

    .line 405
    const/4 v8, 0x0

    .line 407
    .local v8, "showUpdates":I
    :try_start_2
    const-string v10, "SurfaceFlinger"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 408
    .local v4, "flinger":Landroid/os/IBinder;
    if-eqz v4, :cond_37

    .line 409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 410
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 411
    .local v5, "reply":Landroid/os/Parcel;
    const-string v10, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 412
    const/16 v10, 0x3f2

    const/4 v11, 0x0

    invoke-interface {v4, v10, v0, v5, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 414
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 416
    .local v7, "showCpu":I
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 417
    .local v2, "enableGL":I
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 419
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 421
    .local v6, "showBackground":I
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 422
    .local v1, "disableOverlays":I
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 423
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_37} :catch_3b

    .line 428
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "enableGL":I
    .end local v4    # "flinger":Landroid/os/IBinder;
    .end local v5    # "reply":Landroid/os/Parcel;
    .end local v6    # "showBackground":I
    .end local v7    # "showCpu":I
    :cond_37
    :goto_37
    if-eqz v8, :cond_3a

    const/4 v9, 0x1

    :cond_3a
    return v9

    .line 425
    :catch_3b
    move-exception v3

    .line 426
    .local v3, "ex":Landroid/os/RemoteException;
    const-string v10, "DeveloperModeSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateFlingerOptions: RemoteException ex -> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37
.end method

.method private resetAppProcessLimitOptions()Z
    .registers 5

    .prologue
    .line 479
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->setProcessLimit(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    .line 484
    const/4 v1, 0x1

    :goto_9
    return v1

    .line 480
    :catch_a
    move-exception v0

    .line 481
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DeveloperModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetAppProcessLimitOptions: RemoteException ex -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const/4 v1, 0x0

    goto :goto_9
.end method

.method private resetBluetoothHCILog()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 291
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_hci_log"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 293
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 294
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->configHciSnoopLog(Z)Z

    .line 295
    return-void
.end method

.method private resetCpuUsageOptions()V
    .registers 5

    .prologue
    .line 468
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_processes"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 469
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.LoadAverageService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 471
    .local v0, "service":Landroid/content/Intent;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 472
    return-void
.end method

.method private resetDebugApps()Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 333
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_d

    .line 338
    :goto_c
    return v1

    .line 335
    :catch_d
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    move v1, v2

    .line 336
    goto :goto_c
.end method

.method private resetDrawingOptions()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 379
    :try_start_1
    const-string v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 380
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_30

    .line 381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 382
    .local v0, "data":Landroid/os/Parcel;
    const-string v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 383
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    invoke-direct {p0}, isShowingScreenUpdateAndReloadSurface()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 388
    const/16 v4, 0x3ea

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 393
    :cond_23
    const/16 v4, 0x3f0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-direct {p0}, isShowingScreenUpdateAndReloadSurface()Z
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_30} :catch_32

    .line 401
    .end local v0    # "data":Landroid/os/Parcel;
    :cond_30
    const/4 v3, 0x1

    .end local v2    # "flinger":Landroid/os/IBinder;
    :goto_31
    return v3

    .line 397
    :catch_32
    move-exception v1

    .line 398
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v4, "DeveloperModeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetShowUpdatesOption: RemoteException ex -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31
.end method

.method private resetGlobalSettings()Z
    .registers 7

    .prologue
    .line 519
    const/4 v2, 0x1

    .line 520
    .local v2, "ret":Z
    sget-object v3, GLOBAL_SETTINGS_DEFAULT:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 521
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 522
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 523
    .local v1, "map":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    .line 525
    goto :goto_b

    .line 526
    .end local v1    # "map":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2f
    return v2
.end method

.method private resetImmediatelyDestroyActivitiesOptions()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 492
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_b

    .line 498
    const/4 v1, 0x1

    :goto_a
    return v1

    .line 493
    :catch_b
    move-exception v0

    .line 494
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "DeveloperModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetImmediatelyDestroyActivitiesOptions: RemoteException ex -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method private resetRtlOptions()V
    .registers 4

    .prologue
    .line 435
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "debug.force_rtl"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 437
    const-string/jumbo v0, "debug.force_rtl"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 439
    return-void
.end method

.method private resetSecureSettings()Z
    .registers 7

    .prologue
    .line 533
    const/4 v2, 0x1

    .line 534
    .local v2, "ret":Z
    sget-object v3, SECURE_SETTINGS_DEFAULT:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 535
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 536
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 537
    .local v1, "map":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    .line 539
    goto :goto_b

    .line 540
    .end local v1    # "map":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2f
    return v2
.end method

.method private resetSelectUsbConfig()V
    .registers 4

    .prologue
    .line 356
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "usb"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 357
    .local v0, "manager":Landroid/hardware/usb/UsbManager;
    const-string/jumbo v1, "none"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 358
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setUsbDataUnlocked(Z)V

    .line 359
    return-void
.end method

.method private resetSystemProperties()V
    .registers 5

    .prologue
    .line 547
    sget-object v2, SYSTEM_PROPERTIES_DEFAULT:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 548
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 549
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 550
    .local v1, "map":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 552
    .end local v1    # "map":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_26
    return-void
.end method

.method private resetSystemSettings()Z
    .registers 7

    .prologue
    .line 505
    const/4 v2, 0x1

    .line 506
    .local v2, "ret":Z
    sget-object v3, SYSTEM_SETTINGS_DEFAULT:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 507
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 508
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 509
    .local v1, "map":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    .line 511
    goto :goto_b

    .line 512
    .end local v1    # "map":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2f
    return v2
.end method

.method private resetUsbAuth()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 362
    :try_start_1
    const-string/jumbo v6, "usb"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 363
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v4

    .line 365
    .local v4, "service":Landroid/hardware/usb/IUsbManager;
    const-string/jumbo v6, "ro.adb.secure"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 366
    .local v3, "secureAdbEnabled":Z
    const-string/jumbo v6, "trigger_restart_min_framework"

    const-string/jumbo v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 367
    .local v1, "dataEncrypted":Z
    if-eqz v3, :cond_29

    if-nez v1, :cond_29

    .line 368
    invoke-interface {v4}, Landroid/hardware/usb/IUsbManager;->clearUsbDebuggingKeys()V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_29} :catch_2b

    .line 374
    :cond_29
    const/4 v5, 0x1

    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "dataEncrypted":Z
    .end local v3    # "secureAdbEnabled":Z
    .end local v4    # "service":Landroid/hardware/usb/IUsbManager;
    :goto_2a
    return v5

    .line 370
    :catch_2b
    move-exception v2

    .line 371
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "DeveloperModeSettings"

    const-string v7, "Unable to clear adb keys"

    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2a
.end method

.method private resetWifiManagerSettings()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 346
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 347
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->enableVerboseLogging(I)V

    .line 348
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->enableAggressiveHandover(I)V

    .line 349
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setAllowScansWithTraffic(I)V

    .line 350
    return-void
.end method

.method private resetWindowManagerOptions()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 447
    :try_start_2
    const-string/jumbo v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 450
    .local v1, "windowManager":Landroid/view/IWindowManager;
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v1, v4, v5}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 452
    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v1, v4, v5}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 454
    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v1, v4, v5}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 456
    const-string v4, ""

    invoke-interface {v1, v4}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_24} :catch_25

    .line 461
    .end local v1    # "windowManager":Landroid/view/IWindowManager;
    :goto_24
    return v2

    .line 457
    :catch_25
    move-exception v0

    .line 458
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "DeveloperModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resetWindowManagerOptions: RemoteException ex -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 459
    goto :goto_24
.end method


# virtual methods
.method resetDeveloperModeOptions()Z
    .registers 8

    .prologue
    .line 192
    const/4 v1, 0x1

    .line 193
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 199
    .local v2, "token":J
    :try_start_5
    invoke-direct {p0}, resetBluetoothHCILog()V

    .line 202
    invoke-virtual {p0}, resetMockLocationApps()Z

    move-result v4

    and-int/2addr v1, v4

    .line 205
    invoke-direct {p0}, resetDebugApps()Z

    move-result v4

    and-int/2addr v1, v4

    .line 211
    invoke-direct {p0}, resetWifiManagerSettings()V

    .line 218
    invoke-direct {p0}, resetUsbAuth()Z

    move-result v4

    and-int/2addr v1, v4

    .line 222
    invoke-direct {p0}, resetDrawingOptions()Z

    move-result v4

    and-int/2addr v1, v4

    .line 225
    invoke-direct {p0}, resetRtlOptions()V

    .line 231
    invoke-direct {p0}, resetWindowManagerOptions()Z

    move-result v4

    and-int/2addr v1, v4

    .line 234
    invoke-direct {p0}, resetCpuUsageOptions()V

    .line 237
    invoke-direct {p0}, resetAppProcessLimitOptions()Z

    move-result v4

    and-int/2addr v1, v4

    .line 240
    invoke-direct {p0}, resetImmediatelyDestroyActivitiesOptions()Z

    move-result v4

    and-int/2addr v1, v4

    .line 244
    invoke-direct {p0}, resetSystemSettings()Z

    move-result v4

    and-int/2addr v1, v4

    .line 257
    invoke-direct {p0}, resetGlobalSettings()Z

    move-result v4

    and-int/2addr v1, v4

    .line 261
    invoke-direct {p0}, resetSecureSettings()Z

    move-result v4

    and-int/2addr v1, v4

    .line 269
    invoke-direct {p0}, resetSystemProperties()V

    .line 272
    new-instance v4, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$SystemPropPoker;

    invoke-direct {v4}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$SystemPropPoker;-><init>()V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_51
    .catchall {:try_start_5 .. :try_end_51} :catchall_8a

    .line 275
    :try_start_51
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const-string v5, "com.android.settings"

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_60} :catch_6b
    .catchall {:try_start_51 .. :try_end_60} :catchall_8a

    .line 280
    :goto_60
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 282
    const-string v4, "DeveloperModeSettings"

    const-string v5, "allowDeveloperMode: false"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return v1

    .line 276
    :catch_6b
    move-exception v0

    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6c
    const-string v4, "DeveloperModeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "killSettings: RemoteException ex -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_6c .. :try_end_89} :catchall_8a

    goto :goto_60

    .line 280
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_8a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method resetMockLocationApps()Z
    .registers 15

    .prologue
    const/16 v8, 0x3a

    const/4 v13, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 301
    new-array v4, v10, [I

    aput v8, v4, v9

    .line 304
    .local v4, "mockLocationApps":[I
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string v11, "appops"

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 308
    .local v1, "appOpsManager":Landroid/app/AppOpsManager;
    invoke-virtual {v1, v4}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v7

    .line 309
    .local v7, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v7, :cond_55

    .line 311
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    .line 312
    .local v6, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v8

    if-eq v8, v13, :cond_1d

    .line 313
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 315
    .local v5, "oldMockLocationApp":Ljava/lang/String;
    :try_start_3d
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v11, 0x200

    invoke-virtual {v8, v5, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 317
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/16 v8, 0x3a

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v12, 0x2

    invoke-virtual {v1, v8, v11, v5, v12}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_51
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3d .. :try_end_51} :catch_52

    goto :goto_1d

    .line 319
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_52
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move v8, v9

    .line 325
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "oldMockLocationApp":Ljava/lang/String;
    .end local v6    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    :goto_54
    return v8

    :cond_55
    move v8, v10

    goto :goto_54
.end method
