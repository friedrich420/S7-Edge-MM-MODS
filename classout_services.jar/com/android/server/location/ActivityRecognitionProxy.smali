.class public Lcom/android/server/location/ActivityRecognitionProxy;
.super Ljava/lang/Object;
.source "ActivityRecognitionProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityRecognitionProxy"


# instance fields
.field private final mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

.field private final mIsSupported:Z

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;ZLandroid/hardware/location/ActivityRecognitionHardware;III)V
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "activityRecognitionHardwareIsSupported"    # Z
    .param p4, "activityRecognitionHardware"    # Landroid/hardware/location/ActivityRecognitionHardware;
    .param p5, "overlaySwitchResId"    # I
    .param p6, "defaultServicePackageNameResId"    # I
    .param p7, "initialPackageNameResId"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean p3, p0, mIsSupported:Z

    .line 51
    iput-object p4, p0, mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    .line 53
    new-instance v7, Lcom/android/server/location/ActivityRecognitionProxy$1;

    invoke-direct {v7, p0}, Lcom/android/server/location/ActivityRecognitionProxy$1;-><init>(Lcom/android/server/location/ActivityRecognitionProxy;)V

    .line 61
    .local v7, "newServiceWork":Ljava/lang/Runnable;
    new-instance v0, Lcom/android/server/ServiceWatcher;

    const-string v2, "ActivityRecognitionProxy"

    const-string v3, "com.android.location.service.ActivityRecognitionProvider"

    move-object v1, p1

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v0, p0, mServiceWatcher:Lcom/android/server/ServiceWatcher;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/ActivityRecognitionProxy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/ActivityRecognitionProxy;

    .prologue
    .line 35
    invoke-direct {p0}, bindProvider()V

    return-void
.end method

.method private bindProvider()V
    .registers 9

    .prologue
    .line 106
    iget-object v5, p0, mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v5}, Lcom/android/server/ServiceWatcher;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 107
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_10

    .line 108
    const-string v5, "ActivityRecognitionProxy"

    const-string v6, "Null binder found on connection."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_f
    return-void

    .line 113
    :cond_10
    :try_start_10
    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_2e

    move-result-object v2

    .line 119
    .local v2, "descriptor":Ljava/lang/String;
    const-class v5, Landroid/hardware/location/IActivityRecognitionHardwareWatcher;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 120
    invoke-static {v0}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareWatcher;

    move-result-object v4

    .line 122
    .local v4, "watcher":Landroid/hardware/location/IActivityRecognitionHardwareWatcher;
    if-nez v4, :cond_37

    .line 123
    const-string v5, "ActivityRecognitionProxy"

    const-string v6, "No watcher found on connection."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 114
    .end local v2    # "descriptor":Ljava/lang/String;
    .end local v4    # "watcher":Landroid/hardware/location/IActivityRecognitionHardwareWatcher;
    :catch_2e
    move-exception v3

    .line 115
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "ActivityRecognitionProxy"

    const-string v6, "Unable to get interface descriptor."

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 126
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v2    # "descriptor":Ljava/lang/String;
    .restart local v4    # "watcher":Landroid/hardware/location/IActivityRecognitionHardwareWatcher;
    :cond_37
    iget-object v5, p0, mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    if-nez v5, :cond_43

    .line 129
    const-string v5, "ActivityRecognitionProxy"

    const-string v6, "AR HW instance not available, binding will be a no-op."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 133
    :cond_43
    :try_start_43
    iget-object v5, p0, mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-interface {v4, v5}, Landroid/hardware/location/IActivityRecognitionHardwareWatcher;->onInstanceChanged(Landroid/hardware/location/IActivityRecognitionHardware;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_48} :catch_49

    goto :goto_f

    .line 134
    :catch_49
    move-exception v3

    .line 135
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v5, "ActivityRecognitionProxy"

    const-string v6, "Error delivering hardware interface to watcher."

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 137
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "watcher":Landroid/hardware/location/IActivityRecognitionHardwareWatcher;
    :cond_52
    const-class v5, Landroid/hardware/location/IActivityRecognitionHardwareClient;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 138
    invoke-static {v0}, Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IActivityRecognitionHardwareClient;

    move-result-object v1

    .line 140
    .local v1, "client":Landroid/hardware/location/IActivityRecognitionHardwareClient;
    if-nez v1, :cond_6c

    .line 141
    const-string v5, "ActivityRecognitionProxy"

    const-string v6, "No client found on connection."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 145
    :cond_6c
    :try_start_6c
    iget-boolean v5, p0, mIsSupported:Z

    iget-object v6, p0, mInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-interface {v1, v5, v6}, Landroid/hardware/location/IActivityRecognitionHardwareClient;->onAvailabilityChanged(ZLandroid/hardware/location/IActivityRecognitionHardware;)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_73} :catch_74

    goto :goto_f

    .line 146
    :catch_74
    move-exception v3

    .line 147
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v5, "ActivityRecognitionProxy"

    const-string v6, "Error delivering hardware interface to client."

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 150
    .end local v1    # "client":Landroid/hardware/location/IActivityRecognitionHardwareClient;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_7d
    const-string v5, "ActivityRecognitionProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid descriptor found on connection: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f
.end method

.method public static createAndBind(Landroid/content/Context;Landroid/os/Handler;ZLandroid/hardware/location/ActivityRecognitionHardware;III)Lcom/android/server/location/ActivityRecognitionProxy;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "activityRecognitionHardwareIsSupported"    # Z
    .param p3, "activityRecognitionHardware"    # Landroid/hardware/location/ActivityRecognitionHardware;
    .param p4, "overlaySwitchResId"    # I
    .param p5, "defaultServicePackageNameResId"    # I
    .param p6, "initialPackageNameResId"    # I

    .prologue
    .line 85
    new-instance v0, Lcom/android/server/location/ActivityRecognitionProxy;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, <init>(Landroid/content/Context;Landroid/os/Handler;ZLandroid/hardware/location/ActivityRecognitionHardware;III)V

    .line 95
    .local v0, "activityRecognitionProxy":Lcom/android/server/location/ActivityRecognitionProxy;
    iget-object v1, v0, mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v1}, Lcom/android/server/ServiceWatcher;->start()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 96
    const-string v1, "ActivityRecognitionProxy"

    const-string v2, "ServiceWatcher could not start."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v0, 0x0

    .line 99
    .end local v0    # "activityRecognitionProxy":Lcom/android/server/location/ActivityRecognitionProxy;
    :cond_1c
    return-object v0
.end method
