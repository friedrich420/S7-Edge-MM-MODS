.class public Lcom/android/server/camera/CameraService;
.super Lcom/android/server/SystemService;
.source "CameraService.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field public static final CAMERA_SERVICE_PROXY_BINDER_NAME:Ljava/lang/String; = "media.camera.proxy"

.field public static final CAMERA_STATE_ACTIVE:I = 0x1

.field public static final CAMERA_STATE_CLOSED:I = 0x3

.field public static final CAMERA_STATE_IDLE:I = 0x2

.field public static final CAMERA_STATE_OPEN:I = 0x0

.field private static final DEBUG:Z = false

.field public static final DISABLE_POLLING_FLAGS:I = 0x1000

.field public static final ENABLE_POLLING_FLAGS:I = 0x0

.field private static final MSG_SWITCH_USER:I = 0x1

.field private static final NFC_NOTIFICATION_PROP:Ljava/lang/String; = "ro.camera.notify_nfc"

.field private static final NFC_SERVICE_BINDER_NAME:Ljava/lang/String; = "nfc"

.field public static final NO_EVENT:I = 0x0

.field private static final RETRY_DELAY_TIME:I = 0x14

.field private static final TAG:Ljava/lang/String; = "CameraService_proxy"

.field public static final USER_SWITCHED:I = 0x1

.field private static final nfcInterfaceToken:Landroid/os/IBinder;


# instance fields
.field private mActiveCameraCount:I

.field private final mActiveCameraIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

.field private mCameraServiceRaw:Landroid/hardware/ICameraService;

.field private final mContext:Landroid/content/Context;

.field private mEnabledCameraUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastUser:I

.field private final mLock:Ljava/lang/Object;

.field private final mNotifyNfc:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 97
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, nfcInterfaceToken:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, mLock:Ljava/lang/Object;

    .line 93
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, mActiveCameraIds:Landroid/util/ArraySet;

    .line 100
    iput v0, p0, mActiveCameraCount:I

    .line 102
    new-instance v1, Lcom/android/server/camera/CameraService$1;

    invoke-direct {v1, p0}, Lcom/android/server/camera/CameraService$1;-><init>(Lcom/android/server/camera/CameraService;)V

    iput-object v1, p0, mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    new-instance v1, Lcom/android/server/camera/CameraService$2;

    invoke-direct {v1, p0}, Lcom/android/server/camera/CameraService$2;-><init>(Lcom/android/server/camera/CameraService;)V

    iput-object v1, p0, mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    .line 144
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 145
    new-instance v1, Lcom/android/server/ServiceThread;

    const-string v2, "CameraService_proxy"

    const/4 v3, -0x4

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, mHandlerThread:Lcom/android/server/ServiceThread;

    .line 146
    iget-object v1, p0, mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    .line 147
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, mHandler:Landroid/os/Handler;

    .line 149
    const-string/jumbo v1, "ro.camera.notify_nfc"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_4a

    const/4 v0, 0x1

    :cond_4a
    iput-boolean v0, p0, mNotifyNfc:Z

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/camera/CameraService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/camera/CameraService;

    .prologue
    .line 51
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/camera/CameraService;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/camera/CameraService;

    .prologue
    .line 51
    iget-object v0, p0, mEnabledCameraUsers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/camera/CameraService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/camera/CameraService;

    .prologue
    .line 51
    iget v0, p0, mLastUser:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/camera/CameraService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/camera/CameraService;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, switchUserLocked(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/camera/CameraService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/camera/CameraService;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, notifySwitchWithRetries(I)V

    return-void
.end method

.method static synthetic access$500(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 51
    invoke-static {p0}, cameraStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/camera/CameraService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/camera/CameraService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, updateActivityCount(Ljava/lang/String;I)V

    return-void
.end method

.method private static cameraStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "newCameraState"    # I

    .prologue
    .line 337
    packed-switch p0, :pswitch_data_12

    .line 344
    const-string v0, "CAMERA_STATE_UNKNOWN"

    :goto_5
    return-object v0

    .line 338
    :pswitch_6
    const-string v0, "CAMERA_STATE_OPEN"

    goto :goto_5

    .line 339
    :pswitch_9
    const-string v0, "CAMERA_STATE_ACTIVE"

    goto :goto_5

    .line 340
    :pswitch_c
    const-string v0, "CAMERA_STATE_IDLE"

    goto :goto_5

    .line 341
    :pswitch_f
    const-string v0, "CAMERA_STATE_CLOSED"

    goto :goto_5

    .line 337
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method private getEnabledUserHandles(I)Ljava/util/Set;
    .registers 7
    .param p1, "currentUserHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v4, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 233
    .local v3, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 235
    .local v0, "handles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 236
    .local v1, "i":Landroid/content/pm/UserInfo;
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 239
    .end local v1    # "i":Landroid/content/pm/UserInfo;
    :cond_29
    return-object v0
.end method

.method private notifyMediaserverLocked(ILjava/util/Set;)Z
    .registers 9
    .param p1, "eventType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "updatedUserHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 262
    iget-object v3, p0, mCameraServiceRaw:Landroid/hardware/ICameraService;

    if-nez v3, :cond_20

    .line 263
    const-string/jumbo v3, "media.camera"

    invoke-virtual {p0, v3}, getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 264
    .local v0, "cameraServiceBinder":Landroid/os/IBinder;
    if-nez v0, :cond_16

    .line 265
    const-string v3, "CameraService_proxy"

    const-string v4, "Could not notify mediaserver, camera service not available."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v0    # "cameraServiceBinder":Landroid/os/IBinder;
    :goto_15
    return v2

    .line 269
    .restart local v0    # "cameraServiceBinder":Landroid/os/IBinder;
    :cond_16
    const/4 v3, 0x0

    :try_start_17
    invoke-interface {v0, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_2b

    .line 275
    invoke-static {v0}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v3

    iput-object v3, p0, mCameraServiceRaw:Landroid/hardware/ICameraService;

    .line 279
    .end local v0    # "cameraServiceBinder":Landroid/os/IBinder;
    :cond_20
    :try_start_20
    iget-object v3, p0, mCameraServiceRaw:Landroid/hardware/ICameraService;

    invoke-static {p2}, toArray(Ljava/util/Collection;)[I

    move-result-object v4

    invoke-interface {v3, p1, v4}, Landroid/hardware/ICameraService;->notifySystemEvent(I[I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_29} :catch_34

    .line 285
    const/4 v2, 0x1

    goto :goto_15

    .line 270
    .restart local v0    # "cameraServiceBinder":Landroid/os/IBinder;
    :catch_2b
    move-exception v1

    .line 271
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "CameraService_proxy"

    const-string v4, "Could not link to death of native camera service"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 280
    .end local v0    # "cameraServiceBinder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_34
    move-exception v1

    .line 281
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "CameraService_proxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not notify mediaserver, remote exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method private notifyNfcService(Z)V
    .registers 9
    .param p1, "enablePolling"    # Z

    .prologue
    .line 311
    const-string/jumbo v4, "nfc"

    invoke-virtual {p0, v4}, getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 312
    .local v3, "nfcServiceBinder":Landroid/os/IBinder;
    if-nez v3, :cond_11

    .line 313
    const-string v4, "CameraService_proxy"

    const-string v5, "Could not connect to NFC service to notify it of camera state"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_10
    return-void

    .line 316
    :cond_11
    invoke-static {v3}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v2

    .line 317
    .local v2, "nfcAdapterRaw":Landroid/nfc/INfcAdapter;
    if-eqz p1, :cond_3a

    const/4 v1, 0x0

    .line 320
    .local v1, "flags":I
    :goto_18
    :try_start_18
    sget-object v4, nfcInterfaceToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v1, v6}, Landroid/nfc/INfcAdapter;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_20

    goto :goto_10

    .line 321
    :catch_20
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "CameraService_proxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not notify NFC service, remote exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 317
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "flags":I
    :cond_3a
    const/16 v1, 0x1000

    goto :goto_18
.end method

.method private notifySwitchWithRetries(I)V
    .registers 8
    .param p1, "retries"    # I

    .prologue
    const/4 v5, 0x1

    .line 243
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_4
    iget-object v0, p0, mEnabledCameraUsers:Ljava/util/Set;

    if-nez v0, :cond_a

    .line 245
    monitor-exit v1

    .line 257
    :cond_9
    :goto_9
    return-void

    .line 247
    :cond_a
    const/4 v0, 0x1

    iget-object v2, p0, mEnabledCameraUsers:Ljava/util/Set;

    invoke-direct {p0, v0, v2}, notifyMediaserverLocked(ILjava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 248
    const/4 p1, 0x0

    .line 250
    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_30

    .line 251
    if-lez p1, :cond_9

    .line 254
    const-string v0, "CameraService_proxy"

    const-string v1, "Could not notify camera service of user switch, retrying..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_9

    .line 250
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method private switchUserLocked(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 222
    invoke-direct {p0, p1}, getEnabledUserHandles(I)Ljava/util/Set;

    move-result-object v0

    .line 223
    .local v0, "currentUserHandles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iput p1, p0, mLastUser:I

    .line 224
    iget-object v1, p0, mEnabledCameraUsers:Ljava/util/Set;

    if-eqz v1, :cond_12

    iget-object v1, p0, mEnabledCameraUsers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 226
    :cond_12
    iput-object v0, p0, mEnabledCameraUsers:Ljava/util/Set;

    .line 227
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, notifyMediaserverLocked(ILjava/util/Set;)Z

    .line 229
    :cond_18
    return-void
.end method

.method private static toArray(Ljava/util/Collection;)[I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    .line 328
    .local v4, "len":I
    new-array v5, v4, [I

    .line 329
    .local v5, "ret":[I
    const/4 v2, 0x0

    .line 330
    .local v2, "idx":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 331
    .local v0, "i":Ljava/lang/Integer;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "idx":I
    .local v3, "idx":I
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v2

    move v2, v3

    .line 332
    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    goto :goto_b

    .line 333
    .end local v0    # "i":Ljava/lang/Integer;
    :cond_21
    return-object v5
.end method

.method private updateActivityCount(Ljava/lang/String;I)V
    .registers 7
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newCameraState"    # I

    .prologue
    .line 289
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 290
    :try_start_3
    iget-object v2, p0, mActiveCameraIds:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    .line 291
    .local v1, "wasEmpty":Z
    packed-switch p2, :pswitch_data_2c

    .line 302
    :goto_c
    :pswitch_c
    iget-object v2, p0, mActiveCameraIds:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    .line 303
    .local v0, "isEmpty":Z
    iget-boolean v2, p0, mNotifyNfc:Z

    if-eqz v2, :cond_1b

    if-eq v1, v0, :cond_1b

    .line 304
    invoke-direct {p0, v0}, notifyNfcService(Z)V

    .line 306
    :cond_1b
    monitor-exit v3

    .line 307
    return-void

    .line 295
    .end local v0    # "isEmpty":Z
    :pswitch_1d
    iget-object v2, p0, mActiveCameraIds:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 306
    .end local v1    # "wasEmpty":Z
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v2

    .line 299
    .restart local v1    # "wasEmpty":Z
    :pswitch_26
    :try_start_26
    iget-object v2, p0, mActiveCameraIds:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_23

    goto :goto_c

    .line 291
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_c
        :pswitch_1d
        :pswitch_26
        :pswitch_26
    .end packed-switch
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 208
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 209
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, mCameraServiceRaw:Landroid/hardware/ICameraService;

    .line 212
    iget-object v1, p0, mActiveCameraIds:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    .line 213
    .local v0, "wasEmpty":Z
    iget-object v1, p0, mActiveCameraIds:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 215
    iget-boolean v1, p0, mNotifyNfc:Z

    if-eqz v1, :cond_1b

    if-nez v0, :cond_1b

    .line 216
    const/4 v1, 0x1

    invoke-direct {p0, v1}, notifyNfcService(Z)V

    .line 218
    :cond_1b
    monitor-exit v2

    .line 219
    return-void

    .line 218
    .end local v0    # "wasEmpty":Z
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    .line 160
    const-string v0, "CameraService_proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraService error, invalid message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_1f
    const/4 v0, 0x1

    return v0

    .line 157
    :pswitch_21
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, notifySwitchWithRetries(I)V

    goto :goto_1f

    .line 155
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_21
    .end packed-switch
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 168
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, mUserManager:Landroid/os/UserManager;

    .line 169
    iget-object v1, p0, mUserManager:Landroid/os/UserManager;

    if-nez v1, :cond_14

    .line 171
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "UserManagerService must start before CameraService!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_14
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    const-string/jumbo v1, "media.camera.proxy"

    iget-object v2, p0, mCameraServiceProxy:Landroid/hardware/ICameraServiceProxy$Stub;

    invoke-virtual {p0, v1, v2}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 183
    return-void
.end method

.method public onStartUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 187
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :try_start_3
    iget-object v0, p0, mEnabledCameraUsers:Ljava/util/Set;

    if-nez v0, :cond_a

    .line 190
    invoke-direct {p0, p1}, switchUserLocked(I)V

    .line 192
    :cond_a
    monitor-exit v1

    .line 193
    return-void

    .line 192
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public onSwitchUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 197
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_3
    invoke-direct {p0, p1}, switchUserLocked(I)V

    .line 199
    monitor-exit v1

    .line 200
    return-void

    .line 199
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method
